;*********************************************************************************************
;** Original File: C:\Users\William\Desktop\New folder (2)\Blaster Master (U) [!].nes
;** 16K PRG-ROM pages: $08
;** 8K CHR-ROM pages: $10
;** Mirroring: horizontal
;** SRAM: not available
;** Trainer: not available
;** Mapper: $01
;*********************************************************************************************

.autoimport +

;The following labels are referenced by other banks:

	.export Lbl_c000, Lbl_eb7e, Lbl_eb97, Lbl_fff4

.segment "PRG_7"

Lbl_c000:
	.byte $4c,$75,$e7,$4c,$4d,$e7,$4c,$74,$d3,$4c,$43,$d4,$4c,$52,$d4,$4c
	.byte $43,$d4,$4c,$67,$d4,$4c,$7d,$d3,$4c,$e1,$d3,$4c,$04,$e7,$4c,$db
	.byte $d2,$4c,$43,$d6,$4c,$24,$d3,$4c,$de,$d2,$4c,$27,$d3,$4c,$83,$e0
	.byte $4c,$a5,$e0,$4c,$2f,$e0,$4c,$44,$eb,$4c,$68,$df,$4c,$84,$df,$4c
	.byte $fe,$d2,$4c,$49,$d3,$4c,$ed,$e0,$4c,$07,$e1,$4c,$39,$e1,$4c,$fa
	.byte $e0,$4c,$20,$e1,$4c,$52,$e1,$4c,$6d,$d8,$4c,$3b,$d8,$4c,$2d,$d0
	.byte $4c,$ba,$cd,$4c,$11,$f0,$4c,$29,$f0,$4c,$0c,$eb,$4c,$4a,$e7,$4c
	.byte $12,$e7,$4c,$65,$e0,$4c,$4e,$e0,$4c,$57,$e0,$4c,$77,$ce,$4c,$55
	.byte $ce,$4c,$98,$eb,$4c,$83,$d6,$4c,$7e,$d6,$4c,$79,$d6,$4c,$8d,$d6
	.byte $4c,$70,$d7,$4c,$63,$d7,$4c,$d0,$e0,$4c,$c7,$e0,$4c,$a1,$d2,$4c
	.byte $56,$d2,$4c,$91,$d2,$4c,$83,$d2,$4c,$73,$d2,$4c,$46,$d2,$4c,$38
	.byte $d2,$4c,$71,$c9,$4c,$71,$e0,$4c,$e3,$d7,$4c,$fa,$e6,$4c,$a9,$cb
	.byte $4c,$b6,$d7,$4c,$61,$ec,$4c,$e9,$ea,$4c,$d2,$e1,$4c,$10,$cf,$4c
	.byte $ce,$cf,$4c,$6f,$cf,$4c,$27,$df,$4c,$c0,$d7,$4c,$e9,$e6,$4c,$b4
	.byte $ce,$4c,$a3,$ce,$4c,$2b,$eb,$4c,$23,$d8,$4c,$6b,$e1,$4c,$37,$eb
	.byte $4c,$40,$eb,$4c,$3d,$eb,$4c,$3a,$eb,$4c,$2e,$ce,$4c,$3c,$ce,$4c
	.byte $2b,$ef,$4c,$61,$d1,$4c,$51,$d1,$4c,$bc,$f1,$4c,$de,$e6,$4c,$81
	.byte $d1,$4c,$dd,$ce,$4c,$1c,$d8,$4c,$2c,$d8,$4c,$ef,$d1,$4c,$07,$cf
	.byte $4c,$a0,$df,$4c,$d0,$cd,$4c,$d8,$e0,$4c,$e5,$e0,$4c,$7d,$d7,$4c
	.byte $0f,$df,$4c,$1d,$d2,$4c,$3c,$ea,$4c,$ab,$d2,$4c,$63,$ea,$4c,$b1
	.byte $d2,$4c,$11,$d7,$4c,$97,$d6,$4c,$1f,$d7,$4c,$04,$d8,$4c,$14,$eb
	.byte $4c,$dd,$df,$4c,$51,$eb,$4c,$60,$e0,$4c,$f8,$d1,$4c,$35,$cc,$4c
	.byte $b4,$cb,$4c,$df,$cb,$4c,$7a,$d3,$4c,$1c,$d6,$4c,$27,$d6,$4c,$35
	.byte $d6,$4c,$de,$d3,$4c,$82,$e1,$4c,$cf,$e9,$4c,$f8,$d7,$4c,$91,$ef
	.byte $4c,$70,$f1,$4c,$4e,$f1,$4c,$92,$f1,$4c,$d1,$ec,$4c,$12,$ed,$4c
	.byte $54,$ed,$4c,$a4,$ed,$4c,$77,$ee,$4c,$c6,$ce,$4c,$d1,$ec,$4c,$12
	.byte $ed,$4c,$54,$ed,$4c,$a4,$ed,$4c,$f5,$ed,$4c,$77,$ee,$4c,$b4,$ec
	.byte $4c,$97,$e7,$4c,$71,$eb,$4c,$b1,$e1,$4c,$0f,$ce,$4c,$27,$ce,$4c
	.byte $5e,$d9,$4c,$03,$ea,$4c,$7b,$e0,$4c,$b7,$e1,$4c,$ee,$d7,$4c,$90
	.byte $d7,$4c,$b2,$c5,$4c,$bf,$e6,$4c,$cf,$d7,$4c,$ad,$d1,$4c,$28,$cd
	.byte $4c,$1b,$e6,$4c,$82,$ce,$4c,$a0,$d7,$4c,$3a,$ea,$4c,$b9,$d2,$4c
	.byte $bd,$e1,$4c,$8d,$d1,$4c,$51,$d8,$4c,$36,$df,$4c,$46,$df,$4c,$d5
	.byte $e1,$4c,$13,$cf,$4c,$d1,$cf,$4c,$72,$cf,$4c,$6a,$e0,$4c,$96,$e1
	.byte $4c,$36,$d1,$4c,$c2,$de,$4c,$cc,$de,$4c,$a3,$f1,$4c,$9b,$f1,$4c
	.byte $9f,$f1,$4c,$73,$ec,$4c,$05,$e0,$4c,$a6,$e9,$4c,$53,$e9,$4c,$b8
	.byte $e9,$4c,$d1,$df,$4c,$95,$e8,$4c,$9f,$e8,$4c,$ca,$f1,$4c,$4a,$ce
	.byte $4c,$23,$e8,$4c,$26,$e8,$4c,$84,$e8,$4c,$40,$e8,$4c,$36,$e9

Lbl_c24f:
	lda #$00
	sta $d3
	jsr Lbl_dec2
	lda $03f3
	cmp #$01
	bne Lbl_c264
	lda $03f4
	cmp #$23
	beq Lbl_c29e

Lbl_c264:
	ldx #$00
	txa 

Lbl_c267:
	sta $00,x
	sta $0100,x
	sta $0200,x
	sta $0300,x
	sta $0400,x
	sta $0500,x
	sta $0600,x
	sta $0700,x
	inx 
	bne Lbl_c267
	lda #$01
	sta $03f3
	lda #$23
	sta $03f4
	lda #$30
	sta $ff
	sta $2000
	lda #$06
	sta $fe
	sta $2001
	lda #$ff
	sta $06f4

Lbl_c29e:
	ldx #$ff
	txs 
	jsr Lbl_dec2
	jsr Lbl_f45d
	beq Lbl_c2bc
	jsr Lbl_e309

Lbl_c2ac:
	ldx #$ff
	txs 
	lda #$80
	sta $06f3
	jsr Lbl_dec2
	jsr Lbl_f45d
	bne Lbl_c2db

Lbl_c2bc:
	lda #$08
	sta $14
	jsr Lbl_cdba
	jsr Lbl_f5d9
	lda #$05
	sta $037e
	lda #$00
	sta $03fe
	sta $03fb
	sta $03fc
	sta $99
	jmp Lbl_c2fb

Lbl_c2db:
	jsr Lbl_dec2
	inc $06f4
	lda $06f4
	and #$03
	sta $06f4
	tax 
	lda Lbl_c2f7,x
	sta $14
	lda #$83
	sta $06f3
	jmp Lbl_c301

Lbl_c2f7:
	.byte $08,$01,$0a,$03

Lbl_c2fb:
	lda $14
	ora #$08
	sta $14

Lbl_c301:
	lda #$02
	sta $dd
	jsr Lbl_ca14
	lda #$00
	sta $13
	sta $10
	sta $11
	sta $06f0
	sta $06f1
	sta $06f2
	sta $92
	lda #$ff
	sta $c1
	lda #$03
	sta $46
	jsr Lbl_c5b2

Lbl_c326:
	lda $06f3
	asl a 
	bne Lbl_c334
	lda #$00
	jsr Lbl_e692
	jsr Lbl_f7d1

Lbl_c334:
	lda #$00
	sta $c5
	sta $15
	sta $b7
	sta $c3
	sta $90
	sta $4c
	sta $4d
	sta $50
	sta $4f
	sta $47
	sta $94
	sta $8f
	lda #$ff
	sta $53
	sta $03ff
	jsr Lbl_d7e3
	jsr Lbl_cba9
	jsr Lbl_e243

Lbl_c35e:
	lda #$00
	sta $03d6
	sta $8f
	jsr Lbl_c6ef
	jsr Lbl_c659
	jsr Lbl_e6fa
	jsr Lbl_ea03
	lda $48
	sta $1c
	lda $49
	sta $1d
	sec 
	lda $1c
	sbc #$00
	sta $1c
	lda $1d
	sbc #$08
	sta $1d
	lda $4a
	sta $1e
	lda $4b
	sta $1f
	sec 
	lda $1e
	sbc #$80
	sta $1e
	lda $1f
	sbc #$07
	sta $1f
	jsr Lbl_cc35
	jsr Lbl_dcfc
	lda $c5
	and #$02
	beq Lbl_c3aa
	jsr Lbl_c742

Lbl_c3aa:
	jsr Lbl_c772
	lda #$00
	sta $8e
	lda #$00
	sta $56
	jsr Lbl_c928
	jsr Lbl_c9d6
	jsr Lbl_d7b6
	jsr Lbl_ce0f
	lda $c5
	bit Lbl_e6e1
	beq Lbl_c3d5
	lda #$00
	sta $56
	jsr Lbl_c8df
	jsr a:$0000
	jmp Lbl_c465

Lbl_c3d5:
	jsr Lbl_e936
	jsr Lbl_c971
	jsr Lbl_d883
	jsr Lbl_cdd0
	jsr Lbl_ca4b
	jsr Lbl_c7d8
	jsr Lbl_c642
	lda $b6
	cmp #$09
	bcs Lbl_c465
	lda $b6
	bne Lbl_c402
	lda $06f3
	cmp #$ff
	bne Lbl_c402
	dec $06f3
	lda #$09
	bne Lbl_c45f

Lbl_c402:
	lda $06f3
	beq Lbl_c411
	lda $de
	and #$10
	beq Lbl_c411
	lda #$08
	bne Lbl_c45f

Lbl_c411:
	lda $f3
	and #$10
	beq Lbl_c430
	lda $b6
	bne Lbl_c430
	lda #$18
	jsr Lbl_decc
	lda $c5
	and #$02
	bne Lbl_c42a
	lda #$04
	bne Lbl_c45f

Lbl_c42a:
	lda $15
	eor #$01
	sta $15

Lbl_c430:
	bit Lbl_fff3
	bvc Lbl_c3d5
	jmp Lbl_c3d5

Lbl_c438:
	.byte $a5,$f4,$29,$80,$d0,$0e,$a5,$f4,$29,$08,$d0,$10,$a5,$f4,$29,$40
	.byte $d0,$0e,$f0,$89,$a9,$ff,$8d,$fb,$03,$4c,$d5,$c3,$a9,$03,$d0,$07
	.byte $a9,$ff,$85,$c3,$4c,$d5,$c3

Lbl_c45f:
	jsr Lbl_d1ef
	jmp Lbl_c3d5

Lbl_c465:
	lda #$00
	sta $56
	jsr Lbl_c8df
	lda $b7
	cmp #$01
	bne Lbl_c475
	jmp Lbl_c4c8

Lbl_c475:
	cmp #$02
	bne Lbl_c47c
	jmp Lbl_c52a

Lbl_c47c:
	cmp #$03
	bne Lbl_c483
	jmp Lbl_c4bd

Lbl_c483:
	cmp #$04
	bne Lbl_c48a
	jmp Lbl_c55d

Lbl_c48a:
	cmp #$05
	bne Lbl_c491
	jmp Lbl_c4b4

Lbl_c491:
	cmp #$06
	bne Lbl_c498
	jmp Lbl_c56d

Lbl_c498:
	cmp #$07
	bne Lbl_c49f
	jmp Lbl_c586

Lbl_c49f:
	cmp #$08
	bne Lbl_c4a6
	jmp Lbl_c2ac

Lbl_c4a6:
	cmp #$09
	bne Lbl_c4ad
	jmp Lbl_c29e

Lbl_c4ad:
	lda #$00
	sta $c5
	jmp Lbl_c35e

Lbl_c4b4:
	lda $c5
	ora #$02
	sta $c5
	jmp Lbl_c35e

Lbl_c4bd:
	lda $c5
	eor #$01
	and #$fd
	sta $c5
	jmp Lbl_c35e

Lbl_c4c8:
	lda $14
	sta $d7
	lda #$00
	sta $4c
	sta $4d
	jsr Lbl_c78f
	lda #$80
	sta $48
	sta $4a
	lda $14
	and #$08
	beq Lbl_c4ed
	lda $c1
	beq Lbl_c4e9
	lda #$03
	bne Lbl_c4ef

Lbl_c4e9:
	lda #$1b
	bne Lbl_c4ef

Lbl_c4ed:
	lda #$03

Lbl_c4ef:
	sta $46
	jsr Lbl_c5b2
	lda $14
	cmp $d7
	bne Lbl_c502
	lda #$39
	jsr Lbl_decc
	jmp Lbl_c527

Lbl_c502:
	jsr Lbl_d7e3
	jsr Lbl_cba9
	lda $14
	cmp #$08
	bcc Lbl_c522
	lda $d7
	cmp #$08
	bcc Lbl_c522
	lda #$01
	jsr Lbl_decc
	jsr Lbl_f6a7
	jsr Lbl_cdba
	jmp Lbl_c527

Lbl_c522:
	lda #$38
	jsr Lbl_decc

Lbl_c527:
	jmp Lbl_c35e

Lbl_c52a:
	jsr Lbl_dec2
	lda $06f3
	bne Lbl_c55a
	lda #$3d
	jsr Lbl_decc
	dec $dd
	bpl Lbl_c551
	dec $037e
	beq Lbl_c55a
	jsr Lbl_f71c
	bne Lbl_c55a
	jsr Lbl_cdba
	lda $14
	ora #$08
	sta $14
	jmp Lbl_c2fb

Lbl_c551:
	jsr Lbl_c5fa
	jsr Lbl_cdba
	jmp Lbl_c326

Lbl_c55a:
	jmp Lbl_c29e

Lbl_c55d:
	lda #$00
	jsr Lbl_e61b
	jsr Lbl_f833
	lda #$18
	jsr Lbl_decc
	jmp Lbl_c35e

Lbl_c56d:
	jsr Lbl_dec2
	lda #$00
	sta $03fb
	jsr Lbl_d7e3
	lda #$00
	jsr Lbl_e61b
	jsr Lbl_f273
	jsr Lbl_f9d5
	jmp Lbl_c264

Lbl_c586:
	lda $14
	and #$07
	asl a 
	tax 
	lda Lbl_c5a2,x
	sta $49
	lda Lbl_c5a3,x
	sta $4b
	lda #$80
	sta $48
	sta $4a
	jsr Lbl_c5b2
	jmp Lbl_c35e

Lbl_c5a2:
	.byte $3d

Lbl_c5a3:
	.byte $5a,$09,$75,$0e,$06,$37,$5d,$18,$1b,$59,$09,$4a,$40,$59,$2a

Lbl_c5b2:
	lda $48
	sta $03f5
	lda $49
	sta $03f6
	lda $4a
	sta $03f7
	lda $4b
	sta $03f8
	lda $14
	sta $03f9
	lda $c1
	sta $03fa
	lda $46
	sta $0350
	lda $03d0
	sta $0378
	lda $03d1
	sta $0379
	lda $03d2
	sta $037a
	lda $03d3
	sta $037b
	lda $03d4
	sta $037d
	lda $03d5
	sta $037c
	rts 

Lbl_c5fa:
	lda $03f5
	sta $48
	lda $03f6
	sta $49
	lda $03f7
	sta $4a
	lda $03f8
	sta $4b
	lda $03f9
	sta $14
	lda $03fa
	sta $c1
	lda $0350
	sta $46
	lda $0378
	sta $03d0
	lda $0379
	sta $03d1
	lda $037a
	sta $03d2
	lda $037b
	sta $03d3
	lda $037d
	sta $03d4
	lda $037c
	sta $03d5
	rts 

Lbl_c642:
	lda $10
	and #$07
	tax 
	lda Lbl_c651,x
	sta $75
	sta $76
	sta $77
	rts 

Lbl_c651:
	.byte $30,$22,$24,$26,$28,$2a,$30,$26

Lbl_c659:
	lda $c5
	and #$02
	bne Lbl_c679
	ldx $14
	lda Lbl_c9f4,x
	jsr Lbl_ea3a
	lda #$00
	jsr Lbl_eb51
	ldy #$0f

Lbl_c66e:
	lda ($7a),y
	sta $0650,y
	dey 
	bpl Lbl_c66e
	jmp Lbl_c683

Lbl_c679:
	ldx #$0f
	lda #$0f

Lbl_c67d:
	sta $0650,x
	dex 
	bpl Lbl_c67d

Lbl_c683:
	ldx #$0b
	lda $ff
	and #$20
	bne Lbl_c695

Lbl_c68b:
	lda Lbl_c6cb,x
	sta $0660,x
	dex 
	bpl Lbl_c68b
	rts 

Lbl_c695:
	lda Lbl_c6bf,x
	sta $0660,x
	dex 
	bpl Lbl_c695
	lda $c5
	and #$02
	beq Lbl_c6be
	lda $14
	and #$07
	sta $45
	asl a 
	clc 
	adc $45
	clc 
	adc #$02
	tay 
	ldx #$03

Lbl_c6b4:
	lda Lbl_c6d7,y
	sta $0668,x
	dey 
	dex 
	bne Lbl_c6b4

Lbl_c6be:
	rts 

Lbl_c6bf:
	.byte $0f,$30,$15,$0f,$0f,$30,$00,$0f,$0f,$3b,$1b,$0f

Lbl_c6cb:
	.byte $0f,$30,$15,$0f,$0f,$30,$00,$0f,$0f,$3b,$1b,$0f

Lbl_c6d7:
	.byte $05,$15,$25,$0a,$1a,$27,$16,$11,$38,$16,$26,$34,$1a,$2a,$30,$1b
	.byte $2b,$3b,$16,$26,$34,$07,$00,$10

Lbl_c6ef:
	lda $c5
	and #$02
	bne Lbl_c6ff
	ldx $14
	lda Lbl_c71a,x
	sta $d5
	jmp Lbl_c709

Lbl_c6ff:
	lda $14
	and #$07
	tax 
	lda Lbl_c73a,x
	sta $d5

Lbl_c709:
	ldx $14
	lda Lbl_c72a,x
	sta $d4
	lda $c5
	lsr a 
	bcc Lbl_c719
	lda #$07
	sta $d4

Lbl_c719:
	rts 

Lbl_c71a:
	.byte $11,$13,$12,$14,$12,$13,$14,$11,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f

Lbl_c72a:
	.byte $10,$10,$10,$10,$10,$10,$10,$10,$00,$01,$03,$00,$02,$01,$00,$01

Lbl_c73a:
	.byte $19,$18,$19,$18,$1a,$18,$18,$1b

Lbl_c742:
	jsr Lbl_ea03
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	lda $14
	and #$07
	tax 
	cmp #$07
	bne Lbl_c764
	lda $03fb
	bpl Lbl_c764
	lda #$0a
	bne Lbl_c767

Lbl_c764:
	lda Lbl_c76a,x

Lbl_c767:
	jmp Lbl_e9b8

Lbl_c76a:
	.byte $05,$03,$06,$04,$07,$03,$04,$09

Lbl_c772:
	lda $c5
	and #$01
	bne Lbl_c77e
	lda $14
	and #$08
	beq Lbl_c785

Lbl_c77e:
	lda $ff
	and #$df
	jmp Lbl_c789

Lbl_c785:
	lda $ff
	ora #$20

Lbl_c789:
	sta $ff
	sta $2000
	rts 

Lbl_c78f:
	lda Lbl_dd76
	sta $7a
	lda Lbl_dd77
	sta $7b
	ldy #$00
	ldy #$05

Lbl_c79d:
	lda ($7a),y
	sta a:$0000,y
	dey 
	bpl Lbl_c79d
	iny 
	ldx #$00

Lbl_c7a8:
	lda ($00),y
	cmp $14
	bne Lbl_c7ba
	lda ($02),y
	cmp $49
	bne Lbl_c7ba
	lda ($04),y
	cmp $4b
	beq Lbl_c7c7

