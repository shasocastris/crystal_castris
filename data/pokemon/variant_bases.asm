VariantBaseSpecies:
; The species each variant varies, in VARIANTS_START order. Indexed directly by
; (species index - VARIANTS_START), so the order here must match the order of
; the variant const block in constants/pokemon_constants.asm. The
; assert_table_length below catches a count mismatch; it cannot catch a
; reordering, so keep the two lists in step by hand.
	table_width 2
	dw CORSOLA ; CORSOLA_KANTO
	assert_table_length NUM_VARIANTS
