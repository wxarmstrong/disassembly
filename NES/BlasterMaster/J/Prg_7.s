;*********************************************************************************************
;** Original File: C:\Users\William\Desktop\New folder (2)\Chou-Wakusei Senki - MetaFight (J).nes
;** 16K PRG-ROM pages: $08
;** 8K CHR-ROM pages: $10
;** Mirroring: horizontal
;** SRAM: not available
;** Trainer: not available
;** Mapper: $01
;*********************************************************************************************

.autoimport +

;The following labels are referenced by other banks:

	.export Lbl_c000, Lbl_f4a6, Lbl_f4bf, Lbl_fff4

.segment "PRG_7"

Lbl_c000:
	.byte $4c,$11,$f1,$4c,$e9,$f0,$4c,$4e,$d2,$4c,$1d,$d3,$4c,$2c,$d3,$4c
	.byte $1d,$d3,$4c,$41,$d3,$4c,$57,$d2,$4c,$bb,$d2,$4c,$a0,$f0,$4c,$b5
	.byte $d1,$4c,$1d,$d5,$4c,$fe,$d1,$4c,$b8,$d1,$4c,$01,$d2,$4c,$6c,$f4
	.byte $4c,$d8,$d1,$4c,$23,$d2,$4c,$47,$d7,$4c,$15,$d7,$4c,$07,$cf,$4c
	.byte $df,$f8,$4c,$f7,$f8,$4c,$34,$f4,$4c,$e6,$f0,$4c,$ae,$f0,$4c,$3a
	.byte $cd,$4c,$72,$cd,$4c,$50,$cd,$4c,$c0,$f4,$4c,$5d,$d5,$4c,$58,$d5
	.byte $4c,$53,$d5,$4c,$67,$d5,$4c,$3d,$d6,$4c,$4a,$d6,$4c,$7b,$d1,$4c
	.byte $30,$d1,$4c,$6b,$d1,$4c,$5d,$d1,$4c,$4d,$d1,$4c,$20,$d1,$4c,$12
	.byte $d1,$4c,$b9,$c8,$4c,$bd,$d6,$4c,$77,$f0,$4c,$29,$cb,$4c,$90,$d6
	.byte $4c,$2f,$f5,$4c,$0b,$f4,$4c,$ea,$cd,$4c,$a8,$ce,$4c,$49,$ce,$4c
	.byte $9a,$d6,$4c,$8e,$cd,$4c,$7d,$cd,$4c,$5f,$f4,$4c,$68,$f4,$4c,$65
	.byte $f4,$4c,$62,$f4,$4c,$f9,$f7,$4c,$3b,$d0,$4c,$2b,$d0,$4c,$53,$f4
	.byte $4c,$fd,$d6,$4c,$8a,$fa,$4c,$5b,$f0,$4c,$5b,$d0,$4c,$b7,$cd,$4c
	.byte $f6,$d6,$4c,$06,$d7,$4c,$c9,$d0,$4c,$57,$d6,$4c,$f7,$d0,$4c,$5e
	.byte $f3,$4c,$85,$d1,$4c,$85,$f3,$4c,$8b,$d1,$4c,$eb,$d5,$4c,$71,$d5
	.byte $4c,$f9,$d5,$4c,$de,$d6,$4c,$3c,$f4,$4c,$79,$f4,$4c,$d2,$d0,$4c
	.byte $b5,$cb,$4c,$34,$cb,$4c,$5f,$cb,$4c,$54,$d2,$4c,$b8,$d2,$4c,$f6
	.byte $d4,$4c,$01,$d5,$4c,$0f,$d5,$4c,$d2,$d6,$4c,$5f,$f8,$4c,$3e,$fa
	.byte $4c,$1c,$fa,$4c,$60,$fa,$4c,$9f,$f5,$4c,$e0,$f5,$4c,$22,$f6,$4c
	.byte $72,$f6,$4c,$45,$f7,$4c,$9f,$f5,$4c,$e0,$f5,$4c,$22,$f6,$4c,$72
	.byte $f6,$4c,$c3,$f6,$4c,$45,$f7,$4c,$82,$f5,$4c,$33,$f1,$4c,$a0,$cd
	.byte $4c,$99,$f4,$4c,$81,$f0,$4c,$38,$d8,$4c,$c8,$d6,$4c,$6a,$d6,$4c
	.byte $3c,$f0,$4c,$a9,$d6,$4c,$87,$d0,$4c,$a8,$cc,$4c,$9d,$ef,$4c,$7a
	.byte $d6,$4c,$5c,$f3,$4c,$93,$d1,$4c,$67,$d0,$4c,$2b,$d7,$4c,$ed,$cd
	.byte $4c,$ab,$ce,$4c,$4c,$ce,$4c,$10,$d0,$4c,$1c,$ec,$4c,$26,$ec,$4c
	.byte $71,$fa,$4c,$69,$fa,$4c,$6d,$fa,$4c,$41,$f5,$4c,$e1,$f1,$4c,$bf
	.byte $f1,$4c,$fa,$ec,$4c,$2b,$ed,$4c,$90,$ec,$4c,$a0,$ec,$4c,$17,$ef
	.byte $4c,$d5,$ed,$4c,$0b,$ef,$4c,$11,$ef,$4c,$2c,$ef,$4c,$2f,$ef,$4c
	.byte $ba,$ed,$4c,$bf,$ed,$4c,$c4,$ed,$4c,$cb,$ed,$4c,$dd,$ed,$4c,$ff
	.byte $ed,$4c,$c2,$ec,$4c,$de,$ec,$4c,$21,$ee,$4c,$2a,$ee,$4c,$32,$ee
	.byte $4c,$3f,$ee,$4c,$54,$ee,$4c,$47,$ee,$4c,$7a,$ee,$4c,$61,$ee,$4c
	.byte $93,$ee,$4c,$ac,$ee,$4c,$c5,$ee,$4c,$dc,$ee,$4c,$f0,$ee,$4c,$89
	.byte $ed,$4c,$a8,$ed,$4c,$b1,$ed,$4c,$5f,$ed,$4c,$37,$ed,$4c,$69,$ec
	.byte $4c,$81,$ec,$4c,$bf,$c4,$4c,$e1,$cd

Lbl_c219:
	lda $03f3
	cmp #$01
	bne Lbl_c227
	lda $03f4
	cmp #$23
	beq Lbl_c260

Lbl_c227:
	ldx #$00
	txa 

Lbl_c22a:
	sta $00,x
	sta $0100,x
	sta $0200,x
	sta $0300,x
	sta $0400,x
	sta $0500,x
	sta $0600,x
	sta $0700,x
	inx 
	bne Lbl_c22a
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
	lda #$08
	sta $14

Lbl_c260:
	jsr Lbl_ec1c
	jsr Lbl_de2e
	clc 
	adc #$08
	and #$0f
	sta $14
	jsr Lbl_df7a
	jmp Lbl_c279

Lbl_c273:
	lda $14
	ora #$08
	sta $14

Lbl_c279:
	lda #$02
	sta $dd
	jsr Lbl_c95c
	lda #$00
	sta $06f0
	sta $06f1
	sta $06f2
	sta $92
	lda #$ff
	sta $c1
	lda #$03
	sta $46
	jsr Lbl_c4bf

Lbl_c298:
	jsr Lbl_e1b4
	lda #$00
	sta $c5
	sta $15
	sta $b7
	sta $c3
	sta $90
	sta $4c
	sta $4d
	lda #$ff
	sta $53
	sta $03ff
	jsr Lbl_d6bd
	jsr Lbl_cb29

Lbl_c2b8:
	lda #$00
	sta $03d6
	sta $8f
	jsr Lbl_c5fc
	jsr Lbl_c566
	jsr Lbl_f077
	jsr Lbl_f327
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
	jsr Lbl_cbb5
	jsr Lbl_dbd6
	lda $c5
	and #$02
	beq Lbl_c304
	jsr Lbl_c64f

Lbl_c304:
	jsr Lbl_c67f
	lda #$00
	sta $8e
	lda #$00
	sta $56
	jsr Lbl_c870
	jsr Lbl_c91e
	jsr Lbl_d690
	jsr Lbl_f081
	lda $c5
	bit Lbl_f05e
	beq Lbl_c32f
	lda #$00
	sta $56
	jsr Lbl_c827
	jsr Lbl_e8c1
	jmp Lbl_c395

Lbl_c32f:
	jsr Lbl_f2b5
	jsr Lbl_c8b9
	jsr Lbl_d75d
	jsr Lbl_c6e3
	jsr Lbl_c9cb
	jsr Lbl_c722
	jsr Lbl_c54f
	lda $b6
	cmp #$09
	bcs Lbl_c395
	lda $f3
	and #$10
	beq Lbl_c365
	lda $c5
	and #$02
	bne Lbl_c35a
	lda #$04
	bne Lbl_c38f

Lbl_c35a:
	lda $15
	eor #$01
	sta $15
	lda #$18
	jsr Lbl_ec26

Lbl_c365:
	bit Lbl_fff3
	bvc Lbl_c32f
	lda $f4
	and #$80
	bne Lbl_c37e
	lda $f4
	and #$08
	bne Lbl_c385
	lda $f4
	and #$40
	bne Lbl_c389
	beq Lbl_c32f

Lbl_c37e:
	lda #$ff
	sta $03fb
	bne Lbl_c32f

Lbl_c385:
	lda #$03
	bne Lbl_c38f

Lbl_c389:
	lda #$ff
	sta $c3
	bne Lbl_c32f

Lbl_c38f:
	jsr Lbl_d0c9
	jmp Lbl_c32f

Lbl_c395:
	lda #$00
	sta $56
	jsr Lbl_c827
	lda $b7
	cmp #$01
	bne Lbl_c3a5
	jmp Lbl_c3ea

Lbl_c3a5:
	cmp #$02
	bne Lbl_c3ac
	jmp Lbl_c44c

Lbl_c3ac:
	cmp #$03
	bne Lbl_c3b3
	jmp Lbl_c3df

Lbl_c3b3:
	cmp #$04
	bne Lbl_c3ba
	jmp Lbl_c46f

Lbl_c3ba:
	cmp #$05
	bne Lbl_c3c1
	jmp Lbl_c3d6

Lbl_c3c1:
	cmp #$06
	bne Lbl_c3c8
	jmp Lbl_c47f

Lbl_c3c8:
	cmp #$07
	bne Lbl_c3cf
	jmp Lbl_c493

Lbl_c3cf:
	lda #$00
	sta $c5
	jmp Lbl_c2b8

Lbl_c3d6:
	lda $c5
	ora #$02
	sta $c5
	jmp Lbl_c2b8

Lbl_c3df:
	lda $c5
	eor #$01
	and #$fd
	sta $c5
	jmp Lbl_c2b8

Lbl_c3ea:
	lda $14
	sta $d7
	lda #$00
	sta $4c
	sta $4d
	jsr Lbl_c69c
	lda #$80
	sta $48
	sta $4a
	lda $14
	and #$08
	beq Lbl_c40f
	lda $c1
	beq Lbl_c40b
	lda #$03
	bne Lbl_c411

Lbl_c40b:
	lda #$1b
	bne Lbl_c411

Lbl_c40f:
	lda #$03

Lbl_c411:
	sta $46
	jsr Lbl_c4bf
	lda $14
	cmp $d7
	bne Lbl_c424
	lda #$39
	jsr Lbl_ec26
	jmp Lbl_c449

Lbl_c424:
	jsr Lbl_d6bd
	jsr Lbl_cb29
	lda $14
	cmp #$08
	bcc Lbl_c444
	lda $d7
	cmp #$08
	bcc Lbl_c444
	lda #$01
	jsr Lbl_ec26
	jsr Lbl_e059
	jsr Lbl_cd3a
	jmp Lbl_c449

Lbl_c444:
	lda #$38
	jsr Lbl_ec26

Lbl_c449:
	jmp Lbl_c2b8

Lbl_c44c:
	jsr Lbl_ec1c
	lda #$3d
	jsr Lbl_ec26
	dec $dd
	bpl Lbl_c466
	jsr Lbl_e0e0
	beq Lbl_c460
	jmp Lbl_c260

Lbl_c460:
	jsr Lbl_cd3a
	jmp Lbl_c273

Lbl_c466:
	jsr Lbl_c507
	jsr Lbl_cd3a
	jmp Lbl_c298

Lbl_c46f:
	lda #$18
	jsr Lbl_ec26
	jsr Lbl_e220
	lda #$18
	jsr Lbl_ec26
	jmp Lbl_c2b8

Lbl_c47f:
	jsr Lbl_ec1c
	lda #$00
	sta $03fb
	jsr Lbl_d6bd
	jsr Lbl_dc50
	jsr Lbl_e40a
	jmp Lbl_c227

Lbl_c493:
	lda $14
	and #$07
	asl a 
	tax 
	lda Lbl_c4af,x
	sta $49
	lda Lbl_c4b0,x
	sta $4b
	lda #$80
	sta $48
	sta $4a
	jsr Lbl_c4bf
	jmp Lbl_c2b8

Lbl_c4af:
	.byte $3d

Lbl_c4b0:
	.byte $5a,$09,$75,$0e,$06,$37,$5d,$18,$1b,$59,$09,$4a,$40,$59,$2a

Lbl_c4bf:
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
	sta $0360
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

Lbl_c507:
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
	lda $0360
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

Lbl_c54f:
	lda $10
	and #$07
	tax 
	lda Lbl_c55e,x
	sta $75
	sta $76
	sta $77
	rts 

Lbl_c55e:
	.byte $30,$22,$24,$26,$28,$2a,$30,$26

Lbl_c566:
	lda $c5
	and #$02
	bne Lbl_c586
	ldx $14
	lda Lbl_c93c,x
	jsr Lbl_f35c
	lda #$00
	jsr Lbl_f479
	ldy #$0f

Lbl_c57b:
	lda ($7a),y
	sta $0650,y
	dey 
	bpl Lbl_c57b
	jmp Lbl_c590

Lbl_c586:
	ldx #$0f
	lda #$0f

Lbl_c58a:
	sta $0650,x
	dex 
	bpl Lbl_c58a

Lbl_c590:
	ldx #$0b
	lda $ff
	and #$20
	bne Lbl_c5a2

Lbl_c598:
	lda Lbl_c5d8,x
	sta $0660,x
	dex 
	bpl Lbl_c598
	rts 

Lbl_c5a2:
	lda Lbl_c5cc,x
	sta $0660,x
	dex 
	bpl Lbl_c5a2
	lda $c5
	and #$02
	beq Lbl_c5cb
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

Lbl_c5c1:
	lda Lbl_c5e4,y
	sta $0668,x
	dey 
	dex 
	bne Lbl_c5c1

Lbl_c5cb:
	rts 

Lbl_c5cc:
	.byte $0f,$30,$15,$0f,$0f,$30,$00,$0f,$0f,$3b,$1b,$0f

Lbl_c5d8:
	.byte $0f,$30,$15,$0f,$0f,$30,$00,$0f,$0f,$3b,$1b,$0f

Lbl_c5e4:
	.byte $05,$15,$25,$0a,$1a,$27,$16,$11,$38,$16,$26,$34,$1a,$2a,$30,$1b
	.byte $2b,$3b,$16,$26,$34,$07,$00,$10

Lbl_c5fc:
	lda $c5
	and #$02
	bne Lbl_c60c
	ldx $14
	lda Lbl_c627,x
	sta $d5
	jmp Lbl_c616

Lbl_c60c:
	lda $14
	and #$07
	tax 
	lda Lbl_c647,x
	sta $d5

Lbl_c616:
	ldx $14
	lda Lbl_c637,x
	sta $d4
	lda $c5
	lsr a 
	bcc Lbl_c626
	lda #$07
	sta $d4

Lbl_c626:
	rts 

Lbl_c627:
	.byte $11,$13,$12,$14,$12,$13,$14,$11,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f

Lbl_c637:
	.byte $10,$10,$10,$10,$10,$10,$10,$10,$00,$01,$04,$00,$02,$01,$00,$01

Lbl_c647:
	.byte $19,$18,$19,$18,$1a,$18,$18,$1b

Lbl_c64f:
	jsr Lbl_f327
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	lda $14
	and #$07
	tax 
	cmp #$07
	bne Lbl_c671
	lda $03fb
	bpl Lbl_c671
	lda #$0a
	bne Lbl_c674

Lbl_c671:
	lda Lbl_c677,x

Lbl_c674:
	jmp Lbl_e3f2

Lbl_c677:
	.byte $05,$03,$06,$04,$07,$03,$04,$09

Lbl_c67f:
	lda $c5
	and #$01
	bne Lbl_c68b
	lda $14
	and #$08
	beq Lbl_c692

Lbl_c68b:
	lda $ff
	and #$df
	jmp Lbl_c696

Lbl_c692:
	lda $ff
	ora #$20

Lbl_c696:
	sta $ff
	sta $2000
	rts 

Lbl_c69c:
	lda Lbl_ead0
	sta $7a
	lda Lbl_ead1
	sta $7b
	ldy #$05

Lbl_c6a8:
	lda ($7a),y
	sta a:$0000,y
	dey 
	bpl Lbl_c6a8
	iny 
	ldx #$00

Lbl_c6b3:
	lda ($00),y
	cmp $14
	bne Lbl_c6c5
	lda ($02),y
	cmp $49
	bne Lbl_c6c5
	lda ($04),y
	cmp $4b
	beq Lbl_c6d2