Lbl_c7ba:
	iny 
	bne Lbl_c7a8
	rts 

Lbl_c7be:
	.byte $e6,$01,$e6,$03,$e6,$05,$4c,$a8,$c7

Lbl_c7c7:
	tya 
	eor #$01
	tay 
	lda ($00),y
	sta $14
	lda ($02),y
	sta $49
	lda ($04),y
	sta $4b
	rts 

Lbl_c7d8:
	lda Lbl_c7f8
	sta $7a
	lda Lbl_c7f9
	sta $7b
	ldy #$00
	lda #$00
	sta $3e
	sta $3f
	sta $44
	lda $ff
	and #$20
	bne Lbl_c7f5
	jmp Lbl_c880

Lbl_c7f5:
	jmp Lbl_c816

Lbl_c7f8:
	.byte $fa

Lbl_c7f9:
	.byte $c7,$fe,$c7,$06,$c8,$10,$80,$01,$74,$00,$40,$10,$5e,$10,$80,$01
	.byte $5c,$00,$08,$01,$5d,$00,$38,$00,$5e,$00,$08,$10,$5f

Lbl_c816:
	lda #$00
	jsr Lbl_f029
	lda #$00
	sta $44
	lda #$10
	sta $3e
	lda #$c0
	sta $3f
	lda $040d
	jsr Lbl_c841
	lda #$01
	sta $44
	lda #$10
	sta $3e
	lda #$80
	sta $3f
	lda $c3
	jsr Lbl_c841
	jmp Lbl_ec73

Lbl_c841:
	sta $00
	lda #$02

Lbl_c845:
	pha 
	lda $3f
	sec 
	sbc #$10
	sta $3f
	lda $00
	ldx #$7e
	cmp #$1f
	bcc Lbl_c869
	dex 
	dex 
	cmp #$3f
	bcc Lbl_c869
	dex 
	dex 
	cmp #$5f
	bcc Lbl_c869
	dex 
	dex 
	cmp #$7f
	bcc Lbl_c869
	dex 
	dex 

Lbl_c869:
	stx $45
	jsr Lbl_ecb4
	lda $00
	sec 
	sbc #$80
	bcs Lbl_c877
	lda #$00

Lbl_c877:
	sta $00
	pla 
	sec 
	sbc #$01
	bne Lbl_c845
	rts 

Lbl_c880:
	lda #$01
	jsr Lbl_f029
	lda #$00
	sta $44
	lda #$10
	sta $3e
	lda #$c0
	sta $3f
	lda $040d
	jsr Lbl_c8ae
	lda $03fc
	and #$04
	beq Lbl_c8ab
	lda #$01
	sta $44
	lda #$80
	sta $3f
	lda $92
	jsr Lbl_c8ae

Lbl_c8ab:
	jmp Lbl_ec73

Lbl_c8ae:
	sta $00
	lda #$04

Lbl_c8b2:
	pha 
	lda $3f
	sec 
	sbc #$08
	sta $3f
	lda $00
	ldx #$59
	cmp #$1f
	bcc Lbl_c8c8
	inx 
	cmp #$3f
	bcc Lbl_c8c8
	inx 

Lbl_c8c8:
	stx $45
	jsr Lbl_ecb4
	lda $00
	sec 
	sbc #$40
	bcs Lbl_c8d6
	lda #$00

Lbl_c8d6:
	sta $00
	pla 
	sec 
	sbc #$01
	bne Lbl_c8b2
	rts 

Lbl_c8df:
	ldy $56
	lda $0400,y
	sta $46
	lda $0401,y
	sta $47
	lda $0402,y
	sta $48
	lda $0403,y
	sta $49
	lda $0404,y
	sta $4a
	lda $0405,y
	sta $4b
	lda $0406,y
	sta $4c
	lda $0407,y
	sta $4d
	lda $0408,y
	sta $4e
	lda $0409,y
	sta $4f
	lda $040a,y
	sta $50
	lda $040b,y
	sta $51
	lda $040c,y
	sta $52
	lda $040d,y
	sta $53
	rts 

Lbl_c928:
	ldy $56
	lda $46
	sta $0400,y
	lda $47
	sta $0401,y
	lda $48
	sta $0402,y
	lda $49
	sta $0403,y
	lda $4a
	sta $0404,y
	lda $4b
	sta $0405,y
	lda $4c
	sta $0406,y
	lda $4d
	sta $0407,y
	lda $4e
	sta $0408,y
	lda $4f
	sta $0409,y
	lda $50
	sta $040a,y
	lda $51
	sta $040b,y
	lda $52
	sta $040c,y
	lda $53
	sta $040d,y
	rts 

Lbl_c971:
	lda #$00
	sta $56
	sta $57

Lbl_c977:
	ldx $56
	lda $0400,x
	beq Lbl_c990
	jsr Lbl_c8df
	lda $4f
	beq Lbl_c987
	dec $4f

Lbl_c987:
	jsr Lbl_c9a4
	jsr Lbl_c928
	jsr Lbl_ec73

Lbl_c990:
	lda $56
	clc 
	adc #$0e
	sta $56
	inc $57
	lda $57
	cmp #$12
	bcc Lbl_c977
	lda #$00
	sta $4f
	rts 

Lbl_c9a4:
	ldx #$40
	lda $14
	and #$08
	beq Lbl_c9ae
	ldx #$60

Lbl_c9ae:
	txa 
	pha 
	jsr Lbl_ea3a
	pla 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	and #$0f
	sta $d3
	lda $46
	sec 
	sbc #$01
	jsr Lbl_eb51
	lda $15
	bne Lbl_c9d3
	clc 
	lda $7a
	adc #$03
	sta $7a
	bcc Lbl_c9d3
	inc $7b

Lbl_c9d3:
	jmp ($007a)

Lbl_c9d6:
	lda #$00
	sta $56

Lbl_c9da:
	ldx $56
	lda $0400,x
	beq Lbl_c9ea
	jsr Lbl_c8df
	jsr Lbl_d2b9
	jsr Lbl_c928

Lbl_c9ea:
	lda $56
	clc 
	adc #$0e
	sta $56
	bcc Lbl_c9da
	rts 

Lbl_c9f4:
	.byte $16,$22,$18,$28,$20,$24,$2a,$26,$00,$02,$04,$06,$08,$10,$12,$14

Lbl_ca04:
	.byte $17,$23,$19,$29,$21,$25,$2b,$27,$01,$03,$05,$07,$09,$11,$13,$15

Lbl_ca14:
	lda $14
	and #$0f
	asl a 
	tax 
	lda Lbl_ca2b,x
	sta $49
	lda Lbl_ca2c,x
	sta $4b
	lda #$80
	sta $48
	sta $4a
	rts 

Lbl_ca2b:
	.byte $5a

Lbl_ca2c:
	.byte $16,$39,$36,$19,$55,$1e,$79,$69,$5d,$4e,$79,$39,$14,$59,$15,$18
	.byte $39,$45,$4b,$55,$07,$06,$0b,$36,$0b,$05,$7b,$05,$39,$39,$07

Lbl_ca4b:
	lda $c5
	and #$0c
	beq Lbl_ca52
	rts 

Lbl_ca52:
	lda $d8
	and #$01
	beq Lbl_ca73
	lda #$00
	sta $00
	lda #$70
	sta $01
	lda #$00
	sta $02
	lda #$71
	sta $03
	lda #$00
	sta $04
	lda #$72
	sta $05
	jmp Lbl_ca89

Lbl_ca73:
	lda #$31
	jsr Lbl_ea3a
	lda $14
	and #$0f
	jsr Lbl_eb51
	ldy #$05

Lbl_ca81:
	lda ($7a),y
	sta a:$0000,y
	dey 
	bpl Lbl_ca81

Lbl_ca89:
	ldx #$10

Lbl_ca8b:
	ldy $8e

Lbl_ca8d:
	lda ($00),y
	bpl Lbl_ca99
	tya 
	bne Lbl_ca95
	rts 

Lbl_ca95:
	ldy #$00
	beq Lbl_ca8d

Lbl_ca99:
	sta $46
	sty $8e
	lda ($02),y
	sta $49
	sec 
	sbc $1d
	and #$7f
	clc 
	adc #$06
	cmp #$1c
	bcs Lbl_cac0
	lda ($04),y
	sta $4b
	sec 
	sbc $1f
	and #$7f
	clc 
	adc #$06
	cmp #$1b
	bcs Lbl_cac0
	jmp Lbl_cac6

Lbl_cac0:
	inc $8e
	dex 
	bne Lbl_ca8b
	rts 

Lbl_cac6:
	lda $8e
	ldy #$49

Lbl_caca:
	cmp $0100,y
	bne Lbl_cad2
	inc $8e
	rts 

Lbl_cad2:
	dey 
	bpl Lbl_caca
	ldx #$70
	lda #$08
	sta $57

Lbl_cadb:
	lda $0400,x
	beq Lbl_caff
	inc $57
	lda $57
	cmp #$12
	beq Lbl_caf0
	txa 
	clc 
	adc #$0e
	tax 
	jmp Lbl_cadb

Lbl_caf0:
	inc $c6
	lda $c6
	and #$3f
	tax 
	lda $8e
	sta $010a,x
	inc $8e
	rts 

Lbl_caff:
	stx $56
	ldy $57
	ldx $46
	lda $ff
	and #$20
	beq Lbl_cb11
	lda Lbl_cb51,x
	jmp Lbl_cb14

Lbl_cb11:
	lda Lbl_cb7c,x

Lbl_cb14:
	sta $0150,y
	ldx $56
	lda #$01
	sta $0400,x
	lda #$00
	sta $0401,x
	sta $0406,x
	sta $0407,x
	sta $040b,x
	sta $040a,x
	sta $0409,x
	lda #$20
	sta $040d,x
	lda #$80
	sta $0402,x
	sta $0404,x
	lda $49
	sta $0403,x
	lda $4b
	sta $0405,x
	lda $8e
	sta a:$00f8,y
	inc $8e
	rts 

Lbl_cb51:
	.byte $24,$26,$28,$2b,$2e,$30,$32,$35,$37,$39,$3b,$3d,$3f,$41,$44,$46
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $5a,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$68

Lbl_cb7c:
	.byte $54,$56,$58,$5b,$5d,$5f,$62,$64,$66,$68,$6a,$6c,$6e,$70,$72,$74
	.byte $76,$78,$7a,$4e,$50,$7e,$80,$82,$85,$52,$88,$8a,$8c,$8d,$00,$00
	.byte $90,$2c,$2d,$30,$31,$2e,$2f,$32,$33,$34,$24,$26,$28

Lbl_cba9:
	ldx #$49
	lda #$ff

Lbl_cbad:
	sta $0100,x
	dex 
	bpl Lbl_cbad
	rts 

Lbl_cbb4:
	.byte $a5,$1d,$85,$00,$a5,$1f,$85,$01,$a5,$48,$85,$1c,$a5,$49,$38,$e9
	.byte $08,$85,$1d,$a5,$4a,$85,$1e,$a5,$4b,$85,$1f,$38,$a5,$1e,$e9,$80
	.byte $85,$1e,$a5,$1f,$e9,$07,$85,$1f,$4c,$35,$cc,$a5,$1d,$85,$00,$a5
	.byte $1f,$85,$01,$a5,$48,$c5,$1c,$a5,$49,$e5,$1d,$29,$7f,$c9,$09,$b0
	.byte $0e,$c9,$07,$b0,$15,$a5,$49,$38,$e9,$07,$85,$1d,$4c,$0a,$cc,$a5
	.byte $49,$38,$e9,$09,$85,$1d,$a5,$48,$85,$1c,$a5,$4a,$c5,$1e,$a5,$4b
	.byte $e5,$1f,$29,$7f,$c9,$0a,$b0,$0e,$c9,$05,$b0,$15,$a5,$4b,$38,$e9
	.byte $05,$85,$1f,$4c,$31,$cc,$a5,$4b,$38,$e9,$0a,$85,$1f,$a5,$4a,$85
	.byte $1e

Lbl_cc35:
	lda $c5
	and #$01
	bne Lbl_cc3e
	jsr Lbl_cc6d

Lbl_cc3e:
	lda $1d
	sec 
	sbc $00
	asl a 
	cmp #$80
	ror a 
	clc 
	adc $3a
	sta $3a
	lda $1f
	sec 
	sbc $01
	asl a 
	cmp #$80
	ror a 
	pha 
	clc 
	adc $3a
	sta $3a
	pla 
	asl a 
	asl a 
	asl a 
	asl a 
	clc 
	adc $3a
	sta $3a
	jsr Lbl_d1ad
	lda $d3
	jmp Lbl_e61b

Lbl_cc6d:
	ldx $14
	lda Lbl_ca04,x
	ldx #$7a
	jsr Lbl_ea3c
	lda $1d
	clc 
	adc #$06
	sta $1d
	clc 
	lda $1e
	adc #$80
	sta $1e
	lda $1f
	adc #$05
	sta $1f
	lda $1d
	and #$08
	beq Lbl_cc98
	jsr Lbl_cce8
	bcs Lbl_cc9d
	bcc Lbl_cca9

Lbl_cc98:
	jsr Lbl_ccef
	bcc Lbl_cca9

Lbl_cc9d:
	lda #$00
	sta $1c
	lda $1d
	and #$70
	ora #$08
	sta $1d

Lbl_cca9:
	lda $1f
	and #$08
	beq Lbl_ccb6
	jsr Lbl_ccff
	bcs Lbl_ccbb
	bcc Lbl_ccc7

Lbl_ccb6:
	jsr Lbl_ccf9
	bcc Lbl_ccc7

Lbl_ccbb:
	lda #$00
	sta $1e
	lda $1f
	and #$70
	ora #$08
	sta $1f

Lbl_ccc7:
	lda $1d
	sec 
	sbc #$06
	sta $1d
	sec 
	lda $1e
	sbc #$80
	sta $1e
	lda $1f
	sbc #$05
	sta $1f
	lda $1c
	and #$f0
	sta $1c
	lda $1e
	and #$f0
	sta $1e
	rts 

Lbl_cce8:
	jsr Lbl_cd0a
	inx 
	jmp Lbl_ccf2

Lbl_ccef:
	jsr Lbl_cd0a

Lbl_ccf2:
	tya 
	ora #$08
	tay 
	jmp Lbl_cd1d

Lbl_ccf9:
	jsr Lbl_cd0a
	jmp Lbl_cd1d

Lbl_ccff:
	jsr Lbl_cd0a
	iny 
	tya 
	and #$07
	tay 
	jmp Lbl_cd1d

Lbl_cd0a:
	lda $1d
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	and #$07
	tax 
	lda $1f
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	and #$07
	tay 
	rts 

Lbl_cd1d:
	txa 
	and #$07
	tax 
	lda ($7a),y

Lbl_cd23:
	asl a 
	dex 
	bpl Lbl_cd23
	rts 

Lbl_cd28:
	.byte $20,$71,$cd,$f0,$06,$20,$33,$cd,$a9,$ff,$60,$a5,$49,$38,$e9,$02
	.byte $29,$70,$18,$69,$02,$38,$e5,$1d,$0a,$30,$1e,$d0,$0c,$a5,$1c,$18
	.byte $69,$20,$29,$c0,$85,$1c,$d0,$11,$60,$a5,$1c,$18,$69,$40,$85,$1c
	.byte $90,$14,$e6,$1d,$e6,$3a,$a9,$ff,$60,$a5,$1c,$38,$e9,$40,$85,$1c
	.byte $b0,$04,$c6,$1d,$c6,$3a,$a9,$ff,$60,$a5,$4b,$38,$e9,$02,$29,$70
	.byte $18,$69,$02,$38,$e5,$1f,$0a,$30,$24,$d0,$0f,$a5,$1e,$18,$69,$20
	.byte $29,$c0,$85,$1e,$c9,$80,$f0,$29,$b0,$13,$a5,$1e,$18,$69,$40,$85
	.byte $1e,$90,$1c,$e6,$1f,$a5,$3a,$18,$69,$11,$4c,$b5,$cd,$a5,$1e,$38
	.byte $e9,$40,$85,$1e,$b0,$09,$c6,$1f,$a5,$3a,$38,$e9,$11,$85,$3a,$a9
	.byte $ff,$60

Lbl_cdba:
	jsr Lbl_dec2
	lda $14
	and #$07
	tax 
	lda Lbl_cdc8,x
	jmp Lbl_decc

Lbl_cdc8:
	.byte $06,$04,$02,$13,$07,$05,$37,$2b

Lbl_cdd0:
	lda $15
	and #$c0
	beq Lbl_ce0e
	lda $19
	bne Lbl_ce0e
	lda $15
	bmi Lbl_cde9
	lda $b6
	cmp #$09
	bcs Lbl_ce08
	inc $b6
	jmp Lbl_cded

Lbl_cde9:
	dec $b6
	beq Lbl_ce08

Lbl_cded:
	lda $b6
	asl a 
	asl a 
	asl a 
	and #$f0
	sta $00
	ldx #$1f

Lbl_cdf8:
	lda $0650,x
	sec 
	sbc $00
	bcs Lbl_ce02
	lda #$0f

Lbl_ce02:
	sta $58,x
	dex 
	bpl Lbl_cdf8
	rts 

Lbl_ce08:
	lda $15
	and #$3f
	sta $15

Lbl_ce0e:
	rts 

Lbl_ce0f:
	lda $15
	and #$01
	ora #$80
	sta $15
	lda #$08
	sta $b6
	jsr Lbl_e6fa
	jsr Lbl_e93f
	jsr Lbl_e936
	jmp Lbl_e6e9

Lbl_ce27:
	lda $15
	ora #$40
	sta $15
	rts 

Lbl_ce2e:
	jsr Lbl_ce0f

Lbl_ce31:
	jsr Lbl_e936
	jsr Lbl_cdd0
	lda $15
	bmi Lbl_ce31
	rts 

Lbl_ce3c:
	jsr Lbl_ce27

Lbl_ce3f:
	jsr Lbl_e936
	jsr Lbl_cdd0
	bit $15
	bvs Lbl_ce3f
	rts 

Lbl_ce4a:
	.byte $48,$20,$36,$e9,$68,$38,$e9,$01,$d0,$f6,$60,$a5,$45,$48,$a5,$10
	.byte $0a,$0a,$85,$45,$a2,$0f,$a5,$45,$18,$69,$10,$29,$30,$85,$45,$bd
	.byte $50,$06,$45,$45,$95,$58,$ca,$10,$ed,$68,$85,$45,$60,$a2,$0f,$bd
	.byte $50,$06,$95,$58,$ca,$10,$f8,$60

Lbl_ce82:
	jsr Lbl_e6fa
	ldx #$03

Lbl_ce87:
	lda Lbl_ce97,x
	sta $0650,x
	lda Lbl_ce9b,x
	sta $0660,x
	dex 
	bpl Lbl_ce87
	rts 

Lbl_ce97:
	.byte $0f,$30,$0f,$0f

Lbl_ce9b:
	.byte $0f,$30,$15,$02,$0f,$30,$30,$30

Lbl_cea3:
	lda $0650,x
	cmp #$0f
	beq Lbl_ceb3
	sec 
	sbc $45
	bcs Lbl_ceb1
	lda #$0f

Lbl_ceb1:
	sta $58,x

Lbl_ceb3:
	rts 

