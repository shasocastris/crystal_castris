CountSetBits::
; Count the number of set bits in b bytes starting from hl.
; Return in a, c and [wNumSetBits].
	ld c, 0
.next
	ld a, [hli]
	ld e, a
	ld d, 8

.count
	srl e
	jr nc, .noCarry
	inc c
.noCarry

	dec d
	jr nz, .count

	dec b
	jr nz, .next

	ld a, c
	ld [wNumSetBits], a
	ret

CountSetBits16::
; Count the number of set bits in bc bytes starting from hl - assumes bc < $1000
; Returns in bc; hl points to the end of the buffer; clobbers everything else
; Assumes that CountSetBits will leave hl pointing to the end of the buffer
	swap b
	ld a, c
	swap a
	and $f
	or b
	ld d, a
	ld a, c
	jr z, .small_count
	ld bc, 0
	and $f
	jr z, .loop
	push de
	call .small_count
	pop de
.loop
	push bc
	push de
	ld b, $10
	call CountSetBits
	pop de
	pop bc
	add c
	ld c, a
	adc b
	sub c
	ld b, a
	dec d
	jr nz, .loop
	ret

.small_count
	ld b, a
	call CountSetBits
	ld b, 0
	ret

GetWeekday::
	ld a, [wCurDay]
.mod
	sub 7
	jr nc, .mod
	add 7
	ret

SetSeenAndCaughtMon::
	call GetPokemonFlagIndex
	push de
	call SetSeenMonIndex
	pop de
SetCaughtMonIndex::
	call SetVariantCaught
	ld hl, wPokedexCaught
	jr SetPokedexStatusMonIndex

SetSeenMon::
	call GetPokemonFlagIndex
SetSeenMonIndex::
	ld hl, wPokedexSeen
SetPokedexStatusMonIndex:
	ld b, SET_FLAG
	jr FlagActionBaseOne

CheckCaughtMon::
	call GetPokemonFlagIndex
CheckCaughtMonIndex::
	ld hl, wPokedexCaught
	jr CheckPokedexStatusMonIndex

CheckSeenMon::
	call GetPokemonFlagIndex
CheckSeenMonIndex::
	ld hl, wPokedexSeen
CheckPokedexStatusMonIndex:
	ld b, CHECK_FLAG
FlagActionBaseOne:
	call GetVariantBase
	dec de
	jmp FlagAction

GetPokemonFlagIndex:
	call GetPokemonIndexFromID
	ld d, h
	ld e, l
	ret

GetVariantBase::
; Variant species hold no Pokédex bits of their own, so every seen/caught
; operation on a variant acts on the species it varies. That redirect is the
; entire mechanism by which a caught variant counts toward the base species'
; dex entry, the type completion boost and Prof. Oak's rating.
; It is also what keeps variants in bounds: wPokedexSeen/wPokedexCaught are
; flag_array NUM_POKEMON, and a variant index would set a bit in the unused
; tail of the last byte, which CountSetBits16 would then count as a caught mon.
; in:  de = 16-bit species index
; out: de = base species index if de was a variant, unchanged otherwise
; preserves bc and hl; clobbers a
	assert HIGH(VARIANTS_START) == HIGH(NUM_POKEMON_AND_VARIANTS), \
		"variant indexes straddle a $100 boundary; GetVariantBase needs a 16-bit subtract"
	ld a, e
	sub LOW(VARIANTS_START)
	ld a, d
	sbc HIGH(VARIANTS_START)
	ret c ; below VARIANTS_START, so a real species
	push hl
	ld a, e
	sub LOW(VARIANTS_START)
	ld l, a
	ld h, 0
	add hl, hl
	ld de, VariantBaseSpecies
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	ret

GetPokemonBaseIndexFromID::
; As GetPokemonIndexFromID, but resolves a variant to the species it varies.
; Use this instead of GetPokemonIndexFromID whenever the result indexes a table
; sized NUM_POKEMON -- PokedexDataPointerTable, Footprints, the printed dex
; number. Variant indexes run past the end of those tables, so indexing them
; raw reads whatever data follows, which is how a variant's dex entry turns
; into garbage text and a corrupt footprint.
; in:  a  = 8-bit species ID
; out: hl = 16-bit index of the base species
; clobbers a and de; preserves bc
	call GetPokemonIndexFromID
	ld d, h
	ld e, l
	call GetVariantBase
	ld h, d
	ld l, e
	ret

SetVariantCaught:
; Record that the player has caught this variant, if it is one.
; The base species' own caught bit is set separately by the caller falling
; through into SetCaughtMonIndex, so both are marked.
; Called only from the caught-set path, which is the only path that means
; "caught" -- the seen and check paths must not touch this.
; in: de = 16-bit species index, before GetVariantBase resolves it
; preserves everything. Relies on the caller having selected BANK(wPokedexCaught),
; which is the same bank, since wVariantCaught sits directly after it.
	ld a, e
	sub LOW(VARIANTS_START)
	ld a, d
	sbc HIGH(VARIANTS_START)
	ret c ; a real species, nothing to record
	push hl
	push de
	push bc
	ld a, e
	sub LOW(VARIANTS_START) ; position in the variant block, 0-based
	ld e, a
	ld d, 0
	ld hl, wVariantCaught
	ld b, SET_FLAG
	call FlagAction
	pop bc
	pop de
	pop hl
	ret

CheckVariantCaught::
; in: de = 16-bit variant index
; out: z if not caught (or not a variant), nz if caught
; preserves bc, de and hl
	ld a, e
	sub LOW(VARIANTS_START)
	ld a, d
	sbc HIGH(VARIANTS_START)
	jr c, .not_a_variant
	push hl
	push de
	push bc
	ld a, e
	sub LOW(VARIANTS_START)
	ld e, a
	ld d, 0
	ld hl, wVariantCaught
	ld b, CHECK_FLAG
	call FlagAction
	pop bc
	pop de
	pop hl
	ld a, c
	and a
	ret

.not_a_variant
	xor a
	ret

GetSpeciesVariant::
; Find the variant whose base species is de, for the Pokedex form view.
; in:  de = 16-bit species index
; out: carry set and de = the variant's index, if this species has one;
;      carry clear and de unchanged if it does not
; preserves bc; clobbers a and hl
	push bc
	ld hl, VariantBaseSpecies
	ld b, NUM_VARIANTS
	ld c, 0
.loop
	ld a, [hli]
	cp e
	jr nz, .next
	ld a, [hl]
	cp d
	jr z, .found
.next
	inc hl
	inc c
	dec b
	jr nz, .loop
	pop bc
	and a ; no variant for this species
	ret

.found
	ld a, c
	add LOW(VARIANTS_START)
	ld e, a
	ld a, HIGH(VARIANTS_START)
	adc 0
	ld d, a
	pop bc
	scf
	ret

INCLUDE "data/pokemon/variant_bases.asm"