Lbl_c6c5:
	iny 
	bne Lbl_c6b3
	rts 

Lbl_c6c9:
	.byte $e6,$01,$e6,$03,$e6,$05,$4c,$b3,$c6

Lbl_c6d2:
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

Lbl_c6e3:
	lda $15
	and #$c0
	beq Lbl_c721
	lda $19
	bne Lbl_c721
	lda $15
	bmi Lbl_c6fc
	lda $b6
	cmp #$09
	bcs Lbl_c71b
	inc $b6
	jmp Lbl_c700

Lbl_c6fc:
	dec $b6
	beq Lbl_c71b

Lbl_c700:
	lda $b6
	asl a 
	asl a 
	asl a 
	and #$f0
	sta $00
	ldx #$1f

Lbl_c70b:
	lda $0650,x
	sec 
	sbc $00
	bcs Lbl_c715
	lda #$0f

Lbl_c715:
	sta $58,x
	dex 
	bpl Lbl_c70b
	rts 

Lbl_c71b:
	lda $15
	and #$3f
	sta $15

Lbl_c721:
	rts 

Lbl_c722:
	lda Lbl_c740
	sta $7a
	lda Lbl_c741
	sta $7b
	lda #$00
	sta $3e
	sta $3f
	sta $44
	lda $ff
	and #$20
	bne Lbl_c73d
	jmp Lbl_c7c8

Lbl_c73d:
	jmp Lbl_c75e

Lbl_c740:
	.byte $42

Lbl_c741:
	.byte $c7,$46,$c7,$4e,$c7,$10,$80,$01,$74,$00,$40,$10,$5e,$10,$80,$01
	.byte $5c,$00,$08,$01,$5d,$00,$38,$00,$5e,$00,$08,$10,$5f

Lbl_c75e:
	lda #$00
	jsr Lbl_f8f7
	lda #$00
	sta $44
	lda #$10
	sta $3e
	lda #$c0
	sta $3f
	lda $040d
	jsr Lbl_c789
	lda #$01
	sta $44
	lda #$10
	sta $3e
	lda #$80
	sta $3f
	lda $c3
	jsr Lbl_c789
	jmp Lbl_f541

Lbl_c789:
	sta $00
	lda #$02

Lbl_c78d:
	pha 
	lda $3f
	sec 
	sbc #$10
	sta $3f
	lda $00
	ldx #$7e
	cmp #$1f
	bcc Lbl_c7b1
	dex 
	dex 
	cmp #$3f
	bcc Lbl_c7b1
	dex 
	dex 
	cmp #$5f
	bcc Lbl_c7b1
	dex 
	dex 
	cmp #$7f
	bcc Lbl_c7b1
	dex 
	dex 

Lbl_c7b1:
	stx $45
	jsr Lbl_f582
	lda $00
	sec 
	sbc #$80
	bcs Lbl_c7bf
	lda #$00

Lbl_c7bf:
	sta $00
	pla 
	sec 
	sbc #$01
	bne Lbl_c78d
	rts 

Lbl_c7c8:
	lda #$01
	jsr Lbl_f8f7
	lda #$00
	sta $44
	lda #$10
	sta $3e
	lda #$c0
	sta $3f
	lda $040d
	jsr Lbl_c7f6
	lda $03fc
	and #$04
	beq Lbl_c7f3
	lda #$01
	sta $44
	lda #$80
	sta $3f
	lda $92
	jsr Lbl_c7f6

Lbl_c7f3:
	jmp Lbl_f541

Lbl_c7f6:
	sta $00
	lda #$04

Lbl_c7fa:
	pha 
	lda $3f
	sec 
	sbc #$08
	sta $3f
	lda $00
	ldx #$59
	cmp #$1f
	bcc Lbl_c810
	inx 
	cmp #$3f
	bcc Lbl_c810
	inx 

Lbl_c810:
	stx $45
	jsr Lbl_f582
	lda $00
	sec 
	sbc #$40
	bcs Lbl_c81e
	lda #$00

Lbl_c81e:
	sta $00
	pla 
	sec 
	sbc #$01
	bne Lbl_c7fa
	rts 

Lbl_c827:
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

Lbl_c870:
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

Lbl_c8b9:
	lda #$00
	sta $56
	sta $57

Lbl_c8bf:
	ldx $56
	lda $0400,x
	beq Lbl_c8d8
	jsr Lbl_c827
	lda $4f
	beq Lbl_c8cf
	dec $4f

Lbl_c8cf:
	jsr Lbl_c8ec
	jsr Lbl_c870
	jsr Lbl_f541

Lbl_c8d8:
	lda $56
	clc 
	adc #$0e
	sta $56
	inc $57
	lda $57
	cmp #$12
	bcc Lbl_c8bf
	lda #$00
	sta $4f
	rts 

Lbl_c8ec:
	ldx #$31
	lda $14
	and #$08
	beq Lbl_c8f6
	ldx #$60

Lbl_c8f6:
	txa 
	pha 
	jsr Lbl_f35c
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
	jsr Lbl_f479
	lda $15
	bne Lbl_c91b
	clc 
	lda $7a
	adc #$03
	sta $7a
	bcc Lbl_c91b
	inc $7b

Lbl_c91b:
	jmp ($007a)

Lbl_c91e:
	lda #$00
	sta $56

Lbl_c922:
	ldx $56
	lda $0400,x
	beq Lbl_c932
	jsr Lbl_c827
	jsr Lbl_d193
	jsr Lbl_c870

Lbl_c932:
	lda $56
	clc 
	adc #$0e
	sta $56
	bcc Lbl_c922
	rts 

Lbl_c93c:
	.byte $16,$42,$18,$48,$40,$44,$4a,$46,$00,$02,$04,$06,$08,$10,$12,$14

Lbl_c94c:
	.byte $17,$43,$19,$49,$41,$45,$4b,$47,$01,$03,$05,$07,$09,$11,$13,$15

Lbl_c95c:
	lda $14
	and #$0f
	asl a 
	tax 
	lda Lbl_c973,x
	sta $49
	lda Lbl_c974,x
	sta $4b
	lda #$80
	sta $48
	sta $4a
	rts 

Lbl_c973:
	.byte $5a

Lbl_c974:
	.byte $16,$39,$36,$19,$55,$1e,$79,$69,$5d,$4e,$79,$39,$14,$59,$15,$18
	.byte $39,$45,$4b,$55,$07,$06,$0b,$36,$0b,$05,$7b,$05,$39,$39,$07,$48
	.byte $ad,$c1,$c9,$85,$7a,$ad,$c2,$c9,$85,$7b,$68,$20,$79,$f4,$b1,$7a
	.byte $c8,$85,$cd,$b1,$7a,$c8,$85,$ce,$b1,$7a,$c8,$85,$cf,$b1,$7a,$c8
	.byte $85,$d0,$b1,$7a,$c8,$85,$d1,$b1,$7a,$c8,$85,$d2,$60,$c3,$c9,$c5
	.byte $c9,$00,$00,$00,$00,$00,$00

Lbl_c9cb:
	lda $c5
	and #$0c
	beq Lbl_c9d2
	rts 

Lbl_c9d2:
	lda $d8
	and #$01
	beq Lbl_c9f3
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
	jmp Lbl_ca09

Lbl_c9f3:
	lda #$23
	jsr Lbl_f35c
	lda $14
	and #$0f
	jsr Lbl_f479
	ldy #$05

Lbl_ca01:
	lda ($7a),y
	sta a:$0000,y
	dey 
	bpl Lbl_ca01

Lbl_ca09:
	ldx #$10

Lbl_ca0b:
	ldy $8e

Lbl_ca0d:
	lda ($00),y
	bpl Lbl_ca19
	tya 
	bne Lbl_ca15
	rts 

Lbl_ca15:
	ldy #$00
	beq Lbl_ca0d

Lbl_ca19:
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
	bcs Lbl_ca40
	lda ($04),y
	sta $4b
	sec 
	sbc $1f
	and #$7f
	clc 
	adc #$06
	cmp #$1b
	bcs Lbl_ca40
	jmp Lbl_ca46

Lbl_ca40:
	inc $8e
	dex 
	bne Lbl_ca0b
	rts 

Lbl_ca46:
	lda $8e
	ldy #$49

Lbl_ca4a:
	cmp $0100,y
	bne Lbl_ca52
	inc $8e
	rts 

Lbl_ca52:
	dey 
	bpl Lbl_ca4a
	ldx #$70
	lda #$08
	sta $57

Lbl_ca5b:
	lda $0400,x
	beq Lbl_ca7f
	inc $57
	lda $57
	cmp #$12
	beq Lbl_ca70
	txa 
	clc 
	adc #$0e
	tax 
	jmp Lbl_ca5b

Lbl_ca70:
	inc $c6
	lda $c6
	and #$3f
	tax 
	lda $8e
	sta $010a,x
	inc $8e
	rts 

Lbl_ca7f:
	stx $56
	ldy $57
	ldx $46
	lda $ff
	and #$20
	beq Lbl_ca91
	lda Lbl_cad1,x
	jmp Lbl_ca94

Lbl_ca91:
	lda Lbl_cafc,x

Lbl_ca94:
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

Lbl_cad1:
	.byte $24,$26,$28,$2b,$2e,$30,$32,$35,$37,$39,$3b,$3d,$3f,$41,$44,$46
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $5a,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$68

Lbl_cafc:
	.byte $54,$56,$58,$5b,$5d,$5f,$62,$64,$66,$68,$6a,$6c,$6e,$70,$72,$74
	.byte $76,$78,$7a,$4e,$50,$7e,$80,$82,$85,$52,$88,$8a,$8c,$8d,$00,$00
	.byte $90,$2c,$2d,$30,$31,$2e,$2f,$32,$33,$34,$24,$26,$28

Lbl_cb29:
	ldx #$49
	lda #$ff

Lbl_cb2d:
	sta $0100,x
	dex 
	bpl Lbl_cb2d
	rts 

Lbl_cb34:
	lda $1d
	sta $00
	lda $1f
	sta $01
	lda $48
	sta $1c
	lda $49
	sec 
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
	jmp Lbl_cbb5

Lbl_cb5f:
	.byte $a5,$1d,$85,$00,$a5,$1f,$85,$01,$a5,$48,$c5,$1c,$a5,$49,$e5,$1d
	.byte $29,$7f,$c9,$09,$b0,$0e,$c9,$07,$b0,$15,$a5,$49,$38,$e9,$07,$85
	.byte $1d,$4c,$8a,$cb,$a5,$49,$38,$e9,$09,$85,$1d,$a5,$48,$85,$1c,$a5
	.byte $4a,$c5,$1e,$a5,$4b,$e5,$1f,$29,$7f,$c9,$0a,$b0,$0e,$c9,$05,$b0
	.byte $15,$a5,$4b,$38,$e9,$05,$85,$1f,$4c,$b1,$cb,$a5,$4b,$38,$e9,$0a
	.byte $85,$1f,$a5,$4a,$85,$1e

Lbl_cbb5:
	lda $c5
	and #$01
	bne Lbl_cbbe
	jsr Lbl_cbed

Lbl_cbbe:
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
	jsr Lbl_d087
	lda $d3
	jmp Lbl_ef9d

Lbl_cbed:
	ldx $14
	lda Lbl_c94c,x
	ldx #$7a
	jsr Lbl_f35e
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
	beq Lbl_cc18
	jsr Lbl_cc68
	bcs Lbl_cc1d
	bcc Lbl_cc29

Lbl_cc18:
	jsr Lbl_cc6f
	bcc Lbl_cc29

Lbl_cc1d:
	lda #$00
	sta $1c
	lda $1d
	and #$70
	ora #$08
	sta $1d

Lbl_cc29:
	lda $1f
	and #$08
	beq Lbl_cc36
	jsr Lbl_cc7f
	bcs Lbl_cc3b
	bcc Lbl_cc47

Lbl_cc36:
	jsr Lbl_cc79
	bcc Lbl_cc47

Lbl_cc3b:
	lda #$00
	sta $1e
	lda $1f
	and #$70
	ora #$08
	sta $1f

Lbl_cc47:
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

Lbl_cc68:
	jsr Lbl_cc8a
	inx 
	jmp Lbl_cc72

Lbl_cc6f:
	jsr Lbl_cc8a

Lbl_cc72:
	tya 
	ora #$08
	tay 
	jmp Lbl_cc9d

Lbl_cc79:
	jsr Lbl_cc8a
	jmp Lbl_cc9d

Lbl_cc7f:
	jsr Lbl_cc8a
	iny 
	tya 
	and #$07
	tay 
	jmp Lbl_cc9d

Lbl_cc8a:
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

Lbl_cc9d:
	txa 
	and #$07
	tax 
	lda ($7a),y

Lbl_cca3:
	asl a 
	dex 
	bpl Lbl_cca3
	rts 

Lbl_cca8:
	.byte $20,$f1,$cc,$f0,$06,$20,$b3,$cc,$a9,$ff,$60,$a5,$49,$38,$e9,$02
	.byte $29,$70,$18,$69,$02,$38,$e5,$1d,$0a,$30,$1e,$d0,$0c,$a5,$1c,$18
	.byte $69,$20,$29,$c0,$85,$1c,$d0,$11,$60,$a5,$1c,$18,$69,$40,$85,$1c
	.byte $90,$14,$e6,$1d,$e6,$3a,$a9,$ff,$60,$a5,$1c,$38,$e9,$40,$85,$1c
	.byte $b0,$04,$c6,$1d,$c6,$3a,$a9,$ff,$60,$a5,$4b,$38,$e9,$02,$29,$70
	.byte $18,$69,$02,$38,$e5,$1f,$0a,$30,$24,$d0,$0f,$a5,$1e,$18,$69,$20
	.byte $29,$c0,$85,$1e,$c9,$80,$f0,$29,$b0,$13,$a5,$1e,$18,$69,$40,$85
	.byte $1e,$90,$1c,$e6,$1f,$a5,$3a,$18,$69,$11,$4c,$35,$cd,$a5,$1e,$38
	.byte $e9,$40,$85,$1e,$b0,$09,$c6,$1f,$a5,$3a,$38,$e9,$11,$85,$3a,$a9
	.byte $ff,$60

Lbl_cd3a:
	jsr Lbl_ec1c
	lda $14
	and #$07
	tax 
	lda Lbl_cd48,x
	jmp Lbl_ec26

Lbl_cd48:
	.byte $06,$04,$02,$13,$07,$05,$37,$2b,$a5,$45,$48,$a5,$10,$0a,$0a,$85
	.byte $45,$a2,$0f,$a5,$45,$18,$69,$10,$29,$30,$85,$45,$bd,$50,$06,$45
	.byte $45,$95,$58,$ca,$10,$ed,$68,$85,$45,$60,$a2,$0f,$bd,$50,$06,$95
	.byte $58,$ca,$10,$f8,$60

Lbl_cd7d:
	lda $0650,x
	cmp #$0f
	beq Lbl_cd8d
	sec 
	sbc $45
	bcs Lbl_cd8b
	lda #$0f

Lbl_cd8b:
	sta $58,x

Lbl_cd8d:
	rts 