Lbl_ceb4:
	.byte $e8,$20,$a3,$ce,$e8,$20,$a3,$ce,$e8,$20,$a3,$ce,$8a,$38,$e9,$03
	.byte $aa,$60,$a6,$4e,$9d,$00,$05,$20,$12,$e7,$a5,$c7,$29,$fe,$85,$c7
	.byte $a5,$c8,$29,$fe,$85,$c8,$4c,$97,$e7,$a9,$00,$a6,$4e,$9d,$00,$05
	.byte $20,$12,$e7,$a5,$c7,$29,$fe,$85,$c7,$a5,$c8,$29,$fe,$85,$c8,$ad
	.byte $00,$cf,$85,$7a,$ad,$01,$cf,$85,$7b,$4c,$97,$e7,$02,$cf,$22,$01
	.byte $01,$01,$01,$20,$ab,$d2,$10,$03,$20,$dd,$ce,$60,$18,$69,$40,$a8
	.byte $29,$7f,$c9,$40,$90,$05,$49,$ff,$18,$69,$81,$aa,$98,$30,$04,$bd
	.byte $2e,$cf,$60,$a9,$00,$38,$fd,$2e,$cf,$60,$00,$01,$02,$02,$03,$04
	.byte $05,$05,$06,$07,$08,$09,$09,$0a,$0b,$0c,$0c,$0d,$0e,$0e,$0f,$10
	.byte $10,$11,$12,$12,$13,$14,$14,$15,$15,$16,$17,$17,$18,$18,$19,$19
	.byte $1a,$1a,$1b,$1b,$1b,$1c,$1c,$1d,$1d,$1d,$1e,$1e,$1e,$1e,$1f,$1f
	.byte $1f,$1f,$1f,$20,$20,$20,$20,$20,$20,$20,$20,$18,$69,$40,$a8,$29
	.byte $7f,$c9,$40,$90,$05,$49,$ff,$18,$69,$81,$aa,$98,$30,$04,$bd,$8d
	.byte $cf,$60,$a9,$00,$38,$fd,$8d,$cf,$60,$00,$03,$05,$08,$0b,$0e,$10
	.byte $13,$16,$19,$1b,$1e,$21,$23,$26,$28,$2b,$2d,$30,$32,$35,$37,$3a
	.byte $3c,$3e,$40,$43,$45,$47,$49,$4b,$4d,$4f,$51,$53,$55,$57,$58,$5a
	.byte $5c,$5d,$5f,$60,$61,$63,$64,$65,$66,$67,$68,$69,$6a,$6b,$6c,$6d
	.byte $6d,$6e,$6e,$6f,$6f,$6f,$70,$70,$70,$70,$18,$69,$40,$a8,$29,$7f
	.byte $c9,$40,$90,$05,$49,$ff,$18,$69,$81,$aa,$98,$30,$04,$bd,$ec,$cf
	.byte $60,$a9,$00,$38,$fd,$ec,$cf,$60,$00,$02,$04,$06,$08,$0a,$0c,$0e
	.byte $10,$12,$13,$15,$17,$19,$1b,$1d,$1f,$20,$22,$24,$26,$27,$29,$2b
	.byte $2c,$2e,$30,$31,$33,$34,$36,$37,$39,$3a,$3b,$3d,$3e,$3f,$40,$41
	.byte $43,$44,$45,$46,$47,$47,$48,$49,$4a,$4b,$4b,$4c,$4d,$4d,$4e,$4e
	.byte $4e,$4f,$4f,$4f,$50,$50,$50,$50,$50,$a9,$00,$85,$04,$a5,$00,$38
	.byte $e5,$02,$66,$04,$30,$05,$a5,$02,$38,$e5,$00,$85,$00,$a5,$01,$38
	.byte $e5,$03,$66,$04,$30,$05,$a5,$03,$38,$e5,$01,$85,$01,$c5,$00,$f0
	.byte $2e,$b0,$0a,$a6,$01,$a5,$00,$85,$01,$86,$00,$e6,$04,$a9,$20,$85
	.byte $05,$a2,$00,$06,$00,$b0,$06,$a5,$00,$c5,$01,$90,$0c,$a5,$00,$38
	.byte $e5,$01,$85,$00,$8a,$18,$65,$05,$aa,$46,$05,$d0,$e6,$f0,$02,$a2
	.byte $40,$bd,$b4,$d0,$85,$4c,$bd,$f5,$d0,$85,$4d,$a9,$01,$24,$04,$f0
	.byte $08,$a6,$4c,$a5,$4d,$85,$4c,$86,$4d,$06,$04,$90,$07,$a9,$00,$38
	.byte $e5,$4d,$85,$4d,$06,$04,$90,$07,$a9,$00,$38,$e5,$4c,$85,$4c,$60
	.byte $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f
	.byte $10,$10,$11,$12,$13,$14,$15,$16,$16,$17,$18,$19,$1a,$1a,$1b,$1c
	.byte $1d,$1d,$1e,$1f,$1f,$20,$21,$21,$22,$23,$23,$24,$24,$25,$25,$26
	.byte $26,$27,$27,$28,$28,$29,$29,$2a,$2a,$2b,$2b,$2b,$2c,$2c,$2d,$2d
	.byte $2d,$40,$40,$40,$40,$40,$40,$40,$40,$40,$3f,$3f,$3f,$3f,$3f,$3f
	.byte $3e,$3e,$3e,$3e,$3d,$3d,$3d,$3d,$3c,$3c,$3c,$3b,$3b,$3b,$3a,$3a
	.byte $3a,$39,$39,$39,$38,$38,$37,$37,$37,$36,$36,$36,$35,$35,$34,$34
	.byte $34,$33,$33,$32,$32,$32,$31,$31,$31,$30,$30,$2f,$2f,$2f,$2e,$2e
	.byte $2e,$2d,$a9,$10,$24,$4c,$30,$02,$a9,$f0,$18,$65,$4c,$85,$4c,$a9
	.byte $10,$24,$4d,$30,$07,$a9,$f0,$18,$65,$4d,$85,$4d,$60,$ad,$03,$04
	.byte $38,$e5,$49,$85,$00,$ad,$05,$04,$38,$e5,$4b,$85,$01,$a5,$00,$38
	.byte $e5,$01,$0a,$0a,$26,$02,$a5,$00,$18,$65,$01,$0a,$0a,$26,$02,$a5
	.byte $02,$29,$03,$aa,$bd,$7d,$d1,$aa,$60,$01,$00,$02,$03,$a9,$0f,$aa
	.byte $95,$58,$9d,$50,$06,$ca,$10,$f8,$60

Lbl_d18d:
	lda $1f
	sta $00
	lda $1e
	jsr Lbl_d1a4
	sta $21
	lda $1d
	sta $00
	lda $1c
	jsr Lbl_d1a4
	sta $20
	rts 

Lbl_d1a4:
	ldx #$04

Lbl_d1a6:
	lsr $00
	ror a 
	dex 
	bne Lbl_d1a6
	rts 

Lbl_d1ad:
	lda $20
	sta $02
	lda $21
	sta $03
	jsr Lbl_d18d
	lda $20
	sec 
	sbc $02
	sta $00
	clc 
	adc $fd
	sta $fd
	ror a 
	eor $00
	bpl Lbl_d1cf
	lda $f1
	eor #$01
	sta $f1

Lbl_d1cf:
	lda $21
	sec 
	sbc $03
	sta $00
	clc 
	adc $fc
	sta $fc
	cmp #$f0
	bcc Lbl_d1ee
	bit $00
	bpl Lbl_d1e9
	sec 
	sbc #$10
	jmp Lbl_d1ec

Lbl_d1e9:
	clc 
	adc #$10

Lbl_d1ec:
	sta $fc

Lbl_d1ee:
	rts 

Lbl_d1ef:
	sta $b7
	lda $15
	ora #$40
	sta $15
	rts 

Lbl_d1f8:
	.byte $ad,$02,$04,$c5,$48,$ad,$03,$04,$38,$e5,$49,$20,$0c,$eb,$85,$45
	.byte $ad,$04,$04,$c5,$4a,$ad,$05,$04,$38,$e5,$4b,$20,$0c,$eb,$c5,$45
	.byte $b0,$02,$a5,$45,$60,$a5,$f7,$29,$0f,$aa,$bd,$28,$d2,$85,$79,$60
	.byte $00,$03,$07,$00,$05,$04,$06,$05,$01,$02,$08,$01,$00,$03,$07,$00
	.byte $c9,$c0,$b0,$04,$29,$08,$d0,$03,$a9,$ff,$60,$a9,$00,$60,$c9,$c0
	.byte $b0,$06,$29,$0c,$c9,$08,$f0,$03,$a9,$ff,$60,$a9,$00,$60,$a2,$ff
	.byte $2c,$e5,$e6,$f0,$13,$2c,$e3,$e6,$f0,$0b,$a5,$14,$c9,$05,$f0,$08
	.byte $a9,$00,$85,$53,$aa,$a9,$00,$60,$a9,$ff,$60,$2c,$e5,$e6,$f0,$08
	.byte $2c,$e3,$e6,$f0,$03,$a9,$00,$60,$a9,$ff,$60,$c9,$c0,$b0,$04,$29
	.byte $20,$d0,$03,$a9,$ff,$60,$a9,$00,$60,$c9,$c0,$b0,$06,$29,$3c,$c9
	.byte $04,$f0,$03,$a9,$ff,$60,$a9,$00,$60,$c9,$c0,$b0,$03,$a9,$ff,$60
	.byte $a9,$00,$60,$a6,$4e,$bd,$00,$05,$60,$18,$65,$4e,$aa,$bd,$00,$05
	.byte $60

Lbl_d2b9:
	lda $4b
	sec 
	sbc $1f
	and #$0f
	sta $4e
	asl a 
	asl a 
	asl a 
	asl a 
	clc 
	adc $4e
	sta $4e
	lda $49
	sec 
	sbc $1d
	and #$1f
	clc 
	adc $4e
	clc 
	adc $3a
	sta $4e
	rts 

Lbl_d2db:
	.byte $20,$fe,$d2,$a5,$49,$29,$7f,$85,$49,$a5,$48,$18,$65,$4c,$85,$48
	.byte $6a,$45,$4c,$10,$0d,$a5,$4c,$30,$05,$e6,$49,$e6,$4e,$60,$c6,$49
	.byte $c6,$4e,$60,$a5,$4b,$29,$7f,$85,$4b,$a5,$4a,$18,$65,$4d,$85,$4a
	.byte $6a,$45,$4d,$10,$13,$a5,$4d,$30,$06,$e6,$4b,$a9,$11,$d0,$04,$c6
	.byte $4b,$a9,$ef,$18,$65,$4e,$85,$4e,$60,$20,$49,$d3,$a9,$00,$a6,$4c
	.byte $10,$02,$a9,$ff,$48,$8a,$0a,$18,$65,$48,$85,$48,$68,$65,$49,$48
	.byte $38,$e5,$49,$18,$65,$4e,$85,$4e,$68,$29,$7f,$85,$49,$60,$a9,$00
	.byte $a6,$4d,$10,$02,$a9,$ff,$48,$8a,$0a,$18,$65,$4a,$85,$4a,$68,$65
	.byte $4b,$48,$38,$e5,$4b,$85,$4b,$0a,$0a,$0a,$0a,$18,$65,$4b,$18,$65
	.byte $4e,$85,$4e,$68,$29,$7f,$85,$4b,$60,$20,$e1,$d3,$4c,$7d,$d3,$20
	.byte $de,$d2,$20,$a3,$d3,$f0,$05,$a5,$42,$85,$48,$60,$20,$94,$d3,$f0
	.byte $07,$a9,$00,$38,$e5,$42,$85,$48,$60,$a6,$4e,$a5,$48,$18,$65,$42
	.byte $f0,$0f,$90,$0d,$e8,$4c,$ac,$d3,$a6,$4e,$a5,$48,$c5,$42,$b0,$01
	.byte $ca,$bd,$00,$05,$30,$e2,$a5,$4a,$18,$65,$43,$90,$0e,$c9,$20,$90
	.byte $0a,$8a,$18,$69,$11,$a8,$b9,$00,$05,$30,$cd,$a5,$4a,$38,$e5,$43
	.byte $b0,$0e,$c9,$e0,$b0,$0a,$8a,$38,$e9,$11,$a8,$b9,$00,$05,$30,$b8
	.byte $a9,$00,$60,$20,$fe,$d2,$20,$0b,$d4,$f0,$05,$a5,$43,$85,$4a,$60
	.byte $20,$f8,$d3,$f0,$52,$a9,$00,$38,$e5,$43,$85,$4a,$60,$a6,$4e,$a5
	.byte $4a,$18,$65,$43,$f0,$17,$90,$15,$8a,$18,$69,$11,$aa,$4c,$18,$d4
	.byte $a6,$4e,$a5,$4a,$c5,$43,$b0,$05,$8a,$38,$e9,$11,$aa,$bd,$00,$05
	.byte $30,$25,$a5,$48,$18,$65,$42,$90,$0b,$c9,$20,$90,$07,$e8,$bd,$00
	.byte $05,$30,$14,$ca,$a5,$48,$38,$e5,$42,$b0,$0a,$c9,$e0,$b0,$06,$ca
	.byte $bd,$00,$05,$30,$02,$a9,$00,$60,$20,$67,$d4,$f0,$06,$20,$52,$d4
	.byte $a9,$ff,$60,$20,$52,$d4,$60,$20,$7c,$d4,$a5,$4c,$f0,$33,$30,$06
	.byte $20,$8f,$d4,$4c,$8c,$d4,$20,$bc,$d4,$4c,$8c,$d4,$20,$7c,$d4,$a5
	.byte $4d,$f0,$1e,$30,$06,$20,$e6,$d4,$4c,$8c,$d4,$20,$10,$d5,$4c,$8c
	.byte $d4,$a9,$00,$85,$0f,$20,$f9,$d5,$a5,$49,$85,$08,$a5,$4b,$85,$09
	.byte $60,$a5,$0f,$60,$a5,$49,$48,$a5,$48,$48,$a5,$4b,$48,$a5,$4a,$48
	.byte $20,$b8,$d5,$20,$74,$d5,$d0,$03,$4c,$3a,$d5,$68,$85,$4a,$68,$85
	.byte $4b,$68,$85,$48,$68,$85,$49,$a5,$0a,$49,$ff,$18,$69,$01,$85,$48
	.byte $60,$a5,$49,$48,$a5,$48,$48,$a5,$4b,$48,$a5,$4a,$48,$20,$aa,$d5
	.byte $20,$74,$d5,$f0,$6a,$68,$85,$4a,$68,$85,$4b,$68,$85,$48,$68,$85
	.byte $49,$a5,$0a,$85,$48,$d0,$03,$20,$79,$d6,$60,$a5,$49,$48,$a5,$48
	.byte $48,$a5,$4b,$48,$a5,$4a,$48,$20,$da,$d5,$20,$47,$d5,$f0,$40,$68
	.byte $85,$4a,$68,$85,$4b,$68,$85,$48,$68,$85,$49,$a5,$0c,$49,$ff,$18
	.byte $69,$01,$85,$4a,$60,$a5,$49,$48,$a5,$48,$48,$a5,$4b,$48,$a5,$4a
	.byte $48,$20,$cc,$d5,$20,$47,$d5,$f0,$16,$68,$85,$4a,$68,$85,$4b,$68
	.byte $85,$48,$68,$85,$49,$a5,$0c,$85,$4a,$d0,$03,$20,$83,$d6,$60,$68
	.byte $85,$4a,$68,$85,$4b,$68,$85,$48,$68,$85,$49,$60,$a5,$49,$48,$a5
	.byte $48,$48,$20,$b8,$d5,$a5,$49,$85,$0e,$68,$85,$48,$68,$85,$49,$20
	.byte $aa,$d5,$20,$ee,$d5,$bd,$00,$05,$30,$40,$e8,$a5,$49,$c5,$0e,$f0
	.byte $05,$e6,$49,$4c,$60,$d5,$a9,$00,$60,$a5,$4b,$48,$a5,$4a,$48,$20
	.byte $da,$d5,$a5,$4b,$85,$0e,$68,$85,$4a,$68,$85,$4b,$20,$cc,$d5,$20
	.byte $ee,$d5,$bd,$00,$05,$30,$13,$8a,$18,$69,$11,$aa,$a5,$4b,$c5,$0e
	.byte $f0,$05,$e6,$4b,$4c,$8d,$d5,$a9,$00,$60,$a9,$ff,$85,$0f,$60,$a5
	.byte $48,$38,$e5,$0a,$85,$48,$a5,$49,$e5,$0b,$85,$49,$60,$a5,$48,$18
	.byte $65,$0a,$85,$48,$a5,$49,$65,$0b,$85,$49,$a5,$48,$d0,$02,$c6,$49
	.byte $60,$a5,$4a,$38,$e5,$0c,$85,$4a,$a5,$4b,$e5,$0d,$85,$4b,$60,$a5
	.byte $4a,$18,$65,$0c,$85,$4a,$a5,$4b,$65,$0d,$85,$4b,$a5,$4a,$d0,$02
	.byte $c6,$4b,$60,$a5,$4e,$48,$20,$b9,$d2,$aa,$68,$85,$4e,$60,$8a,$4a
	.byte $66,$0a,$4a,$66,$0a,$29,$3f,$85,$0b,$a5,$0a,$29,$c0,$85,$0a,$98
	.byte $4a,$66,$0c,$4a,$66,$0c,$29,$3f,$85,$0d,$a5,$0c,$29,$c0,$85,$0c
	.byte $60,$20,$35,$d6,$f0,$06,$20,$27,$d6,$a9,$ff,$60,$20,$7a,$d3,$f0
	.byte $08,$a9,$00,$38,$38,$e5,$4c,$85,$4c,$60,$20,$de,$d3,$f0,$08,$a9
	.byte $00,$38,$38,$e5,$4d,$85,$4d,$60,$a6,$47,$a5,$49,$18,$7d,$5e,$d6
	.byte $85,$49,$a5,$4b,$18,$7d,$67,$d6,$85,$4b,$a5,$4e,$18,$7d,$70,$d6
	.byte $85,$4e,$60,$00,$00,$01,$01,$01,$00,$ff,$ff,$ff,$00,$ff,$ff,$00
	.byte $01,$01,$01,$00,$ff,$00,$ef,$f0,$01,$12,$11,$10,$ff,$ee,$e6,$49
	.byte $e6,$4e,$60,$c6,$49,$c6,$4e,$60,$e6,$4b,$a5,$4e,$18,$69,$11,$85
	.byte $4e,$60,$c6,$4b,$a5,$4e,$38,$e9,$11,$85,$4e,$60,$20,$cd,$d6,$8a
	.byte $48,$a5,$45,$c9,$7f,$f0,$1e,$a5,$53,$38,$e5,$45,$b0,$02,$a9,$00
	.byte $85,$53,$90,$08,$a9,$36,$20,$cc,$de,$4c,$bc,$d6,$a9,$1d,$20,$cc
	.byte $de,$a9,$08,$85,$4f,$68,$aa,$a5,$44,$f0,$04,$09,$80,$95,$7e,$a9
	.byte $00,$60,$85,$44,$a5,$40,$4a,$85,$00,$a5,$3e,$38,$e5,$00,$85,$00
	.byte $a5,$41,$4a,$85,$01,$a5,$3f,$38,$e5,$01,$85,$01,$a2,$0f,$b5,$7e
	.byte $30,$1a,$f0,$18,$85,$45,$b5,$7c,$38,$e5,$00,$c5,$40,$f0,$02,$b0
	.byte $0b,$b5,$7d,$38,$e5,$01,$c5,$41,$f0,$0b,$90,$09,$ca,$ca,$ca,$10
	.byte $dd,$68,$68,$a9,$ff,$60,$20,$cd,$d6,$a5,$44,$f0,$06,$09,$80,$95
	.byte $7e,$a9,$00,$60,$85,$44,$a5,$40,$4a,$85,$00,$a5,$3e,$38,$e5,$00
	.byte $85,$00,$a5,$41,$4a,$85,$01,$a5,$3f,$38,$e5,$01,$85,$01,$a5,$7e
	.byte $30,$23,$f0,$21,$85,$45,$a5,$7c,$38,$e5,$00,$c5,$40,$f0,$02,$b0
	.byte $14,$a5,$7d,$38,$e5,$01,$c5,$41,$f0,$02,$b0,$09,$a5,$44,$09,$80
	.byte $85,$7e,$a9,$00,$60,$a9,$ff,$60,$20,$97,$d6,$d0,$07,$a9,$0c,$20
	.byte $cc,$de,$a9,$00,$60,$20,$11,$d7,$d0,$07,$a9,$0d,$20,$cc,$de,$a9
	.byte $00,$60,$a5,$4f,$f0,$0e,$a5,$44,$29,$fc,$85,$44,$a5,$10,$29,$03
	.byte $05,$44,$85,$44,$60,$20,$98,$d7,$a9,$00,$95,$7e,$60,$a5,$57,$0a
	.byte $18,$65,$57,$aa,$60,$48,$20,$98,$d7,$b5,$7e,$a8,$a5,$3e,$95,$7c
	.byte $a5,$3f,$95,$7d,$68,$29,$7f,$95,$7e,$98,$60

Lbl_d7b6:
	ldx #$11
	lda #$00

Lbl_d7ba:
	sta $7c,x
	dex 
	bpl Lbl_d7ba
	rts 

Lbl_d7c0:
	.byte $a0,$01,$e8,$b9,$46,$00,$9d,$00,$04,$c8,$c0,$0e,$d0,$f4,$60,$bd
	.byte $00,$04,$f0,$0c,$e4,$00,$f0,$0a,$8a,$18,$69,$0e,$aa,$4c,$cf,$d7
	.byte $a9,$ff,$60

Lbl_d7e3:
	lda #$00
	ldx #$0e

Lbl_d7e7:
	sta $0400,x
	inx 
	bne Lbl_d7e7
	rts 

Lbl_d7ee:
	.byte $a9,$00,$a2,$0d,$95,$46,$ca,$d0,$fb,$60,$a6,$57,$a5,$46,$9d,$50
	.byte $01,$a9,$02,$85,$46,$60,$a4,$57,$c0,$08,$90,$12,$e6,$c6,$a5,$c6
	.byte $29,$3f,$aa,$b9,$f8,$00,$9d,$0a,$01,$a9,$ff,$99,$f8,$00,$a9,$00
	.byte $85,$46,$85,$4f,$60,$a4,$57,$a9,$ff,$99,$f8,$00,$d0,$f0,$a5,$57
	.byte $38,$e9,$01,$c9,$05,$b0,$e7,$20,$90,$d7,$4c,$1c,$d8,$a5,$49,$85
	.byte $00,$a5,$4b,$85,$01,$ad,$03,$04,$85,$02,$ad,$05,$04,$85,$03,$20
	.byte $2d,$d0,$60,$48,$a2,$54,$a9,$ee,$85,$00,$20,$cf,$d7,$f0,$0c,$8a
	.byte $48,$20,$c0,$d7,$68,$aa,$68,$9d,$00,$04,$60,$68,$a9,$00,$60,$a2
	.byte $4c,$a9,$40,$20,$14,$eb,$a5,$4d,$38,$e9,$40,$85,$4d,$a2,$4d,$a9
	.byte $40,$20,$14,$eb,$60

