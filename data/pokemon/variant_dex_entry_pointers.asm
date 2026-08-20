VariantPokedexEntries:
; One entry per variant, in VARIANTS_START order, indexed by
; (species index - VARIANTS_START).
;
; Variants are deliberately absent from PokedexDataPointerTable -- they hold no
; Pokedex slot, and that table must stay sized NUM_POKEMON -- so the form view
; reads their entry text from here instead.
	table_width 3
	dba CorsolaKantoPokedexEntry
	dba RaichuJohtoPokedexEntry
	assert_table_length NUM_VARIANTS