Lbl_cd8e:
	.byte $e8,$20,$7d,$cd,$e8,$20,$7d,$cd,$e8,$20,$7d,$cd,$8a,$38,$e9,$03
	.byte $aa,$60,$a6,$4e,$9d,$00,$05,$20,$ae,$f0,$a5,$c7,$29,$fe,$85,$c7
	.byte $a5,$c8,$29,$fe,$85,$c8,$4c,$33,$f1,$a9,$00,$a6,$4e,$9d,$00,$05
	.byte $20,$ae,$f0,$a5,$c7,$29,$fe,$85,$c7,$a5,$c8,$29,$fe,$85,$c8,$ad
	.byte $da,$cd,$85,$7a,$ad,$db,$cd,$85,$7b,$4c,$33,$f1,$dc,$cd,$22,$01
	.byte $01,$01,$01,$20,$85,$d1,$10,$03,$20,$b7,$cd,$60,$18,$69,$40,$a8
	.byte $29,$7f,$c9,$40,$90,$05,$49,$ff,$18,$69,$81,$aa,$98,$30,$04,$bd
	.byte $08,$ce,$60,$a9,$00,$38,$fd,$08,$ce,$60,$00,$01,$02,$02,$03,$04
	.byte $05,$05,$06,$07,$08,$09,$09,$0a,$0b,$0c,$0c,$0d,$0e,$0e,$0f,$10
	.byte $10,$11,$12,$12,$13,$14,$14,$15,$15,$16,$17,$17,$18,$18,$19,$19
	.byte $1a,$1a,$1b,$1b,$1b,$1c,$1c,$1d,$1d,$1d,$1e,$1e,$1e,$1e,$1f,$1f
	.byte $1f,$1f,$1f,$20,$20,$20,$20,$20,$20,$20,$20,$18,$69,$40,$a8,$29
	.byte $7f,$c9,$40,$90,$05,$49,$ff,$18,$69,$81,$aa,$98,$30,$04,$bd,$67
	.byte $ce,$60,$a9,$00,$38,$fd,$67,$ce,$60,$00,$03,$05,$08,$0b,$0e,$10
	.byte $13,$16,$19,$1b,$1e,$21,$23,$26,$28,$2b,$2d,$30,$32,$35,$37,$3a
	.byte $3c,$3e,$40,$43,$45,$47,$49,$4b,$4d,$4f,$51,$53,$55,$57,$58,$5a
	.byte $5c,$5d,$5f,$60,$61,$63,$64,$65,$66,$67,$68,$69,$6a,$6b,$6c,$6d
	.byte $6d,$6e,$6e,$6f,$6f,$6f,$70,$70,$70,$70,$18,$69,$40,$a8,$29,$7f
	.byte $c9,$40,$90,$05,$49,$ff,$18,$69,$81,$aa,$98,$30,$04,$bd,$c6,$ce
	.byte $60,$a9,$00,$38,$fd,$c6,$ce,$60,$00,$02,$04,$06,$08,$0a,$0c,$0e
	.byte $10,$12,$13,$15,$17,$19,$1b,$1d,$1f,$20,$22,$24,$26,$27,$29,$2b
	.byte $2c,$2e,$30,$31,$33,$34,$36,$37,$39,$3a,$3b,$3d,$3e,$3f,$40,$41
	.byte $43,$44,$45,$46,$47,$47,$48,$49,$4a,$4b,$4b,$4c,$4d,$4d,$4e,$4e
	.byte $4e,$4f,$4f,$4f,$50,$50,$50,$50,$50,$a9,$00,$85,$04,$a5,$00,$38
	.byte $e5,$02,$66,$04,$30,$05,$a5,$02,$38,$e5,$00,$85,$00,$a5,$01,$38
	.byte $e5,$03,$66,$04,$30,$05,$a5,$03,$38,$e5,$01,$85,$01,$c5,$00,$f0
	.byte $2e,$b0,$0a,$a6,$01,$a5,$00,$85,$01,$86,$00,$e6,$04,$a9,$20,$85
	.byte $05,$a2,$00,$06,$00,$b0,$06,$a5,$00,$c5,$01,$90,$0c,$a5,$00,$38
	.byte $e5,$01,$85,$00,$8a,$18,$65,$05,$aa,$46,$05,$d0,$e6,$f0,$02,$a2
	.byte $40,$bd,$8e,$cf,$85,$4c,$bd,$cf,$cf,$85,$4d,$a9,$01,$24,$04,$f0
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
	.byte $02,$29,$03,$aa,$bd,$57,$d0,$aa,$60,$01,$00,$02,$03,$a9,$0f,$aa
	.byte $95,$58,$9d,$50,$06,$ca,$10,$f8,$60

Lbl_d067:
	lda $1f
	sta $00
	lda $1e
	jsr Lbl_d07e
	sta $21
	lda $1d
	sta $00
	lda $1c
	jsr Lbl_d07e
	sta $20
	rts 

Lbl_d07e:
	ldx #$04

Lbl_d080:
	lsr $00
	ror a 
	dex 
	bne Lbl_d080
	rts 

Lbl_d087:
	lda $20
	sta $02
	lda $21
	sta $03
	jsr Lbl_d067
	lda $20
	sec 
	sbc $02
	sta $00
	clc 
	adc $fd
	sta $fd
	ror a 
	eor $00
	bpl Lbl_d0a9
	lda $f1
	eor #$01
	sta $f1

Lbl_d0a9:
	lda $21
	sec 
	sbc $03
	sta $00
	clc 
	adc $fc
	sta $fc
	cmp #$f0
	bcc Lbl_d0c8
	bit $00
	bpl Lbl_d0c3
	sec 
	sbc #$10
	jmp Lbl_d0c6

Lbl_d0c3:
	clc 
	adc #$10

Lbl_d0c6:
	sta $fc

Lbl_d0c8:
	rts 

Lbl_d0c9:
	sta $b7
	lda $15
	ora #$40
	sta $15
	rts 

Lbl_d0d2:
	.byte $ad,$02,$04,$c5,$48,$ad,$03,$04,$38,$e5,$49,$20,$34,$f4,$85,$45
	.byte $ad,$04,$04,$c5,$4a,$ad,$05,$04,$38,$e5,$4b,$20,$34,$f4,$c5,$45
	.byte $b0,$02,$a5,$45,$60

Lbl_d0f7:
	lda $f7
	and #$0f
	tax 
	lda Lbl_d102,x
	sta $79
	rts 

Lbl_d102:
	.byte $00,$03,$07,$00,$05,$04,$06,$05,$01,$02,$08,$01,$00,$03,$07,$00
	.byte $c9,$c0,$b0,$04,$29,$08,$d0,$03,$a9,$ff,$60,$a9,$00,$60,$c9,$c0
	.byte $b0,$06,$29,$0c,$c9,$08,$f0,$03,$a9,$ff,$60,$a9,$00,$60,$a2,$ff
	.byte $2c,$62,$f0,$f0,$13,$2c,$60,$f0,$f0,$0b,$a5,$14,$c9,$05,$f0,$08
	.byte $a9,$00,$85,$53,$aa,$a9,$00,$60,$a9,$ff,$60,$2c,$62,$f0,$f0,$08
	.byte $2c,$60,$f0,$f0,$03,$a9,$00,$60,$a9,$ff,$60,$c9,$c0,$b0,$04,$29
	.byte $20,$d0,$03,$a9,$ff,$60,$a9,$00,$60,$c9,$c0,$b0,$06,$29,$3c,$c9
	.byte $04,$f0,$03,$a9,$ff,$60,$a9,$00,$60,$c9,$c0,$b0,$03,$a9,$ff,$60
	.byte $a9,$00,$60,$a6,$4e,$bd,$00,$05,$60,$18,$65,$4e,$aa,$bd,$00,$05
	.byte $60

Lbl_d193:
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

Lbl_d1b5:
	.byte $20,$d8,$d1,$a5,$49,$29,$7f,$85,$49,$a5,$48,$18,$65,$4c,$85,$48
	.byte $6a,$45,$4c,$10,$0d,$a5,$4c,$30,$05,$e6,$49,$e6,$4e,$60,$c6,$49
	.byte $c6,$4e,$60,$a5,$4b,$29,$7f,$85,$4b,$a5,$4a,$18,$65,$4d,$85,$4a
	.byte $6a,$45,$4d,$10,$13,$a5,$4d,$30,$06,$e6,$4b,$a9,$11,$d0,$04,$c6
	.byte $4b,$a9,$ef,$18,$65,$4e,$85,$4e,$60

Lbl_d1fe:
	jsr Lbl_d223
	lda #$00
	ldx $4c
	bpl Lbl_d209
	lda #$ff

Lbl_d209:
	pha 
	txa 
	asl a 
	clc 
	adc $48
	sta $48
	pla 
	adc $49
	pha 
	sec 
	sbc $49
	clc 
	adc $4e
	sta $4e
	pla 
	and #$7f
	sta $49
	rts 

Lbl_d223:
	lda #$00
	ldx $4d
	bpl Lbl_d22b
	lda #$ff

Lbl_d22b:
	pha 
	txa 
	asl a 
	clc 
	adc $4a
	sta $4a
	pla 
	adc $4b
	pha 
	sec 
	sbc $4b
	sta $4b
	asl a 
	asl a 
	asl a 
	asl a 
	clc 
	adc $4b
	clc 
	adc $4e
	sta $4e
	pla 
	and #$7f
	sta $4b
	rts 

Lbl_d24e:
	.byte $20,$bb,$d2,$4c,$57,$d2,$20,$b8,$d1,$20,$7d,$d2,$f0,$05,$a5,$42
	.byte $85,$48,$60,$20,$6e,$d2,$f0,$07,$a9,$00,$38,$e5,$42,$85,$48,$60
	.byte $a6,$4e,$a5,$48,$18,$65,$42,$f0,$0f,$90,$0d,$e8,$4c,$86,$d2,$a6
	.byte $4e,$a5,$48,$c5,$42,$b0,$01,$ca,$bd,$00,$05,$30,$e2,$a5,$4a,$18
	.byte $65,$43,$90,$0e,$c9,$20,$90,$0a,$8a,$18,$69,$11,$a8,$b9,$00,$05
	.byte $30,$cd,$a5,$4a,$38,$e5,$43,$b0,$0e,$c9,$e0,$b0,$0a,$8a,$38,$e9
	.byte $11,$a8,$b9,$00,$05,$30,$b8,$a9,$00,$60,$20,$d8,$d1,$20,$e5,$d2
	.byte $f0,$05,$a5,$43,$85,$4a,$60,$20,$d2,$d2,$f0,$52,$a9,$00,$38,$e5
	.byte $43,$85,$4a,$60,$a6,$4e,$a5,$4a,$18,$65,$43,$f0,$17,$90,$15,$8a
	.byte $18,$69,$11,$aa,$4c,$f2,$d2,$a6,$4e,$a5,$4a,$c5,$43,$b0,$05,$8a
	.byte $38,$e9,$11,$aa,$bd,$00,$05,$30,$25,$a5,$48,$18,$65,$42,$90,$0b
	.byte $c9,$20,$90,$07,$e8,$bd,$00,$05,$30,$14,$ca,$a5,$48,$38,$e5,$42
	.byte $b0,$0a,$c9,$e0,$b0,$06,$ca,$bd,$00,$05,$30,$02,$a9,$00,$60,$20
	.byte $41,$d3,$f0,$06,$20,$2c,$d3,$a9,$ff,$60,$20,$2c,$d3,$60,$20,$56
	.byte $d3,$a5,$4c,$f0,$33,$30,$06,$20,$69,$d3,$4c,$66,$d3,$20,$96,$d3
	.byte $4c,$66,$d3,$20,$56,$d3,$a5,$4d,$f0,$1e,$30,$06,$20,$c0,$d3,$4c
	.byte $66,$d3,$20,$ea,$d3,$4c,$66,$d3,$a9,$00,$85,$0f,$20,$d3,$d4,$a5
	.byte $49,$85,$08,$a5,$4b,$85,$09,$60,$a5,$0f,$60,$a5,$49,$48,$a5,$48
	.byte $48,$a5,$4b,$48,$a5,$4a,$48,$20,$92,$d4,$20,$4e,$d4,$d0,$03,$4c
	.byte $14,$d4,$68,$85,$4a,$68,$85,$4b,$68,$85,$48,$68,$85,$49,$a5,$0a
	.byte $49,$ff,$18,$69,$01,$85,$48,$60,$a5,$49,$48,$a5,$48,$48,$a5,$4b
	.byte $48,$a5,$4a,$48,$20,$84,$d4,$20,$4e,$d4,$f0,$6a,$68,$85,$4a,$68
	.byte $85,$4b,$68,$85,$48,$68,$85,$49,$a5,$0a,$85,$48,$d0,$03,$20,$53
	.byte $d5,$60,$a5,$49,$48,$a5,$48,$48,$a5,$4b,$48,$a5,$4a,$48,$20,$b4
	.byte $d4,$20,$21,$d4,$f0,$40,$68,$85,$4a,$68,$85,$4b,$68,$85,$48,$68
	.byte $85,$49,$a5,$0c,$49,$ff,$18,$69,$01,$85,$4a,$60,$a5,$49,$48,$a5
	.byte $48,$48,$a5,$4b,$48,$a5,$4a,$48,$20,$a6,$d4,$20,$21,$d4,$f0,$16
	.byte $68,$85,$4a,$68,$85,$4b,$68,$85,$48,$68,$85,$49,$a5,$0c,$85,$4a
	.byte $d0,$03,$20,$5d,$d5,$60,$68,$85,$4a,$68,$85,$4b,$68,$85,$48,$68
	.byte $85,$49,$60,$a5,$49,$48,$a5,$48,$48,$20,$92,$d4,$a5,$49,$85,$0e
	.byte $68,$85,$48,$68,$85,$49,$20,$84,$d4,$20,$c8,$d4,$bd,$00,$05,$30
	.byte $40,$e8,$a5,$49,$c5,$0e,$f0,$05,$e6,$49,$4c,$3a,$d4,$a9,$00,$60
	.byte $a5,$4b,$48,$a5,$4a,$48,$20,$b4,$d4,$a5,$4b,$85,$0e,$68,$85,$4a
	.byte $68,$85,$4b,$20,$a6,$d4,$20,$c8,$d4,$bd,$00,$05,$30,$13,$8a,$18
	.byte $69,$11,$aa,$a5,$4b,$c5,$0e,$f0,$05,$e6,$4b,$4c,$67,$d4,$a9,$00
	.byte $60,$a9,$ff,$85,$0f,$60,$a5,$48,$38,$e5,$0a,$85,$48,$a5,$49,$e5
	.byte $0b,$85,$49,$60,$a5,$48,$18,$65,$0a,$85,$48,$a5,$49,$65,$0b,$85
	.byte $49,$a5,$48,$d0,$02,$c6,$49,$60,$a5,$4a,$38,$e5,$0c,$85,$4a,$a5
	.byte $4b,$e5,$0d,$85,$4b,$60,$a5,$4a,$18,$65,$0c,$85,$4a,$a5,$4b,$65
	.byte $0d,$85,$4b,$a5,$4a,$d0,$02,$c6,$4b,$60,$a5,$4e,$48,$20,$93,$d1
	.byte $aa,$68,$85,$4e,$60,$8a,$4a,$66,$0a,$4a,$66,$0a,$29,$3f,$85,$0b
	.byte $a5,$0a,$29,$c0,$85,$0a,$98,$4a,$66,$0c,$4a,$66,$0c,$29,$3f,$85
	.byte $0d,$a5,$0c,$29,$c0,$85,$0c,$60,$20,$0f,$d5,$f0,$06,$20,$01,$d5
	.byte $a9,$ff,$60,$20,$54,$d2,$f0,$08,$a9,$00,$38,$38,$e5,$4c,$85,$4c
	.byte $60,$20,$b8,$d2,$f0,$08,$a9,$00,$38,$38,$e5,$4d,$85,$4d,$60,$a6
	.byte $47,$a5,$49,$18,$7d,$38,$d5,$85,$49,$a5,$4b,$18,$7d,$41,$d5,$85
	.byte $4b,$a5,$4e,$18,$7d,$4a,$d5,$85,$4e,$60,$00,$00,$01,$01,$01,$00
	.byte $ff,$ff,$ff,$00,$ff,$ff,$00,$01,$01,$01,$00,$ff,$00,$ef,$f0,$01
	.byte $12,$11,$10,$ff,$ee,$e6,$49,$e6,$4e,$60,$c6,$49,$c6,$4e,$60,$e6
	.byte $4b,$a5,$4e,$18,$69,$11,$85,$4e,$60,$c6,$4b,$a5,$4e,$38,$e9,$11
	.byte $85,$4e,$60,$20,$a7,$d5,$8a,$48,$a5,$45,$c9,$7f,$f0,$1e,$a5,$53
	.byte $38,$e5,$45,$b0,$02,$a9,$00,$85,$53,$90,$08,$a9,$36,$20,$26,$ec
	.byte $4c,$96,$d5,$a9,$1d,$20,$26,$ec,$a9,$08,$85,$4f,$68,$aa,$a5,$44
	.byte $f0,$04,$09,$80,$95,$7e,$a9,$00,$60,$85,$44,$a5,$40,$4a,$85,$00
	.byte $a5,$3e,$38,$e5,$00,$85,$00,$a5,$41,$4a,$85,$01,$a5,$3f,$38,$e5
	.byte $01,$85,$01,$a2,$0f,$b5,$7e,$30,$1a,$f0,$18,$85,$45,$b5,$7c,$38
	.byte $e5,$00,$c5,$40,$f0,$02,$b0,$0b,$b5,$7d,$38,$e5,$01,$c5,$41,$f0
	.byte $0b,$90,$09,$ca,$ca,$ca,$10,$dd,$68,$68,$a9,$ff,$60,$20,$a7,$d5
	.byte $a5,$44,$f0,$06,$09,$80,$95,$7e,$a9,$00,$60,$85,$44,$a5,$40,$4a
	.byte $85,$00,$a5,$3e,$38,$e5,$00,$85,$00,$a5,$41,$4a,$85,$01,$a5,$3f
	.byte $38,$e5,$01,$85,$01,$a5,$7e,$30,$23,$f0,$21,$85,$45,$a5,$7c,$38
	.byte $e5,$00,$c5,$40,$f0,$02,$b0,$14,$a5,$7d,$38,$e5,$01,$c5,$41,$f0
	.byte $02,$b0,$09,$a5,$44,$09,$80,$85,$7e,$a9,$00,$60,$a9,$ff,$60,$20
	.byte $71,$d5,$d0,$07,$a9,$0c,$20,$26,$ec,$a9,$00,$60,$20,$eb,$d5,$d0
	.byte $07,$a9,$0d,$20,$26,$ec,$a9,$00,$60,$a5,$4f,$f0,$0e,$a5,$44,$29
	.byte $fc,$85,$44,$a5,$10,$29,$03,$05,$44,$85,$44,$60,$20,$72,$d6,$a9
	.byte $00,$95,$7e,$60,$a5,$57,$0a,$18,$65,$57,$aa,$60,$48,$20,$72,$d6
	.byte $b5,$7e,$a8,$a5,$3e,$95,$7c,$a5,$3f,$95,$7d,$68,$29,$7f,$95,$7e
	.byte $98,$60

Lbl_d690:
	ldx #$11
	lda #$00