Lbl_d883:
	lda #$00
	sta $93
	lda $1c
	sta $c9
	asl a 
	lda $1d
	sta $ca
	rol a 
	cmp $24
	beq Lbl_d8bc
	bpl Lbl_d8a6
	dec $22
	dec $24
	lda $22
	lsr a 
	bcc Lbl_d8a2
	dec $26

Lbl_d8a2:
	ldx #$03
	bne Lbl_d8b3

Lbl_d8a6:
	inc $22
	inc $24
	lda $22
	lsr a 
	bcs Lbl_d8b1
	inc $26

Lbl_d8b1:
	ldx #$01

Lbl_d8b3:
	jsr Lbl_d908
	jsr Lbl_dac4
	jmp Lbl_dbe4

Lbl_d8bc:
	lda $1e
	sta $cb
	clc 
	adc #$40
	sta $00
	lda $1f
	sta $cc
	adc #$00
	sta $01
	asl $00
	lda $01
	rol a 
	cmp $25
	beq Lbl_d907
	bpl Lbl_d8ec
	dec $23
	dec $25
	lda $23
	lsr a 
	bcc Lbl_d8e8
	lda $26
	sec 
	sbc #$11
	sta $26

Lbl_d8e8:
	ldx #$00
	beq Lbl_d8fe

Lbl_d8ec:
	inc $23
	inc $25
	lda $23
	lsr a 
	bcs Lbl_d8fc
	lda $26
	clc 
	adc #$11
	sta $26

Lbl_d8fc:
	ldx #$02

Lbl_d8fe:
	jsr Lbl_d908
	jsr Lbl_da15
	jmp Lbl_db98

Lbl_d907:
	rts 

Lbl_d908:
	stx $39
	lda $22
	and #$3f
	sta $22
	clc 
	adc Lbl_d94e,x
	and #$3f
	sta $04
	lda $23
	jsr Lbl_e704
	sta $23
	clc 
	adc Lbl_d952,x
	jsr Lbl_e704
	sta $05
	lda $24
	clc 
	adc Lbl_d94e,x
	sta $08
	lda $25
	clc 
	adc Lbl_d952,x
	sta $09
	lda $23
	and #$01
	beq Lbl_d943
	txa 
	clc 
	adc #$04
	tax 

Lbl_d943:
	lda $26
	clc 
	adc Lbl_d956,x
	sta $0c
	jmp Lbl_d95e

Lbl_d94e:
	.byte $00,$20,$00,$00

Lbl_d952:
	.byte $00,$00,$1d,$00

Lbl_d956:
	.byte $00,$10,$ee,$00,$00,$10,$ff,$00

Lbl_d95e:
	lda $08
	sta $0a
	lda $09
	sta $0b
	jsr Lbl_d975
	jsr Lbl_d98c
	jsr Lbl_d9af
	jsr Lbl_d9d3
	jmp Lbl_d9f5

Lbl_d975:
	ldx $14
	lda Lbl_c9f4,x
	ldx #$00
	jsr Lbl_ea3c
	ldy #$02

Lbl_d981:
	lda ($00),y
	sta a:$0025,y
	iny 
	cpy #$0c
	bne Lbl_d981
	rts 

Lbl_d98c:
	lda $0b
	and #$f8
	asl a 
	rol $38
	asl a 
	rol $38
	sta $37
	lda $0a
	and #$f8
	lsr a 
	lsr a 
	lsr a 
	ora $37
	clc 
	adc $2f
	sta $37
	lda $38
	and #$03
	adc $30
	sta $38
	rts 

Lbl_d9af:
	ldy #$00
	lda $0b
	lsr a 
	lsr a 
	lsr a 
	lda ($37),y
	rol a 
	rol $36
	tax 
	lda $0a
	lsr a 
	lsr a 
	lsr a 
	txa 
	rol a 
	rol $36
	clc 
	adc $2d
	sta $35
	lda $36
	and #$03
	adc $2e
	sta $36
	rts 

Lbl_d9d3:
	ldy #$00
	lda $0b
	lsr a 
	lsr a 
	lda ($35),y
	rol a 
	rol $34
	tax 
	lda $0a
	lsr a 
	lsr a 
	txa 
	rol a 
	rol $34
	clc 
	adc $2b
	sta $33
	lda $34
	and #$03
	adc $2c
	sta $34
	rts 

Lbl_d9f5:
	ldy #$00
	lda $0b
	lsr a 
	lda ($33),y
	rol a 
	rol $32
	tax 
	lda $0a
	lsr a 
	txa 
	rol a 
	rol $32
	clc 
	adc $29
	sta $31
	lda $32
	and #$03
	adc $2a
	sta $32
	rts 

Lbl_da15:
	lda $04
	sta $06
	lda $05
	sta $07
	lda $08
	sta $0a
	lda $09
	sta $0b
	lda $0c
	sta $0d
	lda #$21
	pha 
	ldy #$00

Lbl_da2e:
	lda $06
	sta $c7
	lda $07
	sta $c8
	jsr Lbl_e74d
	jsr Lbl_f19b

Lbl_da3c:
	lda ($33),y
	tay 
	lda ($27),y
	ldx $0d
	sta $0500,x
	jsr Lbl_dcdd
	ldx $19
	ldy #$00
	lda ($31),y
	sta $0300,x
	inx 
	stx $19
	pla 
	sec 
	sbc #$01
	bne Lbl_da5e
	jmp Lbl_f1bc

Lbl_da5e:
	pha 
	inc $06
	inc $0a
	lda $06
	lsr a 
	bcc Lbl_da71
	inc $31
	bne Lbl_da6e
	inc $32

Lbl_da6e:
	jmp Lbl_daaf

Lbl_da71:
	inc $0d
	lda $0a
	and #$03
	beq Lbl_da82
	inc $33
	bne Lbl_da7f
	inc $34

Lbl_da7f:
	jmp Lbl_daac

Lbl_da82:
	lda $0a
	and #$07
	beq Lbl_da91
	inc $35
	bne Lbl_da8e
	inc $36

Lbl_da8e:
	jmp Lbl_daa9

Lbl_da91:
	inc $37
	bne Lbl_da97
	inc $38

Lbl_da97:
	lda $0a
	bne Lbl_daa6
	sec 
	lda $37
	sbc #$20
	sta $37
	bcs Lbl_daa6
	dec $38

Lbl_daa6:
	jsr Lbl_d9af

Lbl_daa9:
	jsr Lbl_d9d3

Lbl_daac:
	jsr Lbl_d9f5

Lbl_daaf:
	lda $06
	and #$1f
	beq Lbl_dab8
	jmp Lbl_da3c

Lbl_dab8:
	lda $06
	and #$3f
	sta $06
	jsr Lbl_f1bc
	jmp Lbl_da2e

Lbl_dac4:
	lda $08
	sta $0a
	lda $09
	sta $0b
	lda $04
	sta $06
	lda $05
	sta $07
	lda $0c
	sta $0d
	lda #$1e
	pha 
	ldy #$00

Lbl_dadd:
	lda $06
	sta $c7
	lda $07
	sta $c8
	jsr Lbl_e74d
	jsr Lbl_f19f

Lbl_daeb:
	pla 
	pha 
	cmp #$01
	bne Lbl_daf7
	lda $05
	and #$01
	bne Lbl_db04

Lbl_daf7:
	lda ($33),y
	tay 
	lda ($27),y
	ldx $0d
	sta $0500,x
	jsr Lbl_dcdd

Lbl_db04:
	ldx $19
	ldy #$00
	lda ($31),y
	sta $0300,x
	inx 
	stx $19
	pla 
	sec 
	sbc #$01
	bne Lbl_db19
	jmp Lbl_f1bc

Lbl_db19:
	pha 
	inc $07
	inc $0b
	lda $07
	lsr a 
	bcc Lbl_db31
	clc 
	lda $31
	adc #$02
	sta $31
	bcc Lbl_db2e
	inc $32

Lbl_db2e:
	jmp Lbl_db85

Lbl_db31:
	lda $0d
	clc 
	adc #$11
	sta $0d
	lda $0b
	and #$03
	beq Lbl_db4c
	clc 
	lda $33
	adc #$02
	sta $33
	bcc Lbl_db49
	inc $34

Lbl_db49:
	jmp Lbl_db82

Lbl_db4c:
	lda $0b
	and #$07
	beq Lbl_db60
	clc 
	lda $35
	adc #$02
	sta $35
	bcc Lbl_db5d
	inc $36

Lbl_db5d:
	jmp Lbl_db7f

Lbl_db60:
	clc 
	lda $37
	adc #$20
	sta $37
	bcc Lbl_db6b
	inc $38

Lbl_db6b:
	lda $0b
	bne Lbl_db7c
	sec 
	lda $37
	sbc #$00
	sta $37
	lda $38
	sbc #$04
	sta $38

Lbl_db7c:
	jsr Lbl_d9af

Lbl_db7f:
	jsr Lbl_d9d3

Lbl_db82:
	jsr Lbl_d9f5

Lbl_db85:
	lda $07
	cmp #$1e
	bcs Lbl_db8e
	jmp Lbl_daeb

Lbl_db8e:
	lda #$00
	sta $07
	jsr Lbl_f1bc
	jmp Lbl_dadd

Lbl_db98:
	lda $04
	sta $06
	lda $05
	sta $07
	jsr Lbl_dc2d
	lda #$09
	pha 

Lbl_dba6:
	lda $06
	sta $c7
	lda $07
	sta $c8
	jsr Lbl_e775
	jsr Lbl_f19b

Lbl_dbb4:
	jsr Lbl_dc51
	ldx $19
	sta $0300,x
	inx 
	stx $19
	pla 
	sec 
	sbc #$01
	bne Lbl_dbc8
	jmp Lbl_f1bc

Lbl_dbc8:
	pha 
	inc $0d
	inc $0d
	lda $06
	clc 
	adc #$04
	sta $06
	and #$1c
	bne Lbl_dbb4
	jsr Lbl_f1bc
	lda $06
	and #$3f
	sta $06
	jmp Lbl_dba6

Lbl_dbe4:
	lda $04
	sta $06
	lda #$00
	sta $07
	lda $05
	lsr a 
	sta $00
	asl a 
	asl a 
	asl a 
	asl a 
	clc 
	adc $00
	sta $00
	lda $0c
	sec 
	sbc #$01
	sec 
	sbc $00
	sta $0d
	lda $06
	and #$02
	beq Lbl_dc0c
	dec $0d

Lbl_dc0c:
	lda $06
	sta $c7
	lda $07
	sta $c8
	jsr Lbl_e775
	jsr Lbl_f1a3

Lbl_dc1a:
	jsr Lbl_dcd4
	ldx $19
	sta $0300,x
	inc $19
	lda $07
	cmp #$1e
	bcc Lbl_dc1a
	jmp Lbl_f1bc

Lbl_dc2d:
	lda $0c
	sta $0d
	lda $05
	and #$02
	beq Lbl_dc3e
	lda $0d
	sec 
	sbc #$11
	sta $0d

Lbl_dc3e:
	lda $04
	and #$02
	beq Lbl_dc46
	dec $0d

Lbl_dc46:
	rts 

Lbl_dc47:
	lda $0500,x
	lsr a 
	ror $00
	lsr a 
	ror $00
	rts 

Lbl_dc51:
	lda $39
	lsr a 
	bcs Lbl_dc64
	lda $39
	eor $05
	and #$02
	beq Lbl_dc64
	lda $39
	beq Lbl_dc81
	bne Lbl_dc9a

Lbl_dc64:
	ldx $0d
	jsr Lbl_dc47
	inx 
	jsr Lbl_dc47
	txa 
	clc 
	adc #$10
	tax 
	jsr Lbl_dc47
	inx 
	jsr Lbl_dc47
	txa 
	clc 
	adc #$10
	tax 
	lda $00
	rts 

Lbl_dc81:
	ldx $0d
	dex 
	jsr Lbl_dc47
	inx 
	jsr Lbl_dc47
	txa 
	clc 
	adc #$11
	tax 
	jsr Lbl_dc47
	inx 
	jsr Lbl_dc47
	lda $00
	rts 

Lbl_dc9a:
	ldx $0d
	jsr Lbl_dc47
	inx 
	jsr Lbl_dc47
	txa 
	clc 
	adc #$11
	tax 
	jsr Lbl_dc47
	inx 
	jsr Lbl_dc47
	lda $00
	rts 

Lbl_dcb2:
	lda $07
	eor $05
	and #$1e
	bne Lbl_dcbc
	inc $0d

Lbl_dcbc:
	ldx $0d
	jsr Lbl_dc47
	inx 
	jsr Lbl_dc47
	txa 
	clc 
	adc #$10
	tax 
	stx $0d
	lda $07
	clc 
	adc #$02
	sta $07
	rts 

Lbl_dcd4:
	jsr Lbl_dcb2
	jsr Lbl_dcb2
	lda $00
	rts 

Lbl_dcdd:
	tay 
	and #$20
	beq Lbl_dcfb
	lda $0a
	ora $0b
	lsr a 
	bcs Lbl_dcfb
	ldx $93
	cpx #$04
	beq Lbl_dcfb
	sty $aa,x
	lda $0a
	sta $ae,x
	lda $0b
	sta $b2,x
	inc $93

Lbl_dcfb:
	rts 

Lbl_dcfc:
	lda #$01
	sta $39
	lda $1c
	asl a 
	lda $1d
	rol a 
	sta $24
	sta $08
	and #$01
	sta $22
	sta $04
	lda $1e
	asl a 
	lda $1f
	rol a 
	sta $25
	sta $09
	and #$01
	sta $23
	sta $05
	lda #$00
	sta $26
	sta $3a
	sta $0c
	sta $f1
	lda $ff
	and #$fe
	sta $ff
	jsr Lbl_d18d
	lda $20
	and #$0f
	sta $fd
	lda $21
	and #$0f
	sta $fc
	lda #$1e

Lbl_dd41:
	pha 
	jsr Lbl_d95e
	jsr Lbl_da15
	pla 
	pha 
	cmp #$01
	beq Lbl_dd51
	jsr Lbl_db98

Lbl_dd51:
	jsr Lbl_f1ca
	inc $05
	inc $09
	lda $05
	cmp #$1e
	bcc Lbl_dd62
	lda #$00
	sta $05

Lbl_dd62:
	lda #$01
	bit $05
	bne Lbl_dd6f
	lda $0c
	clc 
	adc #$11
	sta $0c

Lbl_dd6f:
	pla 
	sec 
	sbc #$01
	bne Lbl_dd41
	rts 

Lbl_dd76:
	.byte $78

Lbl_dd77:
	.byte $dd,$7e,$dd,$ea,$dd,$56,$de,$08,$09,$08,$0b,$09,$0a,$09,$0e,$0a
	.byte $0f,$0b,$0c,$0c,$0d,$08,$00,$08,$00,$08,$00,$08,$00,$08,$00,$09
	.byte $01,$09,$01,$09,$01,$09,$01,$0a,$02,$0a,$02,$0a,$02,$0a,$02,$0a
	.byte $02,$0b,$03,$0b,$03,$0b,$03,$0b,$03,$0c,$04,$0c,$04,$0c,$04,$0c
	.byte $04,$0c,$04,$0d,$05,$0d,$05,$0d,$05,$0d,$05,$0e,$06,$0e,$06,$0e
	.byte $06,$0e,$06,$0e,$06,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e
	.byte $0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0e,$0f,$07,$0f,$07,$0f,$07,$0f
	.byte $07,$0f,$07,$09,$45,$09,$06,$16,$55,$1e,$05,$41,$39,$7a,$36,$6e
	.byte $05,$1a,$3d,$3e,$36,$7a,$39,$26,$06,$16,$29,$7e,$06,$46,$09,$5a
	.byte $06,$26,$59,$3a,$19,$28,$16,$0e,$09,$16,$26,$24,$59,$04,$0a,$7c
	.byte $0a,$7c,$7a,$1c,$3a,$28,$09,$14,$79,$5e,$39,$54,$69,$24,$19,$14
	.byte $06,$44,$4a,$34,$0a,$7e,$56,$2e,$06,$06,$6a,$3e,$3a,$1e,$0e,$7e
	.byte $46,$4e,$04,$2e,$34,$6e,$44,$7e,$04,$6e,$04,$3e,$24,$04,$3e,$7e
	.byte $44,$34,$3e,$7e,$44,$7a,$16,$7a,$36,$7e,$16,$0e,$7a,$0e,$59,$7d
	.byte $4b,$2d,$0b,$5d,$07,$6d,$39,$17,$07,$1b,$0b,$07,$7b,$5d,$3a,$55
	.byte $2a,$69,$5a,$5d,$2a,$7f,$46,$0b,$09,$2d,$79,$3f,$19,$1b,$49,$2f
	.byte $3a,$41,$09,$5d,$06,$7d,$79,$77,$5a,$19,$19,$27,$29,$69,$19,$71
	.byte $59,$07,$06,$7b,$6a,$29,$4a,$5b,$4a,$6b,$16,$17,$29,$5b,$49,$6b
	.byte $39,$75,$06,$35,$16,$69,$2a,$69,$5a,$79,$6a,$69,$3e,$4b,$19,$19
	.byte $3d,$35,$09,$09,$7d,$4f,$09,$09,$79,$29,$77,$29,$57,$19,$59,$19
	.byte $69,$07,$49,$3f,$49,$4b,$7a,$6b,$69,$77,$29

Lbl_dec2:
	jsr Lbl_df05
	jsr Lbl_bfe5
	jsr Lbl_df0a
	rts 

Lbl_decc:
	sta $e1
	txa 
	pha 
	ldx #$07

Lbl_ded2:
	lda $0370,x
	beq Lbl_dedd
	cmp $e1
	bne Lbl_dee5
	beq Lbl_dee8

Lbl_dedd:
	lda $e1
	sta $0370,x
	jmp Lbl_dee8

Lbl_dee5:
	dex 
	bpl Lbl_ded2

Lbl_dee8:
	pla 
	tax 
	rts 

Lbl_deeb:
	lda #$07

Lbl_deed:
	pha 
	tax 
	lda $0370,x
	beq Lbl_def7
	jsr Lbl_bfe8

Lbl_def7:
	pla 
	tax 
	lda #$00
	sta $0370,x
	dex 
	txa 
	bpl Lbl_deed
	jmp Lbl_bff1

Lbl_df05:
	lda #$05
	jmp Lbl_e61b

Lbl_df0a:
	lda $d3
	jmp Lbl_e61b

