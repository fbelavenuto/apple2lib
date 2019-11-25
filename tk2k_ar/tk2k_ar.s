;
;

	.include	"sys.def"
	.include	"hw.def"


	.org	$36

	.word	INICIO				; Vetor COUT
	.word	MON_CIN1			; Vetor CIN
	.word	0
	.word	$003C				; 0x3C
	.word	FIM-1				; 0x3E
	.byte	0, 0, 0, 0, 0, 0, 0, 0
	.byte	$20, 0, 0, 0, 0, 0, 1, $C1	; $48 = $20 e $A0
INICIO:
	lda	#<MON_COUT1			; Restore COUT vector
	sta	$36
	lda	#>MON_COUT1
	sta	$37
	bit	TK2K_HW_GRCOLOR
	jsr	TK2K_HGR
	jsr	TK2K_TAPELOAD
	jmp	($468)
FIM:
	.end