Lbl_d694:
	sta $7c,x
	dex 
	bpl Lbl_d694
	rts 

Lbl_d69a:
	.byte $a0,$01,$e8,$b9,$46,$00,$9d,$00,$04,$c8,$c0,$0e,$d0,$f4,$60,$bd
	.byte $00,$04,$f0,$0c,$e4,$00,$f0,$0a,$8a,$18,$69,$0e,$aa,$4c,$a9,$d6
	.byte $a9,$ff,$60

Lbl_d6bd:
	lda #$00
	ldx #$0e

Lbl_d6c1:
	sta $0400,x
	inx 
	bne Lbl_d6c1
	rts 

Lbl_d6c8:
	.byte $a9,$00,$a2,$0d,$95,$46,$ca,$d0,$fb,$60,$a6,$57,$a5,$46,$9d,$50
	.byte $01,$a9,$02,$85,$46,$60,$a4,$57,$c0,$08,$90,$12,$e6,$c6,$a5,$c6
	.byte $29,$3f,$aa,$b9,$f8,$00,$9d,$0a,$01,$a9,$ff,$99,$f8,$00,$a9,$00
	.byte $85,$46,$85,$4f,$60,$a4,$57,$a9,$ff,$99,$f8,$00,$d0,$f0,$a5,$57
	.byte $38,$e9,$01,$c9,$05,$b0,$e7,$20,$6a,$d6,$4c,$f6,$d6,$a5,$49,$85
	.byte $00,$a5,$4b,$85,$01,$ad,$03,$04,$85,$02,$ad,$05,$04,$85,$03,$20
	.byte $07,$cf,$60,$48,$a2,$54,$a9,$ee,$85,$00,$20,$a9,$d6,$f0,$0c,$8a
	.byte $48,$20,$9a,$d6,$68,$aa,$68,$9d,$00,$04,$60,$68,$a9,$00,$60,$a2
	.byte $4c,$a9,$40,$20,$3c,$f4,$a5,$4d,$38,$e9,$40,$85,$4d,$a2,$4d,$a9
	.byte $40,$20,$3c,$f4,$60

Lbl_d75d:
	lda #$00
	sta $93
	lda $1c
	sta $c9
	asl a 
	lda $1d
	sta $ca
	rol a 
	cmp $24
	beq Lbl_d796
	bpl Lbl_d780
	dec $22
	dec $24
	lda $22
	lsr a 
	bcc Lbl_d77c
	dec $26

Lbl_d77c:
	ldx #$03
	bne Lbl_d78d

Lbl_d780:
	inc $22
	inc $24
	lda $22
	lsr a 
	bcs Lbl_d78b
	inc $26

Lbl_d78b:
	ldx #$01

Lbl_d78d:
	jsr Lbl_d7e2
	jsr Lbl_d99e
	jmp Lbl_dabe

Lbl_d796:
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
	beq Lbl_d7e1
	bpl Lbl_d7c6
	dec $23
	dec $25
	lda $23
	lsr a 
	bcc Lbl_d7c2
	lda $26
	sec 
	sbc #$11
	sta $26

Lbl_d7c2:
	ldx #$00
	beq Lbl_d7d8

Lbl_d7c6:
	inc $23
	inc $25
	lda $23
	lsr a 
	bcs Lbl_d7d6
	lda $26
	clc 
	adc #$11
	sta $26

Lbl_d7d6:
	ldx #$02

Lbl_d7d8:
	jsr Lbl_d7e2
	jsr Lbl_d8ef
	jmp Lbl_da72

Lbl_d7e1:
	rts 

Lbl_d7e2:
	stx $39
	lda $22
	and #$3f
	sta $22
	clc 
	adc Lbl_d828,x
	and #$3f
	sta $04
	lda $23
	jsr Lbl_f0a0
	sta $23
	clc 
	adc Lbl_d82c,x
	jsr Lbl_f0a0
	sta $05
	lda $24
	clc 
	adc Lbl_d828,x
	sta $08
	lda $25
	clc 
	adc Lbl_d82c,x
	sta $09
	lda $23
	and #$01
	beq Lbl_d81d
	txa 
	clc 
	adc #$04
	tax 

Lbl_d81d:
	lda $26
	clc 
	adc Lbl_d830,x
	sta $0c
	jmp Lbl_d838

Lbl_d828:
	.byte $00,$20,$00,$00

Lbl_d82c:
	.byte $00,$00,$1d,$00

Lbl_d830:
	.byte $00,$10,$ee,$00,$00,$10,$ff,$00

Lbl_d838:
	lda $08
	sta $0a
	lda $09
	sta $0b
	jsr Lbl_d84f
	jsr Lbl_d866
	jsr Lbl_d889
	jsr Lbl_d8ad
	jmp Lbl_d8cf

Lbl_d84f:
	ldx $14
	lda Lbl_c93c,x
	ldx #$00
	jsr Lbl_f35e
	ldy #$02

Lbl_d85b:
	lda ($00),y
	sta a:$0025,y
	iny 
	cpy #$0c
	bne Lbl_d85b
	rts 

Lbl_d866:
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

Lbl_d889:
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

Lbl_d8ad:
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

Lbl_d8cf:
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

Lbl_d8ef:
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

Lbl_d908:
	lda $06
	sta $c7
	lda $07
	sta $c8
	jsr Lbl_f0e9
	jsr Lbl_fa69

Lbl_d916:
	lda ($33),y
	tay 
	lda ($27),y
	ldx $0d
	sta $0500,x
	jsr Lbl_dbb7
	ldx $19
	ldy #$00
	lda ($31),y
	sta $0300,x
	inx 
	stx $19
	pla 
	sec 
	sbc #$01
	bne Lbl_d938
	jmp Lbl_fa8a

Lbl_d938:
	pha 
	inc $06
	inc $0a
	lda $06
	lsr a 
	bcc Lbl_d94b
	inc $31
	bne Lbl_d948
	inc $32

Lbl_d948:
	jmp Lbl_d989

Lbl_d94b:
	inc $0d
	lda $0a
	and #$03
	beq Lbl_d95c
	inc $33
	bne Lbl_d959
	inc $34

Lbl_d959:
	jmp Lbl_d986

Lbl_d95c:
	lda $0a
	and #$07
	beq Lbl_d96b
	inc $35
	bne Lbl_d968
	inc $36

Lbl_d968:
	jmp Lbl_d983

Lbl_d96b:
	inc $37
	bne Lbl_d971
	inc $38

Lbl_d971:
	lda $0a
	bne Lbl_d980
	sec 
	lda $37
	sbc #$20
	sta $37
	bcs Lbl_d980
	dec $38

Lbl_d980:
	jsr Lbl_d889

Lbl_d983:
	jsr Lbl_d8ad

Lbl_d986:
	jsr Lbl_d8cf

Lbl_d989:
	lda $06
	and #$1f
	beq Lbl_d992
	jmp Lbl_d916

Lbl_d992:
	lda $06
	and #$3f
	sta $06
	jsr Lbl_fa8a
	jmp Lbl_d908

Lbl_d99e:
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

Lbl_d9b7:
	lda $06
	sta $c7
	lda $07
	sta $c8
	jsr Lbl_f0e9
	jsr Lbl_fa6d

Lbl_d9c5:
	pla 
	pha 
	cmp #$01
	bne Lbl_d9d1
	lda $05
	and #$01
	bne Lbl_d9de

Lbl_d9d1:
	lda ($33),y
	tay 
	lda ($27),y
	ldx $0d
	sta $0500,x
	jsr Lbl_dbb7

Lbl_d9de:
	ldx $19
	ldy #$00
	lda ($31),y
	sta $0300,x
	inx 
	stx $19
	pla 
	sec 
	sbc #$01
	bne Lbl_d9f3
	jmp Lbl_fa8a

Lbl_d9f3:
	pha 
	inc $07
	inc $0b
	lda $07
	lsr a 
	bcc Lbl_da0b
	clc 
	lda $31
	adc #$02
	sta $31
	bcc Lbl_da08
	inc $32

Lbl_da08:
	jmp Lbl_da5f

Lbl_da0b:
	lda $0d
	clc 
	adc #$11
	sta $0d
	lda $0b
	and #$03
	beq Lbl_da26
	clc 
	lda $33
	adc #$02
	sta $33
	bcc Lbl_da23
	inc $34

Lbl_da23:
	jmp Lbl_da5c

Lbl_da26:
	lda $0b
	and #$07
	beq Lbl_da3a
	clc 
	lda $35
	adc #$02
	sta $35
	bcc Lbl_da37
	inc $36

Lbl_da37:
	jmp Lbl_da59

Lbl_da3a:
	clc 
	lda $37
	adc #$20
	sta $37
	bcc Lbl_da45
	inc $38

Lbl_da45:
	lda $0b
	bne Lbl_da56
	sec 
	lda $37
	sbc #$00
	sta $37
	lda $38
	sbc #$04
	sta $38

Lbl_da56:
	jsr Lbl_d889

Lbl_da59:
	jsr Lbl_d8ad

Lbl_da5c:
	jsr Lbl_d8cf

Lbl_da5f:
	lda $07
	cmp #$1e
	bcs Lbl_da68
	jmp Lbl_d9c5

Lbl_da68:
	lda #$00
	sta $07
	jsr Lbl_fa8a
	jmp Lbl_d9b7

Lbl_da72:
	lda $04
	sta $06
	lda $05
	sta $07
	jsr Lbl_db07
	lda #$09
	pha 

Lbl_da80:
	lda $06
	sta $c7
	lda $07
	sta $c8
	jsr Lbl_f111
	jsr Lbl_fa69

Lbl_da8e:
	jsr Lbl_db2b
	ldx $19
	sta $0300,x
	inx 
	stx $19
	pla 
	sec 
	sbc #$01
	bne Lbl_daa2
	jmp Lbl_fa8a

Lbl_daa2:
	pha 
	inc $0d
	inc $0d
	lda $06
	clc 
	adc #$04
	sta $06
	and #$1c
	bne Lbl_da8e
	jsr Lbl_fa8a
	lda $06
	and #$3f
	sta $06
	jmp Lbl_da80

Lbl_dabe:
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
	beq Lbl_dae6
	dec $0d

Lbl_dae6:
	lda $06
	sta $c7
	lda $07
	sta $c8
	jsr Lbl_f111
	jsr Lbl_fa71

Lbl_daf4:
	jsr Lbl_dbae
	ldx $19
	sta $0300,x
	inc $19
	lda $07
	cmp #$1e
	bcc Lbl_daf4
	jmp Lbl_fa8a

Lbl_db07:
	lda $0c
	sta $0d
	lda $05
	and #$02
	beq Lbl_db18
	lda $0d
	sec 
	sbc #$11
	sta $0d

Lbl_db18:
	lda $04
	and #$02
	beq Lbl_db20
	dec $0d

Lbl_db20:
	rts 

Lbl_db21:
	lda $0500,x
	lsr a 
	ror $00
	lsr a 
	ror $00
	rts 

Lbl_db2b:
	lda $39
	lsr a 
	bcs Lbl_db3e
	lda $39
	eor $05
	and #$02
	beq Lbl_db3e
	lda $39
	beq Lbl_db5b
	bne Lbl_db74

Lbl_db3e:
	ldx $0d
	jsr Lbl_db21
	inx 
	jsr Lbl_db21
	txa 
	clc 
	adc #$10
	tax 
	jsr Lbl_db21
	inx 
	jsr Lbl_db21
	txa 
	clc 
	adc #$10
	tax 
	lda $00
	rts 

Lbl_db5b:
	ldx $0d
	dex 
	jsr Lbl_db21
	inx 
	jsr Lbl_db21
	txa 
	clc 
	adc #$11
	tax 
	jsr Lbl_db21
	inx 
	jsr Lbl_db21
	lda $00
	rts 

Lbl_db74:
	ldx $0d
	jsr Lbl_db21
	inx 
	jsr Lbl_db21
	txa 
	clc 
	adc #$11
	tax 
	jsr Lbl_db21
	inx 
	jsr Lbl_db21
	lda $00
	rts 

Lbl_db8c:
	lda $07
	eor $05
	and #$1e
	bne Lbl_db96
	inc $0d

Lbl_db96:
	ldx $0d
	jsr Lbl_db21
	inx 
	jsr Lbl_db21
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

Lbl_dbae:
	jsr Lbl_db8c
	jsr Lbl_db8c
	lda $00
	rts 

Lbl_dbb7:
	tay 
	and #$20
	beq Lbl_dbd5
	lda $0a
	ora $0b
	lsr a 
	bcs Lbl_dbd5
	ldx $93
	cpx #$04
	beq Lbl_dbd5
	sty $aa,x
	lda $0a
	sta $ae,x
	lda $0b
	sta $b2,x
	inc $93

Lbl_dbd5:
	rts 

Lbl_dbd6:
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
	jsr Lbl_d067
	lda $20
	and #$0f
	sta $fd
	lda $21
	and #$0f
	sta $fc
	lda #$1e

Lbl_dc1b:
	pha 
	jsr Lbl_d838
	jsr Lbl_d8ef
	pla 
	pha 
	cmp #$01
	beq Lbl_dc2b
	jsr Lbl_da72

Lbl_dc2b:
	jsr Lbl_fa98
	inc $05
	inc $09
	lda $05
	cmp #$1e
	bcc Lbl_dc3c
	lda #$00
	sta $05

Lbl_dc3c:
	lda #$01
	bit $05
	bne Lbl_dc49
	lda $0c
	clc 
	adc #$11
	sta $0c

Lbl_dc49:
	pla 
	sec 
	sbc #$01
	bne Lbl_dc1b
	rts 

Lbl_dc50:
	lda #$08
	jsr Lbl_e3e0
	jsr Lbl_f081
	jsr Lbl_dcfa
	lda #$1f
	sta $d5
	sta $d4
	lda #$c0
	sta $51

Lbl_dc65:
	jsr Lbl_f2b5
	jsr Lbl_ddac
	lda $10
	and #$03
	bne Lbl_dc74
	jsr Lbl_c6e3

Lbl_dc74:
	dec $51
	bne Lbl_dc65
	lda #$00
	sta $51

Lbl_dc7c:
	jsr Lbl_f2b5
	jsr Lbl_ddba
	lda $10
	and #$03
	bne Lbl_dc8d
	lda #$03
	jsr Lbl_ec26

Lbl_dc8d:
	inc $51
	bne Lbl_dc7c
	lda #$00
	sta $fd
	sta $fc
	lda #$00
	sta $51

Lbl_dc9b:
	jsr Lbl_f2b5
	jsr Lbl_dd26
	inc $51
	bne Lbl_dc9b
	lda #$17
	jsr Lbl_ec26
	lda #$00
	sta $e0
	lda #$00
	sta $51

Lbl_dcb2:
	jsr Lbl_f2b5
	lda $51
	sta $fd
	lda $fd
	cmp #$98
	bcc Lbl_dcc2
	jsr Lbl_ddfd

Lbl_dcc2:
	lda $10
	lsr a 
	bcs Lbl_dcb2
	inc $51
	bne Lbl_dcb2
	lda #$00
	sta $fd
	lda #$01
	sta $f1

Lbl_dcd3:
	jsr Lbl_f2b5
	jsr Lbl_ddfd
	lda $e0
	beq Lbl_dcd3
	lda #$00
	sta $e0
	jsr Lbl_f099

Lbl_dce4:
	jsr Lbl_f2b5
	lda $10
	and #$03
	bne Lbl_dcf0
	jsr Lbl_c6e3

Lbl_dcf0:
	jsr Lbl_ddfd
	lda $b6
	cmp #$09
	bcc Lbl_dce4
	rts 

Lbl_dcfa:
	ldx #$1f

Lbl_dcfc:
	lda Lbl_dd06,x
	sta $0650,x
	dex 
	bpl Lbl_dcfc
	rts 

Lbl_dd06:
	.byte $0f,$30,$10,$00,$0f,$26,$16,$06,$0f,$2c,$1b,$0c,$0f,$30,$15,$00
	.byte $0f,$3c,$2c,$1c,$0f,$2c,$1c,$0c,$0f,$0f,$0f,$0f,$0f,$00,$00,$00

Lbl_dd26:
	lda $51
	and #$e7
	cmp #$80
	bne Lbl_dd43
	lda $51
	and #$18
	ora #$07
	tay 
	ldx #$07

Lbl_dd37:
	lda Lbl_dd44,y
	sta $0650,x
	sta $58,x
	dey 
	dex 
	bpl Lbl_dd37

Lbl_dd43:
	rts 

Lbl_dd44:
	.byte $0f,$30,$10,$00,$0f,$27,$17,$07,$0f,$30,$20,$1b,$0f,$28,$18,$08
	.byte $0f,$30,$20,$1b,$0f,$29,$19,$09,$0f,$30,$21,$1b,$0f,$2a,$1a,$0a

Lbl_dd64:
	lda #$00
	sta $44
	lda #$d6
	sta $45
	jsr Lbl_f672
	lda $3f
	clc 
	adc #$08
	sta $3f
	lda #$d7
	sta $45
	jsr Lbl_f672
	lda $3f
	clc 
	adc #$08
	sta $3f
	lda #$d8
	sta $45
	jsr Lbl_f672
	rts 