Lbl_df0f:
	.byte $a9,$d2,$85,$00,$a2,$70,$20,$cf,$d7,$f0,$0a,$86,$a5,$20,$27,$df
	.byte $a6,$a5,$a9,$01,$60,$a9,$00,$60,$a0,$00,$b9,$46,$00,$9d,$00,$04
	.byte $e8,$c8,$c0,$0e,$d0,$f4,$60,$a5,$11,$29,$4c,$d0,$07,$20,$71,$eb
	.byte $29,$03,$f0,$03,$a9,$00,$60,$a5,$00,$48,$a9,$d2,$85,$00,$a2,$70
	.byte $20,$cf,$d7,$f0,$0e,$a5,$a0,$9d,$00,$04,$20,$c0,$d7,$68,$85,$00
	.byte $a9,$ff,$60,$68,$85,$00,$a9,$00,$60,$20,$83,$e0,$10,$0a,$a9,$00
	.byte $38,$e5,$4c,$85,$4c,$4c,$81,$df,$0a,$10,$07,$a9,$00,$38,$e5,$4d
	.byte $85,$4d,$a5,$9a,$60,$20,$a5,$e0,$10,$0a,$a9,$00,$38,$e5,$4c,$85
	.byte $4c,$4c,$9d,$df,$0a,$10,$07,$a9,$00,$38,$e5,$4d,$85,$4d,$a5,$9a
	.byte $60,$a0,$00,$48,$98,$25,$11,$f0,$04,$68,$4c,$b4,$df,$68,$18,$65
	.byte $4d,$70,$02,$85,$4d,$20,$84,$df,$29,$40,$f0,$05,$a9,$40,$20,$c7
	.byte $e0,$a9,$28,$a2,$4d,$20,$14,$eb,$a9,$28,$a2,$4c,$20,$14,$eb,$a5
	.byte $9a,$60,$18,$65,$4d,$85,$4d,$8a,$18,$65,$4c,$85,$4c,$60,$20,$ed
	.byte $e0,$10,$05,$49,$ff,$18,$69,$01,$48,$20,$fa,$e0,$10,$05,$49,$ff
	.byte $18,$69,$01,$d0,$02,$a9,$01,$85,$9c,$68,$85,$9b,$20,$6b,$e1,$d0
	.byte $02,$a9,$01,$85,$52,$60,$a9,$02,$20,$a0,$df,$0a,$10,$0b,$a5,$4d
	.byte $10,$07,$a9,$00,$85,$4d,$a9,$ff,$60,$a9,$00,$60,$a5,$47,$4a,$4a
	.byte $4a,$4a,$4a,$aa,$bd,$27,$e0,$60,$01,$41,$40,$3f,$ff,$ee,$ef,$f0
	.byte $20,$68,$df,$a5,$51,$f0,$05,$c6,$51,$4c,$4d,$e0,$a9,$11,$20,$b1
	.byte $d2,$30,$0b,$a9,$00,$38,$e5,$4c,$85,$4c,$a9,$20,$85,$51,$60,$a6
	.byte $4c,$30,$02,$49,$40,$85,$44,$60,$a6,$4d,$10,$02,$49,$80,$85,$44
	.byte $60,$4a,$ca,$d0,$fc,$60,$0a,$ca,$d0,$fc,$60,$c9,$80,$6a,$ca,$d0
	.byte $fa,$60,$a5,$52,$49,$ff,$18,$69,$01,$85,$52,$60,$a5,$47,$18,$65
	.byte $52,$85,$47,$60,$20,$de,$d2,$20,$7d,$d3,$f0,$05,$a9,$80,$4c,$92
	.byte $e0,$a9,$00,$85,$9a,$20,$fe,$d2,$20,$e1,$d3,$f0,$06,$a5,$9a,$09
	.byte $40,$85,$9a,$a5,$9a,$60,$20,$27,$d3,$20,$7d,$d3,$f0,$05,$a9,$80
	.byte $4c,$b4,$e0,$a9,$00,$85,$9a,$20,$49,$d3,$20,$e1,$d3,$f0,$06,$a5
	.byte $9a,$09,$40,$85,$9a,$a5,$9a,$60,$a8,$a5,$4d,$20,$96,$e1,$85,$4d
	.byte $60,$a5,$9a,$30,$04,$0a,$30,$0e,$60,$a5,$47,$38,$e9,$40,$49,$ff
	.byte $18,$69,$41,$85,$47,$60,$a9,$00,$38,$e5,$47,$85,$47,$60,$ad,$02
	.byte $04,$38,$e5,$48,$aa,$ad,$03,$04,$e5,$49,$60,$ad,$04,$04,$38,$e5
	.byte $4a,$aa,$ad,$05,$04,$e5,$4b,$60,$a5,$00,$48,$20,$ed,$e0,$0a,$0a
	.byte $0a,$0a,$85,$00,$8a,$4a,$4a,$4a,$4a,$05,$00,$aa,$68,$85,$00,$8a
	.byte $60,$a5,$00,$48,$20,$fa,$e0,$0a,$0a,$0a,$0a,$85,$00,$8a,$4a,$4a
	.byte $4a,$4a,$05,$00,$aa,$68,$85,$00,$8a,$60,$a5,$00,$48,$20,$ed,$e0
	.byte $0a,$0a,$0a,$85,$00,$8a,$4a,$4a,$4a,$4a,$4a,$05,$00,$aa,$68,$85
	.byte $00,$8a,$60,$a5,$00,$48,$20,$fa,$e0,$0a,$0a,$0a,$85,$00,$8a,$4a
	.byte $4a,$4a,$4a,$4a,$05,$00,$aa,$68,$85,$00,$8a,$60,$a2,$08,$a9,$00
	.byte $26,$9b,$2a,$c5,$9c,$90,$02,$e5,$9c,$26,$9b,$ca,$d0,$f4,$85,$9c
	.byte $a5,$9b,$60,$a2,$08,$a9,$00,$06,$9b,$90,$03,$18,$65,$9c,$46,$9c
	.byte $ca,$d0,$f4,$4a,$85,$9b,$60,$84,$9b,$0a,$90,$10,$49,$ff,$18,$69
	.byte $01,$85,$9c,$20,$82,$e1,$49,$ff,$18,$69,$01,$60,$85,$9c,$20,$82
	.byte $e1,$60,$20,$d2,$e1,$4c,$96,$e1,$20,$d5,$e1,$4c,$96,$e1,$a5,$47
	.byte $20,$d2,$e1,$20,$96,$e1,$85,$4c,$a5,$47,$20,$d5,$e1,$20,$96,$e1
	.byte $85,$4d,$60,$18,$69,$40,$c9,$40,$90,$0b,$c9,$80,$b0,$0c,$49,$ff
	.byte $18,$69,$01,$29,$7f,$aa,$bd,$02,$e2,$60,$c9,$c0,$b0,$06,$38,$e9
	.byte $80,$4c,$f8,$e1,$49,$ff,$18,$69,$01,$aa,$bd,$02,$e2,$49,$ff,$18
	.byte $69,$01,$60,$00,$03,$06,$09,$0c,$10,$13,$16,$19,$1c,$1f,$22,$25
	.byte $28,$2b,$2e,$31,$33,$36,$39,$3c,$3f,$41,$44,$47,$49,$4c,$4e,$51
	.byte $53,$55,$58,$5a,$5c,$5e,$60,$62,$64,$66,$68,$6a,$6b,$6d,$6f,$70
	.byte $71,$73,$74,$75,$76,$78,$79,$7a,$7a,$7b,$7c,$7d,$7d,$7e,$7e,$7e
	.byte $7f,$7f,$7f,$7f

Lbl_e243:
	lda $06f3
	and #$7f
	cmp #$03
	beq Lbl_e257
	lda #$00
	sta $ce
	lda #$74
	sta $cf
	jmp Lbl_e26c

Lbl_e257:
	lda #$2c
	jsr Lbl_ea3a
	lda $06f4
	and #$03
	jsr Lbl_eb51
	lda $7a
	sta $ce
	lda $7b
	sta $cf

Lbl_e26c:
	lda #$00
	sta $cd
	sta $d0
	sta $d1
	lda $06f3
	and #$7f
	sta $06f3
	cmp #$01
	beq Lbl_e284
	cmp #$03
	bne Lbl_e286

Lbl_e284:
	inc $d0

Lbl_e286:
	rts 

Lbl_e287:
	lda $06f3
	cmp #$02
	bne Lbl_e2c0
	lda $f7
	cmp $d1
	beq Lbl_e2a0
	jsr Lbl_e2ab
	lda $f7
	sta $d1
	lda #$01
	sta $d0
	rts 

Lbl_e2a0:
	inc $d0
	bne Lbl_e2a7
	jsr Lbl_e2ab

Lbl_e2a7:
	jsr Lbl_e308
	rts 

Lbl_e2ab:
	ldy $cd
	lda $d1
	sta ($ce),y
	iny 
	lda $d0
	sta ($ce),y
	iny 
	bne Lbl_e2be
	lda #$ff
	sta $06f3

Lbl_e2be:
	sty $cd

Lbl_e2c0:
	rts 

Lbl_e2c1:
	lda #$02
	jsr Lbl_e61b
	lda $06f3
	cmp #$01
	beq Lbl_e2d1
	cmp #$03
	bne Lbl_e302

Lbl_e2d1:
	lda $06f3
	beq Lbl_e2e1
	lda $de
	and #$10
	beq Lbl_e2e1
	lda #$08
	jsr Lbl_d1ef

Lbl_e2e1:
	dec $d0
	bne Lbl_e2fb
	ldy $cd
	lda ($ce),y
	iny 
	sta $d1
	lda ($ce),y
	iny 
	sta $d0
	sty $cd
	tya 
	bne Lbl_e2fb
	lda #$ff
	sta $06f3

Lbl_e2fb:
	lda $d1
	sta $f7
	jsr Lbl_e308

Lbl_e302:
	lda $d3
	jsr Lbl_e61b
	rts 

Lbl_e308:
	rts 

Lbl_e309:
	lda #$54
	jsr Lbl_decc
	tsx 
	stx $01
	jsr Lbl_e355
	lda #$00
	jsr Lbl_e3d1
	jsr Lbl_e355
	lda #$01
	jsr Lbl_e3d1
	jsr Lbl_e355
	lda #$02
	jsr Lbl_e3d1
	jsr Lbl_e38a
	lda #$03
	jsr Lbl_e3f0
	jsr Lbl_e38a
	lda #$04
	jsr Lbl_e3d1
	jsr Lbl_e355
	lda #$05
	jsr Lbl_e3d1
	jsr Lbl_e38a
	lda #$06
	jsr Lbl_e3d1
	jsr Lbl_e38a
	lda #$07
	jsr Lbl_e3d1

Lbl_e351:
	ldx $01
	txs 
	rts 

Lbl_e355:
	lda #$04
	sta $d5
	lda Lbl_e368
	sta $7a
	lda Lbl_e369
	sta $7b
	ldy #$00
	jmp Lbl_e3bf

Lbl_e368:
	.byte $6a

Lbl_e369:
	.byte $e3,$07,$21,$17,$30,$07,$29,$17,$30,$07,$36,$17,$30,$07,$0a,$1a
	.byte $21,$07,$36,$17,$30,$07,$36,$1c,$30,$07,$29,$17,$30,$07,$10,$25
	.byte $30

Lbl_e38a:
	lda #$05
	sta $d5
	lda Lbl_e39d
	sta $7a
	lda Lbl_e39e
	sta $7b
	ldy #$00
	jmp Lbl_e3bf

Lbl_e39d:
	.byte $9f

Lbl_e39e:
	.byte $e3,$07,$11,$15,$30,$07,$29,$17,$3f,$07,$3f,$00,$30,$07,$0a,$1a
	.byte $21,$07,$36,$17,$30,$07,$36,$1c,$30,$07,$29,$17,$30,$07,$10,$25
	.byte $30

Lbl_e3bf:
	lda #$16
	sta $d4
	ldx #$00

Lbl_e3c5:
	lda ($7a),y
	iny 
	sta $0650,x
	inx 
	cpx #$20
	bne Lbl_e3c5
	rts 

Lbl_e3d1:
	jsr Lbl_e4bb
	jsr Lbl_e4e0
	lda #$04

Lbl_e3d9:
	pha 
	lda #$3c

Lbl_e3dc:
	pha 
	jsr Lbl_e4ab
	pla 
	sec 
	sbc #$01
	bne Lbl_e3dc
	pla 
	sec 
	sbc #$01
	bne Lbl_e3d9
	jsr Lbl_e4ee
	rts 

Lbl_e3f0:
	jsr Lbl_e4bb
	jsr Lbl_e4e0
	lda #$3c

Lbl_e3f8:
	pha 
	jsr Lbl_e4a6
	pla 
	sec 
	sbc #$01
	bne Lbl_e3f8
	lda #$0c
	sta $c7
	lda #$0b
	sta $c8
	lda Lbl_e44c
	sta $7a
	lda Lbl_e44d
	sta $7b
	ldy #$00
	jsr Lbl_e797
	lda #$3c

Lbl_e41b:
	pha 
	jsr Lbl_e4a6
	pla 
	sec 
	sbc #$01
	bne Lbl_e41b
	lda #$0c
	sta $c7
	lda #$0b
	sta $c8
	lda Lbl_e479
	sta $7a
	lda Lbl_e47a
	sta $7b
	ldy #$00
	jsr Lbl_e797
	lda #$78

Lbl_e43e:
	pha 
	jsr Lbl_e4a6
	pla 
	sec 
	sbc #$01
	bne Lbl_e43e
	jsr Lbl_e4ee
	rts 

Lbl_e44c:
	.byte $4e

Lbl_e44d:
	.byte $e4,$76,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $2e,$2f,$7e,$00,$00,$00,$3e,$3f,$8e,$6f,$00,$00,$4e,$4f,$7f,$50
	.byte $00,$00,$5e,$5f,$8f,$60,$00,$00,$6e,$00,$00,$60

Lbl_e479:
	.byte $7b

Lbl_e47a:
	.byte $e4,$76,$00,$00,$4b,$4c,$4d,$49,$00,$5a,$5b,$5c,$5d,$59,$69,$6a
	.byte $6b,$6c,$6d,$00,$79,$7a,$7b,$7c,$7d,$4a,$89,$8a,$8b,$8c,$8d,$50
	.byte $99,$9a,$9b,$9c,$9d,$60,$a9,$aa,$ab,$ac,$00,$60

Lbl_e4a6:
	jsr Lbl_eb71
	sta $58

Lbl_e4ab:
	jsr Lbl_e936
	jsr Lbl_e4fd
	lda $de
	and #$10
	beq Lbl_e4ba
	jmp Lbl_e351

Lbl_e4ba:
	rts 

Lbl_e4bb:
	sta $02
	jsr Lbl_ea03
	lda #$30
	jsr Lbl_ea3a
	lda #$0b
	jsr Lbl_eb51
	lda $02
	jsr Lbl_eb51
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	jsr Lbl_e953
	rts 

Lbl_e4e0:
	jsr Lbl_ce0f

Lbl_e4e3:
	jsr Lbl_e4ab
	jsr Lbl_cdd0
	lda $15
	bmi Lbl_e4e3
	rts 

Lbl_e4ee:
	jsr Lbl_ce27

Lbl_e4f1:
	jsr Lbl_e4ab
	jsr Lbl_cdd0
	lda $15
	asl a 
	bmi Lbl_e4f1
	rts 

Lbl_e4fd:
	lda #$00
	sta $44
	lda $02
	asl a 
	tax 
	lda Lbl_e53d,x
	sta $3e
	lda Lbl_e53e,x
	sta $3f
	lda Lbl_e54d
	sta $7a
	lda Lbl_e54e
	sta $7b
	ldy #$00
	lda $02
	asl a 
	jsr Lbl_f029
	jsr Lbl_ec73
	lda Lbl_e54d
	sta $7a
	lda Lbl_e54e
	sta $7b
	ldy #$00
	lda $02
	asl a 
	clc 
	adc #$01
	jsr Lbl_f029
	jsr Lbl_ec73
	rts 

Lbl_e53d:
	.byte $08

Lbl_e53e:
	.byte $07,$08,$07,$50,$5f,$08,$07,$60,$57,$70,$57,$80,$6f,$90,$3f

Lbl_e54d:
	.byte $4f

Lbl_e54e:
	.byte $e5,$6f,$e5,$6f,$e5,$6f,$e5,$6f,$e5,$72,$e5,$6f,$e5,$6f,$e5,$6f
	.byte $e5,$94,$e5,$6f,$e5,$9e,$e5,$6f,$e5,$b7,$e5,$6f,$e5,$cb,$e5,$e9
	.byte $e5,$00,$00,$18,$04,$04,$0c,$02,$05,$00,$10,$0d,$04,$05,$14,$f0
	.byte $0c,$06,$07,$08,$00,$0c,$0e,$07,$08,$00,$0c,$3e,$07,$0c,$00,$0e
	.byte $24,$05,$fc,$14,$13,$11,$04,$04,$0c,$20,$05,$00,$10,$1d,$22,$05
	.byte $04,$04,$0c,$0a,$05,$10,$00,$0c,$2a,$05,$f0,$10,$0d,$0c,$05,$10
	.byte $00,$0d,$2c,$05,$f8,$10,$1d,$1e,$05,$08,$04,$0d,$16,$07,$0c,$00
	.byte $0c,$26,$05,$f0,$10,$0d,$08,$05,$10,$00,$1d,$28,$05,$1c,$00,$0c
	.byte $40,$06,$00,$08,$0c,$41,$06,$00,$08,$0c,$42,$06,$00,$08,$0c,$43
	.byte $06,$00,$08,$0c,$44,$06,$00,$08,$1c,$45,$06,$ec,$fc,$0f,$5a,$07
	.byte $2c,$00,$0f,$6a,$05,$d0,$10,$0f,$4c,$05,$10,$00,$0f,$46,$05,$10
	.byte $00,$0f,$66,$05,$10,$00,$0f,$6c,$05,$d0,$10,$0f,$4e,$05,$10,$00
	.byte $0f,$48,$05,$10,$00,$0f,$68,$05,$10,$00,$1f,$6e,$05

Lbl_e61b:
	sta $db
	txa 
	pha 
	tya 
	pha 
	lda #$40
	sta $12
	lda $db
	jsr Lbl_e63c
	lda $12
	and #$20
	beq Lbl_e633
	jsr Lbl_eb98

Lbl_e633:
	lda #$00
	sta $12
	pla 
	tay 
	pla 
	tax 
	rts 

Lbl_e63c:
	sta Lbl_ffff
	lsr a 
	sta Lbl_ffff
	lsr a 
	sta Lbl_ffff
	lsr a 
	sta Lbl_ffff
	lsr a 
	sta Lbl_ffff
	rts 

Lbl_e650:
	sta Lbl_dfff
	lsr a 
	sta Lbl_dfff
	lsr a 
	sta Lbl_dfff
	lsr a 
	sta Lbl_dfff
	lsr a 
	sta Lbl_dfff
	rts 

Lbl_e664:
	sta Lbl_bfff
	lsr a 
	sta Lbl_bfff
	lsr a 
	sta Lbl_bfff
	lsr a 
	sta Lbl_bfff
	lsr a 
	sta Lbl_bfff
	rts 

Lbl_e678:
	sta Lbl_9fff
	lsr a 
	sta Lbl_9fff
	lsr a 
	sta Lbl_9fff
	lsr a 
	sta Lbl_9fff
	lsr a 
	sta Lbl_9fff
	rts 

Lbl_e68c:
	lda #$80
	sta Lbl_ffff
	rts 

Lbl_e692:
	sta $d3
	jmp Lbl_e61b

Lbl_e697:
	lda Lbl_e6be
	bne Lbl_e6a7
	lda #$00
	sta $2003
	lda #$02
	sta $4014
	rts 

Lbl_e6a7:
	lda $f0
	and #$c0
	sta $2003
	tax 
	ldy #$40

Lbl_e6b1:
	lda $0200,x
	sta $2004
	inx 
	dey 
	bne Lbl_e6b1
	stx $f0
	rts 

Lbl_e6be:
	.byte $00

Lbl_e6bf:
	lda $ff
	and #$fe
	sta $ff
	lda $f1
	and #$01
	ora $ff
	sta $ff
	sta $2000
	lda $2002
	lda $fd
	sta $2005
	lda $fc
	sta $2005
	rts 

Lbl_e6de:
	.byte $4c,$de,$e6

Lbl_e6e1:
	.byte $01,$02

Lbl_e6e3:
	.byte $04

Lbl_e6e4:
	.byte $08

Lbl_e6e5:
	.byte $10

Lbl_e6e6:
	.byte $20,$40,$80

Lbl_e6e9:
	lda $fe
	ora #$1e
	sta $fe
	rts 

Lbl_e6f0:
	lda $fe
	and #$e1
	sta $fe
	sta $2001
	rts 

Lbl_e6fa:
	lda #$0f
	ldx #$1f

Lbl_e6fe:
	sta $58,x
	dex 
	bpl Lbl_e6fe
	rts 

Lbl_e704:
	bpl Lbl_e70a
	clc 
	adc #$1e
	rts 

Lbl_e70a:
	cmp #$1e
	bcc Lbl_e711
	sec 
	sbc #$1e

Lbl_e711:
	rts 

Lbl_e712:
	.byte $a5,$c9,$0a,$a5,$ca,$2a,$85,$c7,$a5,$48,$0a,$a5,$49,$2a,$38,$e5
	.byte $c7,$18,$65,$22,$85,$c7,$a5,$cb,$18,$69,$40,$85,$c8,$a5,$cc,$69
	.byte $00,$06,$c8,$2a,$85,$c8,$a5,$4a,$0a,$a5,$4b,$2a,$38,$e5,$c8,$18
	.byte $65,$23,$20,$04,$e7,$85,$c8,$60,$20,$12,$e7

Lbl_e74d:
	lda #$00
	sta $bf
	lda $c8
	lsr a 
	ror $bf
	lsr a 
	ror $bf
	lsr a 
	ror $bf
	ora #$20
	sta $c0
	lda $c7
	and #$1f
	ora $bf
	sta $bf
	lda $c7
	and #$20
	beq Lbl_e774
	lda $c0
	ora #$04
	sta $c0

Lbl_e774:
	rts 

Lbl_e775:
	lda $c7
	lsr a 
	lsr a 
	and #$07
	sta $bf
	lda $c8
	asl a 
	and #$38
	ora $bf
	ora #$c0
	sta $bf
	lda #$23
	sta $c0
	lda $c7
	and #$20
	beq Lbl_e796
	lda #$27
	sta $c0

Lbl_e796:
	rts 

Lbl_e797:
	lda $01
	pha 
	lda $00
	pha 
	lda $03
	pha 
	lda $02
	pha 
	lda $c8
	sta $02
	ldy #$00
	lda ($7a),y
	iny 
	sta $00
	asl a 
	bcc Lbl_e7b6
	lda ($7a),y
	iny 
	sta $45

Lbl_e7b6:
	jsr Lbl_e74d
	jsr Lbl_f19f
	lda $00
	and #$0f
	sta $01
	lda $45
	sta $03

Lbl_e7c6:
	bit $00
	bmi Lbl_e7d0
	lda ($7a),y
	iny 
	jmp Lbl_e7d4

Lbl_e7d0:
	lda $03
	inc $03

Lbl_e7d4:
	sta $0300,x
	inx 
	dec $01
	beq Lbl_e7f6
	inc $c8
	lda $c8
	cmp #$1e
	bne Lbl_e7c6
	lda #$00
	sta $c8
	stx $19
	jsr Lbl_f1bc
	jsr Lbl_e74d
	jsr Lbl_f19f
	jmp Lbl_e7c6

Lbl_e7f6:
	stx $19
	jsr Lbl_f1bc
	lda $45
	clc 
	adc #$10
	sta $45
	lda $00
	sec 
	sbc #$10
	sta $00
	and #$70
	beq Lbl_e816
	lda $02
	sta $c8
	inc $c7
	jmp Lbl_e7b6

Lbl_e816:
	pla 
	sta $02
	pla 
	sta $03
	pla 
	sta $00
	pla 
	sta $01
	rts 

Lbl_e823:
	jsr Lbl_e74d
	jsr Lbl_f19b
	ldy #$00

Lbl_e82b:
	lda ($7a),y
	iny 
	cmp #$00
	beq Lbl_e83a
	jsr Lbl_f192
	inc $c7
	jmp Lbl_e82b

Lbl_e83a:
	jsr Lbl_f1bc
	jmp Lbl_eb44

Lbl_e840:
	.byte $20,$e9,$ea,$48,$20,$4d,$e7,$20,$9b,$f1,$68,$48,$4a,$4a,$4a,$4a
	.byte $20,$5a,$e8,$68,$20,$5a,$e8,$4c,$bc,$f1,$29,$0f,$18,$69,$30,$4c
	.byte $92,$f1

Lbl_e862:
	jsr Lbl_eae9
	pha 
	jsr Lbl_e74d
	jsr Lbl_f19b
	pla 
	pha 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	jsr Lbl_e87c
	pla 
	jsr Lbl_e87c
	jmp Lbl_f1bc

Lbl_e87c:
	and #$0f
	clc 
	adc #$f6
	jmp Lbl_f192

Lbl_e884:
	pha 
	jsr Lbl_e74d
	jsr Lbl_f19b
	pla 
	clc 
	adc #$30
	jsr Lbl_f192
	jmp Lbl_f1bc

Lbl_e895:
	lda $ff
	and #$fb
	sta $2000
	sta $ff
	rts 

Lbl_e89f:
	.byte $a5,$ff,$09,$04,$8d,$00,$20,$85,$ff,$60

Lbl_e8a9:
	lda $f7
	sta $f5
	lda $f8
	sta $f6
	jsr Lbl_e914
	lda $f7
	pha 
	jsr Lbl_e914
	pla 
	cmp $f7
	beq Lbl_e8c2
	jsr Lbl_e914

Lbl_e8c2:
	lda $f7
	sta $de
	lda $f8
	sta $df
	jsr Lbl_e2c1
	jsr Lbl_e287
	ldx #$01

Lbl_e8d2:
	lda $f7,x
	eor $f5,x
	and $f7,x
	sta $f5,x
	dex 
	bpl Lbl_e8d2
	lda $f5
	sta $f3
	lda $f6
	sta $f4
	lda $f5
	ora $f6
	bne Lbl_e907
	lda $f7
	ora $f8
	beq Lbl_e907
	inc $78
	lda $78
	cmp #$19
	bcc Lbl_e90b
	lda $f7
	sta $f5
	lda $f8
	sta $f6
	lda #$14
	sta $78
	bne Lbl_e90b

Lbl_e907:
	lda #$00
	sta $78

Lbl_e90b:
	lda $f5
	beq Lbl_e913
	lda $f7
	sta $f5

Lbl_e913:
	rts 

Lbl_e914:
	ldx $fb
	inx 
	stx $4016
	dex 
	stx $4016
	ldx #$08

Lbl_e920:
	lda $4016
	and #$03
	cmp #$01
	rol $f7
	lda $4017
	and #$03
	cmp #$01
	rol $f8
	dex 
	bne Lbl_e920
	rts 

Lbl_e936:
	lda #$80
	sta $12

Lbl_e93a:
	bit $12
	bmi Lbl_e93a
	rts 

Lbl_e93f:
	lda $ff
	ora #$80
	sta $ff
	sta $2000
	rts 

Lbl_e949:
	lda $ff
	and #$7f
	sta $ff
	sta $2000
	rts 

Lbl_e953:
	ldy #$00
	jsr Lbl_e949
	jsr Lbl_e6f0
	jsr Lbl_e895

Lbl_e95e:
	jsr Lbl_e996
	beq Lbl_e971
	bmi Lbl_e96b
	jsr Lbl_e974
	jmp Lbl_e95e

Lbl_e96b:
	jsr Lbl_e986
	jmp Lbl_e95e

Lbl_e971:
	jmp Lbl_e93f

Lbl_e974:
	pha 
	jsr Lbl_e996
	pla 

Lbl_e979:
	pha 
	lda $00
	jsr Lbl_e9a2
	pla 
	sec 
	sbc #$01
	bne Lbl_e979
	rts 

Lbl_e986:
	pha 
	jsr Lbl_e996
	jsr Lbl_e9a2
	pla 
	sec 
	sbc #$01
	and #$7f
	bne Lbl_e986
	rts 

Lbl_e996:
	lda ($7a),y
	sta $00
	iny 
	bne Lbl_e99f
	inc $7b

Lbl_e99f:
	lda $00
	rts 

Lbl_e9a2:
	sta $2007
	rts 

Lbl_e9a6:
	pha 
	jsr Lbl_ea03
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	pla 

Lbl_e9b8:
	pha 
	lda $db
	sta $d3
	lda #$30
	jsr Lbl_ea3a
	pla 
	jsr Lbl_eb51
	jsr Lbl_e953
	lda $d3
	jsr Lbl_e61b
	rts 

Lbl_e9cf:
	pha 
	jsr Lbl_ea03
	lda $db
	sta $d3
	lda #$30
	jsr Lbl_ea3a
	pla 
	jsr Lbl_eb51
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	jsr Lbl_e953
	jsr Lbl_ce0f

Lbl_e9f3:
	jsr Lbl_cdd0
	jsr Lbl_e936
	lda $b6
	bne Lbl_e9f3
	lda $d3
	jsr Lbl_e61b
	rts 

Lbl_ea03:
	jsr Lbl_e6fa
	jsr Lbl_e6f0
	lda #$00
	sta $fd
	sta $f1
	sta $fc
	sta $4f
	lda $ff
	and #$d0
	ora #$90
	sta $ff
	sta $2000
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	ldy #$08
	lda #$00
	tax 

Lbl_ea30:
	sta $2007
	dex 
	bne Lbl_ea30
	dey 
	bne Lbl_ea30
	rts 

Lbl_ea3a:
	ldx #$7a

Lbl_ea3c:
	tay 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	jsr Lbl_e61b
	tya 
	and #$0f
	asl a 
	tay 
	lda Lbl_8000,y
	sta $00,x
	lda Lbl_8001,y
	sta $01,x
	ldy #$00
	rts 

Lbl_ea56:
	.byte $98,$18,$65,$7a,$85,$7a,$90,$02,$e6,$7b,$6c,$7a,$00

Lbl_ea63:
	lda ($7a),y
	pha 
	iny 
	lda ($7a),y
	sta $7b
	pla 
	sta $7a
	rts 

Lbl_ea6f:
	.byte $a2,$09,$a9,$00,$95,$02,$ca,$10,$fb,$e6,$07,$a9,$10,$85,$0c,$46
	.byte $01,$66,$00,$90,$07,$a2,$02,$a0,$07,$20,$97,$ea,$a2,$07,$a0,$07
	.byte $20,$97,$ea,$c6,$0c,$d0,$e8,$60,$18,$a9,$05,$85,$0d,$b5,$00,$79
	.byte $00,$00,$c9,$0a,$90,$03,$38,$e9,$0a,$95,$00,$e8,$c8,$c6,$0d,$d0
	.byte $ec,$60,$a2,$04,$a9,$00,$95,$03,$a5,$00,$38,$e9,$10,$a8,$a5,$01
	.byte $e9,$27,$90,$08,$85,$01,$98,$f6,$03,$4c,$b9,$ea,$a5,$01,$85,$02
	.byte $a5,$00,$0a,$26,$01,$0a,$26,$01,$18,$65,$00,$85,$00,$a5,$01,$65
	.byte $02,$06,$00,$2a,$85,$01,$ca,$10,$cb,$60

Lbl_eae9:
	sta $45
	cmp #$63
	bcs Lbl_eb09
	ldx #$00
	stx $44

Lbl_eaf3:
	sec 
	sbc #$0a
	bcc Lbl_eaff
	sta $45
	inc $44
	jmp Lbl_eaf3

Lbl_eaff:
	lda $44
	asl a 
	asl a 
	asl a 
	asl a 
	clc 
	adc $45
	rts 

Lbl_eb09:
	lda #$99
	rts 

Lbl_eb0c:
	.byte $10,$05,$49,$ff,$18,$69,$01,$60,$b4,$00,$30,$07,$d5,$00,$b0,$0e
	.byte $95,$00,$60,$49,$ff,$18,$69,$01,$d5,$00,$90,$02,$95,$00,$60,$f0
	.byte $09,$10,$04,$18,$69,$01,$60,$38,$e9,$01,$60,$c9,$80,$6a,$c9,$80
	.byte $6a,$c9,$80,$6a,$c9,$80,$6a,$60

Lbl_eb44:
	tya 
	clc 
	adc $7a
	sta $7a
	bcc Lbl_eb4e
	inc $7b

Lbl_eb4e:
	ldy #$00
	rts 

Lbl_eb51:
	asl a 
	tay 
	bcc Lbl_eb57
	inc $7b

Lbl_eb57:
	lda ($7a),y
	iny 
	tax 
	lda ($7a),y
	sta $7b
	stx $7a
	ldy #$00
	rts 

Lbl_eb64:
	.byte $48,$a9,$31,$20,$3a,$ea,$68,$20,$51,$eb,$6c,$7a,$00

Lbl_eb71:
	lda $13
	asl a 
	asl a 
	clc 
	adc $13
	sec 
	sbc #$01
	sta $13
	rts 

Lbl_eb7e:
	pha 
	txa 
	pha 
	tya 
	pha 
	bit $12
	bvs Lbl_eb8d
	jsr Lbl_eb98
	jmp Lbl_eb91

Lbl_eb8d:
	lda #$20
	sta $12

Lbl_eb91:
	pla 
	tay 
	pla 
	tax 
	pla 
	rti 

Lbl_eb97:
	rti 

Lbl_eb98:
	bit $12
	bmi Lbl_eb9f
	jmp Lbl_ec51

Lbl_eb9f:
	lda #$00
	sta $12
	sta $2001
	jsr Lbl_e697
	lda $19
	beq Lbl_ebb0
	jmp Lbl_ec34

Lbl_ebb0:
	lda $58
	sta $5c
	sta $60
	sta $64
	sta $68
	sta $6c
	sta $70
	sta $74
	jsr Lbl_e895
	lda $2002
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	ldx #$00

Lbl_ebd2:
	lda $58,x
	and #$3f
	tay 
	lda Lbl_ebf4,y
	sta $2007
	inx 
	cpx #$20
	bne Lbl_ebd2
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	sta $2006
	sta $2006
	beq Lbl_ec34

Lbl_ebf4:
	.byte $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0f,$0f,$0f
	.byte $10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$0f,$0f,$0f
	.byte $20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$0f,$0f,$0f
	.byte $30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$3a,$3b,$3c,$3d,$3e,$0f

Lbl_ec34:
	jsr Lbl_f1ca
	jsr Lbl_e6bf
	lda $d4
	jsr Lbl_e664
	lda $d5
	jsr Lbl_e650
	lda $fe
	sta $2001
	jsr Lbl_ec61
	inc $11
	jsr Lbl_e8a9

Lbl_ec51:
	lda #$05
	jsr Lbl_e63c
	jsr Lbl_deeb
	lda $db
	jsr Lbl_e63c
	inc $10
	rts 

Lbl_ec61:
	lda #$f0
	ldx #$00
	stx $3c
	stx $3d

Lbl_ec69:
	sta $0200,x
	inx 
	inx 
	inx 
	inx 
	bne Lbl_ec69
	rts 

Lbl_ec73:
	lda $3c
	beq Lbl_ecb3
	lda Lbl_e6be
	bne Lbl_ec81
	lda $11
	lsr a 
	bcs Lbl_ec8a

Lbl_ec81:
	lda $3d
	tay 
	clc 
	adc $3c
	bcc Lbl_ec97
	rts 

Lbl_ec8a:
	lda $3d
	sec 
	sbc $3c
	bcs Lbl_ec96
	lda #$00
	sec 
	sbc $3c

Lbl_ec96:
	tay 

Lbl_ec97:
	sta $3d
	ldx #$00

Lbl_ec9b:
	lda $0600,x
	sta $0200,y
	inx 
	iny 
	lda $0600,x
	sta $0200,y
	inx 
	iny 
	cpx $3c
	bne Lbl_ec9b
	lda #$00
	sta $3c

Lbl_ecb3:
	rts 

Lbl_ecb4:
	ldx $3c
	lda $3e
	sta $0603,x
	lda $44
	sta $0602,x
	lda $45
	sta $0601,x
	lda $3f
	sta $0600,x
	txa 
	clc 
	adc #$04
	sta $3c
	rts 

Lbl_ecd1:
	ldx $3c
	lda $3e
	sec 
	sbc #$04
	bit $44
	bvs Lbl_ece8
	sta $0603,x
	clc 
	adc #$08
	sta $0607,x
	jmp Lbl_ecf1

Lbl_ece8:
	sta $0607,x
	clc 
	adc #$08
	sta $0603,x

Lbl_ecf1:
	lda $44
	sta $0602,x
	eor #$40
	sta $0606,x
	lda $45
	sta $0601,x
	sta $0605,x
	lda $3f
	sta $0600,x
	sta $0604,x
	txa 
	clc 
	adc #$08
	sta $3c
	rts 

Lbl_ed12:
	ldx $3c
	lda $3e
	sec 
	sbc #$04
	bit $44
	bvs Lbl_ed29
	sta $0603,x
	clc 
	adc #$08
	sta $0607,x
	jmp Lbl_ed32

Lbl_ed29:
	sta $0607,x
	clc 
	adc #$08
	sta $0603,x

Lbl_ed32:
	lda $44
	sta $0602,x
	sta $0606,x
	lda $45
	sta $0601,x
	clc 
	adc #$10
	sta $0605,x
	lda $3f
	sta $0600,x
	sta $0604,x
	txa 
	clc 
	adc #$08
	sta $3c
	rts 

Lbl_ed54:
	ldx $3c
	lda $3e
	sta $0607,x
	sec 
	sbc #$08
	bit $44
	bvs Lbl_ed6e
	sta $0603,x
	clc 
	adc #$10
	sta $060b,x
	jmp Lbl_ed77

Lbl_ed6e:
	sta $060b,x
	clc 
	adc #$10
	sta $0603,x

Lbl_ed77:
	lda $44
	sta $0602,x
	sta $0606,x
	eor #$40
	sta $060a,x
	lda $45
	sta $0601,x
	sta $0609,x
	clc 
	adc #$10
	sta $0605,x
	lda $3f
	sta $0600,x
	sta $0604,x
	sta $0608,x
	txa 
	clc 
	adc #$0c
	sta $3c
	rts 

Lbl_eda4:
	ldx $3c
	lda $3e
	sta $0607,x
	sec 
	sbc #$08
	bit $44
	bvs Lbl_edbe
	sta $0603,x
	clc 
	adc #$10
	sta $060b,x
	jmp Lbl_edc7

Lbl_edbe:
	sta $060b,x
	clc 
	adc #$10
	sta $0603,x

Lbl_edc7:
	lda $44
	sta $0602,x
	sta $0606,x
	sta $060a,x
	lda $45
	sta $0601,x
	clc 
	adc #$10
	sta $0605,x
	clc 
	adc #$10
	sta $0609,x
	lda $3f
	sta $0600,x
	sta $0604,x
	sta $0608,x
	txa 
	clc 
	adc #$0c
	sta $3c
	rts 

Lbl_edf5:
	ldx $3c
	lda $3e
	sec 
	sbc #$04
	bit $44
	bvs Lbl_ee12
	sta $0603,x
	sta $060b,x
	clc 
	adc #$08
	sta $0607,x
	sta $060f,x
	jmp Lbl_ee21

Lbl_ee12:
	sta $0607,x
	sta $060f,x
	clc 
	adc #$08
	sta $0603,x
	sta $060b,x

Lbl_ee21:
	lda $44
	sta $0602,x
	sta $0606,x
	sta $060a,x
	sta $060e,x
	lda $45
	sta $0601,x
	clc 
	adc #$10
	sta $0605,x
	sec 
	sbc #$0f
	sta $0609,x
	clc 
	adc #$10
	sta $060d,x
	lda $3f
	sec 
	sbc #$04
	bit $44
	bmi Lbl_ee61
	sta $0600,x
	sta $0604,x
	clc 
	adc #$08
	sta $0608,x
	sta $060c,x
	jmp Lbl_ee70

Lbl_ee61:
	sta $0608,x
	sta $060c,x
	clc 
	adc #$08
	sta $0600,x
	sta $0604,x

Lbl_ee70:
	txa 
	clc 
	adc #$10
	sta $3c
	rts 

Lbl_ee77:
	ldx $3c
	lda $3e
	sec 
	sbc #$0c
	bit $44
	bvs Lbl_ee9a
	sta $0603,x
	clc 
	adc #$08
	sta $0607,x
	clc 
	adc #$08
	sta $060b,x
	clc 
	adc #$08
	sta $060f,x
	jmp Lbl_eeaf

Lbl_ee9a:
	sta $060f,x
	clc 
	adc #$08
	sta $060b,x
	clc 
	adc #$08
	sta $0607,x
	clc 
	adc #$08
	sta $0603,x

Lbl_eeaf:
	lda $44
	sta $0602,x
	sta $0606,x
	sta $060a,x
	sta $060e,x
	lda $45
	sta $0601,x
	clc 
	adc #$10
	sta $0605,x
	clc 
	adc #$10
	sta $0609,x
	clc 
	adc #$10
	sta $060d,x
	lda $3f
	sta $0600,x
	sta $0604,x
	sta $0608,x
	sta $060c,x
	txa 
	clc 
	adc #$10
	sta $3c
	rts 

Lbl_eee9:
	ldx $3c
	lda $3e
	sta $0603,x
	sta $0607,x
	lda $44
	sta $0602,x
	sta $0606,x
	lda $45
	sta $0601,x
	clc 
	adc #$01
	sta $0605,x
	lda $3f
	sec 
	sbc #$04
	bit $44
	bmi Lbl_ef1b
	sta $0600,x
	clc 
	adc #$08
	sta $0604,x
	jmp Lbl_ef24

Lbl_ef1b:
	sta $0604,x
	clc 
	adc #$08
	sta $0600,x

Lbl_ef24:
	txa 
	clc 
	adc #$08
	sta $3c
	rts 

Lbl_ef2b:
	.byte $a5,$48,$38,$e5,$1c,$85,$3e,$a5,$49,$e5,$1d,$4a,$66,$3e,$4a,$66
	.byte $3e,$4a,$66,$3e,$4a,$66,$3e,$85,$00,$a5,$4a,$38,$e5,$1e,$85,$3f
	.byte $a5,$4b,$e5,$1f,$4a,$66,$3f,$4a,$66,$3f,$4a,$66,$3f,$4a,$66,$3f
	.byte $05,$00,$29,$07,$d0,$24,$a5,$40,$4a,$18,$65,$3e,$c5,$40,$90,$1a
	.byte $a5,$41,$4a,$49,$ff,$18,$69,$01,$18,$65,$3f,$90,$0d,$c9,$0c,$90
	.byte $09,$18,$65,$41,$b0,$04,$c9,$e4,$90,$06,$20,$d7,$ef,$a9,$ff,$60
	.byte $20,$d7,$ef,$a9,$00,$60,$a5,$3f,$48,$a5,$3e,$48,$20,$f4,$ef,$a5
	.byte $3e,$0a,$26,$49,$0a,$26,$49,$0a,$26,$49,$0a,$26,$49,$18,$65,$1c
	.byte $85,$48,$a5,$49,$29,$0f,$65,$1d,$85,$49,$a5,$3f,$0a,$26,$4b,$0a
	.byte $26,$4b,$0a,$26,$4b,$0a,$26,$4b,$18,$65,$1e,$85,$4a,$a5,$4b,$29
	.byte $0f,$65,$1f,$85,$4b,$68,$85,$3e,$68,$85,$3f,$60,$a5,$3e,$38,$e9
	.byte $04,$85,$3e,$a5,$ff,$29,$20,$d0,$08,$a5,$3f,$38,$e9,$05,$85,$3f
	.byte $60,$a5,$3f,$38,$e9,$09,$85,$3f,$60,$a5,$3e,$18,$69,$04,$85,$3e
	.byte $a5,$ff,$29,$20,$d0,$08,$a5,$3f,$18,$69,$05,$85,$3f,$60,$a5,$3f
	.byte $18,$69,$09,$85,$3f,$60

Lbl_f011:
	pha 
	ldx #$1a
	lda $ff
	and #$20
	bne Lbl_f01c
	ldx #$41

Lbl_f01c:
	txa 
	jsr Lbl_ea3a
	pla 
	jsr Lbl_f029
	lda $d3
	jmp Lbl_e61b

Lbl_f029:
	asl a 
	tay 
	bcc Lbl_f02f
	inc $7b