Lbl_dd8c:
	lda #$22
	sta $44
	lda #$d9
	sta $45
	jsr Lbl_f672
	lda $3f
	clc 
	adc #$08
	sta $3f
	jsr Lbl_f672
	lda $3f
	clc 
	adc #$08
	sta $3f
	jsr Lbl_f672
	rts 

Lbl_ddac:
	lda #$80
	sta $3e
	lda #$77
	sta $3f
	jsr Lbl_dd64
	jmp Lbl_f541

Lbl_ddba:
	lda #$80
	sta $3e
	lda $51
	cmp #$20
	bcc Lbl_ddcf
	cmp #$e0
	bcs Lbl_ddcf
	lda $10
	and #$03
	jmp Lbl_ddd3

Lbl_ddcf:
	lda $10
	and #$01

Lbl_ddd3:
	sta $fc
	lda #$77
	sec 
	sbc $fc
	sta $3f
	pha 
	clc 
	adc #$18
	sta $3f
	jsr Lbl_dd8c
	pla 
	sta $3f
	lda $51
	cmp #$c0
	bcs Lbl_ddfc
	lsr a 
	lsr a 
	lsr a 
	clc 
	adc $3f
	sta $3f
	jsr Lbl_dd64
	jmp Lbl_f541

Lbl_ddfc:
	rts 

Lbl_ddfd:
	lda #$63
	sta $3f
	lda #$9c
	sec 
	sbc $fd
	sta $3e
	lda #$01
	sta $44
	lda $10
	and #$07
	bne Lbl_de14
	inc $04

Lbl_de14:
	lda $04
	cmp #$03
	bcc Lbl_de1e
	lda #$00
	sta $04

Lbl_de1e:
	ldx $04
	lda Lbl_de2b,x
	sta $45
	jsr Lbl_f6c3
	jmp Lbl_f541

Lbl_de2b:
	.byte $e0,$e2,$e4

Lbl_de2e:
	jsr Lbl_df08
	lda #$00
	sta $01
	lda Lbl_fff3
	bpl Lbl_de86
	jsr Lbl_f327
	lda #$07
	sta $d5
	sta $d4
	lda Lbl_dee4
	sta $7a
	lda Lbl_dee5
	sta $7b
	lda #$08
	sta $c7
	lda #$0a
	sta $c8
	jsr Lbl_f1a7
	lda #$08
	sta $c7
	lda #$0c
	sta $c8
	jsr Lbl_f1a7
	lda #$08
	sta $c7
	lda #$0e
	sta $c8
	jsr Lbl_f1a7
	jsr Lbl_fa98
	jsr Lbl_dece
	jsr Lbl_f081

Lbl_de77:
	jsr Lbl_f2b5
	jsr Lbl_c6e3
	jsr Lbl_de89
	lda $b6
	cmp #$09
	bcc Lbl_de77

Lbl_de86:
	lda $01
	rts 

Lbl_de89:
	lda #$70
	sta $3e
	lda #$97
	sta $3f
	lda $00
	sta $44
	lda $01
	clc 
	adc #$01
	jsr Lbl_fa1c
	jsr Lbl_f541
	lda $b6
	bne Lbl_deae
	lda $f5
	bit Lbl_f062
	beq Lbl_deae
	jsr Lbl_f099

Lbl_deae:
	lda $f5
	bit Lbl_f061
	bne Lbl_debb
	bit Lbl_f060
	bne Lbl_dec7
	rts 

Lbl_debb:
	lda $01
	clc 
	adc #$01
	cmp #$10
	bcs Lbl_decd
	sta $01
	rts 

Lbl_dec7:
	lda $01
	beq Lbl_decd
	dec $01

Lbl_decd:
	rts 

Lbl_dece:
	jsr Lbl_f077
	ldx #$03

Lbl_ded3:
	lda Lbl_dee0,x
	sta $0650,x
	sta $0660,x
	dex 
	bpl Lbl_ded3
	rts 

Lbl_dee0:
	.byte $0f,$30,$0f,$0f

Lbl_dee4:
	.byte $e6

Lbl_dee5:
	.byte $de,$53,$45,$4c,$45,$43,$54,$20,$53,$54,$41,$52,$54,$20,$41,$52
	.byte $45,$41,$00,$41,$4e,$44,$00,$50,$52,$45,$53,$53,$20,$53,$54,$41
	.byte $52,$54,$00

Lbl_df08:
	lda #$16
	sta $d5
	sta $d4
	jsr Lbl_df57
	lda #$02
	jsr Lbl_e3e0
	lda $ff
	ora #$20
	sta $ff
	jsr Lbl_f081

Lbl_df1f:
	jsr Lbl_f2b5
	jsr Lbl_df41
	jsr Lbl_c6e3
	lda $f5
	and #$10
	beq Lbl_df1f
	jsr Lbl_f099

Lbl_df31:
	jsr Lbl_f2b5
	jsr Lbl_df41
	jsr Lbl_c6e3
	lda $b6
	cmp #$09
	bcc Lbl_df31
	rts 

Lbl_df41:
	lda #$ac
	sta $3e
	lda #$37
	sta $3f
	lda #$00
	sta $44
	lda #$cf
	sta $45
	jsr Lbl_f745
	jmp Lbl_f541

Lbl_df57:
	jsr Lbl_e3ff
	ldx #$13

Lbl_df5c:
	lda Lbl_df66,x
	sta $0650,x
	dex 
	bpl Lbl_df5c
	rts 

Lbl_df66:
	.byte $0f,$07,$2c,$3c,$0f,$07,$15,$35,$0f,$07,$3c,$27,$0f,$0a,$1c,$2c
	.byte $0f,$07,$3c,$27

Lbl_df7a:
	lda #$1d
	sta $d5
	lda #$1e
	sta $d4
	jsr Lbl_e02e
	lda #$01
	jsr Lbl_e3b5
	jsr Lbl_ec1c
	jsr Lbl_cd3a
	lda $14
	cmp #$08
	beq Lbl_df99
	jmp Lbl_e00f

Lbl_df99:
	lda #$00
	sta $e0
	lda #$00
	sta $01

Lbl_dfa1:
	inc $01
	ldx $01
	cpx #$03
	bne Lbl_dfad
	ldx #$00
	stx $01

Lbl_dfad:
	lda Lbl_e010,x
	jsr Lbl_e01a
	jsr Lbl_f2b5
	lda $e0
	beq Lbl_dfa1
	lda #$4e
	jsr Lbl_ec26
	lda #$0f

Lbl_dfc1:
	pha 
	lsr a 
	lsr a 
	tax 
	lda Lbl_e013,x
	jsr Lbl_e01a
	jsr Lbl_f2b5
	pla 
	sec 
	sbc #$01
	bpl Lbl_dfc1
	lda #$28

Lbl_dfd6:
	pha 
	jsr Lbl_f2b5
	pla 
	sec 
	sbc #$01
	bpl Lbl_dfd6
	lda #$0b

Lbl_dfe2:
	pha 
	lsr a 
	lsr a 
	tax 
	lda Lbl_e017,x
	jsr Lbl_e01a
	jsr Lbl_f2b5
	pla 
	sec 
	sbc #$01
	bpl Lbl_dfe2
	lda #$00
	sta $e0

Lbl_dff9:
	jsr Lbl_f2b5
	lda $e0
	beq Lbl_dff9
	jsr Lbl_f099

Lbl_e003:
	jsr Lbl_c6e3
	jsr Lbl_f2b5
	lda $b6
	cmp #$09
	bcc Lbl_e003

Lbl_e00f:
	rts 

Lbl_e010:
	.byte $93,$93,$94

Lbl_e013:
	.byte $98,$97,$96,$95

Lbl_e017:
	.byte $9b,$9a,$99

Lbl_e01a:
	pha 
	lda #$7c
	sta $3e
	lda #$ab
	sta $3f
	lda #$00
	sta $44
	pla 
	jsr Lbl_f8df
	jmp Lbl_f541

Lbl_e02e:
	jsr Lbl_f077
	ldx #$1b

Lbl_e033:
	lda Lbl_e03d,x
	sta $0650,x
	dex 
	bpl Lbl_e033
	rts 

Lbl_e03d:
	.byte $0f,$30,$15,$1b,$0f,$20,$2c,$1b,$0f,$26,$06,$16,$0f,$30,$00,$0b
	.byte $0f,$30,$15,$0f,$0f,$30,$00,$0f,$0f,$30,$15,$00

Lbl_e059:
	jsr Lbl_f327
	lda #$07
	sta $d5
	lda #$09
	sta $c7
	lda #$0d
	sta $c8
	lda Lbl_e0ca
	sta $7a
	lda Lbl_e0cb
	sta $7b
	jsr Lbl_f1a7
	lda #$0d
	sta $c7
	lda #$0f
	sta $c8
	jsr Lbl_f1a7
	lda $14
	and #$07
	clc 
	adc #$01
	jsr Lbl_f1e1
	jsr Lbl_fa98
	jsr Lbl_e0b7
	jsr Lbl_f081

Lbl_e093:
	jsr Lbl_f2b5
	jsr Lbl_c6e3
	lda $15
	bmi Lbl_e093
	lda #$3c

Lbl_e09f:
	pha 
	jsr Lbl_f2b5
	pla 
	sec 
	sbc #$01
	bne Lbl_e09f
	jsr Lbl_f099

Lbl_e0ac:
	jsr Lbl_f2b5
	jsr Lbl_c6e3
	bit $15
	bvs Lbl_e0ac
	rts 

Lbl_e0b7:
	jsr Lbl_f077
	ldx #$03

Lbl_e0bc:
	lda Lbl_e0c6,x
	sta $0650,x
	dex 
	bpl Lbl_e0bc
	rts 

Lbl_e0c6:
	.byte $0f,$30,$0f,$0f

Lbl_e0ca:
	.byte $cc

Lbl_e0cb:
	.byte $e0,$45,$4e,$54,$45,$52,$49,$4e,$47,$20,$49,$4e,$54,$4f,$00,$41
	.byte $52,$45,$41,$20,$00

Lbl_e0e0:
	jsr Lbl_f327
	lda #$07
	sta $d5
	lda #$00
	sta $d4
	lda $ff
	and #$df
	sta $ff
	sta $2000
	lda Lbl_e184
	sta $7a
	lda Lbl_e185
	sta $7b
	lda #$0b
	sta $c7
	lda #$0d
	sta $c8
	jsr Lbl_f1a7
	lda #$0b
	sta $c7
	lda #$10
	sta $c8
	jsr Lbl_f1a7
	jsr Lbl_fa98
	jsr Lbl_e193
	lda #$00
	sta $01
	jsr Lbl_f081

Lbl_e121:
	jsr Lbl_f2b5
	jsr Lbl_c6e3
	jsr Lbl_e133
	lda $b6
	cmp #$09
	bcc Lbl_e121
	lda $01
	rts 

Lbl_e133:
	lda $b6
	bne Lbl_e14b
	lda $f5
	bit Lbl_f061
	beq Lbl_e142
	lda #$00
	beq Lbl_e149

Lbl_e142:
	bit Lbl_f060
	beq Lbl_e14b
	lda #$01

Lbl_e149:
	sta $01

Lbl_e14b:
	lda $f3
	bit Lbl_f063
	beq Lbl_e158
	lda $01
	eor #$01
	sta $01

Lbl_e158:
	lda #$67
	ldx $01
	beq Lbl_e160
	lda #$7f

Lbl_e160:
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
	jsr Lbl_f8df
	jsr Lbl_f541
	lda $f5
	bit Lbl_f062
	beq Lbl_e183
	jsr Lbl_f099

Lbl_e183:
	rts 

Lbl_e184:
	.byte $86

Lbl_e185:
	.byte $e1,$43,$4f,$4e,$54,$49,$4e,$55,$45,$00,$45,$4e,$44,$00

Lbl_e193:
	jsr Lbl_f077
	ldx #$03

Lbl_e198:
	lda Lbl_e1a8,x
	sta $0650,x
	lda Lbl_e1ac,x
	sta $0660,x
	dex 
	bpl Lbl_e198
	rts 

Lbl_e1a8:
	.byte $0f,$30,$0f,$0f

Lbl_e1ac:
	.byte $0f,$30,$15,$02,$0f,$30,$30,$30

Lbl_e1b4:
	jsr Lbl_f327
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
	lda Lbl_e219
	sta $7a
	lda Lbl_e21a
	sta $7b
	jsr Lbl_f1a7
	lda #$10
	sta $c7
	lda #$0d
	sta $c8
	jsr Lbl_f0e9
	jsr Lbl_fa69
	lda $dd
	clc 
	adc #$30
	jsr Lbl_fa60
	jsr Lbl_fa8a
	jsr Lbl_e193
	jsr Lbl_f081
	lda #$64

Lbl_e1fc:
	pha 
	jsr Lbl_f2b5
	jsr Lbl_c6e3
	pla 
	sec 
	sbc #$01
	bne Lbl_e1fc
	jsr Lbl_f099

Lbl_e20c:
	jsr Lbl_f2b5
	jsr Lbl_c6e3
	lda $b6
	cmp #$09
	bcc Lbl_e20c
	rts 

Lbl_e219:
	.byte $1b

Lbl_e21a:
	.byte $e2,$52,$45,$53,$54,$00

Lbl_e220:
	lda #$10
	sta $d4
	lda #$15
	sta $d5
	jsr Lbl_f327
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	lda #$00
	jsr Lbl_e3f2
	jsr Lbl_e2f8
	jsr Lbl_e314
	jsr Lbl_e390
	lda $ff
	ora #$20
	sta $ff
	sta $2000
	jsr Lbl_f066
	jsr Lbl_f081

Lbl_e255:
	jsr Lbl_f2b5
	jsr Lbl_c6e3
	lda $15
	bmi Lbl_e255

Lbl_e25f:
	jsr Lbl_f2b5
	jsr Lbl_e279
	lda $f3
	and #$10
	beq Lbl_e25f
	jsr Lbl_f099

Lbl_e26e:
	jsr Lbl_f2b5
	jsr Lbl_c6e3
	bit $15
	bvs Lbl_e26e
	rts 

Lbl_e279:
	lda $f5
	and #$03
	cmp #$01
	beq Lbl_e287
	cmp #$02
	beq Lbl_e28c
	bne Lbl_e293

Lbl_e287:
	inc $ba
	jmp Lbl_e28e

Lbl_e28c:
	dec $ba

Lbl_e28e:
	lda #$19
	jsr Lbl_ec26

Lbl_e293:
	lda $ba
	bpl Lbl_e29b
	lda #$00
	beq Lbl_e2a1

Lbl_e29b:
	cmp #$03
	bcc Lbl_e2a3
	lda #$02

Lbl_e2a1:
	sta $ba

Lbl_e2a3:
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
	beq Lbl_e2d0
	lda #$01
	sta $44
	lda #$5a
	sta $45
	jsr Lbl_f582
	lda $3e
	clc 
	adc #$18
	sta $3e
	lda #$41
	sta $44
	jsr Lbl_f582

Lbl_e2d0:
	lda #$00
	sta $44
	lda #$5c
	sta $3e
	lda #$84
	sta $45
	jsr Lbl_f5e0
	lda #$7c
	sta $3e
	lda #$88
	sta $45
	jsr Lbl_f5e0
	lda #$9c
	sta $3e
	lda #$86
	sta $45
	jsr Lbl_f5e0
	jmp Lbl_f541

Lbl_e2f8:
	ldx #$0f

Lbl_e2fa:
	lda Lbl_e304,x
	sta $0650,x
	dex 
	bpl Lbl_e2fa
	rts 

Lbl_e304:
	.byte $0f,$35,$15,$05,$0f,$30,$00,$0b,$0f,$3c,$1c,$0c,$0f,$37,$17,$07

Lbl_e314:
	lda $99
	sta $05
	lda #$00

Lbl_e31a:
	pha 
	lsr $05
	bcc Lbl_e351
	lda Lbl_e35a
	sta $7a
	lda Lbl_e35b
	sta $7b
	pla 
	pha 
	asl a 
	tay 
	jsr Lbl_f385
	ldy #$00
	lda ($7a),y
	iny 
	sta $c7
	lda ($7a),y
	iny 
	sta $c8
	bit $c7
	bmi Lbl_e351
	clc 
	lda $7a
	adc #$02
	sta $7a
	bcc Lbl_e34b
	inc $7b

Lbl_e34b:
	jsr Lbl_f133
	jsr Lbl_fa98

Lbl_e351:
	pla 
	clc 
	adc #$01
	cmp #$08
	bne Lbl_e31a
	rts 

Lbl_e35a:
	.byte $5c

Lbl_e35b:
	.byte $e3,$6c,$e3,$78,$e3,$7c,$e3,$87,$e3,$74,$e3,$8f,$e3,$70,$e3,$8b
	.byte $e3,$18,$08,$c2,$28,$0e,$04,$c2,$6a,$04,$04,$e2,$68,$18,$0a,$b2
	.byte $2a,$18,$0c,$42,$2c,$2d,$3c,$3d,$4c,$4d,$5a,$5b,$18,$0e,$c2,$2c
	.byte $02,$0e,$b2,$6c,$80

Lbl_e390:
	lda #$0b
	sta $c7
	lda #$18
	sta $c8
	lda #$00

Lbl_e39a:
	pha 
	tax 
	lda $06f0,x
	jsr Lbl_f1bf
	jsr Lbl_fa98
	lda $c7
	clc 
	adc #$04
	sta $c7
	pla 
	clc 
	adc #$01
	cmp #$03
	bne Lbl_e39a
	rts 

Lbl_e3b5:
	pha 
	jsr Lbl_f327
	lda #$22
	jsr Lbl_f35c
	pla 
	jsr Lbl_f479
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	jsr Lbl_f2d4
	jsr Lbl_f081

Lbl_e3d5:
	jsr Lbl_c6e3
	jsr Lbl_f2b5
	lda $b6
	bne Lbl_e3d5
	rts 

Lbl_e3e0:
	pha 
	jsr Lbl_f327
	lda $2002
	lda #$20
	sta $2006
	lda #$00
	sta $2006
	pla 

Lbl_e3f2:
	pha 
	lda #$22
	jsr Lbl_f35c
	pla 
	jsr Lbl_f479
	jmp Lbl_f2d4

Lbl_e3ff:
	lda #$0f
	ldx #$1f

Lbl_e403:
	sta $0650,x
	dex 
	bpl Lbl_e403
	rts 

Lbl_e40a:
	lda #$01
	sta $52
	lda #$17
	sta $d5
	sta $d4
	jsr Lbl_f327
	jsr Lbl_e634
	lda $ff
	ora #$20
	sta $ff
	sta $2000
	lda #$00
	sta $c7
	sta $c8
	jsr Lbl_e60f
	jsr Lbl_f066
	jsr Lbl_e43c
	jsr Lbl_e44c
	jsr Lbl_e485
	jsr Lbl_e493
	rts 

Lbl_e43c:
	lda #$3c

Lbl_e43e:
	pha 
	jsr Lbl_e595
	jsr Lbl_f2b5
	pla 
	sec 
	sbc #$01
	bne Lbl_e43e
	rts 

Lbl_e44c:
	lda Lbl_e769
	sta $7a
	lda Lbl_e76a
	sta $7b
	lda #$00
	sta $c8

Lbl_e45a:
	jsr Lbl_e54b
	jsr Lbl_e568
	lda $c8
	pha 
	clc 
	adc #$1d
	cmp #$1e
	bcc Lbl_e46d
	sec 
	sbc #$1e

Lbl_e46d:
	sta $c8
	lda #$0e
	sta $c7
	jsr Lbl_e529
	tax 
	pla 
	sta $c8
	cpx #$ff
	beq Lbl_e484
	jsr Lbl_e568
	jmp Lbl_e45a

Lbl_e484:
	rts 

Lbl_e485:
	jsr Lbl_e568

Lbl_e488:
	jsr Lbl_e54b
	jsr Lbl_e568
	lda $e0
	beq Lbl_e488
	rts 

Lbl_e493:
	jsr Lbl_e4ad
	lda #$00
	sta $fc
	jsr Lbl_e4ec
	jsr Lbl_e4c2

Lbl_e4a0:
	jsr Lbl_e595
	jsr Lbl_f2b5
	lda $f3
	and #$10
	beq Lbl_e4a0
	rts 

Lbl_e4ad:
	jsr Lbl_e595
	jsr Lbl_f2b5
	ldx #$0f
	txa 

Lbl_e4b6:
	sta $58,x
	dex 
	bpl Lbl_e4b6
	jsr Lbl_e595
	jsr Lbl_f2b5
	rts 

Lbl_e4c2:
	lda #$50
	sta $45

Lbl_e4c6:
	lda $45
	pha 
	jsr Lbl_e595
	jsr Lbl_f2b5
	pla 
	sta $45
	lda $10
	and #$03
	bne Lbl_e4c6
	lda $45
	sec 
	sbc #$10
	sta $45
	bmi Lbl_e4eb
	ldx #$0f

Lbl_e4e3:
	jsr Lbl_cd7d
	dex 
	bpl Lbl_e4e3
	bmi Lbl_e4c6

Lbl_e4eb:
	rts 

Lbl_e4ec:
	lda Lbl_e64c
	sta $7a
	lda Lbl_e64d
	sta $7b

Lbl_e4f6:
	jsr Lbl_e595
	ldy #$00
	lda ($7a),y
	iny 
	sta $bf
	lda ($7a),y
	beq Lbl_e526
	iny 
	sta $c0
	jsr Lbl_fa69

Lbl_e50a:
	lda ($7a),y
	iny 
	cmp #$ff
	beq Lbl_e518
	sta $0300,x
	inx 
	jmp Lbl_e50a

Lbl_e518:
	stx $19
	jsr Lbl_fa8a
	jsr Lbl_f46c
	jsr Lbl_f2b5
	jmp Lbl_e4f6

Lbl_e526:
	jmp Lbl_f2b5

Lbl_e529:
	jsr Lbl_f0e9
	jsr Lbl_fa69
	ldy #$00

Lbl_e531:
	lda ($7a),y
	iny 
	cmp #$2f
	beq Lbl_e542
	cmp #$ff
	beq Lbl_e542
	jsr Lbl_fa60
	jmp Lbl_e531

Lbl_e542:
	pha 
	jsr Lbl_fa8a
	jsr Lbl_f46c
	pla 
	rts 

Lbl_e54b:
	lda #$0e
	sta $c7
	jsr Lbl_f0e9
	jsr Lbl_fa69
	ldx $19
	ldy #$12
	lda #$00

Lbl_e55b:
	sta $0300,x
	inx 
	dey 
	bne Lbl_e55b
	stx $19
	jsr Lbl_fa8a
	rts 

Lbl_e568:
	jsr Lbl_e595
	jsr Lbl_f2b5
	dec $52
	bne Lbl_e568
	lda Lbl_e594
	sta $52
	inc $fc
	lda $fc
	and #$03
	bne Lbl_e568
	lda $fc
	and #$07
	bne Lbl_e593
	inc $c8
	lda $c8
	cmp #$1e
	bne Lbl_e593
	lda #$00
	sta $c8
	sta $fc

Lbl_e593:
	rts 

Lbl_e594:
	.byte $05

Lbl_e595:
	lda #$00
	sta $44
	lda #$3c
	sta $3e
	lda #$ff
	sta $3f
	jsr Lbl_e5f2
	lda #$9f
	sta $3f
	jsr Lbl_e5f2
	lda #$4f
	sta $3f
	lda #$86
	sta $45
	lda #$05

Lbl_e5b5:
	pha 
	lda #$20
	sta $3e
	lda $45
	pha 
	lda #$08

Lbl_e5bf:
	pha 
	jsr Lbl_f582
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
	bne Lbl_e5bf
	jsr Lbl_f541
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
	bne Lbl_e5b5
	rts 

Lbl_e5f2:
	lda #$7e
	sta $45
	jsr Lbl_f59f
	lda #$04

Lbl_e5fb:
	pha 
	lda $3f
	clc 
	adc #$10
	sta $3f
	jsr Lbl_f59f
	pla 
	sec 
	sbc #$01
	bne Lbl_e5fb
	jmp Lbl_f541

Lbl_e60f:
	jsr Lbl_f077
	ldx #$13

Lbl_e614:
	lda Lbl_e620,x
	sta $58,x
	sta $0650,x
	dex 
	bpl Lbl_e614
	rts 

Lbl_e620:
	.byte $0f,$30,$36,$11,$0f,$30,$36,$27,$0f,$00,$3c,$15,$0f,$3c,$2c,$1c
	.byte $0f,$00,$3c,$15

Lbl_e634:
	lda $2002
	lda #$23
	sta $2006
	lda #$c0
	sta $2006
	lda #$ff
	ldx #$40

Lbl_e645:
	sta $2007
	dex 
	bne Lbl_e645
	rts 

Lbl_e64c:
	.byte $4e

Lbl_e64d:
	.byte $e6,$d0,$20,$b0,$c0,$d0,$e0,$f0,$29,$70,$80,$90,$a0,$23,$24,$00
	.byte $ff,$f0,$20,$b1,$2c,$2c,$2c,$2c,$2a,$71,$81,$2c,$2c,$2c,$25,$00
	.byte $ff,$10,$21,$b2,$c2,$2c,$2c,$2c,$2b,$72,$82,$2c,$2c,$2c,$2c,$3e
	.byte $ff,$30,$21,$b3,$c3,$d3,$e3,$f3,$2c,$73,$83,$93,$a3,$2c,$2c,$0f
	.byte $ff,$50,$21,$b4,$c4,$d4,$e4,$f4,$3a,$74,$84,$94,$a4,$02,$12,$22
	.byte $ff,$70,$21,$b5,$c5,$d5,$e5,$f5,$3b,$75,$85,$95,$a5,$03,$13,$00
	.byte $ff,$90,$21,$60,$62,$64,$66,$68,$3c,$00,$5f,$6f,$5e,$04,$14,$00
	.byte $ff,$b0,$21,$61,$63,$65,$67,$69,$3d,$00,$1f,$2f,$3f,$05,$15,$00
	.byte $ff,$f3,$21,$01,$06,$ff,$14,$22,$09,$19,$07,$17,$27,$ff,$34,$22
	.byte $0a,$1a,$08,$18,$28,$ff,$70,$22,$56,$45,$52,$59,$00,$54,$48,$41
	.byte $4e,$4b,$53,$2e,$2e,$21,$21,$ff,$ae,$22,$50,$52,$45,$53,$45,$4e
	.byte $54,$45,$44,$00,$42,$59,$2e,$2e,$2e,$ff,$16,$23,$0b,$0d,$1b,$1d
	.byte $d1,$e1,$f1,$91,$a1,$16,$ff,$36,$23,$0c,$0e,$1c,$1e,$d2,$e2,$f2
	.byte $92,$a2,$26,$ff,$c0,$23,$00,$aa,$aa,$00,$00,$00,$00,$00,$00,$aa
	.byte $aa,$00,$00,$40,$50,$10,$00,$aa,$aa,$cc,$00,$44,$55,$d1,$00,$aa
	.byte $aa,$cc,$00,$04,$45,$dd,$ff,$e0,$23,$00,$aa,$aa,$cc,$f2,$f0,$f8
	.byte $fe,$00,$aa,$aa,$cc,$ff,$ff,$ff,$83,$00,$aa,$aa,$00,$0f,$00,$00
	.byte $0c,$00,$0a,$0a,$00,$00,$00,$00,$00,$ff,$00,$00

Lbl_e769:
	.byte $6b

Lbl_e76a:
	.byte $e7,$44,$49,$52,$45,$43,$54,$4f,$52,$2f,$20,$2f,$20,$20,$20,$20
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
	.byte $41,$4f,$2f,$20,$2f,$20,$ff

Lbl_e8c1:
	lda #$80
	sta $48
	sta $4a

Lbl_e8c7:
	jsr Lbl_f2b5
	jsr Lbl_e9e8
	jsr Lbl_e933
	jsr Lbl_e904
	jsr Lbl_ea16
	jsr Lbl_ea57
	jsr Lbl_d75d
	jsr Lbl_c6e3
	lda $b6
	cmp #$09
	bcs Lbl_e8f7
	lda $f3
	and #$10
	beq Lbl_e8f0
	lda #$03
	jsr Lbl_d0c9

Lbl_e8f0:
	inc $10
	inc $11
	jmp Lbl_e8c7

Lbl_e8f7:
	jsr Lbl_d6bd
	jsr Lbl_cb29
	lda #$00
	sta $56
	jmp Lbl_c870

Lbl_e904:
	lda $f7
	bpl Lbl_e919
	lda $f5
	and #$0f
	tax 
	lda Lbl_e91a,x
	tax 
	lda Lbl_e92a,x
	clc 
	adc $16
	sta $16

Lbl_e919:
	rts 

Lbl_e91a:
	.byte $00,$03,$07,$00,$05,$04,$06,$05,$01,$02,$08,$01,$00,$03,$07,$00

Lbl_e92a:
	.byte $00,$f0,$00,$01,$00,$10,$00,$ff,$00

Lbl_e933:
	lda $f5
	asl a 
	bpl Lbl_e980
	lda #$80
	sta $48
	sta $4a
	lda $49
	and #$7f
	sta $49
	lda $4b
	and #$7f
	sta $4b
	ldx #$00

Lbl_e94c:
	lda $7000,x
	bmi Lbl_e963
	lda $7100,x
	and #$7f
	cmp $49
	bne Lbl_e963
	lda $7200,x
	and #$7f
	cmp $4b
	beq Lbl_e981

Lbl_e963:
	inx 
	bne Lbl_e94c

Lbl_e966:
	lda $7000,x
	bmi Lbl_e971
	inx 
	bne Lbl_e966
	jmp Lbl_e9b9

Lbl_e971:
	lda $16
	sta $7000,x
	lda $49
	sta $7100,x
	lda $4b
	sta $7200,x

Lbl_e980:
	rts 

Lbl_e981:
	lda $7000,x
	sta $16
	ldy #$00

Lbl_e988:
	dey 
	lda $7000,y
	bpl Lbl_e99b
	lda #$ff
	sta $7000,y
	sta $7100,y
	sta $7200,y
	bne Lbl_e988

Lbl_e99b:
	lda $7000,y
	sta $7000,x
	lda $7100,y
	sta $7100,x
	lda $7200,y
	sta $7200,x
	lda #$ff
	sta $7000,y
	sta $7100,y
	sta $7200,y
	rts 

Lbl_e9b9:
	jsr Lbl_f2b5
	lda #$00
	sta $44
	lda #$10
	sta $3e
	lda #$20
	sta $3f
	lda Lbl_e9dd
	sta $7a
	lda Lbl_e9de
	sta $7b
	jsr Lbl_fa3e
	jsr Lbl_f541
	lda $f3
	beq Lbl_e9b9
	rts 

Lbl_e9dd:
	.byte $df

Lbl_e9de:
	.byte $e9,$44,$41,$54,$41,$46,$55,$4c,$4c,$00

Lbl_e9e8:
	lda $f7
	bmi Lbl_ea0a
	lda $48
	cmp #$80
	bne Lbl_e9fb
	lda $4a
	cmp #$80
	bne Lbl_e9fb
	jsr Lbl_d0f7

Lbl_e9fb:
	ldx $79
	lda Lbl_ea0d,x
	sta $4c
	lda Lbl_ea0b,x
	sta $4d
	jsr Lbl_d1fe

Lbl_ea0a:
	rts 

Lbl_ea0b:
	.byte $00,$e0

Lbl_ea0d:
	.byte $00,$00,$00,$20,$00,$00,$00,$e0,$00

Lbl_ea16:
	lda #$10
	sta $40
	lda #$08
	sta $41
	jsr Lbl_cb34
	jsr Lbl_f7f9
	bne Lbl_ea56
	lda $3e
	sec 
	sbc #$04
	sta $3e
	lda #$00
	sta $44
	lda $16
	jsr Lbl_fa1c
	lda #$18
	sta $3e
	lda #$20
	sta $3f
	lda $49
	and #$7f
	jsr Lbl_fa1c
	lda $3e
	clc 
	adc #$04
	sta $3e
	lda $4b
	and #$7f
	jsr Lbl_fa1c
	jsr Lbl_f541

Lbl_ea56:
	rts 

Lbl_ea57:
	lda #$10
	sta $40
	lda #$08
	sta $41
	lda $49
	pha 
	lda $48
	pha 
	lda $4b
	pha 
	lda $4a
	pha 
	lda #$80
	sta $48
	sta $4a
	lda $10
	lsr a 
	lsr a 
	lsr a 
	eor $10
	and #$01

Lbl_ea7a:
	pha 
	tax 
	jsr Lbl_eaa7
	bne Lbl_ea94
	lda $3e
	sec 
	sbc #$04
	sta $3e
	lda #$01
	sta $44
	lda $45
	jsr Lbl_fa1c
	jsr Lbl_f541

Lbl_ea94:
	pla 
	clc 
	adc #$02
	bcc Lbl_ea7a
	pla 
	sta $4a
	pla 
	sta $4b
	pla 
	sta $48
	pla 
	sta $49
	rts 

Lbl_eaa7:
	lda $7000,x
	bmi Lbl_eacd
	sta $45
	lda $7100,x
	sta $49
	sec 
	sbc $1d
	and #$7f
	cmp #$10
	bcs Lbl_eacd
	lda $7200,x
	sta $4b
	sec 
	sbc $1f
	and #$7f
	cmp #$10
	bcs Lbl_eacd
	jmp Lbl_f7f9

Lbl_eacd:
	lda #$ff
	rts 

Lbl_ead0:
	.byte $d2

Lbl_ead1:
	.byte $ea,$d8,$ea,$44,$eb,$b0,$eb,$08,$09,$08,$0b,$09,$0a,$09,$0e,$0a
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

Lbl_ec1c:
	jsr Lbl_ec5f
	jsr Lbl_bfe5
	jsr Lbl_ec64
	rts 

Lbl_ec26:
	sta $e1
	txa 
	pha 
	ldx #$07

Lbl_ec2c:
	lda $0370,x
	beq Lbl_ec37
	cmp $e1
	bne Lbl_ec3f
	beq Lbl_ec42

Lbl_ec37:
	lda $e1
	sta $0370,x
	jmp Lbl_ec42

Lbl_ec3f:
	dex 
	bpl Lbl_ec2c

Lbl_ec42:
	pla 
	tax 
	rts 

Lbl_ec45:
	lda #$07

Lbl_ec47:
	pha 
	tax 
	lda $0370,x
	beq Lbl_ec51
	jsr Lbl_bfe8