Lbl_f02f:
	lda ($7a),y
	iny 
	tax 
	lda ($7a),y
	sta $7b
	stx $7a
	lda $4f
	beq Lbl_f04b
	lda $44
	and #$fc
	sta $44
	lda $10
	and #$03
	ora $44
	sta $44

Lbl_f04b:
	lda #$00
	pha 
	pha 

Lbl_f04f:
	lda $3c
	cmp #$40
	bcc Lbl_f058
	jsr Lbl_ec73

Lbl_f058:
	ldy #$00
	lda $44
	asl a 
	asl a 
	lda ($7a),y
	iny 
	bcc Lbl_f065
	eor #$ff

Lbl_f065:
	adc $3e
	sta $3e
	lda $44
	asl a 
	lda ($7a),y
	iny 
	bcc Lbl_f073
	eor #$ff

Lbl_f073:
	adc $3f
	sta $3f
	ldy #$03
	lda ($7a),y
	sta $45
	dey 
	lda ($7a),y
	tax 
	and #$0c
	beq Lbl_f0e8
	cmp #$04
	bne Lbl_f08c
	jmp Lbl_f11e

Lbl_f08c:
	cmp #$08
	beq Lbl_f108
	lda $44
	pha 
	and #$c3
	eor ($7a),y
	sta $44
	ldy #$04
	lda ($7a),y
	jsr Lbl_f0bc
	pla 
	sta $44

Lbl_f0a3:
	ldy #$02
	lda ($7a),y
	and #$10
	beq Lbl_f0ae
	jmp Lbl_f138

Lbl_f0ae:
	clc 
	lda $7a
	adc #$05
	sta $7a
	bcc Lbl_f0b9
	inc $7b

Lbl_f0b9:
	jmp Lbl_f04f

Lbl_f0bc:
	tax 
	dex 
	bne Lbl_f0c3
	jmp Lbl_ecd1

Lbl_f0c3:
	dex 
	bne Lbl_f0c9
	jmp Lbl_ed12

Lbl_f0c9:
	dex 
	bne Lbl_f0cf
	jmp Lbl_ed54

Lbl_f0cf:
	dex 
	bne Lbl_f0d5
	jmp Lbl_eda4

Lbl_f0d5:
	dex 
	bne Lbl_f0db
	jmp Lbl_edf5

Lbl_f0db:
	dex 
	bne Lbl_f0e1
	jmp Lbl_ee77

Lbl_f0e1:
	dex 
	bne Lbl_f0e7
	jmp Lbl_eee9

Lbl_f0e7:
	rts 

Lbl_f0e8:
	ldx $3c
	lda $3e
	sta $0603,x
	lda $3f
	sta $0600,x
	lda $45
	sta $0601,x
	lda $44
	and #$c3
	eor ($7a),y
	sta $0602,x
	txa 
	clc 
	adc #$04
	sta $3c

Lbl_f108:
	ldy #$02
	lda ($7a),y
	and #$10
	bne Lbl_f138
	clc 
	lda $7a
	adc #$04
	sta $7a
	bcc Lbl_f11b
	inc $7b

Lbl_f11b:
	jmp Lbl_f04f

Lbl_f11e:
	txa 
	and #$c3
	eor $44
	sta $44
	lda $7b
	pha 
	lda $7a
	pha 
	ldy #$04
	lda ($7a),y
	sta $7b
	lda $45
	sta $7a
	jmp Lbl_f04f

Lbl_f138:
	pla 
	sta $7a
	pla 
	sta $7b
	beq Lbl_f0e7
	ldy #$02
	lda ($7a),y
	and #$c0
	eor $44
	sta $44
	jmp Lbl_f0a3

Lbl_f14d:
	.byte $60,$48,$4a,$4a,$4a,$4a,$20,$57,$f1,$68,$29,$0f,$18,$69,$30,$c9
	.byte $3a,$90,$03,$18,$69,$07,$85,$45,$20,$b4,$ec,$a5,$3e,$18,$69,$08
	.byte $85,$3e,$60,$a0,$00,$b1,$7a,$f0,$10,$85,$45,$20,$b4,$ec,$a5,$3e
	.byte $18,$69,$08,$85,$3e,$c8,$4c,$72,$f1,$c8,$98,$18,$65,$7a,$85,$7a
	.byte $90,$02,$e6,$7b,$60

Lbl_f192:
	ldx $19
	sta $0300,x
	inx 
	stx $19
	rts 

Lbl_f19b:
	lda #$00
	beq Lbl_f1a5

Lbl_f19f:
	lda #$80
	bne Lbl_f1a5

Lbl_f1a3:
	lda #$40

Lbl_f1a5:
	ldx $19
	sta $0302,x
	lda $bf
	sta $0300,x
	inx 
	lda $c0
	sta $0300,x
	inx 
	stx $18
	inx 
	stx $19
	rts 

Lbl_f1bc:
	lda $19
	clc 
	sbc $18
	ldx $18
	ora $0300,x
	sta $0300,x
	rts 

Lbl_f1ca:
	ldx #$00

Lbl_f1cc:
	cpx $19
	bcc Lbl_f1da
	lda #$00
	sta $19
	lda $ff
	sta $2000
	rts 

Lbl_f1da:
	lda $2002
	lda $0301,x
	sta $2006
	sta $1b
	lda $0300,x
	sta $2006
	sta $1a
	inx 
	inx 
	lda $0300,x
	bmi Lbl_f1fc
	and #$40
	bne Lbl_f216
	lda #$00
	beq Lbl_f1fe

Lbl_f1fc:
	lda #$04

Lbl_f1fe:
	sta $2000
	lda $0300,x
	inx 
	and #$3f
	tay 
	beq Lbl_f1cc

Lbl_f20a:
	lda $0300,x
	sta $2007
	inx 
	dey 
	bne Lbl_f20a
	beq Lbl_f1cc

Lbl_f216:
	lda $0300,x
	and #$3f
	tay 
	inx 

Lbl_f21d:
	lda $2002
	lda $1b
	sta $2006
	lda $1a
	sta $2006
	clc 
	adc #$08
	sta $1a
	lda $0300,x
	sta $2007
	inx 
	dey 
	bne Lbl_f21d
	beq Lbl_f1cc

Lbl_f23b:
	sei 
	cld 
	ldx #$ff
	txs 
	lda #$00
	sta $2000
	sta $2001
	sta $4010
	lda #$40
	sta $4017

Lbl_f250:
	lda $2002
	bpl Lbl_f250

Lbl_f255:
	lda $2002
	bpl Lbl_f255
	jsr Lbl_e68c
	lda #$1e
	jsr Lbl_e678
	lda #$30
	sta $ff
	sta $2000
	lda #$06
	sta $fe
	sta $2001
	jmp Lbl_c24f

Lbl_f273:
	lda #$08
	jsr Lbl_e9a6
	jsr Lbl_ce0f
	jsr Lbl_f30f
	lda #$1f
	sta $d5
	sta $d4
	lda #$c0
	sta $51

Lbl_f288:
	jsr Lbl_e936
	jsr Lbl_f3c1
	lda $10
	and #$03
	bne Lbl_f297
	jsr Lbl_cdd0

Lbl_f297:
	dec $51
	bne Lbl_f288
	lda #$00
	sta $51

Lbl_f29f:
	jsr Lbl_e936
	jsr Lbl_f3cf
	lda $10
	and #$03
	bne Lbl_f2b0
	lda #$03
	jsr Lbl_decc

Lbl_f2b0:
	inc $51
	bne Lbl_f29f
	lda #$00
	sta $fd
	sta $fc
	lda #$00
	sta $51

Lbl_f2be:
	jsr Lbl_e936
	jsr Lbl_f33b
	inc $51
	bne Lbl_f2be
	lda #$17
	jsr Lbl_decc
	lda #$00
	sta $e0
	lda #$00
	sta $51

Lbl_f2d5:
	jsr Lbl_e936
	lda $51
	sta $fd
	jsr Lbl_f412
	lda $10
	lsr a 
	bcs Lbl_f2d5
	inc $51
	bne Lbl_f2d5

Lbl_f2e8:
	jsr Lbl_e936
	jsr Lbl_f412
	lda $e0
	beq Lbl_f2e8
	lda #$00
	sta $e0
	jsr Lbl_ce27

Lbl_f2f9:
	jsr Lbl_e936
	lda $10
	and #$03
	bne Lbl_f305
	jsr Lbl_cdd0

Lbl_f305:
	jsr Lbl_f412
	lda $b6
	cmp #$09
	bcc Lbl_f2f9
	rts 

Lbl_f30f:
	ldx #$1f

Lbl_f311:
	lda Lbl_f31b,x
	sta $0650,x
	dex 
	bpl Lbl_f311
	rts 

Lbl_f31b:
	.byte $0f,$30,$10,$00,$0f,$26,$16,$06,$0f,$2c,$1b,$0c,$0f,$30,$15,$00
	.byte $0f,$3c,$2c,$1c,$0f,$2c,$1c,$0c,$0f,$0f,$0f,$0f,$0f,$2a,$1a,$0a

Lbl_f33b:
	lda $51
	and #$e7
	cmp #$80
	bne Lbl_f358
	lda $51
	and #$18
	ora #$07
	tay 
	ldx #$07

Lbl_f34c:
	lda Lbl_f359,y
	sta $0650,x
	sta $58,x
	dey 
	dex 
	bpl Lbl_f34c

Lbl_f358:
	rts 

Lbl_f359:
	.byte $0f,$30,$10,$00,$0f,$27,$17,$07,$0f,$30,$20,$1b,$0f,$28,$18,$08
	.byte $0f,$30,$20,$1b,$0f,$29,$19,$09,$0f,$30,$21,$1b,$0f,$2a,$1a,$0a

Lbl_f379:
	lda #$00
	sta $44
	lda #$d6
	sta $45
	jsr Lbl_eda4
	lda $3f
	clc 
	adc #$08
	sta $3f
	lda #$d7
	sta $45
	jsr Lbl_eda4
	lda $3f
	clc 
	adc #$08
	sta $3f
	lda #$d8
	sta $45
	jsr Lbl_eda4
	rts 

Lbl_f3a1:
	lda #$22
	sta $44
	lda #$00
	sta $45
	jsr Lbl_eda4
	lda $3f
	clc 
	adc #$08
	sta $3f
	jsr Lbl_eda4
	lda $3f
	clc 
	adc #$08
	sta $3f
	jsr Lbl_eda4
	rts 

Lbl_f3c1:
	lda #$80
	sta $3e
	lda #$77
	sta $3f
	jsr Lbl_f379
	jmp Lbl_ec73

Lbl_f3cf:
	lda #$80
	sta $3e
	lda $51
	cmp #$20
	bcc Lbl_f3e4
	cmp #$e0
	bcs Lbl_f3e4
	lda $10
	and #$03
	jmp Lbl_f3e8

Lbl_f3e4:
	lda $10
	and #$01

Lbl_f3e8:
	sta $fc
	lda #$77
	sec 
	sbc $fc
	sta $3f
	pha 
	clc 
	adc #$18
	sta $3f
	jsr Lbl_f3a1
	pla 
	sta $3f
	lda $51
	cmp #$c0
	bcs Lbl_f411
	lsr a 
	lsr a 
	lsr a 
	clc 
	adc $3f
	sta $3f
	jsr Lbl_f379
	jmp Lbl_ec73

Lbl_f411:
	rts 

Lbl_f412:
	lda #$9c
	sec 
	sbc $fd
	sta $3e
	bcs Lbl_f457
	lda #$63
	sta $3f
	lda #$01
	sta $44
	lda $10
	and #$07
	bne Lbl_f42b
	inc $04

Lbl_f42b:
	lda $04
	cmp #$03
	bcc Lbl_f435
	lda #$00
	sta $04

Lbl_f435:
	ldx $04
	lda Lbl_f45a,x
	sta $45
	jsr Lbl_edf5
	lda #$ab
	sec 
	sbc $fd
	sta $3e
	bcs Lbl_f457
	lda #$76
	sta $3f
	lda #$03
	sta $44
	lda #$ea
	sta $45
	jsr Lbl_edf5

Lbl_f457:
	jmp Lbl_ec73

Lbl_f45a:
	.byte $e0,$e2,$e4

Lbl_f45d:
	jsr Lbl_f547
	bne Lbl_f464
	lda #$00

Lbl_f464:
	rts 

Lbl_f465:
	.byte $a9,$00,$85,$01,$ad,$f3,$ff,$10,$4e,$20,$03,$ea,$a9,$07,$85,$d5
	.byte $85,$d4,$ad,$23,$f5,$85,$7a,$ad,$24,$f5,$85,$7b,$a0,$00,$a9,$08
	.byte $85,$c7,$a9,$0a,$85,$c8,$20,$23,$e8,$a9,$08,$85,$c7,$a9,$0c,$85
	.byte $c8,$20,$23,$e8,$a9,$08,$85,$c7,$a9,$0e,$85,$c8,$20,$23,$e8,$20
	.byte $ca,$f1,$20,$0a,$f5,$20,$0f,$ce,$20,$36,$e9,$20,$d0,$cd,$20,$c5
	.byte $f4,$a5,$b6,$c9,$09,$90,$f1,$a5,$01,$49,$08,$29,$0f,$85,$14,$60
	.byte $a9,$70,$85,$3e,$a9,$97,$85,$3f,$a5,$00,$85,$44,$a5,$01,$18,$69
	.byte $01,$20,$4e,$f1,$20,$73,$ec,$a5,$b6,$d0,$0a,$a5,$f5,$2c,$e5,$e6
	.byte $f0,$03,$20,$27,$ce,$a5,$f5,$2c,$e4,$e6,$d0,$06,$2c,$e3,$e6,$d0
	.byte $0d,$60,$a5,$01,$18,$69,$01,$c9,$10,$b0,$09,$85,$01,$60,$a5,$01
	.byte $f0,$02,$c6,$01,$60,$20,$fa,$e6,$20,$ca,$f9,$a2,$03,$bd,$1f,$f5
	.byte $9d,$50,$06,$9d,$60,$06,$ca,$10,$f4,$60,$0f,$30,$0f,$0f,$25,$f5
	.byte $53,$45,$4c,$45,$43,$54,$20,$53,$54,$41,$52,$54,$20,$41,$52,$45
	.byte $41,$00,$41,$4e,$44,$00,$50,$52,$45,$53,$53,$20,$53,$54,$41,$52
	.byte $54,$00

Lbl_f547:
	lda #$80
	sta $01
	lda #$01
	sta $02
	lda #$07
	sta $d5
	jsr Lbl_f58f
	lda #$02
	jsr Lbl_e9a6
	jsr Lbl_ce2e

Lbl_f55e:
	jsr Lbl_e936
	lda $f5
	and #$10
	bne Lbl_f589
	lda $01
	bne Lbl_f56d
	dec $02

Lbl_f56d:
	dec $01
	lda $02
	beq Lbl_f579
	jsr Lbl_eb71
	jmp Lbl_f57b

Lbl_f579:
	lda #$12

Lbl_f57b:
	sta $5b
	lda $01
	ora $02
	bne Lbl_f55e
	jsr Lbl_ce3c
	lda #$ff
	rts 

Lbl_f589:
	jsr Lbl_ce3c
	lda #$00
	rts 

Lbl_f58f:
	jsr Lbl_f9ca
	ldx #$0f

Lbl_f594:
	lda Lbl_f59e,x
	sta $0650,x
	dex 
	bpl Lbl_f594
	rts 

Lbl_f59e:
	.byte $0f,$3c,$2c,$1c,$0f,$30,$10,$00,$0f,$26,$27,$0f,$0f,$29,$10,$0f
	.byte $ad,$cf,$f5,$85,$7a,$ad,$d0,$f5,$85,$7b,$a0,$00,$a9,$02,$85,$c7
	.byte $a9,$1b,$85,$c8,$20,$23,$e8,$ad,$d9,$03,$20,$40,$e8,$20,$ca,$f1
	.byte $60,$d1,$f5,$43,$52,$45,$44,$49,$54,$20,$00

Lbl_f5d9:
	lda #$1d
	sta $d5
	sta $d4
	jsr Lbl_f67c
	lda #$01
	jsr Lbl_e9cf
	lda #$00
	sta $e0
	lda #$00
	sta $01

Lbl_f5ef:
	inc $01
	ldx $01
	cpx #$03
	bne Lbl_f5fb
	ldx #$00
	stx $01

Lbl_f5fb:
	lda Lbl_f65e,x
	jsr Lbl_f668
	jsr Lbl_e936
	lda $e0
	beq Lbl_f5ef
	lda #$4e
	jsr Lbl_decc
	lda #$0f

Lbl_f60f:
	pha 
	lsr a 
	lsr a 
	tax 
	lda Lbl_f661,x
	jsr Lbl_f668
	jsr Lbl_e936
	pla 
	sec 
	sbc #$01
	bpl Lbl_f60f
	lda #$28

Lbl_f624:
	pha 
	jsr Lbl_e936
	pla 
	sec 
	sbc #$01
	bpl Lbl_f624
	lda #$0b

Lbl_f630:
	pha 
	lsr a 
	lsr a 
	tax 
	lda Lbl_f665,x
	jsr Lbl_f668
	jsr Lbl_e936
	pla 
	sec 
	sbc #$01
	bpl Lbl_f630
	lda #$00
	sta $e0

Lbl_f647:
	jsr Lbl_e936
	lda $e0
	beq Lbl_f647
	jsr Lbl_ce27

Lbl_f651:
	jsr Lbl_cdd0
	jsr Lbl_e936
	lda $b6
	cmp #$09
	bcc Lbl_f651
	rts 

Lbl_f65e:
	.byte $93,$93,$94

Lbl_f661:
	.byte $98,$97,$96,$95

Lbl_f665:
	.byte $9b,$9a,$99

Lbl_f668:
	pha 
	lda #$7c
	sta $3e
	lda #$ab
	sta $3f
	lda #$00
	sta $44
	pla 
	jsr Lbl_f011
	jmp Lbl_ec73

Lbl_f67c:
	jsr Lbl_e6fa
	ldx #$1b

Lbl_f681:
	lda Lbl_f68b,x
	sta $0650,x
	dex 
	bpl Lbl_f681
	rts 

Lbl_f68b:
	.byte $0f,$27,$07,$17,$0f,$1c,$2c,$0a,$0f,$38,$17,$27,$0f,$30,$00,$0b
	.byte $0f,$30,$15,$0f,$0f,$30,$00,$0f,$0f,$30,$15,$00

Lbl_f6a7:
	jsr Lbl_ea03
	lda #$07
	sta $d5
	lda #$09
	sta $c7
	lda #$0d
	sta $c8
	lda Lbl_f706
	sta $7a
	lda Lbl_f707
	sta $7b
	ldy #$00
	jsr Lbl_e823
	lda #$0d
	sta $c7
	lda #$0f
	sta $c8
	jsr Lbl_e823
	lda $14
	and #$07
	clc 
	adc #$01
	jsr Lbl_e884
	jsr Lbl_f1ca
	jsr Lbl_f6f3
	jsr Lbl_ce2e
	lda #$3c

Lbl_f6e5:
	pha 
	jsr Lbl_e936
	pla 
	sec 
	sbc #$01
	bne Lbl_f6e5
	jsr Lbl_ce3c
	rts 

Lbl_f6f3:
	jsr Lbl_e6fa
	ldx #$03

Lbl_f6f8:
	lda Lbl_f702,x
	sta $0650,x
	dex 
	bpl Lbl_f6f8
	rts 

Lbl_f702:
	.byte $0f,$30,$0f,$0f

Lbl_f706:
	.byte $08

Lbl_f707:
	.byte $f7,$45,$4e,$54,$45,$52,$49,$4e,$47,$20,$49,$4e,$54,$4f,$00,$41
	.byte $52,$45,$41,$20,$00

Lbl_f71c:
	jsr Lbl_ea03
	lda #$07
	sta $d5
	lda #$00
	sta $d4
	lda $ff
	and #$df
	sta $ff
	sta $2000
	lda Lbl_f7c2
	sta $7a
	lda Lbl_f7c3
	sta $7b
	ldy #$00
	lda #$0b
	sta $c7
	lda #$0d
	sta $c8
	jsr Lbl_e823
	lda #$0b
	sta $c7
	lda #$10
	sta $c8
	jsr Lbl_e823
	jsr Lbl_f1ca
	jsr Lbl_ce82
	lda #$00
	sta $01
	jsr Lbl_ce0f

Lbl_f75f:
	jsr Lbl_e936
	jsr Lbl_cdd0
	jsr Lbl_f771
	lda $b6
	cmp #$09
	bcc Lbl_f75f
	lda $01
	rts 

Lbl_f771:
	lda $b6
	bne Lbl_f789
	lda $f5
	bit Lbl_e6e4
	beq Lbl_f780
	lda #$00
	beq Lbl_f787

Lbl_f780:
	bit Lbl_e6e3
	beq Lbl_f789
	lda #$01

Lbl_f787:
	sta $01

Lbl_f789:
	lda $f3
	bit Lbl_e6e6
	beq Lbl_f796
	lda $01
	eor #$01
	sta $01

Lbl_f796:
	lda #$67
	ldx $01
	beq Lbl_f79e
	lda #$7f