Lbl_ec51:
	pla 
	tax 
	lda #$00
	sta $0370,x
	dex 
	txa 
	bpl Lbl_ec47
	jmp Lbl_bff1

Lbl_ec5f:
	lda #$05
	jmp Lbl_ef9d

Lbl_ec64:
	lda $d3
	jmp Lbl_ef9d

Lbl_ec69:
	.byte $a9,$d2,$85,$00,$a2,$70,$20,$a9,$d6,$f0,$0a,$86,$a5,$20,$81,$ec
	.byte $a6,$a5,$a9,$01,$60,$a9,$00,$60,$a0,$00,$b9,$46,$00,$9d,$00,$04
	.byte $e8,$c8,$c0,$0e,$d0,$f4,$60,$a5,$11,$29,$4c,$d0,$07,$20,$99,$f4
	.byte $29,$03,$f0,$03,$a9,$00,$60,$a5,$00,$48,$a9,$d2,$85,$00,$a2,$70
	.byte $20,$a9,$d6,$f0,$0e,$a5,$a0,$9d,$00,$04,$20,$9a,$d6,$68,$85,$00
	.byte $a9,$ff,$60,$68,$85,$00,$a9,$00,$60,$20,$dd,$ed,$10,$0a,$a9,$00
	.byte $38,$e5,$4c,$85,$4c,$4c,$db,$ec,$0a,$10,$07,$a9,$00,$38,$e5,$4d
	.byte $85,$4d,$a5,$9a,$60,$20,$ff,$ed,$10,$0a,$a9,$00,$38,$e5,$4c,$85
	.byte $4c,$4c,$f7,$ec,$0a,$10,$07,$a9,$00,$38,$e5,$4d,$85,$4d,$a5,$9a
	.byte $60,$a0,$00,$48,$98,$25,$11,$f0,$04,$68,$4c,$0e,$ed,$68,$18,$65
	.byte $4d,$70,$02,$85,$4d,$20,$de,$ec,$29,$40,$f0,$05,$a9,$40,$20,$21
	.byte $ee,$a9,$28,$a2,$4d,$20,$3c,$f4,$a9,$28,$a2,$4c,$20,$3c,$f4,$a5
	.byte $9a,$60,$18,$65,$4d,$85,$4d,$8a,$18,$65,$4c,$85,$4c,$60,$20,$47
	.byte $ee,$10,$05,$49,$ff,$18,$69,$01,$48,$20,$54,$ee,$10,$05,$49,$ff
	.byte $18,$69,$01,$d0,$02,$a9,$01,$85,$9c,$68,$85,$9b,$20,$c5,$ee,$d0
	.byte $02,$a9,$01,$85,$52,$60,$a9,$02,$20,$fa,$ec,$0a,$10,$0b,$a5,$4d
	.byte $10,$07,$a9,$00,$85,$4d,$a9,$ff,$60,$a9,$00,$60,$a5,$47,$4a,$4a
	.byte $4a,$4a,$4a,$aa,$bd,$81,$ed,$60,$01,$41,$40,$3f,$ff,$ee,$ef,$f0
	.byte $20,$c2,$ec,$a5,$51,$f0,$05,$c6,$51,$4c,$a7,$ed,$a9,$11,$20,$8b
	.byte $d1,$30,$0b,$a9,$00,$38,$e5,$4c,$85,$4c,$a9,$20,$85,$51,$60,$a6
	.byte $4c,$30,$02,$49,$40,$85,$44,$60,$a6,$4d,$10,$02,$49,$80,$85,$44
	.byte $60,$4a,$ca,$d0,$fc,$60,$0a,$ca,$d0,$fc,$60,$c9,$80,$6a,$ca,$d0
	.byte $fa,$60,$a5,$52,$49,$ff,$18,$69,$01,$85,$52,$60,$a5,$47,$18,$65
	.byte $52,$85,$47,$60,$20,$b8,$d1,$20,$57,$d2,$f0,$05,$a9,$80,$4c,$ec
	.byte $ed,$a9,$00,$85,$9a,$20,$d8,$d1,$20,$bb,$d2,$f0,$06,$a5,$9a,$09
	.byte $40,$85,$9a,$a5,$9a,$60,$20,$01,$d2,$20,$57,$d2,$f0,$05,$a9,$80
	.byte $4c,$0e,$ee,$a9,$00,$85,$9a,$20,$23,$d2,$20,$bb,$d2,$f0,$06,$a5
	.byte $9a,$09,$40,$85,$9a,$a5,$9a,$60,$a8,$a5,$4d,$20,$f0,$ee,$85,$4d
	.byte $60,$a5,$9a,$30,$04,$0a,$30,$0e,$60,$a5,$47,$38,$e9,$40,$49,$ff
	.byte $18,$69,$41,$85,$47,$60,$a9,$00,$38,$e5,$47,$85,$47,$60,$ad,$02
	.byte $04,$38,$e5,$48,$aa,$ad,$03,$04,$e5,$49,$60,$ad,$04,$04,$38,$e5
	.byte $4a,$aa,$ad,$05,$04,$e5,$4b,$60,$a5,$00,$48,$20,$47,$ee,$0a,$0a
	.byte $0a,$0a,$85,$00,$8a,$4a,$4a,$4a,$4a,$05,$00,$aa,$68,$85,$00,$8a
	.byte $60,$a5,$00,$48,$20,$54,$ee,$0a,$0a,$0a,$0a,$85,$00,$8a,$4a,$4a
	.byte $4a,$4a,$05,$00,$aa,$68,$85,$00,$8a,$60,$a5,$00,$48,$20,$47,$ee
	.byte $0a,$0a,$0a,$85,$00,$8a,$4a,$4a,$4a,$4a,$4a,$05,$00,$aa,$68,$85
	.byte $00,$8a,$60,$a5,$00,$48,$20,$54,$ee,$0a,$0a,$0a,$85,$00,$8a,$4a
	.byte $4a,$4a,$4a,$4a,$05,$00,$aa,$68,$85,$00,$8a,$60,$a2,$08,$a9,$00
	.byte $26,$9b,$2a,$c5,$9c,$90,$02,$e5,$9c,$26,$9b,$ca,$d0,$f4,$85,$9c
	.byte $a5,$9b,$60,$a2,$08,$a9,$00,$06,$9b,$90,$03,$18,$65,$9c,$46,$9c
	.byte $ca,$d0,$f4,$4a,$85,$9b,$60,$84,$9b,$0a,$90,$10,$49,$ff,$18,$69
	.byte $01,$85,$9c,$20,$dc,$ee,$49,$ff,$18,$69,$01,$60,$85,$9c,$20,$dc
	.byte $ee,$60,$20,$2c,$ef,$4c,$f0,$ee,$20,$2f,$ef,$4c,$f0,$ee,$a5,$47
	.byte $20,$2c,$ef,$20,$f0,$ee,$85,$4c,$a5,$47,$20,$2f,$ef,$20,$f0,$ee
	.byte $85,$4d,$60,$18,$69,$40,$c9,$40,$90,$0b,$c9,$80,$b0,$0c,$49,$ff
	.byte $18,$69,$01,$29,$7f,$aa,$bd,$5c,$ef,$60,$c9,$c0,$b0,$06,$38,$e9
	.byte $80,$4c,$52,$ef,$49,$ff,$18,$69,$01,$aa,$bd,$5c,$ef,$49,$ff,$18
	.byte $69,$01,$60,$00,$03,$06,$09,$0c,$10,$13,$16,$19,$1c,$1f,$22,$25
	.byte $28,$2b,$2e,$31,$33,$36,$39,$3c,$3f,$41,$44,$47,$49,$4c,$4e,$51
	.byte $53,$55,$58,$5a,$5c,$5e,$60,$62,$64,$66,$68,$6a,$6b,$6d,$6f,$70
	.byte $71,$73,$74,$75,$76,$78,$79,$7a,$7a,$7b,$7c,$7d,$7d,$7e,$7e,$7e
	.byte $7f,$7f,$7f,$7f

Lbl_ef9d:
	sta $db
	txa 
	pha 
	tya 
	pha 
	lda #$40
	sta $12
	lda $db
	jsr Lbl_efbe
	lda $12
	and #$20
	beq Lbl_efb5
	jsr Lbl_f4c0

Lbl_efb5:
	lda #$00
	sta $12
	pla 
	tay 
	pla 
	tax 
	rts 

Lbl_efbe:
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

Lbl_efd2:
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

Lbl_efe6:
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

Lbl_effa:
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

Lbl_f00e:
	lda #$80
	sta Lbl_ffff
	rts 

Lbl_f014:
	lda Lbl_f03b
	bne Lbl_f024
	lda #$00
	sta $2003
	lda #$02
	sta $4014
	rts 

Lbl_f024:
	lda $f0
	and #$c0
	sta $2003
	tax 
	ldy #$40

Lbl_f02e:
	lda $0200,x
	sta $2004
	inx 
	dey 
	bne Lbl_f02e
	stx $f0
	rts 

Lbl_f03b:
	.byte $00

Lbl_f03c:
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

Lbl_f05b:
	.byte $4c,$5b,$f0

Lbl_f05e:
	.byte $01,$02

Lbl_f060:
	.byte $04

Lbl_f061:
	.byte $08

Lbl_f062:
	.byte $10

Lbl_f063:
	.byte $20,$40,$80

Lbl_f066:
	lda $fe
	ora #$1e
	sta $fe
	rts 

Lbl_f06d:
	lda $fe
	and #$e1
	sta $fe
	sta $2001
	rts 

Lbl_f077:
	lda #$0f
	ldx #$1f

Lbl_f07b:
	sta $58,x
	dex 
	bpl Lbl_f07b
	rts 

Lbl_f081:
	lda $15
	and #$01
	ora #$80
	sta $15
	lda #$08
	sta $b6
	jsr Lbl_f077
	jsr Lbl_f2c0
	jsr Lbl_f2b5
	jmp Lbl_f066

Lbl_f099:
	lda $15
	ora #$40
	sta $15
	rts 

Lbl_f0a0:
	bpl Lbl_f0a6
	clc 
	adc #$1e
	rts 

Lbl_f0a6:
	cmp #$1e
	bcc Lbl_f0ad
	sec 
	sbc #$1e

Lbl_f0ad:
	rts 

Lbl_f0ae:
	.byte $a5,$c9,$0a,$a5,$ca,$2a,$85,$c7,$a5,$48,$0a,$a5,$49,$2a,$38,$e5
	.byte $c7,$18,$65,$22,$85,$c7,$a5,$cb,$18,$69,$40,$85,$c8,$a5,$cc,$69
	.byte $00,$06,$c8,$2a,$85,$c8,$a5,$4a,$0a,$a5,$4b,$2a,$38,$e5,$c8,$18
	.byte $65,$23,$20,$a0,$f0,$85,$c8,$60,$20,$ae,$f0

Lbl_f0e9:
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
	beq Lbl_f110
	lda $c0
	ora #$04
	sta $c0

Lbl_f110:
	rts 

Lbl_f111:
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
	beq Lbl_f132
	lda #$27
	sta $c0

Lbl_f132:
	rts 

Lbl_f133:
	lda $c8
	sta $02
	ldy #$00
	lda ($7a),y
	iny 
	sta $00
	asl a 
	bcc Lbl_f146
	lda ($7a),y
	iny 
	sta $45

Lbl_f146:
	jsr Lbl_f0e9
	jsr Lbl_fa6d
	lda $00
	and #$0f
	sta $01
	lda $45
	sta $03

Lbl_f156:
	bit $00
	bmi Lbl_f160
	lda ($7a),y
	iny 
	jmp Lbl_f164

Lbl_f160:
	lda $03
	inc $03

Lbl_f164:
	sta $0300,x
	inx 
	dec $01
	beq Lbl_f186
	inc $c8
	lda $c8
	cmp #$1e
	bne Lbl_f156
	lda #$00
	sta $c8
	stx $19
	jsr Lbl_fa8a
	jsr Lbl_f0e9
	jsr Lbl_fa6d
	jmp Lbl_f156

Lbl_f186:
	stx $19
	jsr Lbl_fa8a
	lda $45
	clc 
	adc #$10
	sta $45
	lda $00
	sec 
	sbc #$10
	sta $00
	and #$70
	beq Lbl_f1a6
	lda $02
	sta $c8
	inc $c7
	jmp Lbl_f146

Lbl_f1a6:
	rts 

Lbl_f1a7:
	jsr Lbl_f0e9
	jsr Lbl_fa69

Lbl_f1ad:
	lda ($7a),y
	iny 
	cmp #$00
	beq Lbl_f1bc
	jsr Lbl_fa60
	inc $c7
	jmp Lbl_f1ad

Lbl_f1bc:
	jmp Lbl_fa8a

Lbl_f1bf:
	jsr Lbl_f40b
	pha 
	jsr Lbl_f0e9
	jsr Lbl_fa69
	pla 
	pha 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	jsr Lbl_f1d9
	pla 
	jsr Lbl_f1d9
	jmp Lbl_fa8a

Lbl_f1d9:
	and #$0f
	clc 
	adc #$f6
	jmp Lbl_fa60

Lbl_f1e1:
	pha 
	jsr Lbl_f0e9
	jsr Lbl_fa69
	pla 
	clc 
	adc #$30
	jsr Lbl_fa60
	jmp Lbl_fa8a

Lbl_f1f2:
	.byte $a5,$d2,$f0,$42,$a5,$cf,$20,$9d,$ef,$a6,$19,$e0,$30,$b0,$37,$a5
	.byte $d0,$85,$bf,$a5,$d1,$85,$c0,$20,$69,$fa,$a0,$00,$b1,$cd,$9d,$00
	.byte $03,$c8,$e8,$c0,$10,$90,$f5,$86,$19,$20,$8a,$fa,$18,$a5,$cd,$69
	.byte $10,$85,$cd,$90,$02,$e6,$ce,$18,$a5,$d0,$69,$10,$85,$d0,$90,$02
	.byte $e6,$d1,$c6,$d2,$d0,$be,$60

Lbl_f239:
	lda $ff
	and #$fb
	sta $2000
	sta $ff
	rts 

Lbl_f243:
	.byte $a5,$ff,$09,$04,$8d,$00,$20,$85,$ff,$60

Lbl_f24d:
	ldx $fb
	inx 
	stx $4016
	dex 
	stx $4016
	ldx #$08

Lbl_f259:
	lda $4016
	and #$03
	cmp #$01
	rol $f5
	lda $4017
	and #$03
	cmp #$01
	rol $f6
	dex 
	bne Lbl_f259
	ldx #$01

Lbl_f270:
	lda $f5,x
	tay 
	eor $f7,x
	sty $f7,x
	and $f5,x
	sta $f5,x
	dex 
	bpl Lbl_f270
	lda $f5
	sta $f3
	lda $f6
	sta $f4
	lda $f5
	ora $f6
	bne Lbl_f2a8
	lda $f7
	ora $f8
	beq Lbl_f2a8
	inc $78
	lda $78
	cmp #$19
	bcc Lbl_f2ac
	lda $f7
	sta $f5
	lda $f8
	sta $f6
	lda #$14
	sta $78
	bne Lbl_f2ac

Lbl_f2a8:
	lda #$00
	sta $78

Lbl_f2ac:
	lda $f5
	beq Lbl_f2b4
	lda $f7
	sta $f5

Lbl_f2b4:
	rts 

Lbl_f2b5:
	lda #$80
	sta $12

Lbl_f2b9:
	inc $13
	bit $12
	bmi Lbl_f2b9
	rts 

Lbl_f2c0:
	lda $ff
	ora #$80
	sta $ff
	sta $2000
	rts 

Lbl_f2ca:
	lda $ff
	and #$7f
	sta $ff
	sta $2000
	rts 

Lbl_f2d4:
	ldy #$00
	jsr Lbl_f2ca
	jsr Lbl_f06d
	jsr Lbl_f239

Lbl_f2df:
	jsr Lbl_f317
	beq Lbl_f2f2
	bmi Lbl_f2ec
	jsr Lbl_f2f5
	jmp Lbl_f2df

Lbl_f2ec:
	jsr Lbl_f307
	jmp Lbl_f2df

Lbl_f2f2:
	jmp Lbl_f2c0

Lbl_f2f5:
	pha 
	jsr Lbl_f317
	pla 

Lbl_f2fa:
	pha 
	lda $00
	jsr Lbl_f323
	pla 
	sec 
	sbc #$01
	bne Lbl_f2fa
	rts 

Lbl_f307:
	pha 
	jsr Lbl_f317
	jsr Lbl_f323
	pla 
	sec 
	sbc #$01
	and #$7f
	bne Lbl_f307
	rts 

Lbl_f317:
	lda ($7a),y
	sta $00
	iny 
	bne Lbl_f320
	inc $7b

Lbl_f320:
	lda $00
	rts 

Lbl_f323:
	sta $2007
	rts 

Lbl_f327:
	jsr Lbl_f077
	jsr Lbl_f06d
	lda #$00
	sta $fd
	sta $f1
	sta $fc
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

Lbl_f352:
	sta $2007
	dex 
	bne Lbl_f352
	dey 
	bne Lbl_f352
	rts 

Lbl_f35c:
	ldx #$7a

Lbl_f35e:
	tay 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	jsr Lbl_ef9d
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