Lbl_f79e:
	sta $3f
	lda #$48
	sta $3e
	lda #$00
	sta $44
	lda $10
	lsr a 
	lsr a 
	and #$03
	clc 
	adc #$1c
	jsr Lbl_f011
	jsr Lbl_ec73
	lda $f5
	bit Lbl_e6e5
	beq Lbl_f7c1
	jsr Lbl_ce27

Lbl_f7c1:
	rts 

Lbl_f7c2:
	.byte $c4

Lbl_f7c3:
	.byte $f7,$43,$4f,$4e,$54,$49,$4e,$55,$45,$00,$45,$4e,$44,$00

Lbl_f7d1:
	jsr Lbl_ea03
	lda #$07
	sta $d5
	sta $d4
	lda $ff
	and #$df
	sta $ff
	sta $2000
	lda #$0b
	sta $c7
	lda #$0d
	sta $c8
	lda Lbl_f82c
	sta $7a
	lda Lbl_f82d
	sta $7b
	ldy #$00
	jsr Lbl_e823
	lda #$10
	sta $c7
	lda #$0d
	sta $c8
	jsr Lbl_e74d
	jsr Lbl_f19b
	lda $dd
	clc 
	adc #$30
	jsr Lbl_f192
	jsr Lbl_f1bc
	jsr Lbl_ce82
	jsr Lbl_ce0f
	lda #$64

Lbl_f81b:
	pha 
	jsr Lbl_e936
	jsr Lbl_cdd0
	pla 
	sec 
	sbc #$01
	bne Lbl_f81b
	jsr Lbl_ce3c
	rts 

Lbl_f82c:
	.byte $2e

Lbl_f82d:
	.byte $f8,$4c,$45,$46,$54,$00

Lbl_f833:
	lda #$10
	sta $d4
	lda #$15
	sta $d5
	jsr Lbl_ea03
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	lda #$00
	jsr Lbl_e9b8
	jsr Lbl_f90b
	jsr Lbl_f927
	jsr Lbl_f9a5
	lda $ff
	ora #$20
	sta $ff
	sta $2000
	jsr Lbl_e6e9
	jsr Lbl_ce0f

Lbl_f868:
	jsr Lbl_e936
	jsr Lbl_cdd0
	lda $15
	bmi Lbl_f868

Lbl_f872:
	jsr Lbl_e936
	jsr Lbl_f88c
	lda $f3
	and #$10
	beq Lbl_f872
	jsr Lbl_ce27

Lbl_f881:
	jsr Lbl_e936
	jsr Lbl_cdd0
	bit $15
	bvs Lbl_f881
	rts 

Lbl_f88c:
	lda $f5
	and #$03
	cmp #$01
	beq Lbl_f89a
	cmp #$02
	beq Lbl_f89f
	bne Lbl_f8a6

Lbl_f89a:
	inc $ba
	jmp Lbl_f8a1

Lbl_f89f:
	dec $ba

Lbl_f8a1:
	lda #$19
	jsr Lbl_decc

Lbl_f8a6:
	lda $ba
	bpl Lbl_f8ae
	lda #$00
	beq Lbl_f8b4

Lbl_f8ae:
	cmp #$03
	bcc Lbl_f8b6
	lda #$02

Lbl_f8b4:
	sta $ba

Lbl_f8b6:
	asl a 
	asl a 
	asl a 
	asl a 
	asl a 
	clc 
	adc #$50
	sta $3e
	lda #$af
	sta $3f
	lda $10
	and #$02
	beq Lbl_f8e3
	lda #$01
	sta $44
	lda #$5a
	sta $45
	jsr Lbl_ecb4
	lda $3e
	clc 
	adc #$18
	sta $3e
	lda #$41
	sta $44
	jsr Lbl_ecb4

Lbl_f8e3:
	lda #$00
	sta $44
	lda #$5c
	sta $3e
	lda #$84
	sta $45
	jsr Lbl_ed12
	lda #$7c
	sta $3e
	lda #$88
	sta $45
	jsr Lbl_ed12
	lda #$9c
	sta $3e
	lda #$86
	sta $45
	jsr Lbl_ed12
	jmp Lbl_ec73

Lbl_f90b:
	ldx #$0f

Lbl_f90d:
	lda Lbl_f917,x
	sta $0650,x
	dex 
	bpl Lbl_f90d
	rts 

Lbl_f917:
	.byte $0f,$35,$15,$05,$0f,$30,$00,$0b,$0f,$3c,$1c,$0c,$0f,$37,$17,$07

Lbl_f927:
	lda $99
	sta $05
	lda #$00

Lbl_f92d:
	pha 
	lsr $05
	bcc Lbl_f966
	lda Lbl_f96f
	sta $7a
	lda Lbl_f970
	sta $7b
	ldy #$00
	pla 
	pha 
	asl a 
	tay 
	jsr Lbl_ea63
	ldy #$00
	lda ($7a),y
	iny 
	sta $c7
	lda ($7a),y
	iny 
	sta $c8
	bit $c7
	bmi Lbl_f966
	clc 
	lda $7a
	adc #$02
	sta $7a
	bcc Lbl_f960
	inc $7b

Lbl_f960:
	jsr Lbl_e797
	jsr Lbl_f1ca

Lbl_f966:
	pla 
	clc 
	adc #$01
	cmp #$08
	bne Lbl_f92d
	rts 

Lbl_f96f:
	.byte $71

Lbl_f970:
	.byte $f9,$81,$f9,$8d,$f9,$91,$f9,$9c,$f9,$89,$f9,$a4,$f9,$85,$f9,$a0
	.byte $f9,$18,$08,$c2,$28,$0e,$04,$c2,$6a,$04,$04,$e2,$68,$18,$0a,$b2
	.byte $2a,$18,$0c,$42,$2c,$2d,$3c,$3d,$4c,$4d,$5a,$5b,$18,$0e,$c2,$2c
	.byte $02,$0e,$b2,$6c,$80

Lbl_f9a5:
	lda #$0b
	sta $c7
	lda #$18
	sta $c8
	lda #$00

Lbl_f9af:
	pha 
	tax 
	lda $06f0,x
	jsr Lbl_e862
	jsr Lbl_f1ca
	lda $c7
	clc 
	adc #$04
	sta $c7
	pla 
	clc 
	adc #$01
	cmp #$03
	bne Lbl_f9af
	rts 

Lbl_f9ca:
	lda #$0f
	ldx #$1f

Lbl_f9ce:
	sta $0650,x
	dex 
	bpl Lbl_f9ce
	rts 

Lbl_f9d5:
	lda #$01
	sta $52
	lda #$17
	sta $d5
	sta $d4
	jsr Lbl_ea03
	jsr Lbl_fce1
	lda $ff
	ora #$20
	sta $ff
	sta $2000
	lda #$00
	sta $c7
	sta $c8
	jsr Lbl_fcbc
	jsr Lbl_e6e9
	jsr Lbl_fa07
	jsr Lbl_fa17
	jsr Lbl_fa52
	jsr Lbl_fa60
	rts 

Lbl_fa07:
	lda #$3c

Lbl_fa09:
	pha 
	jsr Lbl_fc42
	jsr Lbl_e936
	pla 
	sec 
	sbc #$01
	bne Lbl_fa09
	rts 

Lbl_fa17:
	lda Lbl_fcf9
	sta $7a
	lda Lbl_fcfa
	sta $7b
	ldy #$00
	lda #$00
	sta $c8

Lbl_fa27:
	jsr Lbl_fbf8
	jsr Lbl_fc15
	lda $c8
	pha 
	clc 
	adc #$1d
	cmp #$1e
	bcc Lbl_fa3a
	sec 
	sbc #$1e

Lbl_fa3a:
	sta $c8
	lda #$0e
	sta $c7
	jsr Lbl_fbd6
	tax 
	pla 
	sta $c8
	cpx #$ff
	beq Lbl_fa51
	jsr Lbl_fc15
	jmp Lbl_fa27

Lbl_fa51:
	rts 

Lbl_fa52:
	jsr Lbl_fc15

Lbl_fa55:
	jsr Lbl_fbf8
	jsr Lbl_fc15
	lda $e0
	beq Lbl_fa55
	rts 

Lbl_fa60:
	jsr Lbl_fa7a
	lda #$00
	sta $fc
	jsr Lbl_fab9
	jsr Lbl_fa8f

Lbl_fa6d:
	jsr Lbl_fc42
	jsr Lbl_e936
	lda $f3
	and #$10
	beq Lbl_fa6d
	rts 

Lbl_fa7a:
	jsr Lbl_fc42
	jsr Lbl_e936
	ldx #$0f
	txa 

Lbl_fa83:
	sta $58,x
	dex 
	bpl Lbl_fa83
	jsr Lbl_fc42
	jsr Lbl_e936
	rts 

Lbl_fa8f:
	lda #$50
	sta $45

Lbl_fa93:
	lda $45
	pha 
	jsr Lbl_fc42
	jsr Lbl_e936
	pla 
	sta $45
	lda $10
	and #$03
	bne Lbl_fa93
	lda $45
	sec 
	sbc #$10
	sta $45
	bmi Lbl_fab8
	ldx #$0f

Lbl_fab0:
	jsr Lbl_cea3
	dex 
	bpl Lbl_fab0
	bmi Lbl_fa93

Lbl_fab8:
	rts 

Lbl_fab9:
	lda Lbl_faf8
	sta $7a
	lda Lbl_faf9
	sta $7b
	ldy #$00

Lbl_fac5:
	jsr Lbl_fc42
	ldy #$00
	lda ($7a),y
	iny 
	sta $bf
	lda ($7a),y
	beq Lbl_faf5
	iny 
	sta $c0
	jsr Lbl_f19b

Lbl_fad9:
	lda ($7a),y
	iny 
	cmp #$ff
	beq Lbl_fae7
	sta $0300,x
	inx 
	jmp Lbl_fad9

Lbl_fae7:
	stx $19
	jsr Lbl_f1bc
	jsr Lbl_eb44
	jsr Lbl_e936
	jmp Lbl_fac5

Lbl_faf5:
	jmp Lbl_e936

Lbl_faf8:
	.byte $fa

Lbl_faf9:
	.byte $fa,$d2,$20,$04,$00,$05,$00,$14,$00,$05,$00,$15,$ff,$12,$21,$60
	.byte $70,$80,$90,$a0,$b0,$c0,$d0,$e0,$ff,$32,$21,$61,$71,$81,$91,$a1
	.byte $b1,$c1,$d1,$e1,$ff,$52,$21,$62,$72,$82,$92,$a2,$b2,$c2,$d2,$e2
	.byte $ff,$72,$21,$63,$73,$83,$93,$a3,$b3,$c3,$d3,$e3,$f3,$ff,$92,$21
	.byte $64,$74,$84,$94,$a4,$b4,$c4,$d4,$e4,$ff,$b2,$21,$65,$75,$85,$95
	.byte $a5,$b5,$c5,$d5,$ff,$70,$22,$56,$45,$52,$59,$00,$54,$48,$41,$4e
	.byte $4b,$53,$2e,$2e,$21,$21,$ff,$ae,$22,$50,$52,$45,$53,$45,$4e,$54
	.byte $45,$44,$00,$42,$59,$2e,$2e,$2e,$ff,$14,$23,$0b,$0d,$1b,$1d,$07
	.byte $17,$0f,$09,$19,$16,$ff,$34,$23,$0c,$0e,$1c,$1e,$08,$18,$1f,$0a
	.byte $1a,$26,$ff,$c0,$23,$00,$aa,$aa,$00,$00,$00,$00,$00,$00,$aa,$aa
	.byte $00,$00,$00,$00,$10,$00,$aa,$aa,$00,$00,$00,$00,$c0,$00,$aa,$aa
	.byte $00,$00,$00,$00,$cc,$ff,$e0,$23,$00,$aa,$aa,$c0,$f0,$f0,$f0,$fc
	.byte $00,$aa,$aa,$cc,$ff,$ff,$ff,$83,$00,$aa,$aa,$00,$0f,$00,$00,$0c
	.byte $00,$0a,$0a,$00,$00,$00,$00,$00,$ff,$00,$00,$00,$00

Lbl_fbd6:
	jsr Lbl_e74d
	jsr Lbl_f19b
	ldy #$00

Lbl_fbde:
	lda ($7a),y
	iny 
	cmp #$2f
	beq Lbl_fbef
	cmp #$ff
	beq Lbl_fbef
	jsr Lbl_f192
	jmp Lbl_fbde

Lbl_fbef:
	pha 
	jsr Lbl_f1bc
	jsr Lbl_eb44
	pla 
	rts 

Lbl_fbf8:
	lda #$0e
	sta $c7
	jsr Lbl_e74d
	jsr Lbl_f19b
	ldx $19
	ldy #$12
	lda #$00

Lbl_fc08:
	sta $0300,x
	inx 
	dey 
	bne Lbl_fc08
	stx $19
	jsr Lbl_f1bc
	rts 

Lbl_fc15:
	jsr Lbl_fc42
	jsr Lbl_e936
	dec $52
	bne Lbl_fc15
	lda Lbl_fc41
	sta $52
	inc $fc
	lda $fc
	and #$03
	bne Lbl_fc15
	lda $fc
	and #$07
	bne Lbl_fc40
	inc $c8
	lda $c8
	cmp #$1e
	bne Lbl_fc40
	lda #$00
	sta $c8
	sta $fc

Lbl_fc40:
	rts 

Lbl_fc41:
	.byte $05

Lbl_fc42:
	lda #$00
	sta $44
	lda #$3c
	sta $3e
	lda #$ff
	sta $3f
	jsr Lbl_fc9f
	lda #$9f
	sta $3f
	jsr Lbl_fc9f
	lda #$4f
	sta $3f
	lda #$86
	sta $45
	lda #$05

Lbl_fc62:
	pha 
	lda #$20
	sta $3e
	lda $45
	pha 
	lda #$08

Lbl_fc6c:
	pha 
	jsr Lbl_ecb4
	lda $3e
	clc 
	adc #$08
	sta $3e
	lda $45
	clc 
	adc #$10
	sta $45
	pla 
	sec 
	sbc #$01
	bne Lbl_fc6c
	jsr Lbl_ec73
	pla 
	sta $45
	lda $3f
	clc 
	adc #$10
	sta $3f
	lda $45
	clc 
	adc #$02
	sta $45
	pla 
	sec 
	sbc #$01
	bne Lbl_fc62
	rts 

Lbl_fc9f:
	lda #$7e
	sta $45
	jsr Lbl_ecd1
	lda #$04

Lbl_fca8:
	pha 
	lda $3f
	clc 
	adc #$10
	sta $3f
	jsr Lbl_ecd1
	pla 
	sec 
	sbc #$01
	bne Lbl_fca8
	jmp Lbl_ec73

Lbl_fcbc:
	jsr Lbl_e6fa
	ldx #$13

Lbl_fcc1:
	lda Lbl_fccd,x
	sta $58,x
	sta $0650,x
	dex 
	bpl Lbl_fcc1
	rts 

Lbl_fccd:
	.byte $0f,$30,$36,$11,$0f,$30,$36,$27,$0f,$00,$3c,$15,$0f,$3c,$2c,$1c
	.byte $0f,$00,$3c,$15

Lbl_fce1:
	lda $2002
	lda #$23
	sta $2006
	lda #$c0
	sta $2006
	lda #$ff
	ldx #$40

Lbl_fcf2:
	sta $2007
	dex 
	bne Lbl_fcf2
	rts 

Lbl_fcf9:
	.byte $fb

Lbl_fcfa:
	.byte $fc,$44,$49,$52,$45,$43,$54,$4f,$52,$2f,$20,$2f,$20,$20,$20,$20
	.byte $48,$2e,$48,$49,$47,$41,$53,$49,$59,$41,$2f,$20,$2f,$20,$20,$20
	.byte $20,$4b,$2e,$4b,$49,$54,$41,$5a,$55,$4d,$49,$2f,$20,$2f,$20,$2f
	.byte $4d,$41,$4e,$41,$47,$45,$52,$2f,$20,$2f,$20,$20,$20,$20,$4b,$2e
	.byte $59,$4f,$53,$48,$49,$44,$41,$2f,$20,$2f,$20,$2f,$47,$41,$4d,$45
	.byte $20,$44,$45,$53,$49,$47,$4e,$2f,$20,$2f,$20,$20,$20,$20,$46,$41
	.byte $4e,$4b,$59,$2e,$2f,$20,$2f,$20,$20,$20,$20,$41,$4e,$44,$20,$4f
	.byte $54,$48,$45,$52,$53,$2f,$20,$2f,$20,$2f,$43,$48,$41,$52,$41,$43
	.byte $54,$45,$52,$2f,$20,$20,$20,$20,$44,$45,$53,$49,$47,$4e,$2f,$20
	.byte $2f,$20,$20,$20,$20,$46,$41,$4e,$4b,$59,$2e,$2f,$20,$2f,$20,$2f
	.byte $41,$52,$54,$20,$44,$45,$53,$49,$47,$4e,$2f,$20,$2f,$20,$20,$20
	.byte $20,$50,$47,$4d,$2d,$46,$31,$2f,$20,$2f,$20,$2f,$4d,$55,$53,$49
	.byte $43,$2f,$20,$43,$4f,$4d,$50,$4f,$53,$45,$52,$2f,$20,$2f,$20,$20
	.byte $20,$20,$4e,$41,$4f,$4b,$49,$20,$4b,$4f,$44,$41,$4b,$41,$2f,$20
	.byte $2f,$20,$2f,$53,$4f,$55,$4e,$44,$2f,$20,$50,$52,$4f,$47,$52,$41
	.byte $4d,$2f,$20,$2f,$20,$20,$20,$20,$4d,$41,$52,$55,$4d,$4f,$2f,$20
	.byte $2f,$20,$2f,$50,$52,$4f,$47,$52,$41,$4d,$2f,$20,$2f,$20,$20,$20
	.byte $20,$53,$45,$4e,$54,$41,$2f,$20,$2f,$20,$20,$20,$20,$4b,$41,$4e
	.byte $5a,$2f,$20,$2f,$20,$2f,$53,$50,$45,$43,$49,$41,$4c,$2f,$20,$54
	.byte $48,$41,$4e,$4b,$53,$20,$54,$4f,$2f,$20,$2f,$20,$20,$20,$20,$4d
	.byte $4f,$52,$49,$4b,$45,$4e,$2f,$20,$2f,$20,$20,$20,$20,$43,$48,$49
	.byte $41,$4f,$2f,$20,$2f,$20,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$00,$00,$19,$bd,$fe,$7e,$33,$9b,$9d,$cf
	.byte $1c,$33,$98,$98,$df,$0f,$60,$cc,$18,$c7,$1c,$33,$ce,$98,$77,$cc
	.byte $3f,$40,$98,$c1,$0f,$38,$4e,$c8,$33,$ce,$9c,$f1,$c4,$0f,$62,$ce
	.byte $c7,$e4,$87,$63,$ce,$71,$e2,$f0,$63,$fe,$78,$f0,$e0,$03,$9e,$31
	.byte $e4,$8c,$1f,$77,$1c,$70,$8f,$0f,$3f,$77,$c6,$c7,$87,$87,$cf,$dc
	.byte $cc,$07,$08,$e3,$87,$c3,$87,$87,$87,$3f,$20,$e7,$03,$f0,$f0,$e3
	.byte $83,$0f,$83,$23,$c7,$13,$c7,$c3,$c7,$07,$87,$3f,$08,$f8,$e0,$c3
	.byte $e7,$c3,$f1,$c3,$f9,$07,$61,$3e,$78,$d8,$f1,$f8,$f0,$e0,$f3,$1f
	.byte $f8,$c0,$3f,$ff,$08,$c7,$1f,$1c,$fe,$80,$ff,$38,$fc,$70,$3c,$f8
	.byte $0f,$f8,$1f,$7c,$cc,$23,$02,$fc,$03,$78,$0f,$fc,$ff,$1f,$c3,$8f
	.byte $07,$fe,$0f,$f0,$07,$0f,$3e,$fc,$80,$3f,$00,$fc,$c7,$0f,$1c,$7c
	.byte $e0,$3f,$00,$fe,$c0,$01,$e7,$f8,$c1,$fc,$01,$7e,$f0,$f0,$30,$7c
	.byte $f0,$0f,$8c,$7f,$c0,$07,$8c,$c7,$00,$1f,$c0,$0f,$83,$7f,$00,$cf
	.byte $87,$1f,$86,$87,$c3,$87,$ef,$e1,$e1,$07,$fe,$e1,$f1,$c7,$c1,$c1
	.byte $f1,$07,$e0,$c3,$e0,$e3,$e1,$00,$fc,$0f,$fc,$3c,$f8,$79,$00,$ff
	.byte $1c,$7e,$f0,$e0,$f0,$7f,$f0,$e0,$1f,$7e,$7c,$c0,$3f,$04,$ee,$c1
	.byte $1f,$06,$fc,$e0,$8f,$1f,$f8,$01,$07,$1f,$e2,$f0,$0f,$00,$f0,$e0
	.byte $3f,$70,$f0,$fd,$3f,$f8,$f8,$81,$0f,$80,$9f,$c7,$1f,$00,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Lbl_fff3:
	.byte $ff

Lbl_fff4:
	inc Lbl_fff4
	jmp Lbl_f23b

.segment "VECTORS"

	.word $eb7e
	.word $fff4
	.word $eb97