Lbl_f378:
	.byte $98,$18,$65,$7a,$85,$7a,$90,$02,$e6,$7b,$6c,$7a,$00

Lbl_f385:
	lda ($7a),y
	pha 
	iny 
	lda ($7a),y
	sta $7b
	pla 
	sta $7a
	rts 

Lbl_f391:
	.byte $a2,$09,$a9,$00,$95,$02,$ca,$10,$fb,$e6,$07,$a9,$10,$85,$0c,$46
	.byte $01,$66,$00,$90,$07,$a2,$02,$a0,$07,$20,$b9,$f3,$a2,$07,$a0,$07
	.byte $20,$b9,$f3,$c6,$0c,$d0,$e8,$60,$18,$a9,$05,$85,$0d,$b5,$00,$79
	.byte $00,$00,$c9,$0a,$90,$03,$38,$e9,$0a,$95,$00,$e8,$c8,$c6,$0d,$d0
	.byte $ec,$60,$a2,$04,$a9,$00,$95,$03,$a5,$00,$38,$e9,$10,$a8,$a5,$01
	.byte $e9,$27,$90,$08,$85,$01,$98,$f6,$03,$4c,$db,$f3,$a5,$01,$85,$02
	.byte $a5,$00,$0a,$26,$01,$0a,$26,$01,$18,$65,$00,$85,$00,$a5,$01,$65
	.byte $02,$06,$00,$2a,$85,$01,$ca,$10,$cb,$60

Lbl_f40b:
	sta a:$0000
	cmp #$63
	bcs Lbl_f431
	ldx #$00
	stx a:$0001

Lbl_f417:
	sec 
	sbc #$0a
	bcc Lbl_f425
	sta a:$0000
	inc a:$0001
	jmp Lbl_f417

Lbl_f425:
	lda a:$0001
	asl a 
	asl a 
	asl a 
	asl a 
	clc 
	adc a:$0000
	rts 

Lbl_f431:
	lda #$99
	rts 

Lbl_f434:
	.byte $10,$05,$49,$ff,$18,$69,$01,$60,$b4,$00,$30,$07,$d5,$00,$b0,$0e
	.byte $95,$00,$60,$49,$ff,$18,$69,$01,$d5,$00,$90,$02,$95,$00,$60,$f0
	.byte $09,$10,$04,$18,$69,$01,$60,$38,$e9,$01,$60,$c9,$80,$6a,$c9,$80
	.byte $6a,$c9,$80,$6a,$c9,$80,$6a,$60

Lbl_f46c:
	tya 
	clc 
	adc $7a
	sta $7a
	bcc Lbl_f476
	inc $7b

Lbl_f476:
	ldy #$00
	rts 

Lbl_f479:
	asl a 
	tay 
	bcc Lbl_f47f
	inc $7b

Lbl_f47f:
	lda ($7a),y
	iny 
	tax 
	lda ($7a),y
	sta $7b
	stx $7a
	ldy #$00
	rts 

Lbl_f48c:
	.byte $48,$a9,$31,$20,$5c,$f3,$68,$20,$79,$f4,$6c,$7a,$00,$a5,$13,$0a
	.byte $0a,$18,$65,$13,$38,$e9,$01,$85,$13,$60

Lbl_f4a6:
	pha 
	txa 
	pha 
	tya 
	pha 
	bit $12
	bvs Lbl_f4b5
	jsr Lbl_f4c0
	jmp Lbl_f4b9

Lbl_f4b5:
	lda #$20
	sta $12

Lbl_f4b9:
	pla 
	tay 
	pla 
	tax 
	pla 
	rti 

Lbl_f4bf:
	rti 

Lbl_f4c0:
	bit $12
	bpl Lbl_f51f
	lda #$00
	sta $12
	sta $2001
	jsr Lbl_f014
	lda $19
	bne Lbl_f502
	jsr Lbl_f239
	lda $2002
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	ldx #$00
	ldy #$1f

Lbl_f4e6:
	lda $58,x
	and #$3f
	sta $2007
	inx 
	cpx #$20
	bne Lbl_f4e6
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	sta $2006
	sta $2006

Lbl_f502:
	jsr Lbl_fa98
	jsr Lbl_f03c
	lda $d4
	jsr Lbl_efe6
	lda $d5
	jsr Lbl_efd2
	lda $fe
	sta $2001
	jsr Lbl_f52f
	inc $11
	jsr Lbl_f24d

Lbl_f51f:
	inc $10
	lda #$05
	jsr Lbl_efbe
	jsr Lbl_ec45
	lda $db
	jsr Lbl_efbe
	rts 

Lbl_f52f:
	lda #$f0
	ldx #$00
	stx $3c
	stx $3d

Lbl_f537:
	sta $0200,x
	inx 
	inx 
	inx 
	inx 
	bne Lbl_f537
	rts 

Lbl_f541:
	lda $3c
	beq Lbl_f581
	lda Lbl_f03b
	bne Lbl_f54f
	lda $11
	lsr a 
	bcs Lbl_f558

Lbl_f54f:
	lda $3d
	tay 
	clc 
	adc $3c
	bcc Lbl_f565
	rts 

Lbl_f558:
	lda $3d
	sec 
	sbc $3c
	bcs Lbl_f564
	lda #$00
	sec 
	sbc $3c

Lbl_f564:
	tay 

Lbl_f565:
	sta $3d
	ldx #$00

Lbl_f569:
	lda $0600,x
	sta $0200,y
	inx 
	iny 
	lda $0600,x
	sta $0200,y
	inx 
	iny 
	cpx $3c
	bne Lbl_f569
	lda #$00
	sta $3c

Lbl_f581:
	rts 

Lbl_f582:
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

Lbl_f59f:
	ldx $3c
	lda $3e
	sec 
	sbc #$04
	bit $44
	bvs Lbl_f5b6
	sta $0603,x
	clc 
	adc #$08
	sta $0607,x
	jmp Lbl_f5bf

Lbl_f5b6:
	sta $0607,x
	clc 
	adc #$08
	sta $0603,x

Lbl_f5bf:
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

Lbl_f5e0:
	ldx $3c
	lda $3e
	sec 
	sbc #$04
	bit $44
	bvs Lbl_f5f7
	sta $0603,x
	clc 
	adc #$08
	sta $0607,x
	jmp Lbl_f600

Lbl_f5f7:
	sta $0607,x
	clc 
	adc #$08
	sta $0603,x

Lbl_f600:
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

Lbl_f622:
	ldx $3c
	lda $3e
	sta $0607,x
	sec 
	sbc #$08
	bit $44
	bvs Lbl_f63c
	sta $0603,x
	clc 
	adc #$10
	sta $060b,x
	jmp Lbl_f645

Lbl_f63c:
	sta $060b,x
	clc 
	adc #$10
	sta $0603,x

Lbl_f645:
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

Lbl_f672:
	ldx $3c
	lda $3e
	sta $0607,x
	sec 
	sbc #$08
	bit $44
	bvs Lbl_f68c
	sta $0603,x
	clc 
	adc #$10
	sta $060b,x
	jmp Lbl_f695

Lbl_f68c:
	sta $060b,x
	clc 
	adc #$10
	sta $0603,x

Lbl_f695:
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

Lbl_f6c3:
	ldx $3c
	lda $3e
	sec 
	sbc #$04
	bit $44
	bvs Lbl_f6e0
	sta $0603,x
	sta $060b,x
	clc 
	adc #$08
	sta $0607,x
	sta $060f,x
	jmp Lbl_f6ef

Lbl_f6e0:
	sta $0607,x
	sta $060f,x
	clc 
	adc #$08
	sta $0603,x
	sta $060b,x

Lbl_f6ef:
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
	bmi Lbl_f72f
	sta $0600,x
	sta $0604,x
	clc 
	adc #$08
	sta $0608,x
	sta $060c,x
	jmp Lbl_f73e

Lbl_f72f:
	sta $0608,x
	sta $060c,x
	clc 
	adc #$08
	sta $0600,x
	sta $0604,x

Lbl_f73e:
	txa 
	clc 
	adc #$10
	sta $3c
	rts 

Lbl_f745:
	ldx $3c
	lda $3e
	sec 
	sbc #$0c
	bit $44
	bvs Lbl_f768
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
	jmp Lbl_f77d

Lbl_f768:
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

Lbl_f77d:
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

Lbl_f7b7:
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
	bmi Lbl_f7e9
	sta $0600,x
	clc 
	adc #$08
	sta $0604,x
	jmp Lbl_f7f2

Lbl_f7e9:
	sta $0604,x
	clc 
	adc #$08
	sta $0600,x

Lbl_f7f2:
	txa 
	clc 
	adc #$08
	sta $3c
	rts 

Lbl_f7f9:
	lda $48
	sec 
	sbc $1c
	sta $3e
	lda $49
	sbc $1d
	lsr a 
	ror $3e
	lsr a 
	ror $3e
	lsr a 
	ror $3e
	lsr a 
	ror $3e
	sta $00
	lda $4a
	sec 
	sbc $1e
	sta $3f
	lda $4b
	sbc $1f
	lsr a 
	ror $3f
	lsr a 
	ror $3f
	lsr a 
	ror $3f
	lsr a 
	ror $3f
	ora $00
	and #$07
	bne Lbl_f853
	lda $40
	lsr a 
	clc 
	adc $3e
	cmp $40
	bcc Lbl_f853
	lda $41
	lsr a 
	eor #$ff
	clc 
	adc #$01
	clc 
	adc $3f
	bcc Lbl_f853
	cmp #$0c
	bcc Lbl_f853
	clc 
	adc $41
	bcs Lbl_f853
	cmp #$e4
	bcc Lbl_f859

Lbl_f853:
	jsr Lbl_f8a5
	lda #$ff
	rts 

Lbl_f859:
	jsr Lbl_f8a5
	lda #$00
	rts 

Lbl_f85f:
	.byte $a5,$3f,$48,$a5,$3e,$48,$20,$c2,$f8,$a5,$3e,$0a,$26,$49,$0a,$26
	.byte $49,$0a,$26,$49,$0a,$26,$49,$18,$65,$1c,$85,$48,$a5,$49,$29,$0f
	.byte $65,$1d,$85,$49,$a5,$3f,$0a,$26,$4b,$0a,$26,$4b,$0a,$26,$4b,$0a
	.byte $26,$4b,$18,$65,$1e,$85,$4a,$a5,$4b,$29,$0f,$65,$1f,$85,$4b,$68
	.byte $85,$3e,$68,$85,$3f,$60

Lbl_f8a5:
	lda $3e
	sec 
	sbc #$04
	sta $3e
	lda $ff
	and #$20
	bne Lbl_f8ba
	lda $3f
	sec 
	sbc #$05
	sta $3f
	rts 

Lbl_f8ba:
	lda $3f
	sec 
	sbc #$09
	sta $3f
	rts 

Lbl_f8c2:
	.byte $a5,$3e,$18,$69,$04,$85,$3e,$a5,$ff,$29,$20,$d0,$08,$a5,$3f,$18
	.byte $69,$05,$85,$3f,$60,$a5,$3f,$18,$69,$09,$85,$3f,$60

Lbl_f8df:
	pha 
	ldx #$1a
	lda $ff
	and #$20
	bne Lbl_f8ea
	ldx #$30

Lbl_f8ea:
	txa 
	jsr Lbl_f35c
	pla 
	jsr Lbl_f8f7
	lda $d3
	jmp Lbl_ef9d

Lbl_f8f7:
	asl a 
	tay 
	bcc Lbl_f8fd
	inc $7b

Lbl_f8fd:
	lda ($7a),y
	iny 
	tax 
	lda ($7a),y
	sta $7b
	stx $7a
	lda $4f
	beq Lbl_f919
	lda $44
	and #$fc
	sta $44
	lda $10
	and #$03
	ora $44
	sta $44

Lbl_f919:
	lda #$00
	pha 
	pha 

Lbl_f91d:
	lda $3c
	cmp #$40
	bcc Lbl_f926
	jsr Lbl_f541

Lbl_f926:
	ldy #$00
	lda $44
	asl a 
	asl a 
	lda ($7a),y
	iny 
	bcc Lbl_f933
	eor #$ff

Lbl_f933:
	adc $3e
	sta $3e
	lda $44
	asl a 
	lda ($7a),y
	iny 
	bcc Lbl_f941
	eor #$ff

Lbl_f941:
	adc $3f
	sta $3f
	ldy #$03
	lda ($7a),y
	sta $45
	dey 
	lda ($7a),y
	tax 
	and #$0c
	beq Lbl_f9b6
	cmp #$04
	bne Lbl_f95a
	jmp Lbl_f9ec

Lbl_f95a:
	cmp #$08
	beq Lbl_f9d6
	lda $44
	pha 
	and #$c3
	eor ($7a),y
	sta $44
	ldy #$04
	lda ($7a),y
	jsr Lbl_f98a
	pla 
	sta $44

Lbl_f971:
	ldy #$02
	lda ($7a),y
	and #$10
	beq Lbl_f97c
	jmp Lbl_fa06

Lbl_f97c:
	clc 
	lda $7a
	adc #$05
	sta $7a
	bcc Lbl_f987
	inc $7b

Lbl_f987:
	jmp Lbl_f91d

Lbl_f98a:
	tax 
	dex 
	bne Lbl_f991
	jmp Lbl_f59f

Lbl_f991:
	dex 
	bne Lbl_f997
	jmp Lbl_f5e0

Lbl_f997:
	dex 
	bne Lbl_f99d
	jmp Lbl_f622

Lbl_f99d:
	dex 
	bne Lbl_f9a3
	jmp Lbl_f672

Lbl_f9a3:
	dex 
	bne Lbl_f9a9
	jmp Lbl_f6c3

Lbl_f9a9:
	dex 
	bne Lbl_f9af
	jmp Lbl_f745

Lbl_f9af:
	dex 
	bne Lbl_f9b5
	jmp Lbl_f7b7

Lbl_f9b5:
	rts 

Lbl_f9b6:
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

Lbl_f9d6:
	ldy #$02
	lda ($7a),y
	and #$10
	bne Lbl_fa06
	clc 
	lda $7a
	adc #$04
	sta $7a
	bcc Lbl_f9e9
	inc $7b

Lbl_f9e9:
	jmp Lbl_f91d

Lbl_f9ec:
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
	jmp Lbl_f91d

Lbl_fa06:
	pla 
	sta $7a
	pla 
	sta $7b
	beq Lbl_f9b5
	ldy #$02
	lda ($7a),y
	and #$c0
	eor $44
	sta $44
	jmp Lbl_f971

Lbl_fa1b:
	.byte $60

Lbl_fa1c:
	pha 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	jsr Lbl_fa25
	pla 

Lbl_fa25:
	and #$0f
	clc 
	adc #$30
	cmp #$3a
	bcc Lbl_fa31
	clc 
	adc #$07

Lbl_fa31:
	sta $45
	jsr Lbl_f582
	lda $3e
	clc 
	adc #$08
	sta $3e
	rts 

Lbl_fa3e:
	ldy #$00

Lbl_fa40:
	lda ($7a),y
	beq Lbl_fa54
	sta $45
	jsr Lbl_f582
	lda $3e
	clc 
	adc #$08
	sta $3e
	iny 
	jmp Lbl_fa40

Lbl_fa54:
	iny 
	tya 
	clc 
	adc $7a
	sta $7a
	bcc Lbl_fa5f
	inc $7b

Lbl_fa5f:
	rts 

Lbl_fa60:
	ldx $19
	sta $0300,x
	inx 
	stx $19
	rts 

Lbl_fa69:
	lda #$00
	beq Lbl_fa73

Lbl_fa6d:
	lda #$80
	bne Lbl_fa73

Lbl_fa71:
	lda #$40

Lbl_fa73:
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

Lbl_fa8a:
	lda $19
	clc 
	sbc $18
	ldx $18
	ora $0300,x
	sta $0300,x
	rts 

Lbl_fa98:
	ldx #$00

Lbl_fa9a:
	cpx $19
	bcc Lbl_faa8
	lda #$00
	sta $19
	lda $ff
	sta $2000
	rts 

Lbl_faa8:
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
	bmi Lbl_faca
	and #$40
	bne Lbl_fae2
	lda #$00
	beq Lbl_facc

Lbl_faca:
	lda #$04

Lbl_facc:
	sta $2000
	lda $0300,x
	and #$3f
	tay 
	inx 

Lbl_fad6:
	lda $0300,x
	sta $2007
	inx 
	dey 
	bne Lbl_fad6
	beq Lbl_fa9a

Lbl_fae2:
	lda $0300,x
	and #$3f
	tay 
	inx 

Lbl_fae9:
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
	bne Lbl_fae9
	beq Lbl_fa9a

Lbl_fb07:
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

Lbl_fb1c:
	lda $2002
	bpl Lbl_fb1c

Lbl_fb21:
	lda $2002
	bpl Lbl_fb21
	jsr Lbl_f00e
	lda #$1e
	jsr Lbl_effa
	jsr Lbl_ec1c
	lda #$30
	sta $ff
	sta $2000
	lda #$06
	sta $fe
	sta $2001
	jmp Lbl_c219

Lbl_fb42:
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff

Lbl_fff3:
	.byte $00

Lbl_fff4:
	inc Lbl_fff4
	jmp Lbl_fb07

.segment "VECTORS"

	.word $f4a6
	.word $fff4
	.word $f4bf
