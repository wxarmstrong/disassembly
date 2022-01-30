;*********************************************************************************************
;** Original File: C:\Users\William\Desktop\New folder (2)\Raid on Bungeling Bay (J) [!].nes
;** 16K PRG-ROM pages: $01
;** 8K CHR-ROM pages: $01
;** Mirroring: vertical
;** SRAM: not available
;** Trainer: not available
;** Mapper: $00
;*********************************************************************************************

.segment "PRG_0"

Lbl_c000:
	jmp Lbl_c6e3

Lbl_c003:
	lda $0200,x

Lbl_c006:
	sta $2007
	rts 

Lbl_c00a:
	.byte $30,$21,$30,$17,$0f,$37,$30,$10,$00,$02,$02,$02,$30,$0f,$27,$30
	.byte $0f,$16,$30,$25,$15,$30,$10,$00

Lbl_c022:
	.byte $19,$10,$1f,$1c

Lbl_c026:
	.byte $1c,$14,$19,$1b,$13,$17,$0f,$15

Lbl_c02e:
	.byte $07,$17,$17,$17

Lbl_c032:
	lda #$14
	bne Lbl_c038
	lda #$04

Lbl_c038:
	ldy #$00
	jsr Lbl_c043
	sec 
	sbc #$01
	bne Lbl_c038
	rts 

Lbl_c043:
	ldx #$00

Lbl_c045:
	dex 
	bne Lbl_c045
	dey 
	bne Lbl_c043
	rts 

Lbl_c04c:
	pha 
	txa 
	pha 
	tya 
	pha 
	lda $c4
	bne Lbl_c05f
	lda #$00
	sta $2003
	lda #$07
	sta Lbl_4014

Lbl_c05f:
	lda $0200
	ldx #$00
	stx $0200
	lsr a 
	bcs Lbl_c0c1
	lsr a 
	bcs Lbl_c0a8
	lsr a 
	bcs Lbl_c0a6
	lsr a 
	bcs Lbl_c0a6
	lda $c4
	bne Lbl_c0a3
	lda $55
	beq Lbl_c09a
	dec $55
	lsr a 
	bcs Lbl_c0a0
	lda #$3f
	sta $2006
	ldx #$00
	stx $2006
	ldx #$10
	lda #$14

Lbl_c08e:
	jsr Lbl_c006
	dex 
	bne Lbl_c08e
	jsr Lbl_c4e4
	jmp Lbl_c17a

Lbl_c09a:
	lda $d6
	cmp #$02
	bne Lbl_c0a3

Lbl_c0a0:
	jsr Lbl_c48e

Lbl_c0a3:
	jmp Lbl_c17a

Lbl_c0a6:
	bcs Lbl_c10d

Lbl_c0a8:
	ldy #$20
	lda $c2
	and #$01
	bne Lbl_c0b2
	ldy #$24

Lbl_c0b2:
	lda $c1
	clc 
	adc #$08
	tax 
	bcc Lbl_c0be
	tya 
	eor #$04
	tay 

Lbl_c0be:
	jmp Lbl_c0d7

Lbl_c0c1:
	ldy #$20
	lda $c2
	and #$01
	beq Lbl_c0cb
	ldy #$24

Lbl_c0cb:
	lda $c1
	sec 
	sbc #$08
	tax 
	bcs Lbl_c0d7
	tya 
	eor #$04
	tay 

Lbl_c0d7:
	lda $c2
	ora #$04
	sta $c2
	sta $2000
	sty $2006
	txa 
	lsr a 
	lsr a 
	lsr a 
	sta $2006
	lda $c3
	lsr a 
	lsr a 
	lsr a 
	eor #$ff
	clc 
	adc #$1e
	tay 
	tax 
	inx 

Lbl_c0f7:
	jsr Lbl_c003
	inx 
	cpx #$1f
	bne Lbl_c0f7
	ldx #$01
	tya 
	beq Lbl_c17a

Lbl_c104:
	jsr Lbl_c003
	inx 
	dey 
	bne Lbl_c104
	beq Lbl_c17a

Lbl_c10d:
	lda $c2
	and #$fb
	sta $c2
	sta $2000
	ldx #$20
	and #$01
	beq Lbl_c11e
	ldx #$24

Lbl_c11e:
	lda #$00
	sta $c6
	lda $c3
	and #$f8
	asl a 
	rol $c6
	asl a 
	rol $c6
	sta $c5
	txa 
	ora $c6
	sta $c6
	pha 
	lda $c1
	lsr a 
	lsr a 
	lsr a 
	tay 
	clc 
	adc $c5
	tax 
	lda $c6
	adc #$00
	sta $2006
	stx $2006
	ldx #$01

Lbl_c14a:
	jsr Lbl_c003
	inx 
	iny 
	cpy #$20
	bne Lbl_c14a
	pla 
	tay 
	eor #$04
	sta $2006
	lda $c5
	sta $2006

Lbl_c15f:
	cpx #$22
	beq Lbl_c169
	jsr Lbl_c003
	inx 
	bne Lbl_c15f

Lbl_c169:
	lda $c1
	cmp #$f8
	bcc Lbl_c177
	sty $2006
	lda $c5
	sta $2006

Lbl_c177:
	jsr Lbl_c003

Lbl_c17a:
	lda $c4
	bne Lbl_c191
	lda $c1
	sta $2005
	lda $c3
	sta $2005
	lda $c2
	and #$fb
	sta $c2
	sta $2000

Lbl_c191:
	lda #$01
	sta Lbl_4016
	lda #$00
	sta Lbl_4016
	sta $50
	sta $51
	ldy #$08

Lbl_c1a1:
	lda Lbl_4017
	lsr a 
	rol $51
	dey 
	bne Lbl_c1a1
	ldy #$08

Lbl_c1ac:
	lda Lbl_4016
	lsr a 
	rol $50
	dey 
	bne Lbl_c1ac
	lda $d4
	beq Lbl_c209
	lda $ca
	beq Lbl_c20c
	inc $cb
	lda $cb
	and #$07
	cmp #$07
	bne Lbl_c209
	ldy #$00
	sty $cb
	asl $ce
	bcc Lbl_c1e1

Lbl_c1cf:
	ldx $cd
	lda Lbl_c374,x
	jsr Lbl_c332
	inc $cd
	iny 
	iny 
	iny 
	iny 
	cpy #$08
	bne Lbl_c1cf

Lbl_c1e1:
	asl $d0
	bcc Lbl_c1ea
	lda #$27
	jsr Lbl_c332

Lbl_c1ea:
	inc $cc
	lda $cc
	and #$07
	bne Lbl_c209
	ldx $cf
	inc $cf
	cpx #$08
	beq Lbl_c206
	lda Lbl_c3ac,x
	sta $ce
	lda Lbl_c3b4,x
	sta $d0
	bne Lbl_c209

Lbl_c206:
	jsr Lbl_c2ea

Lbl_c209:
	jmp Lbl_c2bb

Lbl_c20c:
	ldx $cd
	beq Lbl_c21c
	lda #$00
	sta Lbl_4002
	lda #$0d
	sta Lbl_4003
	dec $cd

Lbl_c21c:
	ldx $ce
	beq Lbl_c23e
	dex 
	beq Lbl_c232
	lda #$20
	cpx #$14
	beq Lbl_c234
	dex 
	bne Lbl_c23c
	jsr Lbl_d293
	jmp Lbl_c23e

Lbl_c232:
	lda #$0a

Lbl_c234:
	ldx #$80
	stx Lbl_4006
	sta Lbl_4007

Lbl_c23c:
	dec $ce

Lbl_c23e:
	lda $d1
	beq Lbl_c24f
	sta Lbl_400a
	lda #$11
	sta Lbl_400b
	sta Lbl_4007
	bne Lbl_c278

Lbl_c24f:
	inc $cb
	lda $cb
	and #$07
	bne Lbl_c278

Lbl_c257:
	ldx $cf
	beq Lbl_c278
	ldy #$08
	lda Lbl_c3bb,x
	bne Lbl_c268
	lda #$01
	sta $cf
	bne Lbl_c257

Lbl_c268:
	ldx $ad
	beq Lbl_c273
	cmp #$81
	beq Lbl_c273
	clc 
	adc #$02

Lbl_c273:
	jsr Lbl_c332
	inc $cf

Lbl_c278:
	inc $cc
	lda $cc
	and #$07
	bne Lbl_c2bb
	lda $d2
	bne Lbl_c2a3
	ldx #$3f
	lda $b7
	cmp #$ff
	bne Lbl_c292
	ldx #$0a
	cpx $b8
	beq Lbl_c2a3

Lbl_c292:
	rol a 
	rol a 
	ora #$0c
	sta Lbl_400e
	stx $b8
	stx Lbl_400c
	lda #$08
	sta Lbl_400f

Lbl_c2a3:
	ldx $d0
	beq Lbl_c2bb
	lda Lbl_c3cc,x
	beq Lbl_c2bb
	sta Lbl_400e
	lda #$0a
	sta Lbl_400c
	lda #$40
	sta Lbl_400f
	inc $d0

Lbl_c2bb:
	pla 
	tay 
	pla 
	tax 
	pla 

Lbl_c2c0:
	rti 

Lbl_c2c1:
	jsr Lbl_c304
	lda #$08
	sta $cf
	lda #$e0
	sta $ce
	lda #$00
	sta $d0

Lbl_c2d0:
	lda $ca
	bne Lbl_c2d0
	sta Lbl_4015
	rts 

Lbl_c2d8:
	jsr Lbl_c304
	lda #$06
	sta $cd
	lda Lbl_c3ac
	sta $ce
	lda Lbl_c3b4
	sta $d0
	rts 

Lbl_c2ea:
	jsr Lbl_c304
	dec $ca
	lda #$c0
	sta Lbl_4000
	lda #$84
	sta Lbl_4001
	lda #$94
	sta Lbl_4005
	lda #$10
	sta Lbl_4008
	rts 

Lbl_c304:
	lda #$00
	tax 

Lbl_c307:
	sta Lbl_4000,x
	inx 
	cpx #$10
	bne Lbl_c307
	sta $cd
	sta $ce
	sta $d0
	sta $cc
	lda #$01
	sta $ca
	sta $cf
	lda #$ca
	sta Lbl_4000
	lda #$c4
	sta Lbl_4004
	lda #$20
	sta Lbl_4008

Lbl_c32c:
	lda #$0f
	sta Lbl_4015
	rts 

Lbl_c332:
	cmp #$81
	beq Lbl_c35b
	pha 
	and #$0f
	asl a 
	tax 
	pla 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	sta $c5
	lda Lbl_c35d,x
	sta $c6
	lda Lbl_c35c,x

Lbl_c34a:
	lsr $c6
	ror a 
	dec $c5
	bne Lbl_c34a
	sta Lbl_4002,y
	lda $c6
	ora #$20
	sta Lbl_4003,y

Lbl_c35b:
	rts 

Lbl_c35c:
	.byte $ae

Lbl_c35d:
	.byte $06,$4e,$06,$f3,$05,$9e,$05,$4d,$05,$01,$05,$b9,$04,$75,$04,$35
	.byte $04,$f8,$03,$bf,$03,$89,$03

Lbl_c374:
	.byte $30,$40,$2b,$3b,$30,$40,$22,$27,$22,$27,$22,$27,$27,$2b,$22,$27
	.byte $1b,$22,$27,$2b,$27,$2b,$27,$2b,$2b,$32,$27,$2b,$22,$27,$2b,$32
	.byte $2b,$32,$2b,$32,$32,$36,$29,$32,$26,$29,$29,$32,$26,$29,$29,$32
	.byte $27,$37,$27,$37,$27,$37,$27,$37

Lbl_c3ac:
	.byte $00,$9a,$39,$a3,$9a,$69,$a6,$80

Lbl_c3b4:
	.byte $2a,$9a,$f9,$a7,$9a,$a9,$a6

Lbl_c3bb:
	.byte $80,$27,$27,$27,$22,$81,$81,$22,$81,$22,$27,$81,$81,$00,$20,$81
	.byte $15

Lbl_c3cc:
	.byte $00,$0a,$09,$0c,$00,$0d,$0f,$00,$0b,$00,$0a,$09,$0b,$0a,$0c,$0b
	.byte $0d,$0c,$0f,$0e,$0f,$00

Lbl_c3e2:
	lda #$00
	sta $0200
	lda #$01
	sta $c4

Lbl_c3eb:
	jsr Lbl_c407
	lda #$00

Lbl_c3f0:
	sta $2001
	rts 

Lbl_c3f4:
	lda #$00
	sta $c1
	sta $2005
	sta $c3
	sta $2005
	lda $c2
	and #$fc
	jmp Lbl_c969

Lbl_c407:
	lda $2002
	bmi Lbl_c407

Lbl_c40c:
	lda $2002
	bpl Lbl_c40c
	rts 

Lbl_c412:
	inc $ea
	dec $eb
	bne Lbl_c41c
	lda #$75
	sta $eb

Lbl_c41c:
	lda $ea
	cmp #$77
	bne Lbl_c426
	lda #$01
	sta $ea

Lbl_c426:
	eor $eb
	asl a 
	php 
	lsr a 
	plp 
	rol a 
	asl a 
	php 
	lsr a 
	plp 
	rol a 
	eor $ec
	sec 
	sbc $eb
	clc 
	adc $ea
	clc 
	adc $ea
	sta $ec
	adc $50
	rts 

Lbl_c442:
	jsr Lbl_c3e2
	lda #$aa

Lbl_c447:
	ldx #$0f
	ldy #$00

Lbl_c44b:
	sta $00
	stx $b9
	jsr Lbl_c48e
	dey 
	beq Lbl_c45f
	ldx #$20
	jsr Lbl_c46d
	ldx #$24
	jsr Lbl_c46d

Lbl_c45f:
	ldx #$00
	ldy #$00

Lbl_c463:
	lda #$f8
	sta $0700,x
	inx 
	dey 
	bne Lbl_c463
	rts 

Lbl_c46d:
	stx $2006
	lda #$00
	sta $2006
	ldx #$c0
	ldy #$04
	lda #$80
	jsr Lbl_c484
	ldx #$40
	ldy #$01
	lda $00

Lbl_c484:
	jsr Lbl_c006
	dex 
	bne Lbl_c484
	dey 
	bne Lbl_c484
	rts 

Lbl_c48e:
	lda #$3f
	sta $2006
	ldx #$00
	stx $2006
	ldx #$00

Lbl_c49a:
	lda $b9
	jsr Lbl_c006
	ldy #$03

Lbl_c4a1:
	cpx #$03
	bne Lbl_c4c3
	lda $d6
	cmp #$02
	bne Lbl_c4d6
	inc $06e7
	lda $06e7
	and #$0f
	bne Lbl_c4b7
	inc $e2

Lbl_c4b7:
	lda $e2
	and #$03
	tax 
	lda Lbl_c02e,x
	ldx #$03
	bne Lbl_c4d9

Lbl_c4c3:
	cpx #$04
	bne Lbl_c4d0
	ldx $d6
	lda Lbl_c022,x
	ldx #$04
	bne Lbl_c4d9

Lbl_c4d0:
	lda $db
	cpx #$17
	beq Lbl_c4d9

Lbl_c4d6:
	lda Lbl_c00a,x

Lbl_c4d9:
	jsr Lbl_c006
	inx 
	dey 
	bne Lbl_c4a1
	cpx #$18
	bne Lbl_c49a

Lbl_c4e4:
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	sta $2006
	sta $2006
	rts 

Lbl_c4f5:
	lda #$01
	bne Lbl_c51d

Lbl_c4f9:
	clc 
	adc $02ef,y
	sta $02f0
	lda $03cd,y
	adc #$00
	sta $03ce
	lda #$7d
	sta $043d

Lbl_c50d:
	lda #$05
	bne Lbl_c51d
	lda #$08
	bne Lbl_c523

Lbl_c515:
	lda $ca
	bne Lbl_c51d
	lda #$0a
	sta $d0

Lbl_c51d:
	pha 
	lda #$0a
	sta $55
	pla 

Lbl_c523:
	sta $01
	stx $02
	ldx $d0
	lda Lbl_c3cc,x
	bne Lbl_c536
	lda $ca
	bne Lbl_c536
	lda $01
	sta $d0

Lbl_c536:
	ldx $02

Lbl_c538:
	rts 

Lbl_c539:
	inc $4e
	bne Lbl_c53f
	inc $4f

Lbl_c53f:
	ldy #$00
	lda ($4e),y
	beq Lbl_c538
	bmi Lbl_c54d
	jsr Lbl_c006

Lbl_c54a:
	jmp Lbl_c539

Lbl_c54d:
	and #$7f
	tay 
	lda #$80

Lbl_c552:
	jsr Lbl_c006
	dey 
	bne Lbl_c552
	beq Lbl_c54a

Lbl_c55a:
	jsr Lbl_c5a1
	asl a 
	asl a 
	tax 
	lda #$f8
	ldy #$04

Lbl_c564:
	sta $0700,x
	inx 
	dey 
	bne Lbl_c564
	beq Lbl_c59c

Lbl_c56d:
	stx $52
	asl a 
	asl a 
	tax 
	lda $4a
	sta $0700,x
	lda $4b
	sta $0701,x
	lda $4d
	sta $0702,x
	lda $49
	sta $0703,x
	ldx $52
	rts 

Lbl_c589:
	jsr Lbl_c5a1
	asl a 
	asl a 
	asl a 
	asl a 
	tax 
	lda #$f8
	ldy #$10

Lbl_c595:
	sta $0700,x
	inx 
	dey 
	bne Lbl_c595

Lbl_c59c:
	ldx $52
	ldy $53
	rts 

Lbl_c5a1:
	stx $52
	sty $53
	rts 

Lbl_c5a6:
	jsr Lbl_c5a1
	asl a 
	asl a 
	asl a 
	asl a 
	tax 
	ldy #$00

Lbl_c5b0:
	jsr Lbl_c5fd
	jsr Lbl_c607
	jsr Lbl_c611
	jsr Lbl_c61b
	inx 
	inx 
	inx 
	inx 
	iny 
	cpy #$04
	bne Lbl_c5b0
	beq Lbl_c59c

Lbl_c5c7:
	jsr Lbl_c5a1
	asl a 
	asl a 
	asl a 
	asl a 
	tax 
	lda $4c
	asl a 
	asl a 
	sta $00
	lda #$00
	sta $02
	lda #$04
	sta $01

Lbl_c5dd:
	ldy $02
	jsr Lbl_c5fd
	jsr Lbl_c61b
	ldy $4c
	jsr Lbl_c611
	ldy $00
	jsr Lbl_c607
	inx 
	inx 
	inx 
	inx 
	inc $00
	inc $02
	dec $01
	bne Lbl_c5dd
	beq Lbl_c59c

Lbl_c5fd:
	lda $4a
	clc 
	adc Lbl_c629,y
	sta $0700,x
	rts 

Lbl_c607:
	lda $4b
	clc 
	adc Lbl_c63d,y
	sta $0701,x
	rts 

Lbl_c611:
	lda $4d
	clc 
	adc Lbl_c62d,y
	sta $0702,x
	rts 

Lbl_c61b:
	lda $49
	clc 
	adc Lbl_c625,y
	sta $0703,x
	rts 

Lbl_c625:
	.byte $00,$08,$00,$08

Lbl_c629:
	.byte $00,$00,$08,$08

Lbl_c62d:
	.byte $00,$00,$00,$00,$00,$80,$80,$80,$80,$c0,$c0,$c0,$c0,$40,$40,$40

Lbl_c63d:
	.byte $00,$01,$10,$11,$02,$03,$12,$13,$04,$05,$14,$15,$06,$07,$16,$17
	.byte $08,$09,$18,$19,$16,$17,$06,$07,$14,$15,$04,$05,$12,$13,$02,$03
	.byte $10,$11,$00,$01,$13,$12,$03,$02,$15,$14,$05,$04,$17,$16,$07,$06
	.byte $19,$18,$09,$08,$07,$06,$17,$16,$05,$04,$15,$14,$03,$02,$13,$12
	.byte $67,$61,$6d,$65,$7f,$61,$ba,$67,$61,$6d,$65,$7f,$62,$ba,$71,$7f
	.byte $70,$6c,$61,$79,$cf,$63,$6f,$70,$79,$72,$69,$67,$68,$74,$7f,$60
	.byte $7f,$7b,$7c,$7d,$7e,$7f,$68,$75,$64,$73,$6f,$6e,$7f,$73,$6f,$66
	.byte $74,$89,$77,$69,$74,$68,$7f,$70,$65,$72,$6d,$69,$73,$73,$69,$6f
	.byte $6e,$7f,$6f,$66,$8b,$62,$72,$6f,$64,$65,$72,$62,$75,$6e,$64,$7f
	.byte $73,$6f,$66,$74,$77,$61,$72,$65,$7f,$69,$6e,$63,$91,$00,$62,$79
	.byte $7f,$6b,$69,$6b,$75,$00

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
Lbl_c6e3:
	lda #$10
	sta $2000
	sta $c2

Lbl_c6ea:
	inc $ea
	lda $2002
	bpl Lbl_c6ea
	ldx #$ff
	txs 
	inx 
	txa 

Lbl_c6f6:
	sta $00,x
	inx 
	cpx #$ea
	bne Lbl_c6f6
	jsr Lbl_c98e
	lda $026d
	ora $0273
	cmp #$23
	beq Lbl_c719
	lda #$23
	ldx #$0b

Lbl_c70e:
	sta $0268,x
	dex 
	bpl Lbl_c70e
	lda #$25
	sta $026f

Lbl_c719:
	ldx #$ff
	txs 
	jsr Lbl_c98e
	lda #$01
	ldx #$06

Lbl_c723:
	sta $e3,x
	dex 
	bpl Lbl_c723
	ldx #$29

Lbl_c72a:
	lda Lbl_dadd,x
	sta $06ad,x
	dex 
	bpl Lbl_c72a
	jsr Lbl_c3e2
	lda #$00
	jsr Lbl_c447
	lda #$20
	sta $2006
	ldx #$c8
	stx $2006
	ldy #$00

Lbl_c747:
	ldx #$10

Lbl_c749:
	tya 
	jsr Lbl_c006
	iny 
	dex 
	bne Lbl_c749
	tya 
	and #$10
	bne Lbl_c75a
	ldx #$30
	bne Lbl_c75c

Lbl_c75a:
	ldx #$10

Lbl_c75c:
	lda #$80
	jsr Lbl_c006
	dex 
	bne Lbl_c75c
	cpy #$60
	bne Lbl_c747
	lda #$22
	sta $2006
	ldx #$2d
	stx $2006
	lda #$7d
	sta $4e
	lda #$c6
	sta $4f
	jsr Lbl_c53f
	lda $50
	eor #$68
	bne Lbl_c786
	jsr Lbl_c539

	
	
	
	
	
	
	
Lbl_c786:
	jsr Lbl_c95a
	lda #$01
	sta $c7
	bne Lbl_c7c7

Lbl_c78f:
	lda #$c8
	sta $d4

Lbl_c793:
	lda #$00
	sta Lbl_4015
	dec $d4
	beq Lbl_c7ed
	ldy #$64
	jsr Lbl_c043
	jsr Lbl_c412
	ldx $50
	bne Lbl_c7ac
	stx $c7
	beq Lbl_c793

Lbl_c7ac:
	lda $c7
	bne Lbl_c793
	inc $c7
	txa 
	and #$10
	bne Lbl_c7e3
	txa 
	and #$20
	beq Lbl_c793
	ldx $c9
	cpx #$02
	bne Lbl_c7c4
	ldx #$ff

Lbl_c7c4:
	inx 
	stx $c9

Lbl_c7c7:
	lda $c9
	asl a 
	asl a 
	asl a 
	asl a 
	adc #$87
	sta $0700
	lda #$5c
	sta $0703
	ldx #$df
	stx $0701
	lda #$00
	sta $0702
	beq Lbl_c78f

Lbl_c7e3:
	lda #$23
	ldx #$05

Lbl_c7e7:
	sta $0268,x
	dex 
	bpl Lbl_c7e7

Lbl_c7ed:
	lda #$01
	sta $d3
	lda #$05
	sta $d5
	ldx #$ff
	stx $d8
	inx 
	stx $d9
	stx $d7
	ldx #$6e
	lda #$c8

Lbl_c802:
	sta $035e,x
	dex 
	cpx #$58
	bne Lbl_c802

Lbl_c80a:
	ldx #$58
	lda #$c8

Lbl_c80e:
	sta $035e,x
	dex 
	bpl Lbl_c80e
	jsr Lbl_c9ab
	lda #$01
	sta $bb
	sta $bc
	lda #$29
	sta $0262
	lda #$27
	sta $0267
	jsr Lbl_ccc0
	lda #$06
	sta $bd
	lda #$00
	sta $d6
	sta $d1
	sta $da
	sta $df

Lbl_c838:
	lda $d4
	beq Lbl_c89a
	jsr Lbl_c442
	lda #$21
	sta $2006
	ldx #$2b
	stx $2006
	lda #$6f
	sta $4e
	lda #$c9
	sta $4f
	jsr Lbl_c53f
	lda #$00
	sta $00
	lda $d3

Lbl_c85a:
	cmp #$0a
	bcc Lbl_c863
	sbc #$0a
	jmp Lbl_c85a

Lbl_c863:
	ldy #$47
	jsr Lbl_c921
	lda $0262
	sec 
	sbc #$23
	ldy #$5f
	jsr Lbl_c921
	lda $d5
	sec 
	sbc #$01
	ldy #$77
	jsr Lbl_c921
	ldx #$80
	ldy #$97
	jsr Lbl_c8fb
	ldx #$80
	ldy #$a7
	lda #$88
	sta $00
	lda #$2e
	jsr Lbl_c901
	jsr Lbl_c95a
	jsr Lbl_c2d8
	jsr Lbl_c032

Lbl_c89a:
	lda #$00
	sta $db
	jsr Lbl_c3e2
	lda #$55
	ldx #$02
	ldy #$01
	jsr Lbl_c44b
	jsr Lbl_c95a
	jsr Lbl_cd26
	lda $d7
	beq Lbl_c8b7
	jsr Lbl_d1e6

Lbl_c8b7:
	lda Lbl_4016
	and #$04
	sta $e1
	jsr Lbl_ced3
	lda $d4
	beq Lbl_c8e5
	lda $d5
	beq Lbl_c8cc
	jmp Lbl_c838

Lbl_c8cc:
	jsr Lbl_c8e8
	jsr Lbl_c3e2
	lda #$00
	jsr Lbl_c447
	lda #$f0
	sta $4e
	lda #$c8
	sta $4f
	jsr Lbl_c94d
	jsr Lbl_c032

Lbl_c8e5:
	jmp Lbl_c719

Lbl_c8e8:
	ldx #$ff
	stx $b7
	inx 
	stx $cf
	rts 

Lbl_c8f0:
	.byte $67,$61,$6d,$65,$7f,$7f,$6f,$76,$65,$72,$00

Lbl_c8fb:
	lda #$b0
	sta $00
	lda #$28

Lbl_c901:
	sta $4c
	lda #$06
	sta $02

Lbl_c907:
	stx $49

Lbl_c909:
	ldx $4c
	lda $0240,x
	ldx $49
	jsr Lbl_c927
	lda $49
	clc 
	adc #$08
	sta $49
	inc $4c
	dec $02
	bne Lbl_c909
	rts 

Lbl_c921:
	ldx #$98
	bne Lbl_c92a

Lbl_c925:
	ldy #$d0

Lbl_c927:
	sec 
	sbc #$23

Lbl_c92a:
	stx $52
	ldx $00
	asl a 
	asl a 
	asl a 
	asl a 
	ora #$0f
	sta $0701,x
	tya 
	sta $0700,x
	lda #$00
	sta $0702,x
	lda $52
	sta $0703,x
	lda $00
	clc 
	adc #$04
	sta $00
	rts 

Lbl_c94d:
	lda #$21
	sta $2006
	ldx #$aa
	stx $2006
	jsr Lbl_c53f

Lbl_c95a:
	jsr Lbl_c3f4
	jsr Lbl_cde2
	lda #$00
	sta $c4
	jsr Lbl_c407
	lda #$90

Lbl_c969:
	sta $2000
	sta $c2
	rts 

Lbl_c96f:
	.byte $72,$6f,$75,$6e,$64,$db,$66,$61,$63,$74,$6f,$72,$79,$d9,$6c,$65
	.byte $66,$74,$fa,$73,$63,$6f,$72,$65,$bb,$74,$7f,$6f,$7f,$70,$00

Lbl_c98e:
	lda #$00
	tax 

Lbl_c991:
	sta $0300,x
	sta $0400,x
	sta $0500,x
	sta $0600,x
	inx 
	bne Lbl_c991
	ldx #$67
	lda #$00

Lbl_c9a4:
	sta $0200,x
	dex 
	bpl Lbl_c9a4
	rts 

Lbl_c9ab:
	ldx #$38

Lbl_c9ad:
	lda Lbl_cc83,x
	sta $0667,x
	dex 
	bpl Lbl_c9ad
	ldx #$05
	lda #$0a

Lbl_c9ba:
	sta $06a7,x
	dex 
	bpl Lbl_c9ba
	lda #$6e
	sta $be
	lda #$04
	sta $bf
	lda #$07
	sta $c0
	ldx #$05

Lbl_c9ce:
	jsr Lbl_c9de
	dex 
	bpl Lbl_c9ce
	rts 

Lbl_c9d5:
	stx $25
	ldx #$01
	jsr Lbl_ca74
	ldx $25

Lbl_c9de:
	stx $25
	lda #$03
	sta $00

Lbl_c9e4:
	ldx $25
	jsr Lbl_ca04
	dec $00
	bne Lbl_c9e4
	ldx $25
	jsr Lbl_ca72
	ldx $25
	jsr Lbl_caa8
	ldx $25
	jsr Lbl_cae6
	ldx $25
	jsr Lbl_cafc
	ldx $25
	rts 

Lbl_ca04:
	lda #$00
	sta $03
	sta $26
	ldy #$54

Lbl_ca0c:
	lda $035e,y
	bmi Lbl_ca22
	lda $04ab,y
	cmp Lbl_cbdb,x
	bne Lbl_ca24
	inc $03
	lda $03
	cmp #$04
	bcc Lbl_ca24

Lbl_ca21:
	rts 

Lbl_ca22:
	sty $26

Lbl_ca24:
	dey 
	cpy #$3d
	bcs Lbl_ca0c
	ldy $26
	beq Lbl_ca21
	lda Lbl_cbdb,x
	sta $04ab,y
	lda Lbl_cbe1,x
	sta $043c,y
	lda Lbl_cbe7,x
	sta $035e,y
	lda Lbl_cbed,x
	sta $0280,y
	lda Lbl_cbf3,x
	sta $03cd,y
	lda Lbl_cbf9,x
	sta $02ef,y
	dec $e3,x
	bpl Lbl_ca59
	lda #$02
	sta $e3,x

Lbl_ca59:
	lda $e3,x
	beq Lbl_ca66
	cmp #$01
	beq Lbl_ca6b
	txa 
	clc 
	adc #$06
	tax 

Lbl_ca66:
	txa 
	clc 
	adc #$06
	tax 

Lbl_ca6b:
	lda Lbl_cbff,x
	sta $051a,y
	rts 

Lbl_ca72:
	ldx #$00

Lbl_ca74:
	lda $be
	cmp #$6e
	beq Lbl_ca86
	ldy #$6e

Lbl_ca7c:
	lda $035e,y
	bmi Lbl_ca87
	dey 
	cpy $be
	bcs Lbl_ca7c

Lbl_ca86:
	rts 

Lbl_ca87:
	txa 
	sta $04ab,y
	lda #$84
	sta $043c,y
	lda #$09
	sta $035e,y
	sta $051a,y
	lda $b1
	cmp #$03
	bcs Lbl_caa2
	lda #$06
	bne Lbl_caa4

Lbl_caa2:
	lda #$02

Lbl_caa4:
	sta $03cd,y
	rts 

Lbl_caa8:
	lda $0391,x
	bpl Lbl_cad3
	lda #$29
	sta $04de,x
	lda #$9c
	sta $046f,x
	lda Lbl_cad4,x
	sta $02b3,x
	and #$0f
	sta $0391,x
	lda Lbl_cada,x
	sta $0322,x
	and #$07
	sta $0400,x
	lda Lbl_cae0,x
	sta $054d,x

Lbl_cad3:
	rts 

Lbl_cad4:
	.byte $83,$85,$07,$63,$c9,$4b

Lbl_cada:
	.byte $03,$42,$44,$46,$86,$41

Lbl_cae0:
	.byte $04,$0c,$13,$16,$1b,$23

Lbl_cae6:
	jsr Lbl_cb5a
	bcc Lbl_cad3
	lda #$92
	sta $043c,y
	ldx $25
	lda Lbl_cb85,x
	sta $03
	lda Lbl_cb7f,x
	bne Lbl_cb10

Lbl_cafc:
	jsr Lbl_cb5a
	bcc Lbl_cad3
	lda #$78
	sta $043c,y
	ldx $25
	lda Lbl_cb91,x
	sta $03
	lda Lbl_cb8b,x

Lbl_cb10:
	tax 
	sty $27

Lbl_cb13:
	lda Lbl_cb97,x
	tay 
	lda $0667,y
	bpl Lbl_cb22
	inx 
	cpx $03
	bcc Lbl_cb13
	rts 

Lbl_cb22:
	tya 
	tax 
	ldy $27
	lda #$00
	sta $04ab,y
	lda $0667,x
	sta $035e,y
	lda Lbl_cc11,x
	sta $0280,y
	lda Lbl_cc4a,x
	and #$07
	sta $03cd,y
	lda Lbl_cc4a,x
	and #$f8
	sta $02ef,y
	txa 
	sta $051a,y
	lda $0667,x
	ora #$80
	sta $0667,x
	ldx $25
	txa 
	sta $05e3,y
	rts 

Lbl_cb5a:
	ldy #$32

Lbl_cb5c:
	lda $035e,y
	bmi Lbl_cb76
	dey 
	cpy #$15
	bcs Lbl_cb5c
	ldy #$32

Lbl_cb68:
	lda $05e3,y
	tax 
	lda $036d,x
	bpl Lbl_cb78
	lda #$ff
	sta $035e,y

Lbl_cb76:
	sec 
	rts 

Lbl_cb78:
	dey 
	cpy #$15
	bcs Lbl_cb68
	clc 
	rts 

Lbl_cb7f:
	.byte $01,$07,$0d,$13,$19,$1f

Lbl_cb85:
	.byte $06,$0c,$12,$18,$1e,$24

Lbl_cb8b:
	.byte $25,$2a,$2f,$34,$39,$3e

Lbl_cb91:
	.byte $2a,$2f,$34,$39,$3e,$43

Lbl_cb97:
	.byte $00,$03,$05,$06,$01,$02,$04,$09,$05,$0a,$07,$08,$0b,$0e,$0f,$0c
	.byte $0d,$0b,$06,$13,$11,$10,$12,$15,$14,$18,$17,$1b,$19,$1a,$16,$20
	.byte $1e,$1d,$1f,$21,$1c,$24,$22,$23,$26,$27,$25,$24,$22,$34,$28,$28
	.byte $29,$27,$24,$2c,$2b,$2a,$2d,$2c,$2e,$2f,$33,$30,$32,$31,$36,$37
	.byte $38,$35,$34,$34

Lbl_cbdb:
	.byte $2f,$22,$2b,$2d,$23,$28

Lbl_cbe1:
	.byte $71,$6b,$6f,$68,$6f,$71

Lbl_cbe7:
	.byte $03,$06,$06,$02,$09,$09

Lbl_cbed:
	.byte $00,$00,$00,$00,$c0,$c0

Lbl_cbf3:
	.byte $04,$03,$05,$05,$00,$02

Lbl_cbf9:
	.byte $00,$40,$60,$c0,$60,$80

Lbl_cbff:
	.byte $02,$1a,$39,$53,$6b,$85,$08,$27,$43,$59,$72,$8e,$11,$2f,$49,$64
	.byte $7a,$95

Lbl_cc11:
	.byte $00,$d0,$b8,$98,$20,$4a,$c0,$38,$b0,$22,$20,$e0,$30,$90,$d0,$a0
	.byte $b0,$b4,$48,$98,$30,$c8,$ff,$70,$8a,$e0,$80,$00,$30,$60,$40,$48
	.byte $90,$90,$cd,$88,$28,$40,$40,$60,$58,$28,$88,$c0,$d8,$a0,$10,$10
	.byte $e0,$e4,$e0,$d0,$90,$60,$30,$30,$20

Lbl_cc4a:
	.byte $00,$02,$83,$ea,$d2,$f1,$bb,$a2,$52,$22,$c1,$62,$04,$74,$3c,$3d
	.byte $95,$66,$46,$8e,$27,$6e,$dd,$a5,$96,$76,$87,$27,$83,$f0,$1a,$79
	.byte $51,$1a,$a9,$33,$da,$0a,$24,$44,$04,$35,$ee,$8d,$dd,$b6,$77,$a5
	.byte $7d,$76,$b7,$af,$fa,$53,$19,$f0,$1a

Lbl_cc83:
	.byte $00,$02,$02,$03,$04,$04,$03,$05,$05,$06,$07,$07,$05,$06,$06,$06
	.byte $02,$01,$03,$03,$05,$04,$08,$0a,$09,$09,$09,$0b,$0a,$0a,$0a,$0b
	.byte $0b,$0b,$02,$02,$05,$07,$02,$05,$07,$07,$01,$03,$04,$04,$07,$09
	.byte $0a,$0a,$08,$0a,$08,$0a,$0a,$0c,$0c

Lbl_ccbc:
	ldx #$01
	bne Lbl_ccc2

Lbl_ccc0:
	ldx #$09

Lbl_ccc2:
	lda Lbl_ccea,x
	sta $028b,x
	lda Lbl_ccf4,x
	sta $0369,x
	lda Lbl_ccfe,x
	sta $02fa,x
	lda Lbl_cd08,x
	sta $03d8,x
	lda Lbl_cd12,x
	sta $0447,x
	lda Lbl_cd1c,x
	sta $04b6,x
	dex 
	bpl Lbl_ccc2
	rts 

Lbl_ccea:
	.byte $87,$87,$10,$40,$d0,$d8,$b8,$78,$a8,$70

Lbl_ccf4:
	.byte $00,$00,$0a,$0a,$03,$05,$06,$03,$09,$0b

Lbl_ccfe:
	.byte $2a,$4a,$c7,$c7,$cf,$1f,$4f,$47,$87,$5f

Lbl_cd08:
	.byte $00,$00,$00,$00,$02,$02,$04,$06,$06,$01

Lbl_cd12:
	.byte $66,$67,$64,$65,$aa,$aa,$aa,$aa,$aa,$aa

Lbl_cd1c:
	.byte $3c,$3c,$3c,$3c,$3f,$32,$3b,$3d,$33,$38

Lbl_cd26:
	lda #$00
	tax 

Lbl_cd29:
	sta $00,x
	inx 
	cpx #$a5
	bne Lbl_cd29
	ldx #$07

Lbl_cd32:
	sta $0589,x
	dex 
	bpl Lbl_cd32
	lda #$ff
	ldx #$0f

Lbl_cd3c:
	sta $65,x
	sta $95,x
	dex 
	bpl Lbl_cd3c
	ldx #$02
	lda #$00

Lbl_cd47:
	sta $65,x
	sta $6d,x
	dex 
	bpl Lbl_cd47
	ldx #$6e

Lbl_cd50:
	lda $04ab,x
	and #$7f
	sta $04ab,x
	dex 
	bpl Lbl_cd50
	lda #$83
	sta $043e
	lda #$22
	sta $04ad
	lda #$fa
	sta $0368
	jsr Lbl_d00a
	lda #$28
	sta $0254
	lda #$d2
	sta $0240
	ldx #$00

Lbl_cd79:
	lda Lbl_ce08,x
	sta $a5,x
	inx 
	cpx #$16
	bne Lbl_cd79
	jsr Lbl_d43a
	dec $d5
	lda $d5
	cmp #$04
	beq Lbl_cdf4
	dec $0267
	lda $02fa
	sta $2d
	lda $03d8
	sta $2e
	jsr Lbl_ccbc

Lbl_cd9e:
	jsr Lbl_c3eb

Lbl_cda1:
	lda $03d8
	cmp $2e
	bne Lbl_cdaf
	lda $02fa
	cmp $2d
	beq Lbl_cdbb

Lbl_cdaf:
	jsr Lbl_d9e7
	jsr Lbl_e7c0
	jsr Lbl_e82d
	jmp Lbl_cda1

Lbl_cdbb:
	jsr Lbl_f127
	ldx #$e4

Lbl_cdc0:
	txa 
	pha 
	jsr Lbl_e7c0
	pla 
	tax 
	dex 
	bne Lbl_cdc0
	ldx #$c8

Lbl_cdcc:
	txa 
	pha 
	jsr Lbl_e7a6
	pla 
	tax 
	dex 
	bne Lbl_cdcc
	ldx #$0c

Lbl_cdd8:
	txa 
	pha 
	jsr Lbl_e7d6
	pla 
	tax 
	dex 
	bne Lbl_cdd8

Lbl_cde2:
	jsr Lbl_c407
	lda #$00
	sta $2003
	lda #$07
	sta Lbl_4014
	lda #$1e
	jmp Lbl_c3f0

Lbl_cdf4:
	jsr Lbl_c412
	sta $2d
	jsr Lbl_c412
	and #$07
	sta $2e
	cmp #$07
	bne Lbl_cd9e
	dec $2e
	bne Lbl_cd9e

Lbl_ce08:
	.byte $07,$44,$80,$80,$80,$80,$fa,$0a,$40,$2a,$0b,$f6,$06,$61,$5a,$aa
	.byte $87,$2e,$ff,$0a,$02,$0c

Lbl_ce1e:
	lda #$02

Lbl_ce20:
	pha 
	sta $0d
	lda #$30
	sta $0e
	lda #$e4
	sta $a6
	pla 

Lbl_ce2c:
	rts 

Lbl_ce2d:
	ldx $0d
	beq Lbl_ce2c
	dec $0e
	beq Lbl_ce81
	dex 
	lda Lbl_cec9,x
	sta $4e
	lda Lbl_cece,x
	sta $4f
	ldx $0e
	txa 
	and #$04
	bne Lbl_ce8f
	jsr Lbl_ce8f
	lda #$38
	sta $54
	txa 
	pha 
	tya 
	pha 
	ldy #$ff

Lbl_ce54:
	iny 
	lda ($4e),y
	cmp #$ff
	beq Lbl_ce7c
	sta $49
	iny 
	lda ($4e),y
	sta $4a

Lbl_ce62:
	iny 
	lda ($4e),y
	sta $4b
	beq Lbl_ce54
	cmp #$20
	beq Lbl_ce74
	lda $54
	jsr Lbl_c56d
	inc $54

Lbl_ce74:
	lda #$08
	jsr Lbl_f18c
	jmp Lbl_ce62

Lbl_ce7c:
	pla 
	tay 
	pla 
	tax 
	rts 

Lbl_ce81:
	lda #$00
	sta $0d
	lda #$44
	sta $a6
	lda $ca
	bne Lbl_ce8f
	sta $ce

Lbl_ce8f:
	ldx #$e0
	ldy #$20
	jmp Lbl_c463

Lbl_ce96:
	.byte $64,$3d,$64,$65,$55,$74,$54,$de,$b7,$00,$ff,$64,$3d,$97,$25,$54
	.byte $db,$a7,$db,$87,$00,$ff,$6c,$3d,$55,$75,$db,$cb,$24,$00,$ff,$6c
	.byte $3d,$25,$8e,$65,$54,$74,$00,$ff,$64,$3d,$55,$34,$65,$45,$a7,$25
	.byte $8e,$00,$ff

Lbl_cec9:
	.byte $96,$a1,$ac,$b5,$be

Lbl_cece:
	.byte $ce,$ce,$ce,$ce,$ce

Lbl_ced3:
	ldx #$00
	stx $15
	stx $16
	stx $13
	inx 
	stx $14
	ldx #$80
	stx $a9
	inx 
	stx $aa
	lda #$05
	sta $a5
	jsr Lbl_cfff

Lbl_ceec:
	lda $ad
	beq Lbl_ceff
	jsr Lbl_d2eb
	jsr Lbl_d459
	jsr Lbl_d01a
	jsr Lbl_d2d7
	jmp Lbl_ceec

Lbl_ceff:
	lda #$80
	sta $a9
	sta $aa

Lbl_cf05:
	lda $ad
	beq Lbl_cf45
	bpl Lbl_ced3
	lda #$80
	sta $a9
	sta $aa
	lda #$00
	sta $13
	sta $14
	jsr Lbl_d014
	lda $024d
	cmp #$28
	bcc Lbl_cf26
	lda #$28
	sta $024d

Lbl_cf26:
	jsr Lbl_d2eb
	jsr Lbl_d61b
	bcc Lbl_cf33
	inc $024c
	bne Lbl_cf8f

Lbl_cf33:
	jsr Lbl_d01a
	jsr Lbl_d01a
	jsr Lbl_d459
	jsr Lbl_d2d7
	lda $ad
	bne Lbl_cf26
	beq Lbl_ceff

Lbl_cf45:
	jsr Lbl_d2eb
	jsr Lbl_d5e7
	lda $0262
	cmp #$23
	bne Lbl_cf62
	jsr Lbl_d194
	jsr Lbl_d194
	lda $a6
	bmi Lbl_cf05

Lbl_cf5c:
	inc $d3
	inc $d5
	bne Lbl_cfdd

Lbl_cf62:
	lda $024c
	cmp #$24
	bcc Lbl_cf05
	jsr Lbl_d200
	lda #$c8
	sta $3f
	sta $d1

Lbl_cf72:
	jsr Lbl_c412
	cmp #$80
	bcc Lbl_cf7d
	inc $b6
	bne Lbl_cf7f

Lbl_cf7d:
	dec $b6

Lbl_cf7f:
	inc $11
	jsr Lbl_d5e7
	lda #$ff
	sta $0361
	dec $d1
	dec $3f
	bne Lbl_cf72

Lbl_cf8f:
	lda #$32
	sta $04ac
	lda #$fa
	sta $ab
	sta $0361
	ldx #$00
	ldy #$30
	jsr Lbl_c463
	lda #$ad
	sta $b2
	sta $b3
	lda #$04
	sta $a5
	lda #$64
	sta $3f
	jsr Lbl_c515

Lbl_cfb3:
	jsr Lbl_d2cc

Lbl_cfb6:
	dec $3f
	jsr Lbl_d191
	lda $3f
	cmp #$60
	beq Lbl_cfb3
	cmp #$55
	bcc Lbl_cfc8
	jsr Lbl_d61b

Lbl_cfc8:
	lda $3f
	bne Lbl_cfb6

Lbl_cfcc:
	jsr Lbl_d191
	lda $a6
	bmi Lbl_cfcc
	lda $0262
	cmp #$23
	bne Lbl_d019
	jmp Lbl_cf5c

Lbl_cfdd:
	jsr Lbl_c8e8
	jsr Lbl_c442
	lda #$f4
	sta $4e
	lda #$cf
	sta $4f
	jsr Lbl_c94d
	jsr Lbl_c032
	jmp Lbl_c80a

Lbl_cff4:
	.byte $7f,$7f,$63,$6f,$6d,$70,$6c,$65,$74,$65,$00

Lbl_cfff:
	lda #$02
	sta $b9
	jsr Lbl_d224
	lda #$1f
	sta $3c

Lbl_d00a:
	lda #$23
	ldx #$02

Lbl_d00e:
	sta $024c,x
	dex 
	bpl Lbl_d00e

Lbl_d014:
	lda #$2c
	sta $0254

Lbl_d019:
	rts 

Lbl_d01a:
	ldy #$19
	jsr Lbl_c043
	jsr Lbl_e83e
	jsr Lbl_e28b
	jsr Lbl_eaf6
	jsr Lbl_d800
	jsr Lbl_d199
	jsr Lbl_eebc
	jsr Lbl_e157
	beq Lbl_d06f
	lda Lbl_4016
	and #$04
	cmp $e1
	beq Lbl_d04a
	sta $e1
	lda $df
	bmi Lbl_d04a
	clc 
	adc #$08
	sta $df

Lbl_d04a:
	lda $df
	beq Lbl_d06f
	ldx #$03
	cmp #$40
	bcc Lbl_d055
	dex 

Lbl_d055:
	stx $4d
	lda #$78
	sta $49
	lda #$2a
	sta $4a
	lda #$cc
	sta $4b
	lda #$01
	jsr Lbl_c5a6
	dec $df
	bne Lbl_d06f
	jsr Lbl_d4c3

Lbl_d06f:
	lda $0d
	bne Lbl_d0a5
	ldx #$0b

Lbl_d075:
	lda Lbl_d119,x
	sta $07f4,x
	dex 
	bpl Lbl_d075
	lda #$e0
	sta $00
	lda #$0c
	sta $4c
	lda #$03
	sta $02
	ldx #$78
	ldy #$b8
	jsr Lbl_c907
	lda #$ec
	sta $00
	ldx #$6e
	lda $0254
	jsr Lbl_c925
	ldx #$92
	lda $0262
	jsr Lbl_c925

Lbl_d0a5:
	ldx #$0b
	jsr Lbl_ed61
	bcc Lbl_d0dd
	ldx #$03

Lbl_d0ae:
	lda Lbl_d115,x
	sta $07c8,x
	dex 
	bpl Lbl_d0ae
	ldx #$6e
	ldy #$20
	jsr Lbl_c8fb
	ldx #$d0
	ldy #$10
	jsr Lbl_c463
	lda $0240
	beq Lbl_d0dd
	sta $4b
	lda #$7a
	sta $49
	lda #$c4
	sta $4a
	lda #$03
	sta $4d
	lda #$33
	jsr Lbl_c56d

Lbl_d0dd:
	lda $0240
	bne Lbl_d0e7
	lda #$33
	jsr Lbl_c55a

Lbl_d0e7:
	lda $d4
	beq Lbl_d125
	lda $3f
	bne Lbl_d145
	lda $ca
	bne Lbl_d145
	jsr Lbl_d110
	beq Lbl_d145
	jsr Lbl_c2c1
	dec $cf

Lbl_d0fd:
	jsr Lbl_d110
	bne Lbl_d0fd

Lbl_d102:
	jsr Lbl_d110
	beq Lbl_d102
	jsr Lbl_c2c1
	jsr Lbl_c32c
	jmp Lbl_d145

Lbl_d110:
	lda $50
	and #$10
	rts 

Lbl_d115:
	.byte $20,$55,$00,$62

Lbl_d119:
	.byte $b8,$64,$00,$6c,$d0,$44,$00,$62,$d0,$86,$00,$86

Lbl_d125:
	lda $50
	and #$30
	beq Lbl_d12e
	jmp Lbl_c719

Lbl_d12e:
	inc $56
	lda $56
	and #$3f
	bne Lbl_d144
	inc $10
	inc $b6
	inc $b6
	lda $11
	cmp #$14
	beq Lbl_d144
	inc $11

Lbl_d144:
	rts 

Lbl_d145:
	ldx #$00

Lbl_d147:
	lda $026e,x
	cmp $0268,x
	bcc Lbl_d158
	bne Lbl_d163
	inx 
	cpx #$06
	bne Lbl_d147
	beq Lbl_d163

Lbl_d158:
	ldx #$05

Lbl_d15a:
	lda $0268,x
	sta $026e,x
	dex 
	bpl Lbl_d15a

Lbl_d163:
	ldx $50
	txa 
	and #$80
	beq Lbl_d173
	lda $c7
	bne Lbl_d175
	inc $c7
	inc $10
	rts 

Lbl_d173:
	sta $c7

Lbl_d175:
	txa 
	and #$40
	beq Lbl_d18e
	lda $c8
	bne Lbl_d190
	lda $0361
	bpl Lbl_d190
	lda $12
	and #$03
	bne Lbl_d190
	inc $c8
	dec $10
	rts 

Lbl_d18e:
	sta $c8

Lbl_d190:
	rts 

Lbl_d191:
	jsr Lbl_d01a

Lbl_d194:
	ldy #$13
	jmp Lbl_c043

Lbl_d199:
	lda $a5
	and #$03
	bne Lbl_d1a5
	jsr Lbl_ce2d
	jsr Lbl_d200

Lbl_d1a5:
	lda $a5
	cmp #$05
	bne Lbl_d1da
	jsr Lbl_d24c
	ldx $d8
	bmi Lbl_d1da
	dec $d8
	beq Lbl_d1db
	lda $04b6
	bpl Lbl_d1da
	txa 
	and #$07
	tax 
	ldy #$0b
	sty $d2
	lda Lbl_d1f8,x
	jsr Lbl_c4f9
	lda #$00

Lbl_d1cb:
	clc 
	adc $0280,y
	sta $0281
	lda $035e,y
	adc #$00
	sta $035f

Lbl_d1da:
	rts 

Lbl_d1db:
	lda #$03
	jsr Lbl_ce20
	lda #$00
	sta $d5
	sta $d2

Lbl_d1e6:
	lda #$ff
	sta $0369
	sta $036a
	lda #$23
	sta $0267
	lda #$04
	sta $07
	rts 

Lbl_d1f8:
	.byte $00,$00,$32,$1e,$0a,$28,$00,$14

Lbl_d200:
	lda $024c
	cmp #$24
	bcs Lbl_d216
	lda $024d
	cmp #$2b
	bcs Lbl_d216
	cmp #$28
	bcs Lbl_d21c
	ldx #$02
	bne Lbl_d228

Lbl_d216:
	ldx #$05
	ldy #$10
	bne Lbl_d220

Lbl_d21c:
	ldx #$07
	ldy #$18

Lbl_d220:
	sty $3c
	stx $b9

Lbl_d224:
	lda #$01
	sta $55

Lbl_d228:
	rts 

Lbl_d229:
	.byte $ad,$d8,$03,$d0,$16,$ad,$fa,$02,$c9,$5c,$b0,$0f,$ad,$69,$03,$30
	.byte $0a,$a5,$d8,$10,$06,$a9,$0f,$85,$d8,$e6,$d7

Lbl_d244:
	rts 

Lbl_d245:
	.byte $1f,$1f,$1f,$3f,$7f,$7f,$ff

Lbl_d24c:
	lda $036b
	bmi Lbl_d244
	lda $bc
	bmi Lbl_d29c
	lda $bb
	beq Lbl_d229
	bmi Lbl_d29f
	jsr Lbl_d8a7
	beq Lbl_d244
	ldx $bd
	lda Lbl_d245,x
	and $12
	bne Lbl_d244
	ldx $bb
	cpx #$16
	bcs Lbl_d279
	inc $bb
	cpx #$0f
	bne Lbl_d278
	jsr Lbl_ce1e

Lbl_d278:
	rts 

Lbl_d279:
	lda $03d8
	cmp #$03
	bcc Lbl_d284
	cmp #$07
	bcc Lbl_d278

Lbl_d284:
	lda #$0f
	sta $bc
	lda #$0c
	sta $ba
	lda #$be
	sta $bb
	jsr Lbl_ce1e

Lbl_d293:
	lda $ca
	bne Lbl_d29b
	lda #$15
	sta $ce

Lbl_d29b:
	rts 

Lbl_d29c:
	jmp Lbl_d650

Lbl_d29f:
	ldx #$0d
	jsr Lbl_edd5
	ldx #$0e
	jsr Lbl_edd5
	dec $bb
	bmi Lbl_d2bb
	lda #$83
	sta $bb
	ldx #$0d
	jsr Lbl_ede0
	ldx #$0e
	jsr Lbl_ede0

Lbl_d2bb:
	lda $036b
	bne Lbl_d2cb
	lda $028d
	cmp #$64
	bcs Lbl_d2cb
	lda #$00
	sta $bb

Lbl_d2cb:
	rts 

Lbl_d2cc:
	ldx #$01
	jsr Lbl_d561
	lda #$7c
	sta $043d
	rts 

Lbl_d2d7:
	lda $024c
	cmp #$24
	bcs Lbl_d2e3
	lda $bd
	beq Lbl_d2e8
	rts 

Lbl_d2e3:
	pla 
	pla 
	jmp Lbl_cf8f

Lbl_d2e8:
	pla 
	pla 
	rts 

Lbl_d2eb:
	lda $07
	beq Lbl_d2fe
	bmi Lbl_d317
	lda $08
	bmi Lbl_d2ff
	cmp #$51
	bne Lbl_d2f9

Lbl_d2f9:
	jsr Lbl_d30a
	inc $08

Lbl_d2fe:
	rts 

Lbl_d2ff:
	lda #$00
	sta $07
	sta $ad
	lda #$01
	sta $ab
	rts 

Lbl_d30a:
	lda $08
	beq Lbl_d316
	ldy #$00

Lbl_d310:
	iny 
	rol a 
	bcc Lbl_d310
	sty $ab

Lbl_d316:
	rts 

Lbl_d317:
	lda $08
	beq Lbl_d32c
	dec $08
	lda #$00
	sta $11
	jsr Lbl_d30a
	lda $08
	cmp #$50
	bne Lbl_d33a
	beq Lbl_d33b

Lbl_d32c:
	lda #$00
	sta $07
	sta $11
	lda #$fa
	sta $ab
	lda #$0a
	sta $ac

Lbl_d33a:
	rts 

Lbl_d33b:
	lda $af
	cmp #$02
	beq Lbl_d34c
	lda #$00
	sta $db
	jsr Lbl_d224
	lda #$40
	bne Lbl_d34e

Lbl_d34c:
	lda #$80

Lbl_d34e:
	sta $ad
	lda #$01
	sta $0a
	jmp Lbl_d4bf

Lbl_d357:
	lda $0369
	bmi Lbl_d38f
	lda $0f
	bne Lbl_d38f
	lda $af
	cmp #$0b
	bne Lbl_d38f
	lda $ae
	cmp #$24
	bcc Lbl_d38f
	cmp #$33
	bcs Lbl_d38f
	jsr Lbl_ee66
	clc 
	lda $27
	adc #$0a
	sta $27
	bcc Lbl_d37e
	inc $28

Lbl_d37e:
	ldx #$0c
	jsr Lbl_e665
	lda $28
	bne Lbl_d38f
	lda $27
	cmp #$1e
	bcs Lbl_d38f

Lbl_d38d:
	sec 
	rts 

Lbl_d38f:
	lda $af
	cmp #$02
	bne Lbl_d3ad
	lda $b1
	bne Lbl_d3ad
	lda $ae
	cmp #$58
	bcc Lbl_d3ad
	cmp #$ad
	bcs Lbl_d3ad
	lda $b0
	cmp #$d4
	bcc Lbl_d3ad
	cmp #$f8
	bcc Lbl_d38d

Lbl_d3ad:
	clc 
	rts 

Lbl_d3af:
	lda $b6
	cmp #$04
	bcc Lbl_d3bd
	cmp #$44
	bcc Lbl_d3c1
	lda #$04
	bne Lbl_d3bf

Lbl_d3bd:
	lda #$43

Lbl_d3bf:
	sta $b6

Lbl_d3c1:
	ldy $3d
	lda Lbl_d3fe,y
	jsr Lbl_d422
	lda $48
	lsr a 
	lsr a 
	sta $47
	lda Lbl_d410,y
	jsr Lbl_d422
	lsr $48
	lsr $48
	lda Lbl_d3fe,y
	bmi Lbl_d3e4
	lda $47
	ora #$80
	bne Lbl_d3e9

Lbl_d3e4:
	sec 
	lda #$80
	sbc $47

Lbl_d3e9:
	sta $45
	lda Lbl_d410,y
	bmi Lbl_d3f6
	lda $48
	ora #$80
	bne Lbl_d3fb

Lbl_d3f6:
	sec 
	lda #$80
	sbc $48

Lbl_d3fb:
	sta $46
	rts 

Lbl_d3fe:
	.byte $00,$85,$83,$00,$03,$05,$07,$08,$07,$05,$03,$00,$83,$85,$87,$88
	.byte $87,$85

Lbl_d410:
	.byte $00,$84,$85,$86,$85,$84,$82,$00,$02,$04,$05,$06,$05,$04,$02,$00
	.byte $82,$84

Lbl_d422:
	and #$7f
	sta $29
	lda #$00
	sta $48
	ldx #$08

Lbl_d42c:
	lsr $29
	bcc Lbl_d433
	clc 
	adc $11

Lbl_d433:
	ror a 
	ror $48
	dex 
	bne Lbl_d42c
	rts 

Lbl_d43a:
	lda $b6
	lsr a 
	lsr a 
	sta $3d
	tax 
	clc 
	adc #$4f
	sta $b3
	clc 
	lda $aa
	adc #$07
	sta $b5
	clc 
	lda $a9
	adc #$2a
	sta $b4
	rts 

Lbl_d455:
	lda $0a
	bne Lbl_d4bf

Lbl_d459:
	lda $10
	beq Lbl_d469
	lda $ad
	beq Lbl_d46a
	lda #$01
	sta $07

Lbl_d465:
	lda #$00
	sta $10

Lbl_d469:
	rts 

Lbl_d46a:
	lda $11
	cmp #$04
	bcs Lbl_d47f
	lda $38
	bne Lbl_d47f
	jsr Lbl_d357
	bcc Lbl_d47f
	lda #$80
	sta $07
	bne Lbl_d465

Lbl_d47f:
	lda $10
	bpl Lbl_d486
	jmp Lbl_d5c9

Lbl_d486:
	lda $b4
	sta $1f
	lda $b5
	sta $20
	lda #$00
	sta $0b
	ldx $3d
	stx $3e
	lda Lbl_d4ad,x
	sta $0a
	lda #$00
	sta $10
	jsr Lbl_d4bf
	lda $ce
	bne Lbl_d4ac
	lda $ca
	bne Lbl_d4ac
	inc $ce

Lbl_d4ac:
	rts 

Lbl_d4ad:
	.byte $ff,$16,$14,$12,$14,$16,$12,$0e,$12,$16,$16,$14,$16,$16,$12,$0e
	.byte $12,$16

Lbl_d4bf:
	dec $0a
	bne Lbl_d4c8

Lbl_d4c3:
	lda #$01
	jmp Lbl_c589

Lbl_d4c8:
	ldx $3e
	ldy #$00
	lda Lbl_d53d,x
	jsr Lbl_d524
	bcc Lbl_d4d6
	inc $0b

Lbl_d4d6:
	iny 
	lda Lbl_d54f,x
	jsr Lbl_d524
	lda $df
	beq Lbl_d4e9
	inc $e0
	lda $e0
	and #$01
	beq Lbl_d4ec

Lbl_d4e9:
	jsr Lbl_f0ee

Lbl_d4ec:
	jsr Lbl_d70e
	bcc Lbl_d523
	lda $65,x
	cmp #$0a
	beq Lbl_d4ff
	cmp #$04
	beq Lbl_d4ff
	cmp #$15
	bcc Lbl_d523

Lbl_d4ff:
	ldy #$00
	sty $0a
	pha 
	lda #$01
	jsr Lbl_c589
	pla 

Lbl_d50a:
	jsr Lbl_e621
	cpx #$33
	bcs Lbl_d523
	cpx #$15
	bcc Lbl_d523
	lda $051a,x
	and #$3f
	tax 
	lda $0667,x
	and #$7f
	sta $0667,x

Lbl_d523:
	rts 

Lbl_d524:
	bmi Lbl_d52e
	clc 
	adc a:$001f,y
	sta a:$001f,y
	rts 

Lbl_d52e:
	and #$7f
	sta $29
	sec 
	lda a:$001f,y
	sbc $29
	sta a:$001f,y
	clc 
	rts 

Lbl_d53d:
	.byte $ff,$04,$03,$00,$83,$84,$86,$88,$86,$84,$83,$00,$03,$04,$06,$08
	.byte $06,$04

Lbl_d54f:
	.byte $ff,$04,$05,$06,$05,$04,$02,$00,$82,$84,$85,$86,$85,$84,$82,$00
	.byte $02,$04

Lbl_d561:
	jsr Lbl_c5a1
	txa 
	pha 
	ldx #$00
	jsr Lbl_d576
	pla 
	clc 
	adc #$6f
	inx 
	jsr Lbl_d576
	jmp Lbl_c59c

Lbl_d576:
	tay 
	clc 
	lda $b4,x
	cpx #$00
	beq Lbl_d57f
	inx 

Lbl_d57f:
	adc Lbl_d5bd,x
	sta $29
	lda Lbl_d5c0,x
	adc #$00
	sta $2a
	clc 
	lda $ae,x
	adc $29
	sta $0280,y
	lda $af,x
	adc $2a
	sta $035e,y
	cmp Lbl_d5c3,x
	bcc Lbl_d5bc
	bne Lbl_d5a9
	lda $0280,y
	cmp Lbl_d5c6,x
	bcc Lbl_d5bc

Lbl_d5a9:
	sec 
	lda $0280,y
	sbc Lbl_d5c6,x
	sta $0280,y
	lda $035e,y
	sbc Lbl_d5c3,x
	sta $035e,y

Lbl_d5bc:
	rts 

Lbl_d5bd:
	.byte $32,$00,$a2

Lbl_d5c0:
	.byte $01,$00,$00

Lbl_d5c3:
	.byte $0c,$00,$07

Lbl_d5c6:
	.byte $80,$00,$d0

Lbl_d5c9:
	lda $0254
	cmp #$24
	bcc Lbl_d5e2
	dec $0254
	lda #$7d
	sta $043f
	ldx #$03
	jsr Lbl_d561
	lda #$20
	sta $04ae

Lbl_d5e2:
	lda #$00
	sta $10
	rts 

Lbl_d5e7:
	jsr Lbl_e700
	jsr Lbl_d455
	jsr Lbl_d43a
	jsr Lbl_d01a
	ldy #$0f

Lbl_d5f5:
	lda a:$0065,y
	cmp #$03
	beq Lbl_d600
	dey 
	bpl Lbl_d5f5
	rts 

Lbl_d600:
	ldx #$03
	jsr Lbl_e3b5
	lda $043f
	cmp #$7e
	bne Lbl_d611
	pha 
	jsr Lbl_c50d
	pla 

Lbl_d611:
	cmp #$82
	bne Lbl_d61a
	jsr Lbl_d6fe
	bcs Lbl_d62c

Lbl_d61a:
	rts 

Lbl_d61b:
	lda $b4
	sta $25
	lda $b5
	sta $27
	lda #$00
	sta $03
	jsr Lbl_d71a
	bcc Lbl_d63a

Lbl_d62c:
	lda $65,x
	cmp #$15
	bcs Lbl_d63b
	cmp #$0f
	bcs Lbl_d68e
	cmp #$0d
	bcs Lbl_d644

Lbl_d63a:
	rts 

Lbl_d63b:
	cmp #$59
	bcs Lbl_d642
	jmp Lbl_d50a

Lbl_d642:
	clc 
	rts 

Lbl_d644:
	lda $bb
	bpl Lbl_d66f
	dec $bc
	lda $bc
	and #$03
	bne Lbl_d675

Lbl_d650:
	dec $ba
	beq Lbl_d664
	ldy #$0d
	ldx $ba
	lda Lbl_d682,x
	jsr Lbl_c4f9
	lda Lbl_d676,x
	jmp Lbl_d1cb

Lbl_d664:
	lda #$ff
	sta $036b
	sta $036c
	jmp Lbl_d6ef

Lbl_d66f:
	dec $bb
	bne Lbl_d675
	inc $bb

Lbl_d675:
	rts 

Lbl_d676:
	.byte $18,$18,$18,$28,$10,$10,$20,$30,$18,$28,$10,$20

Lbl_d682:
	.byte $0e,$0e,$0e,$0a,$08,$06,$06,$08,$06,$06,$06,$0e

Lbl_d68e:
	tax 
	dec $0698,x
	bpl Lbl_d675
	lda $0280,x
	clc 
	adc #$08
	sta $0287
	lda $035e,x
	adc #$00
	sta $0365
	lda $02ef,x
	clc 
	adc #$08
	sta $02f6
	lda $03cd,x
	adc #$00
	sta $03d4
	jsr Lbl_dddb
	lda #$7c
	sta $0443
	lda #$04
	sta $0521
	lda #$32
	sta $04b2
	dec $0262
	ldy #$0c

Lbl_d6cd:
	lda $0240,y
	cmp #$23
	bne Lbl_d6ef
	iny 
	cpy #$0f
	bne Lbl_d6cd
	inc $da
	lda $da
	and #$07
	tay 
	lda Lbl_c026,y
	sta $db
	jsr Lbl_d224
	jsr Lbl_d6f7
	lda #$05
	bne Lbl_d6f1

Lbl_d6ef:
	lda #$01

Lbl_d6f1:
	jsr Lbl_ce20
	jsr Lbl_c515

Lbl_d6f7:
	lda #$05
	ldy #$2a
	jmp Lbl_e5f1

Lbl_d6fe:
	lda a:$0085,y
	sta $25
	lda a:$0095,y
	sta $27
	lda #$00
	sta $03
	beq Lbl_d71a

Lbl_d70e:
	lda $1f
	sta $25
	lda $20
	sta $27
	lda #$00
	sta $03

Lbl_d71a:
	ldx #$07
	bne Lbl_d724

Lbl_d71e:
	dex 
	cpx #$03
	bcs Lbl_d724
	rts 

Lbl_d724:
	lda $65,x
	bmi Lbl_d71e
	beq Lbl_d71e
	cmp #$04
	bcc Lbl_d740
	lda $34
	and Lbl_e6cd,x
	beq Lbl_d73b
	jsr Lbl_d784
	bcc Lbl_d740
	rts 

Lbl_d73b:
	jsr Lbl_d77a
	bcs Lbl_d772

Lbl_d740:
	lda $6d,x
	beq Lbl_d71e
	bmi Lbl_d71e
	cmp #$04
	bcc Lbl_d71e
	lda $09
	and Lbl_e6cd,x
	beq Lbl_d71e
	stx $03
	lda $35
	and Lbl_e6cd,x
	beq Lbl_d766
	jsr Lbl_d774
	jsr Lbl_d784
	bcs Lbl_d772
	ldx $03
	bcc Lbl_d71e

Lbl_d766:
	jsr Lbl_d774
	jsr Lbl_d77a
	bcs Lbl_d772
	ldx $03
	bcc Lbl_d71e

Lbl_d772:
	sec 
	rts 

Lbl_d774:
	txa 
	clc 
	adc #$08
	tax 
	rts 

Lbl_d77a:
	lda #$f6
	sta $2a
	lda #$0a
	sta $29
	bne Lbl_d78c

Lbl_d784:
	lda #$f0
	sta $2a
	lda #$1e
	sta $29

Lbl_d78c:
	sec 
	lda $27
	sbc $95,x
	cmp $2a
	bcs Lbl_d79b
	cmp $29
	bcc Lbl_d79b
	clc 
	rts 

Lbl_d79b:
	cpx #$08
	bcc Lbl_d7a3
	lda $37
	bcs Lbl_d7a5

Lbl_d7a3:
	lda $36

Lbl_d7a5:
	and Lbl_e6cd,x
	beq Lbl_d7ae
	lda #$01
	bne Lbl_d7b0

Lbl_d7ae:
	lda #$00

Lbl_d7b0:
	sta $04
	sec 
	lda $25
	sbc $85,x
	sta $05
	lda $03
	sbc $04
	beq Lbl_d7c7
	lda $05
	cmp $2a
	bcs Lbl_d7cd

Lbl_d7c5:
	clc 
	rts 

Lbl_d7c7:
	lda $05
	cmp $29
	bcs Lbl_d7c5

Lbl_d7cd:
	sec 
	rts 

Lbl_d7cf:
	.byte $a2,$6e,$a9,$84,$85,$40,$a9,$19,$85,$05,$a9,$28,$85,$06,$bd,$5e
	.byte $03,$30,$18,$bd,$ab,$04,$30,$10,$bd,$3c,$04,$a8,$b9,$41,$da,$20
	.byte $d7,$ed,$b9,$4d,$da,$20,$e2,$ed,$20,$81,$dc,$ca,$e0,$59,$b0,$de
	.byte $60

Lbl_d800:
	lda $11
	cmp #$05
	bcs Lbl_d80b
	ldy #$09
	jsr Lbl_c043

Lbl_d80b:
	jsr Lbl_e4b7
	dec $a5
	bne Lbl_d816
	lda #$08
	sta $a5

Lbl_d816:
	lda $a5
	cmp #$05
	beq Lbl_d7cf
	cmp #$02
	beq Lbl_d829
	cmp #$07
	beq Lbl_d83e
	cmp #$06
	beq Lbl_d82f

Lbl_d828:
	rts 

Lbl_d829:
	jsr Lbl_da43
	jmp Lbl_d9f2

Lbl_d82f:
	jsr Lbl_dba8
	lda $0f
	beq Lbl_d838
	dec $0f

Lbl_d838:
	jsr Lbl_d9e7
	jmp Lbl_d8da

Lbl_d83e:
	dec $12
	lda $12
	and #$3f
	bne Lbl_d828
	lda #$ff
	sta $0366
	ldx #$14
	ldy #$00

Lbl_d84f:
	lda $035e,x
	bmi Lbl_d855
	iny 

Lbl_d855:
	dex 
	cpx #$0f
	bcs Lbl_d84f
	tya 
	beq Lbl_d873
	lda $d4
	beq Lbl_d871
	lda $d3
	cmp #$03
	bcs Lbl_d871
	lda $bb
	beq Lbl_d871
	bmi Lbl_d871
	lda $c9
	beq Lbl_d873

Lbl_d871:
	ldy #$01

Lbl_d873:
	lda Lbl_d8c5,y
	sta $be
	lda Lbl_d8d3,y
	sta $bf
	lda Lbl_d8cc,y
	sta $c0
	sty $bd
	ldx #$05

Lbl_d886:
	lda $036d,x
	bmi Lbl_d8a1
	inc $06a7,x
	lda $06a7,x
	cmp Lbl_d8b7,y
	bcc Lbl_d8a1
	jsr Lbl_c9d5
	ldy $bd
	lda Lbl_d8be,y
	sta $06a7,x

Lbl_d8a1:
	dex 
	bpl Lbl_d886
	jmp Lbl_d942

Lbl_d8a7:
	lda $c9
	bne Lbl_d8b3
	lda $d4
	beq Lbl_d8b4
	lda $d3
	cmp #$01

Lbl_d8b3:
	rts 

Lbl_d8b4:
	lda #$01
	rts 

Lbl_d8b7:
	.byte $00,$16,$16,$16,$16,$16,$14

Lbl_d8be:
	.byte $00,$14,$12,$10,$0e,$0c,$0a

Lbl_d8c5:
	.byte $59,$59,$59,$67,$67,$69,$6e

Lbl_d8cc:
	.byte $01,$01,$01,$03,$03,$07,$07

Lbl_d8d3:
	.byte $ff,$ff,$ff,$ff,$14,$0b,$06

Lbl_d8da:
	lda $036a
	bpl Lbl_d8e3
	lda #$00
	beq Lbl_d914

Lbl_d8e3:
	jsr Lbl_ee66
	clc 
	lda $27
	adc #$08
	sta $27
	bcc Lbl_d8f1
	inc $28

Lbl_d8f1:
	sec 
	lda $25
	sbc #$01
	sta $25
	bcs Lbl_d8fc
	dec $26

Lbl_d8fc:
	ldx #$0c
	jsr Lbl_e665
	inc $03
	lda $26
	bne Lbl_d909
	dec $03

Lbl_d909:
	lda $28
	bne Lbl_d90f
	inc $03

Lbl_d90f:
	ldx $03
	lda Lbl_d933,x

Lbl_d914:
	sta $0240
	lda $036a
	bmi Lbl_d932
	lda $028c
	and #$f0
	ora $036a
	sta $06c0
	lda $02fb
	and #$f8
	ora $03d9
	sta $06d5

Lbl_d932:
	rts 

Lbl_d933:
	.byte $d2,$d7,$d3,$d3,$c2,$c7,$d3,$d2,$d2,$d6,$c3,$c3,$c2,$c6,$c3

Lbl_d942:
	lda $39
	beq Lbl_d949
	dec $39
	rts 

Lbl_d949:
	lda $bd
	eor #$07
	asl a 
	asl a 
	asl a 
	clc 
	adc #$20
	sta $54
	jsr Lbl_c412
	cmp $54
	bcs Lbl_d992
	lda $036a
	bmi Lbl_d992
	ldy #$02
	ldx #$6e

Lbl_d965:
	lda $035e,x
	bmi Lbl_d979
	lda $04ab,x
	and #$01
	bne Lbl_d979
	lda #$13
	sta $051a,x
	dey 
	beq Lbl_d97e

Lbl_d979:
	dex 
	cpx #$59
	bcs Lbl_d965

Lbl_d97e:
	jsr Lbl_d8a7
	beq Lbl_d987
	lda #$28
	bne Lbl_d989

Lbl_d987:
	lda #$46

Lbl_d989:
	sta $d9
	clc 
	lda $bd
	adc #$02
	sta $39

Lbl_d992:
	rts 

Lbl_d993:
	lda $a5
	cmp #$07
	bne Lbl_d9a3
	lda $043c,x
	cmp #$7b
	beq Lbl_d9a5
	inc $043c,x

Lbl_d9a3:
	bne Lbl_d9af

Lbl_d9a5:
	lda #$74
	sta $043c,x
	lda #$03
	jsr Lbl_d9b2

Lbl_d9af:
	jmp Lbl_e320

Lbl_d9b2:
	sta $03
	lda $0280,x
	and #$f0
	ora $035e,x
	sta $06bf
	lda $02ef,x
	and #$f8
	ora $03cd,x
	sta $06d4
	ldx #$6e

Lbl_d9cc:
	lda $035e,x
	bmi Lbl_d9e1
	lda $04ab,x
	and #$01
	beq Lbl_d9e1
	lda #$12
	sta $051a,x
	dec $03
	beq Lbl_d9e6

Lbl_d9e1:
	dex 
	cpx #$59
	bcs Lbl_d9cc

Lbl_d9e6:
	rts 

Lbl_d9e7:
	ldx #$0b
	jsr Lbl_ede0
	ldx #$0c
	jsr Lbl_ede0
	rts 

Lbl_d9f2:
	lda #$00
	sta $2f
	sta $30
	ldy #$58

Lbl_d9fa:
	lda $035e,y
	bmi Lbl_da0a
	lda $04ab,y
	and #$40
	beq Lbl_da0a
	tya 
	jsr Lbl_dd6b

Lbl_da0a:
	dey 
	cpy #$55

Lbl_da0d:
	.byte $b0,$eb,$a9,$84,$85,$40,$a9,$05,$85,$05,$85,$06

Lbl_da19:
	.byte $a2,$58

Lbl_da1b:
	lda $035e,x
	bmi Lbl_da3d
	lda $04ab,x
	and #$40
	beq Lbl_da3a
	sec 
	lda $043c,x
	sbc #$84
	tay 
	lda Lbl_da8d,y
	jsr Lbl_edd7
	lda Lbl_da99,y
	jsr Lbl_ede2

Lbl_da3a:
	jsr Lbl_dd80

Lbl_da3d:
	dex 
	cpx #$55
	bcs Lbl_da1b
	rts 

Lbl_da43:
	ldx #$54
	lda #$68
	sta $40
	lda #$0a
	sta $05
	lda #$10
	sta $06

Lbl_da51:
	lda $035e,x
	bmi Lbl_da6f
	lda $043c,x
	tay 
	lda Lbl_da0d,y
	jsr Lbl_edd7
	lda Lbl_da19,y
	jsr Lbl_ede2
	lda $12
	and #$03
	bne Lbl_da6f
	jsr Lbl_debb

Lbl_da6f:
	dex 
	cpx #$3d
	bcs Lbl_da51
	rts 

Lbl_da75:
	.byte $00,$02,$04,$04,$04,$02,$00,$82,$84,$84,$84,$82,$84,$84,$82,$00
	.byte $02,$04,$04,$04,$02,$00,$82,$84

Lbl_da8d:
	.byte $00,$02,$04,$04,$04,$02,$00,$82,$84,$84,$84,$82

Lbl_da99:
	.byte $84,$84,$82,$00,$02,$04,$04,$04,$02,$00,$82,$84,$00,$04,$00,$84
	.byte $83,$00,$03,$00,$00,$03,$05,$06,$05,$03,$00,$83,$85,$86,$85,$83
	.byte $85,$84,$82,$00,$02,$04,$05,$04,$02,$00,$82,$84,$00,$0d,$17,$1a
	.byte $17,$0d,$00,$8d,$97,$9a,$97,$8d,$96,$93,$8b,$00,$0b,$13,$16,$13
	.byte $0b,$00,$8b,$93

Lbl_dadd:
	.byte $05,$0a,$04,$08,$c1,$23,$41,$25,$84,$06,$45,$c6,$c7,$29,$48,$46
	.byte $ca,$cb,$05,$05,$00,$05,$bd,$c9,$36,$32,$44,$45,$25,$82,$43,$c6
	.byte $47,$84,$c2,$03,$41,$c0,$80,$c3,$05,$00

Lbl_db07:
	.byte $00,$0b,$0a,$01,$0a,$0b,$0c,$0b,$0a,$09,$03,$09,$0a,$0b,$0c,$08
	.byte $07,$06,$05,$02,$05,$06,$07,$08,$0d,$08,$07,$06,$04,$06,$07,$08
	.byte $0d,$01,$0f,$07,$19

Lbl_db2c:
	.byte $0b,$aa,$54,$ca,$74,$54,$74,$b4,$c4,$ca,$aa,$8a,$0a,$04,$00

Lbl_db3b:
	.byte $c1,$8d,$1a,$95,$1a,$0a,$0a,$02,$d9,$a5,$a5,$c5,$c5,$d9

Lbl_db49:
	.byte $00,$00,$0b,$0c,$01,$00,$0e,$0f,$09,$00,$11,$12,$02,$00,$10,$0a
	.byte $00,$14,$13,$03,$00,$15,$04,$00,$16,$17,$18,$05,$00,$1c,$1b,$0d
	.byte $00,$1a,$19,$06,$00

Lbl_db6e:
	.byte $00,$73,$b5,$27,$73,$b9,$5b,$00,$00,$93,$d5,$f3,$a3,$b9,$44,$c3
	.byte $84,$55,$06,$d6,$86,$91,$e8,$0a,$49,$ab,$2a,$ca,$0b

Lbl_db8b:
	.byte $00,$ca,$3a,$6c,$46,$c6,$79,$00,$00,$ca,$52,$a3,$c3,$c6,$12,$f1
	.byte $02,$03,$7a,$65,$35,$9e,$a6,$77,$bf,$e1,$42,$ad,$ee

Lbl_dba8:
	ldx #$3c

Lbl_dbaa:
	lda $035e,x
	bmi Lbl_dbc2
	lda $043c,x
	tay 
	lda Lbl_da09,y
	jsr Lbl_edd7
	lda Lbl_da0d,y
	jsr Lbl_ede2
	jsr Lbl_dbc8

Lbl_dbc2:
	dex 
	cpx #$33
	bcs Lbl_dbaa
	rts 

Lbl_dbc8:
	lda $051a,x

Lbl_dbcb:
	.byte $a8,$b9,$49,$db,$a8,$b9,$8b,$db,$85,$28,$b9,$6e,$db,$20,$20,$e0
	.byte $20,$65,$e6,$a5,$28,$d0,$06,$a5,$27,$c9,$14,$90,$0e

Lbl_dbe8:
	lda $03
	and #$04
	beq Lbl_dbf2
	lda #$9e
	bne Lbl_dc0c

Lbl_dbf2:
	lda #$9c
	bne Lbl_dc0c

Lbl_dbf6:
	lda $26
	bne Lbl_dc00
	lda $25
	cmp #$14
	bcc Lbl_dc10

Lbl_dc00:
	lda $03
	and #$08
	beq Lbl_dc0a
	lda #$9d
	bne Lbl_dc0c

Lbl_dc0a:
	lda #$9f

Lbl_dc0c:
	sta $043c,x
	rts 

Lbl_dc10:
	inc $051a,x
	lda $051a,x
	tay 
	lda Lbl_db49,y
	bne Lbl_dc38
	dey 
	stx $27
	lda Lbl_db49,y
	and #$07
	tax 
	inc $06a6,x
	inc $06a6,x
	ldx $27

Lbl_dc2d:
	dey 
	lda Lbl_db49,y
	bne Lbl_dc2d
	iny 
	tya 
	sta $051a,x

Lbl_dc38:
	rts 

Lbl_dc39:
	.byte $ad,$af,$04,$30,$1c,$a4,$29,$a9,$04,$20,$39,$e0,$b9,$5b,$dc,$8d
	.byte $40,$04,$a9,$20,$8d,$af,$04,$b9,$67,$dc,$85,$41,$b9,$74,$dc,$85
	.byte $42,$60,$a0,$a1,$a1,$a2,$a3,$a3,$a4,$a5,$a5,$a6,$a7,$a7,$00,$06
	.byte $0c,$0e,$0c,$06,$00,$86,$8c,$8e,$8c,$86,$00,$8a,$88,$84,$00,$04
	.byte $08,$0a,$08,$04,$00,$84,$88,$8a,$20,$57,$e1,$f0,$06,$a5,$df,$c9
	.byte $40,$b0,$22,$bd,$ab,$04,$10,$41,$4a,$90,$3e,$a5,$09,$d0,$2a,$bd
	.byte $1a,$05,$c9,$05,$90,$33,$a5,$bd,$0a,$18,$69,$05,$85,$54,$20,$12
	.byte $c4,$c5,$54,$90,$14,$20,$66,$ee,$20,$31,$de,$b0,$0d,$b9,$fc,$de
	.byte $c5,$29,$d0,$05,$a5,$12,$4a,$b0,$09,$60,$38,$bd,$3c,$04,$e9,$84
	.byte $85,$29,$a5,$b3,$30,$f3,$4c,$39,$dc,$bd,$1a,$05,$a8,$b9,$c2,$06
	.byte $85,$28,$b9,$ad,$06,$20,$20,$e0,$20,$31,$de,$90,$dc,$bd,$1a,$05
	.byte $c9,$05,$90,$11,$c9,$13,$f0,$18

Lbl_dcf1:
	jsr Lbl_c412
	lsr a 
	and #$0f
	clc 
	adc #$03
	sta $051a,x
	rts 

Lbl_dcfe:
	.byte $c9,$03,$90,$3b,$de,$1a,$05,$de,$1a,$05,$60,$bd,$ab,$04,$10,$0d
	.byte $a9,$01,$20,$39,$e0,$a9,$7c,$8d,$3d,$04,$20,$0d,$c5,$ad,$6a,$03
	.byte $30,$17,$a5,$a6,$30,$08,$a9,$04,$20,$20,$ce,$20,$93,$d2,$a9,$1e
	.byte $85,$0f,$c6,$d9,$10,$08,$4c,$3a,$d2,$a9,$0a,$9d,$1a,$05,$60,$a0
	.byte $58,$bd,$1a,$05,$4a,$90,$01,$88,$b9,$5e,$03,$30,$09,$88,$88,$c0
	.byte $55,$b0,$f5,$4c,$f1,$dc,$bd,$1a,$05,$20,$6b,$dd,$90,$f5,$bd,$ab
	.byte $04,$10,$00,$20,$19,$de,$b9,$d3,$da,$99,$1a,$05,$60

Lbl_dd6b:
	lsr a 
	bcc Lbl_dd76
	lda $30
	bne Lbl_dd7e
	inc $30
	sec 
	rts 

Lbl_dd76:
	lda $2f
	bne Lbl_dd7e
	inc $2f
	sec 
	rts 

Lbl_dd7e:
	clc 
	rts 

Lbl_dd80:
	lda $04ab,x
	and #$40
	bne Lbl_dd9d
	lda $12
	and #$3f
	cmp #$10
	bne Lbl_dd9d
	txa 
	jsr Lbl_dd6b
	bcc Lbl_dd9d
	lda $04ab,x
	ora #$40
	sta $04ab,x

Lbl_dd9d:
	lda $051a,x
	tay 
	lda Lbl_db07,y
	tay 
	pha 
	lda Lbl_db3b,y
	sta $28
	lda Lbl_db2c,y
	jsr Lbl_e020
	jsr Lbl_de31
	pla 
	bcs Lbl_ddc4
	cmp #$0b
	beq Lbl_ddf1
	cmp #$08
	beq Lbl_ddf1
	cmp #$0c
	bcs Lbl_ddfe
	rts 

Lbl_ddc4:
	lda $051a,x
	tay 
	lda Lbl_db07,y
	cmp #$0c
	bcc Lbl_dde1
	ldy #$6e

Lbl_ddd1:
	lda $035e,y
	bmi Lbl_de0f
	dey 
	cpy #$59
	bcs Lbl_ddd1

Lbl_dddb:
	lda #$ff
	sta $035e,x
	rts 

Lbl_dde1:
	cmp #$05
	bcs Lbl_dded
	lda $04ab,x
	and #$bf
	sta $04ab,x

Lbl_dded:
	inc $051a,x
	rts 

Lbl_ddf1:
	lda $25
	lsr a 
	lsr a 
	lsr a 
	beq Lbl_ddfb
	sec 
	sbc #$01

Lbl_ddfb:
	jmp Lbl_edd7

Lbl_ddfe:
	ror $26
	lda $25
	ror a 
	cmp #$20
	bcs Lbl_de0e
	lsr a 
	lsr a 
	eor #$87
	jsr Lbl_edd7

Lbl_de0e:
	rts 

Lbl_de0f:
	jsr Lbl_de19
	jsr Lbl_dcf1
	sta $051a,y
	rts 

Lbl_de19:
	tya 
	jsr Lbl_e039
	lda $043c,x
	sta $043c,y
	lda $04ab,x
	and #$3f
	ora #$40
	sta $04ab,y
	jsr Lbl_dddb
	rts 

Lbl_de31:
	jsr Lbl_e665
	lda $26
	cmp $28
	bcc Lbl_de63
	beq Lbl_de3e
	bcs Lbl_de44

Lbl_de3e:
	lda $25
	cmp $27
	bcc Lbl_de63

Lbl_de44:
	lda $26
	bne Lbl_de50
	lda $25
	cmp $06
	bcs Lbl_de50
	sec 
	rts 

Lbl_de50:
	inc $03
	inc $03
	lda $28
	bne Lbl_de60
	lda $27
	cmp $05
	bcs Lbl_de60
	inc $03

Lbl_de60:
	jmp Lbl_de7b

Lbl_de63:
	lda $28
	bne Lbl_de6f
	lda $27
	cmp $06
	bcs Lbl_de6f
	sec 
	rts 

Lbl_de6f:
	lda $26
	bne Lbl_de79
	lda $25
	cmp $05
	bcc Lbl_de7b

Lbl_de79:
	inc $03

Lbl_de7b:
	ldy $03
	lda Lbl_defc,y

Lbl_de80:
	sta $2a
	lda $043c,x
	sec 
	sbc $40
	sta $29
	sec 
	sbc $2a
	beq Lbl_deab
	bmi Lbl_de97
	cmp #$06
	bcc Lbl_de9b
	bcs Lbl_dead

Lbl_de97:
	cmp #$fa
	bcs Lbl_dead

Lbl_de9b:
	dec $29
	bpl Lbl_dea3
	lda #$0b
	sta $29

Lbl_dea3:
	lda $29
	clc 
	adc $40
	sta $043c,x

Lbl_deab:
	clc 

Lbl_deac:
	rts 

Lbl_dead:
	inc $29
	lda $29
	cmp #$0c
	bcc Lbl_dea3
	lda #$00
	sta $29
	beq Lbl_dea3

Lbl_debb:
	lda $051a,x
	tay 
	lda Lbl_df0d,y
	tay 
	lda Lbl_dfe4,y
	sta $28
	lda Lbl_dfa8,y
	jsr Lbl_e020
	jsr Lbl_de31
	bcc Lbl_deac
	inc $051a,x
	lda $051a,x
	tay 
	lda Lbl_df0d,y
	bne Lbl_defb
	dey 
	stx $27
	lda Lbl_df0d,y
	and #$07
	tax 
	inc $06a6,x
	inc $06a6,x
	ldx $27

Lbl_def0:
	dey 
	lda Lbl_df0d,y
	bne Lbl_def0
	iny 
	tya 
	sta $051a,x

Lbl_defb:
	rts 

Lbl_defc:
	.byte $00,$0b,$0a,$09,$06,$07,$08,$09,$00,$01,$02,$03,$06,$05,$04,$03
	.byte $00

Lbl_df0d:
	.byte $00,$00,$07,$08,$0f,$10,$01,$00,$0e,$11,$13,$15,$14,$11,$10,$01
	.byte $00,$07,$2b,$2a,$29,$0d,$0f,$10,$01,$00,$1e,$23,$33,$38,$17,$37
	.byte $35,$33,$23,$1d,$1c,$02,$00,$1e,$1f,$21,$20,$1d,$1c,$02,$00,$1e
	.byte $22,$24,$25,$1b,$20,$1d,$1c,$02,$00,$12,$11,$0e,$07,$08,$11,$14
	.byte $16,$03,$00,$12,$13,$15,$16,$03,$00,$12,$14,$19,$1b,$24,$25,$1a
	.byte $16,$03,$00,$0c,$0a,$09,$0b,$04,$00,$0c,$0d,$11,$13,$15,$18,$38
	.byte $3a,$0b,$04,$00,$0c,$29,$2c,$2a,$0b,$04,$00,$36,$38,$17,$37,$39
	.byte $05,$00,$35,$33,$31,$32,$36,$39,$05,$00,$36,$38,$1b,$24,$25,$26
	.byte $27,$28,$39,$05,$00,$30,$38,$17,$37,$35,$2e,$2f,$06,$00,$30,$33
	.byte $31,$2e,$2f,$06,$00,$2e,$2d,$2f,$06,$00,$00

Lbl_dfa8:
	.byte $00,$d3,$c5,$86,$c1,$c9,$4a,$c2,$82,$81,$02,$01,$02,$03,$43,$04
	.byte $84,$05,$06,$85,$06,$06,$d6,$a6,$c7,$08,$18,$28,$45,$65,$26,$87
	.byte $28,$08,$98,$47,$c9,$f9,$c9,$0b,$8b,$0c,$4b,$5b,$0c,$2a,$89,$ca
	.byte $89,$68,$49,$08,$69,$08,$89,$86,$c7,$cb,$01,$01

Lbl_dfe4:
	.byte $00,$eb,$83,$6d,$3e,$d7,$5a,$04,$84,$bc,$05,$06,$85,$05,$84,$84
	.byte $44,$85,$85,$86,$06,$e6,$c5,$cf,$c6,$06,$45,$84,$43,$83,$43,$43
	.byte $c3,$1b,$83,$82,$04,$44,$05,$25,$c5,$05,$04,$83,$03,$43,$03,$c2
	.byte $82,$42,$02,$f1,$21,$01,$80,$01,$40,$60,$c0,$40

Lbl_e020:
	sta $26
	and #$f0
	sta $25
	lda $26
	and #$0f
	sta $26
	lda $28
	and #$f8
	sta $27
	lda $28
	and #$07
	sta $28
	rts 

Lbl_e039:
	sty $27
	tay 
	jsr Lbl_e042
	ldy $27
	rts 

Lbl_e042:
	lda $035e,x
	sta $035e,y
	lda $0280,x
	sta $0280,y
	lda $03cd,x
	sta $03cd,y
	lda $02ef,x
	sta $02ef,y
	rts 

Lbl_e05b:
	lda $a5
	and $c0
	beq Lbl_e072
	lda $b3
	bmi Lbl_e072
	lda $d4
	beq Lbl_e06f
	lda $c9
	cmp #$02
	beq Lbl_e072

Lbl_e06f:
	jmp Lbl_e167

Lbl_e072:
	lda a:$0095,y
	cmp #$89
	bcc Lbl_e082
	sec 
	sbc #$89
	sta $27
	lda #$00
	beq Lbl_e08c

Lbl_e082:
	sec 
	lda #$89
	sbc a:$0095,y
	sta $27
	lda #$80

Lbl_e08c:
	sta $29
	lda Lbl_e6cd,y
	and $36
	bne Lbl_e0a8
	lda a:$0085,y
	cmp #$ab
	bcs Lbl_e0a8
	sec 
	lda #$ab
	sbc a:$0085,y
	sta $25
	lda #$80
	bne Lbl_e0b2

Lbl_e0a8:
	sec 
	lda a:$0085,y
	sbc #$ab
	sta $25
	lda #$00

Lbl_e0b2:
	sta $2a
	lda #$01
	sta $03
	lda $27
	cmp $25
	bcc Lbl_e0c8
	lsr a 
	lsr a 
	cmp $25
	bcs Lbl_e0d6
	inc $03
	bcc Lbl_e0d6

Lbl_e0c8:
	lda $25
	lsr a 
	lsr a 
	cmp $27
	bcc Lbl_e0d2
	inc $03

Lbl_e0d2:
	inc $03
	inc $03

Lbl_e0d6:
	lda $29
	bpl Lbl_e0e1
	clc 
	lda $03
	adc #$04
	sta $03

Lbl_e0e1:
	lda $2a
	bmi Lbl_e0ec
	clc 
	lda $03
	adc #$08
	sta $03

Lbl_e0ec:
	ldx $03
	lda #$90
	sta $40
	jsr Lbl_e157
	beq Lbl_e126
	inc $de
	lda $de
	and #$03
	bne Lbl_e121
	lda $51
	and #$02
	beq Lbl_e110
	ldx $dd
	cpx #$00
	bne Lbl_e10d
	ldx #$0c

Lbl_e10d:
	dex 
	stx $dd

Lbl_e110:
	lda $51
	and #$01
	beq Lbl_e121
	ldx $dd
	cpx #$0b
	bne Lbl_e11e
	ldx #$ff

Lbl_e11e:
	inx 
	stx $dd

Lbl_e121:
	lda $dd
	jmp Lbl_e129

Lbl_e126:
	lda Lbl_e146,x

Lbl_e129:
	pha 
	lda a:$0065,y
	tax 
	pla 
	jsr Lbl_de80
	jsr Lbl_e157
	beq Lbl_e143
	lda $51
	and #$80
	bne Lbl_e18e
	lda $51
	and #$40
	bne Lbl_e17b

Lbl_e143:
	jmp Lbl_e320

Lbl_e146:
	.byte $00,$00,$01,$02,$03,$06,$05,$04,$03,$00,$0b,$0a,$09,$06,$07,$08
	.byte $09

Lbl_e157:
	lda $d4
	beq Lbl_e164
	lda $c9
	cmp #$02
	bne Lbl_e164
	lda #$01
	rts 

Lbl_e164:
	lda #$00
	rts 

Lbl_e167:
	jsr Lbl_c412
	cmp $bf
	bcc Lbl_e18e

Lbl_e16e:
	lda $bd
	cmp #$04
	bcs Lbl_e18b
	jsr Lbl_c412
	cmp #$fa
	bcc Lbl_e18b

Lbl_e17b:
	lda $043c,x
	stx $26
	tax 
	lda Lbl_dbcb,x
	sta $25
	ldx $26
	jsr Lbl_e499

Lbl_e18b:
	jmp Lbl_e320

Lbl_e18e:
	lda $04ad
	bmi Lbl_e16e
	lda $09
	bne Lbl_e18b
	lda #$02
	jsr Lbl_e039
	lda #$7c
	sta $043e
	sec 
	lda a:$0095,y
	sbc #$89
	bpl Lbl_e1ab
	eor #$ff

Lbl_e1ab:
	sta $05
	sec 
	lda a:$0085,y
	sbc #$ab
	bpl Lbl_e1b7
	eor #$ff

Lbl_e1b7:
	cmp $05
	php 
	bcs Lbl_e1c0
	lsr a 
	jmp Lbl_e1c2

Lbl_e1c0:
	lsr $05

Lbl_e1c2:
	clc 
	adc $05
	lsr a 
	lsr a 
	lsr a 
	plp 
	bcs Lbl_e1ce
	clc 
	adc #$03

Lbl_e1ce:
	clc 
	adc #$01
	sta $058b
	sty $03
	sec 
	lda $043c,x
	sbc #$90
	tay 
	lda Lbl_e1ec,y
	sta $43
	lda Lbl_e1f9,y
	sta $44
	ldy $03
	jmp Lbl_e320

Lbl_e1ec:
	.byte $00,$04,$07,$08,$07,$04,$00,$84,$87,$88,$87,$84,$00

Lbl_e1f9:
	.byte $86,$85,$83,$00,$03,$05,$06,$05,$03,$00,$83,$85,$86

Lbl_e206:
	lda $a5
	cmp #$07
	bne Lbl_e235
	lda $0698,x
	cmp #$0a
	bcs Lbl_e217
	lda #$a9
	bne Lbl_e227

Lbl_e217:
	lda $043c,x
	cmp #$ac
	bcc Lbl_e222
	lda #$aa
	bne Lbl_e227

Lbl_e222:
	inc $043c,x
	bne Lbl_e22a

Lbl_e227:
	sta $043c,x

Lbl_e22a:
	lda $12
	and #$3f
	bne Lbl_e235
	lda #$01
	jsr Lbl_d9b2

Lbl_e235:
	jmp Lbl_e320

Lbl_e238:
	.byte $a5,$a5,$6a,$b0,$0d,$fe,$3c,$04,$bd,$3c,$04,$c9,$84,$d0,$03,$20
	.byte $db,$dd,$60,$20,$38,$e2,$4c,$20,$e3

Lbl_e251:
	sec 
	lda a:$0085,y
	sbc $b4
	bcs Lbl_e25b
	eor #$ff

Lbl_e25b:
	sta $25
	sec 
	lda a:$0095,y
	sbc $b5
	bcs Lbl_e267
	eor #$ff

Lbl_e267:
	clc 
	adc $25
	bcc Lbl_e26e
	lda #$fe

Lbl_e26e:
	cmp $b7
	bcs Lbl_e274
	sta $b7

Lbl_e274:
	sty $29
	lda $043c,x
	tay 
	lda Lbl_da29,y
	jsr Lbl_edd7
	lda Lbl_da35,y
	jsr Lbl_ede2
	ldy $29
	jmp Lbl_e320

Lbl_e28b:
	jsr Lbl_e923
	inc $1d

Lbl_e290:
	dec $1d
	beq Lbl_e29a
	jsr Lbl_e79d
	jmp Lbl_e290

Lbl_e29a:
	inc $1e

Lbl_e29c:
	dec $1e
	beq Lbl_e2a6
	jsr Lbl_e7a0
	jmp Lbl_e29c

Lbl_e2a6:
	lda #$02
	sta $0c
	lda #$ff
	sta $b7
	ldy #$00

Lbl_e2b0:
	lda a:$0065,y
	bmi Lbl_e320
	beq Lbl_e320
	tax 
	cmp #$15
	bcc Lbl_e2d8
	cmp #$59
	bcs Lbl_e251
	cmp #$55
	bcs Lbl_e320
	cmp #$33
	bcs Lbl_e2d5
	lda $043c,x
	cmp #$8c
	bcs Lbl_e2d2
	jmp Lbl_d993

Lbl_e2d2:
	jmp Lbl_e05b

Lbl_e2d5:
	jmp Lbl_e326

Lbl_e2d8:
	cmp #$09
	bcs Lbl_e301
	stx $00
	asl a 
	tax 
	lda Lbl_e2ef,x
	sta $01
	lda Lbl_e2f0,x
	sta $02
	ldx $00
	jmp ($0001)

Lbl_e2ef:
	.byte $20

Lbl_e2f0:
	.byte $e3,$4b,$e2,$8b,$e3,$20,$e3,$7b,$e3,$1d,$e3,$20,$e3,$ce,$e3,$5b
	.byte $e3

Lbl_e301:
	cmp #$0f
	bcc Lbl_e308
	jmp Lbl_e206

Lbl_e308:
	cmp #$0d
	beq Lbl_e317
	cmp #$0b
	beq Lbl_e31a
	cmp #$0a
	bne Lbl_e320
	jmp Lbl_e412

Lbl_e317:
	jmp Lbl_e42f

Lbl_e31a:
	jmp Lbl_e44a

Lbl_e31d:
	.byte $20,$38,$e2

Lbl_e320:
	iny 
	cpy #$10
	bcc Lbl_e2b0
	rts 

Lbl_e326:
	jsr Lbl_c412
	lsr a 
	cmp #$7e
	bcc Lbl_e320
	lda $09
	bne Lbl_e320
	lda $0366
	bpl Lbl_e320
	stx $2b
	lda #$08
	jsr Lbl_e039
	lda #$0f
	sta $2c
	lda #$22
	sta $04b3
	lda #$7d
	sta $0444
	jsr Lbl_c412
	pha 
	pla 
	bmi Lbl_e358
	lda #$01
	jsr Lbl_e5c5

Lbl_e358:
	jmp Lbl_e320

Lbl_e35b:
	.byte $c6,$2c,$f0,$15,$ad,$44,$04,$49,$03,$8d,$44,$04,$a6,$2b,$a9,$08
	.byte $20,$39,$e0,$20,$11,$c5,$4c,$20,$e3,$a9,$ff,$8d,$66,$03,$d0,$a5
	.byte $a5,$41,$20,$d7,$ed,$a5,$42,$20,$e2,$ed,$20,$87,$e5,$4c,$20,$e3
	.byte $ad,$8b,$05,$c9,$01,$f0,$10,$ce,$8b,$05,$a5,$43,$20,$d7,$ed,$a5
	.byte $44,$20,$e2,$ed,$4c,$20,$e3,$20,$b5,$e3,$ad,$3e,$04,$c9,$80,$d0
	.byte $06,$20,$87,$e5,$20,$0d,$c5,$4c,$20,$e3

Lbl_e3b5:
	lda $a5
	ror a 
	bcs Lbl_e3c4
	lda $043c,x
	cmp #$83
	beq Lbl_e3c5
	inc $043c,x

Lbl_e3c4:
	rts 

Lbl_e3c5:
	jsr Lbl_dddb
	lda #$00
	sta $0589,x
	rts 

Lbl_e3ce:
	.byte $a5,$a5,$29,$03,$d0,$58,$ad,$43,$04,$c9,$83,$b0,$06,$ee,$43,$04
	.byte $4c,$20,$e3,$ce,$21,$05,$f0,$1d,$84,$27,$a9,$7c,$8d,$43,$04,$ad
	.byte $21,$05,$a8,$b9,$0a,$e4,$20,$d7,$ed,$b9,$0e,$e4,$20,$e2,$ed,$20
	.byte $15,$c5,$4c,$20,$e3,$a9,$ff,$8d,$65,$03,$d0,$22,$00,$9f,$14,$8a
	.byte $00,$00,$14,$8a

Lbl_e412:
	jsr Lbl_e587
	lda $3f
	bne Lbl_e42c
	lda $d4
	beq Lbl_e42c
	lda #$18
	sta Lbl_400c
	lda #$08
	sta Lbl_400e
	lda #$28
	sta Lbl_400f

Lbl_e42c:
	jmp Lbl_e320

Lbl_e42f:
	lda $bb
	bmi Lbl_e435
	bne Lbl_e42c

Lbl_e435:
	lda #$a6
	sta $25
	jsr Lbl_e499
	lda #$ec
	sta $25
	lda #$50
	sta $26
	lda #$f6
	ldx #$1e
	bne Lbl_e456

Lbl_e44a:
	lda #$f6
	sta $25
	lda #$0e
	sta $26
	lda #$f4
	ldx #$32

Lbl_e456:
	sta $27
	stx $28
	ldx #$0f

Lbl_e45c:
	lda $65,x
	cmp #$55
	bcs Lbl_e466
	cmp #$3d
	bcs Lbl_e46b

Lbl_e466:
	dex 
	bpl Lbl_e45c
	bmi Lbl_e42c

Lbl_e46b:
	sec 
	lda $85,x
	sbc a:$0085,y
	cmp $25
	bcs Lbl_e479
	cmp $26
	bcs Lbl_e466

Lbl_e479:
	sec 
	lda $95,x
	sbc a:$0095,y
	cmp $27
	bcs Lbl_e487
	cmp $28
	bcs Lbl_e466

Lbl_e487:
	lda $65,x
	tax 
	lda #$01
	jsr Lbl_e039
	lda #$7c
	sta $043d
	jsr Lbl_dddb
	bne Lbl_e42c

Lbl_e499:
	jsr Lbl_d8a7
	beq Lbl_e4b6
	lda $0368
	bpl Lbl_e4b6
	lda #$0a
	jsr Lbl_e039
	lda #$23
	sta $3b
	lda #$22
	sta $04b5
	lda $25
	sta $0446

Lbl_e4b6:
	rts 

Lbl_e4b7:
	lda $0368
	bmi Lbl_e4b6
	ldx #$0a
	ldy $0446
	lda Lbl_e4c6,y
	jsr Lbl_edd7
	lda Lbl_e4cf,y
	jsr Lbl_ede2
	lda $bd

Lbl_e4cf:
	.byte $49,$07,$4a,$18,$69,$05,$85,$54,$20,$12,$c4,$c5,$54,$90,$06,$a5
	.byte $a5,$c9,$03,$d0,$13,$c6,$3b,$d0,$10,$ad,$b5,$04,$10,$05,$a9,$0a
	.byte $20,$21,$e6,$a9,$ff,$8d,$68,$03,$60,$20,$66,$ee,$a2,$0a,$20,$65
	.byte $e6,$e6,$03,$a5,$26,$d0,$09,$a5,$28,$f0,$0e,$c6,$03,$4c,$44,$e5
	.byte $a5,$28,$d0,$31,$e6,$03,$4c,$44,$e5,$a5,$25,$c5,$27,$90,$1d,$4a
	.byte $c5,$27,$90,$21,$e6,$03,$4c,$44,$e5,$c9,$fc,$b0,$29,$ad,$46,$04
	.byte $c9,$a7,$b0,$04,$ee,$46,$04,$60,$a9,$a0,$d0,$27,$a5,$27,$4a,$c5
	.byte $25,$90,$02,$c6,$03,$a4,$03,$b9,$78,$e5,$38,$ed,$46,$04,$f0,$e7
	.byte $30,$d7,$c9,$05,$90,$d7,$ad,$46,$04,$c9,$a1,$90,$04,$ce,$46,$04
	.byte $60,$a9,$a7,$8d,$46,$04,$60,$00,$04,$08,$04,$00,$84,$88,$84,$00
	.byte $86,$83,$00,$03,$06,$03,$00,$83,$86,$a0,$a7,$a6,$00,$a4,$a5,$a6
	.byte $00,$a0,$a1,$a2,$00,$a4,$a3,$a2

Lbl_e587:
	lda $36
	and Lbl_e6cd,y
	bne Lbl_e5c4
	sec 
	lda $b5
	sbc a:$0095,y
	cmp #$f7
	bcs Lbl_e59c
	cmp #$09
	bcs Lbl_e5c4

Lbl_e59c:
	sec 
	lda $b4
	sbc a:$0085,y
	cmp #$f8
	bcs Lbl_e5aa
	cmp #$08
	bcs Lbl_e5c4

Lbl_e5aa:
	lda $b6
	eor #$10
	sta $b6
	lda a:$0065,y
	jsr Lbl_e621
	jsr Lbl_c412
	lsr a 
	and #$07
	jsr Lbl_e5c5
	lda #$03
	jsr Lbl_e5d5

Lbl_e5c4:
	rts 

Lbl_e5c5:
	sty $00
	ldy $d3
	cpy #$03
	bcc Lbl_e5d1
	lda #$01
	bne Lbl_e5e7

Lbl_e5d1:
	ldy #$0e
	bne Lbl_e5e9

Lbl_e5d5:
	sty $00
	ldy $df
	beq Lbl_e5df
	ldy #$01
	sty $df

Lbl_e5df:
	ldy $d3
	cpy #$05
	bcc Lbl_e5e7
	lda #$05

Lbl_e5e7:
	ldy #$0d

Lbl_e5e9:
	jsr Lbl_e5f1
	ldy $00
	rts 

Lbl_e5ef:
	.byte $a0,$2b

Lbl_e5f1:
	clc 
	adc $0240,y
	pha 
	cpy #$29
	bne Lbl_e60d
	and #$01
	beq Lbl_e60d
	lda $d6
	clc 
	adc #$01
	and #$03
	sta $d6
	lda $55
	bne Lbl_e60d
	inc $55

Lbl_e60d:
	pla 
	cmp #$2d
	bcc Lbl_e61d
	sec 
	sbc #$0a
	sta $0240,y
	dey 
	lda #$01
	bne Lbl_e5f1

Lbl_e61d:
	sta $0240,y

Lbl_e620:
	rts 

Lbl_e621:
	tax 
	tya 
	pha 
	cpx #$3d
	bcc Lbl_e630
	cpx #$55
	bcs Lbl_e630
	ldy #$05
	bne Lbl_e632

Lbl_e630:
	ldy #$01

Lbl_e632:
	lda #$7d
	sta $043c,y
	jsr Lbl_c4f5
	jsr Lbl_e042
	jsr Lbl_dddb
	lda #$32
	sta $04ab,y
	pla 
	tay 
	lda $d4
	beq Lbl_e620
	cpx #$55
	bcs Lbl_e65b
	cpx #$33
	bcs Lbl_e65f
	cpx #$15
	bcc Lbl_e620
	lda #$01
	bne Lbl_e5ef

Lbl_e65b:
	lda #$02
	bne Lbl_e5ef

Lbl_e65f:
	lda #$05
	ldy #$2c
	bne Lbl_e5f1

Lbl_e665:
	sec 
	lda $0280,x
	sbc $25
	sta $25
	lda $035e,x
	sbc $26
	sta $26
	bpl Lbl_e684
	eor #$ff
	sta $26
	lda $25
	eor #$ff
	sta $25
	lda #$08
	bne Lbl_e686

Lbl_e684:
	lda #$00

Lbl_e686:
	sta $03
	lda $26
	cmp #$07
	bcc Lbl_e699
	sec 
	sbc #$07
	sta $26
	lda $03
	eor #$08
	sta $03

Lbl_e699:
	sec 
	lda $02ef,x
	sbc $27
	sta $27
	lda $03cd,x
	sbc $28
	sta $28
	bpl Lbl_e6bb
	eor #$ff
	sta $28
	lda $27
	eor #$ff
	sta $27
	clc 
	lda $03
	adc #$04
	sta $03

Lbl_e6bb:
	lda $28
	cmp #$04
	bcc Lbl_e6cc
	sec 
	sbc #$04
	sta $28
	lda $03
	eor #$04
	sta $03

Lbl_e6cc:
	rts 

Lbl_e6cd:
	.byte $01,$02,$04,$08,$10,$20,$40,$80

Lbl_e6d5:
	.byte $01,$02,$04,$08,$10,$20,$40,$80

Lbl_e6dd:
	.byte $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

Lbl_e6e5:
	lda $d4
	beq Lbl_e6ff
	lda $50
	lsr a 
	bcc Lbl_e6f0
	inc $b6

Lbl_e6f0:
	lsr a 
	bcc Lbl_e6f5
	dec $b6

Lbl_e6f5:
	lsr a 
	bcc Lbl_e6fa
	dec $11

Lbl_e6fa:
	lsr a 
	bcc Lbl_e6ff
	inc $11

Lbl_e6ff:
	rts 

Lbl_e700:
	jsr Lbl_e6e5
	lda $07
	bpl Lbl_e70b
	lda #$00
	sta $11

Lbl_e70b:
	lda $11
	bmi Lbl_e723
	cmp $3c
	bcc Lbl_e718
	ldy $3c
	dey 
	sty $11

Lbl_e718:
	jsr Lbl_d3af
	jsr Lbl_e740
	lda #$00
	sta $38
	rts 

Lbl_e723:
	lda #$0a
	sta $11
	sta $38
	jsr Lbl_d3af
	lda $46
	eor #$ff
	sta $46
	lda $45
	eor #$ff
	sta $45
	inc $46
	inc $45
	lda #$00
	sta $11

Lbl_e740:
	lda #$13
	sta $00
	lda #$1c
	sta $01
	ldx $a9
	lda $45
	sec 
	sbc $a9
	jsr Lbl_e77f
	stx $a9
	lda #$10
	sta $00
	lda #$16
	sta $01
	ldx $aa
	lda $46
	sec 
	sbc $aa
	jsr Lbl_e77f
	stx $aa
	ldx #$00
	jsr Lbl_e76e
	inx 

Lbl_e76e:
	lda $a9,x
	bpl Lbl_e777
	and #$7f
	jmp Lbl_e77c

Lbl_e777:
	sec 
	lda #$80
	sbc $a9,x

Lbl_e77c:
	sta $13,x
	rts 

Lbl_e77f:
	beq Lbl_e790
	bpl Lbl_e791
	eor #$ff
	cmp $00
	bcc Lbl_e78f
	cmp $01
	bcc Lbl_e78e
	dex 

Lbl_e78e:
	dex 

Lbl_e78f:
	dex 

Lbl_e790:
	rts 

Lbl_e791:
	cmp $00
	bcc Lbl_e79b
	cmp $01
	bcc Lbl_e79a
	inx 

Lbl_e79a:
	inx 

Lbl_e79b:
	inx 
	rts 

Lbl_e79d:
	jmp ($0017)

Lbl_e7a0:
	jmp ($0019)

Lbl_e7a3:
	jmp ($001b)

Lbl_e7a6:
	lda $c3
	and #$07
	cmp #$07
	bne Lbl_e7b3
	ldx #$00
	jsr Lbl_e806

Lbl_e7b3:
	lda $c3
	cmp #$ef
	bne Lbl_e7bd
	lda #$ff
	sta $c3

Lbl_e7bd:
	inc $c3
	rts 

Lbl_e7c0:
	lda $c3
	and #$07
	bne Lbl_e7cb
	ldx #$01
	jsr Lbl_e806

Lbl_e7cb:
	lda $c3
	bne Lbl_e7d3
	lda #$f0
	sta $c3

Lbl_e7d3:
	dec $c3
	rts 

Lbl_e7d6:
	lda $c1
	and #$07
	cmp #$07
	bne Lbl_e7e3
	ldx #$02
	jsr Lbl_e806

Lbl_e7e3:
	inc $c1
	bne Lbl_e7ed
	lda $c2
	eor #$01
	sta $c2

Lbl_e7ed:
	rts 

Lbl_e7ee:
	.byte $a5,$c1,$29,$07,$d0,$05,$a2,$03,$20,$06,$e8,$a5,$c1,$d0,$06,$a5
	.byte $c2,$49,$01,$85,$c2,$c6,$c1,$60

Lbl_e806:
	lda Lbl_e821,x
	sta $1b
	lda Lbl_e825,x
	sta $1c
	lda Lbl_e829,x
	pha 
	jsr Lbl_e7a3
	pla 
	sta $0200

Lbl_e81b:
	lda $0200
	bne Lbl_e81b
	rts 

Lbl_e821:
	.byte $03,$bb,$76,$25

Lbl_e825:
	.byte $f3,$f2,$f3,$f3

Lbl_e829:
	.byte $08,$04,$02,$01

Lbl_e82d:
	lda #$01
	sta $1e
	jsr Lbl_c5a1
	ldx #$01
	ldy #$02
	jsr Lbl_e89e
	jmp Lbl_e859

Lbl_e83e:
	jsr Lbl_c5a1
	ldx #$01
	ldy #$02
	jsr Lbl_e85c
	ldx #$00
	ldy #$00
	jsr Lbl_e85c
	jsr Lbl_e86f
	ldx #$01
	ldy #$02
	jsr Lbl_e86f

Lbl_e859:
	jmp Lbl_c59c

Lbl_e85c:
	clc 
	lda $13,x
	adc $15,x
	sta $15,x
	lsr a 
	lsr a 
	lsr a 
	sta $00,x
	lda $15,x
	and #$07
	sta $15,x
	rts 

Lbl_e86f:
	sec 
	lda $a7,x
	sbc $a9,x
	sta $29
	lda $a9,x
	bpl Lbl_e882
	sec 
	lda $29
	sbc $00,x
	jmp Lbl_e887

Lbl_e882:
	clc 
	lda $29
	adc $00,x

Lbl_e887:
	bpl Lbl_e8cb
	sta $29
	sec 
	lda #$00
	sbc $29
	sta $1d,x
	lda Lbl_e91b,y
	sta a:$0017,y
	lda Lbl_e91c,y
	sta a:$0018,y

Lbl_e89e:
	sec 
	lda a:$00ae,y
	sbc $1d,x
	sta a:$00ae,y
	bcs Lbl_e8c6
	lda a:$00af,y
	sbc #$00
	sta a:$00af,y
	bpl Lbl_e8c6
	sec 
	lda a:$00ae,y
	sbc Lbl_e90f,x
	sta a:$00ae,y
	lda a:$00af,y
	sbc Lbl_e911,x
	sta a:$00af,y

Lbl_e8c6:
	lda $a9,x
	sta $a7,x
	rts 

Lbl_e8cb:
	sta $1d,x
	lda Lbl_e91f,y
	sta a:$0017,y
	lda Lbl_e920,y
	sta a:$0018,y
	clc 
	lda a:$00ae,y
	adc $1d,x
	sta a:$00ae,y
	lda a:$00af,y
	adc #$00
	sta a:$00af,y
	cmp Lbl_e913,x
	bcc Lbl_e8c6
	bne Lbl_e8f9
	lda a:$00ae,y
	cmp Lbl_e919,x
	bcc Lbl_e8c6

Lbl_e8f9:
	sec 
	lda a:$00ae,y
	sbc Lbl_e915,x
	sta a:$00ae,y
	lda a:$00af,y
	sbc Lbl_e917,x
	sta a:$00af,y
	jmp Lbl_e8c6

Lbl_e90f:
	.byte $80,$30

Lbl_e911:
	.byte $f3,$f8

Lbl_e913:
	.byte $0c,$07

Lbl_e915:
	.byte $80,$d0

Lbl_e917:
	.byte $0c,$07

Lbl_e919:
	.byte $80,$d0

Lbl_e91b:
	.byte $ee

Lbl_e91c:
	.byte $e7,$c0,$e7

Lbl_e91f:
	.byte $d6

Lbl_e920:
	.byte $e7,$a6,$e7

Lbl_e923:
	lda $0b
	beq Lbl_e929
	lda #$02

Lbl_e929:
	sta $36
	sta $37
	ldy #$00

Lbl_e92f:
	lda a:$0065,y
	beq Lbl_e939
	bmi Lbl_e939
	jsr Lbl_e9a5

Lbl_e939:
	iny 
	cpy #$10
	bcc Lbl_e92f

Lbl_e93e:
	ldy $09
	beq Lbl_e967
	tya 
	and $37
	sta $37
	tya 
	and $33
	sta $33
	tya 
	and $35
	sta $35
	ldy $31
	tya 
	and $36
	jsr Lbl_ead2
	tya 
	and $32
	ora $33
	sta $33
	tya 
	and $34
	ora $35
	sta $35

Lbl_e967:
	rts 

Lbl_e968:
	.byte $bd,$3c,$04,$99,$d7,$06,$38,$bd,$ef,$02,$e5,$b0,$85,$29,$bd,$cd
	.byte $03,$e5,$b1,$85,$2a,$10,$0d,$18,$a5,$29,$69,$d0,$85,$29,$a5,$2a
	.byte $69,$07,$85,$2a,$f0,$08,$a5,$29,$c9,$9e,$b0,$1a,$90,$06,$a5,$29
	.byte $c9,$9e,$90,$12,$38,$e9,$a2,$99,$95,$00,$4c,$01,$ea

Lbl_e9a5:
	lda a:$0065,y
	tax 
	lda $035e,x
	bpl Lbl_e968
	cpx #$0a
	bcs Lbl_e9ba
	lda #$00
	sta $0589,x
	jsr Lbl_dddb

Lbl_e9ba:
	lda $04ab,x
	and #$7f
	sta $04ab,x
	lda #$ff
	sta a:$0065,y
	cpy #$08
	bcc Lbl_e9d7

Lbl_e9cb:
	lda Lbl_e6d5,y
	and $09
	sta $09
	eor #$ff
	sta $31
	rts 

Lbl_e9d7:
	lda $09
	beq Lbl_e9e8
	ldx #$0b

Lbl_e9dd:
	lda $65,x
	beq Lbl_e9e3
	bpl Lbl_e9e9

Lbl_e9e3:
	inx 
	cpx #$10
	bcc Lbl_e9dd

Lbl_e9e8:
	rts 

Lbl_e9e9:
	stx $29
	sty $2a
	tax 
	jsr Lbl_ec9e
	ldy $29
	jsr Lbl_e9cb
	lda #$fa
	sta a:$0065,y
	sta a:$0095,y
	ldy $2a
	rts 

Lbl_ea01:
	.byte $38,$bd,$80,$02,$e5,$ae,$85,$29,$bd,$5e,$03,$e5,$af,$85,$2a,$10
	.byte $0d,$18,$a5,$29,$69,$80,$85,$29,$a5,$2a,$69,$0c,$85,$2a,$f0,$8d
	.byte $c9,$01,$f0,$41,$bd,$3c,$04,$c9,$a9,$90,$04,$c9,$ad,$90,$1e,$c9
	.byte $66,$90,$04,$c9,$68,$90,$0d,$c9,$64,$d0,$1e,$a5,$29,$c9,$32,$90
	.byte $15,$4c,$ae,$e9,$a5,$29,$c9,$56,$90,$0c,$4c,$ae,$e9,$a5,$29,$c9
	.byte $4a,$90,$03,$4c,$ae,$e9,$4c,$b5,$ea,$a5,$29,$c9,$5a,$90,$03,$4c
	.byte $ae,$e9,$4c,$b5,$ea,$bd,$3c,$04,$c9,$a9,$90,$04,$c9,$ad,$90,$1e
	.byte $c9,$66,$90,$04,$c9,$68,$90,$0d,$c9,$64,$d0,$1e,$a5,$29,$c9,$50
	.byte $b0,$15,$4c,$ae,$e9,$a5,$29,$c9,$6a,$b0,$0c,$4c,$ae,$e9,$a5,$29
	.byte $c9,$68,$b0,$03,$4c,$ae,$e9,$4c,$a4,$ea,$a5,$29,$c9,$69,$b0,$03
	.byte $4c,$ae,$e9,$a5,$29,$c9,$33,$b0,$0b,$18,$a5,$29,$69,$cd,$99,$85
	.byte $00,$4c,$c3,$ea,$38,$a5,$29,$e9,$33,$99,$85,$00,$a5,$2a,$e9,$01
	.byte $f0,$0b,$c0,$08,$b0,$08,$b9,$cd,$e6,$05,$36,$85,$36,$60,$b9,$c5
	.byte $e6

Lbl_ead2:
	ora $37
	sta $37
	rts 

Lbl_ead7:
	lda $65,x
	cmp #$15
	bcs Lbl_eae1
	cmp #$0b
	bcs Lbl_eae2

Lbl_eae1:
	clc 

Lbl_eae2:
	rts 

Lbl_eae3:
	jsr Lbl_ead7
	bcc Lbl_eaf5
	tay 
	lda $04ab,y
	and #$7f
	sta $04ab,y
	lda #$ff
	sta $65,x

Lbl_eaf5:
	rts 

Lbl_eaf6:
	ldx #$07
	jsr Lbl_ead7
	bcs Lbl_eb06
	ldx #$05
	jsr Lbl_eae3
	inx 
	jsr Lbl_eae3

Lbl_eb06:
	ldx #$01
	lda $b1
	cmp #$05
	bcc Lbl_eb30
	beq Lbl_eb2a

Lbl_eb10:
	lda Lbl_ebcc
	sta $1b
	lda Lbl_ebcd
	sta $1c
	sec 
	lda $b0
	sbc #$78
	sta $23
	lda $b1
	sbc #$05
	sta $24
	jmp Lbl_eb47

Lbl_eb2a:
	lda $b0
	cmp #$78
	bcs Lbl_eb10

Lbl_eb30:
	lda Lbl_ebca
	sta $1b
	lda Lbl_ebcb
	sta $1c
	clc 
	lda $b0
	adc #$58
	sta $23
	lda $b1
	adc #$02
	sta $24

Lbl_eb47:
	lda $af
	cmp #$08
	bcc Lbl_eb65
	beq Lbl_eb5f

Lbl_eb4f:
	sec 
	lda $ae
	sbc #$c0
	sta $21
	lda $af
	sbc #$08
	sta $22
	jmp Lbl_eb9e

Lbl_eb5f:
	lda $ae
	cmp #$c0
	bcs Lbl_eb4f

Lbl_eb65:
	clc 
	lda $ae
	adc #$c0
	sta $21
	lda $af
	adc #$03
	sta $22

Lbl_eb72:
	lda $035e,x
	bmi Lbl_eb86
	cmp $af
	bcc Lbl_eb86
	beq Lbl_eb8c
	cmp $22
	beq Lbl_eb95
	bcs Lbl_eb86

Lbl_eb83:
	jsr Lbl_e7a3

Lbl_eb86:
	inx 
	cpx #$6f
	bcc Lbl_eb72
	rts 

Lbl_eb8c:
	lda $0280,x
	cmp $ae
	bcc Lbl_eb86
	bcs Lbl_eb83

Lbl_eb95:
	lda $0280,x
	cmp $21
	bcc Lbl_eb83
	bcs Lbl_eb86

Lbl_eb9e:
	lda $035e,x
	bmi Lbl_ebb2
	cmp $af
	beq Lbl_ebb8
	bcs Lbl_ebaf
	cmp $22
	beq Lbl_ebc1
	bcs Lbl_ebb2

Lbl_ebaf:
	jsr Lbl_e7a3

Lbl_ebb2:
	inx 
	cpx #$6f
	bcc Lbl_eb9e
	rts 

Lbl_ebb8:
	lda $0280,x
	cmp $ae
	bcc Lbl_ebb2
	bcs Lbl_ebaf

Lbl_ebc1:
	lda $0280,x
	cmp $21
	bcc Lbl_ebaf
	bcs Lbl_ebb2

Lbl_ebca:
	.byte $05

Lbl_ebcb:
	.byte $ec

Lbl_ebcc:
	.byte $e3

Lbl_ebcd:
	.byte $eb,$bd,$ef,$02,$c5,$b0,$90,$0d,$bd,$cd,$03,$4c,$0e,$ec,$bd,$ef
	.byte $02,$c5,$23,$90,$32,$60,$bd,$cd,$03,$c5,$b1,$f0,$0a,$b0,$28,$c5
	.byte $24,$f0,$0d,$b0,$f0,$90,$20,$bd,$ef,$02,$c5,$b0,$90,$e7,$b0,$17
	.byte $bd,$ef,$02,$c5,$23,$90,$10,$60,$bd,$cd,$03,$c5,$b1,$90,$d6,$f0
	.byte $c0,$c5,$24,$f0,$c9,$b0,$ce,$20,$98,$ed,$bd,$ab,$04,$30,$05,$20
	.byte $64,$ed,$90,$52,$60,$bd,$1a,$05,$c9,$05,$90,$0e,$bd,$cd,$03,$49
	.byte $04,$9d,$cd,$03,$60,$a9,$ff,$9d,$89,$05,$4c,$db,$dd,$e0,$59,$b0
	.byte $e4,$e0,$33,$b0,$f5,$e0,$15,$b0,$08,$e0,$0a,$f0,$04,$8a,$4a,$90
	.byte $e4,$a9,$00,$85,$54,$a0,$0b,$b9,$65,$00,$10,$0d,$b9,$5d,$00,$c9
	.byte $0b,$90,$0f,$c9,$15,$90,$02,$84,$54,$c8,$c0,$10,$90,$e9,$a4,$54
	.byte $f0,$03,$4c,$9e,$ec,$60,$e0,$59,$b0,$19,$e0,$15,$b0,$07,$e0,$0b
	.byte $90,$11,$4c,$1e,$ed,$a0,$07,$b9,$65,$00,$30,$15,$88,$c0,$03,$b0
	.byte $f6,$90,$aa,$a0,$03,$b9,$65,$00,$30,$07,$c8,$c0,$08,$90,$f6,$b0
	.byte $9c

Lbl_ec9e:
	txa 
	sta a:$0065,y
	lda #$fa
	sta a:$0095,y
	lda $04ab,x
	ora #$80
	sta $04ab,x
	and #$0f
	sta a:$0075,y
	lda $04ab,x
	cpy #$08
	bcs Lbl_ece7
	and #$10
	beq Lbl_ecc7
	lda Lbl_e6cd,y
	ora $34
	jmp Lbl_eccc

Lbl_ecc7:
	lda Lbl_e6dd,y
	and $34

Lbl_eccc:
	sta $34
	lda $04ab,x
	and #$20
	beq Lbl_ecdd
	lda Lbl_e6cd,y
	ora $32
	jmp Lbl_ece2

Lbl_ecdd:
	lda Lbl_e6dd,y
	and $32

Lbl_ece2:
	sta $32
	jmp Lbl_e93e

Lbl_ece7:
	and #$10
	beq Lbl_ecf3
	lda Lbl_e6c5,y
	ora $35
	jmp Lbl_ecf8

Lbl_ecf3:
	lda Lbl_e6d5,y
	and $35

Lbl_ecf8:
	sta $35
	lda $04ab,x
	and #$20
	beq Lbl_ed09
	lda Lbl_e6c5,y
	ora $33
	jmp Lbl_ed0e

Lbl_ed09:
	lda Lbl_e6d5,y
	and $33

Lbl_ed0e:
	sta $33
	lda Lbl_e6c5,y
	ora $09
	sta $09
	eor #$ff
	sta $31
	jmp Lbl_e93e

Lbl_ed1e:
	.byte $a0,$07,$b9,$65,$00,$10,$03,$4c,$9e,$ec,$c9,$15,$b0,$0a,$c9,$0b
	.byte $90,$06,$88,$c0,$03,$b0,$eb,$60,$86,$54,$20,$57,$ed,$b9,$6d,$00
	.byte $30,$0a,$20,$57,$ed,$a5,$09,$39,$dd,$e6,$85,$09,$a9,$ff,$99,$65
	.byte $00,$99,$6d,$00,$a6,$54,$4c,$9e,$ec,$aa,$bd,$ab,$04,$29,$7f,$9d
	.byte $ab,$04,$60

Lbl_ed61:
	jsr Lbl_ed98
	lda $26
	beq Lbl_ed94
	cmp #$01
	beq Lbl_ed78
	cmp #$02
	bne Lbl_ed94
	lda $25
	cmp #$5a
	bcs Lbl_ed94
	bcc Lbl_ed7e

Lbl_ed78:
	lda $25
	cmp #$55
	bcc Lbl_ed94

Lbl_ed7e:
	lda $28
	beq Lbl_ed8e
	cmp #$01
	bne Lbl_ed94
	lda $27
	cmp #$9e
	bcs Lbl_ed94
	bcc Lbl_ed96

Lbl_ed8e:
	lda $27
	cmp #$9e
	bcs Lbl_ed96

Lbl_ed94:
	sec 
	rts 

Lbl_ed96:
	clc 
	rts 

Lbl_ed98:
	sec 
	lda $0280,x
	sbc $ae
	sta $25
	lda $035e,x
	sbc $af
	sta $26
	bpl Lbl_edb6
	clc 
	lda $25
	adc #$80
	sta $25
	lda $26
	adc #$0c
	sta $26

Lbl_edb6:
	sec 
	lda $02ef,x
	sbc $b0
	sta $27
	lda $03cd,x
	sbc $b1
	sta $28
	bpl Lbl_edd4
	clc 
	lda $27
	adc #$d0
	sta $27
	lda $28
	adc #$07
	sta $28

Lbl_edd4:
	rts 

Lbl_edd5:
	lda #$82

Lbl_edd7:
	jsr Lbl_c5a1
	pha 
	txa 
	ldx #$00
	beq Lbl_edec

Lbl_ede0:
	lda #$81

Lbl_ede2:
	jsr Lbl_c5a1
	pha 
	txa 
	clc 
	adc #$6f
	ldx #$01

Lbl_edec:
	tay 
	pla 
	jsr Lbl_edf4
	jmp Lbl_c59c

Lbl_edf4:
	bmi Lbl_ee2f
	sta $00,x
	clc 
	lda $0280,y
	adc $00,x
	sta $0280,y
	lda $035e,y
	adc #$00
	sta $035e,y
	cmp Lbl_ee5c,x
	bcc Lbl_ee2e
	cmp Lbl_ee5e,x
	bcs Lbl_ee1b
	lda $0280,y
	cmp Lbl_ee60,x
	bcc Lbl_ee2e

Lbl_ee1b:
	sec 
	lda $0280,y
	sbc Lbl_ee60,x
	sta $0280,y
	lda $035e,y
	sbc Lbl_ee5c,x
	sta $035e,y

Lbl_ee2e:
	rts 

Lbl_ee2f:
	and #$7f
	sta $00,x
	sec 
	lda $0280,y
	sbc $00,x
	sta $0280,y
	lda $035e,y
	sbc #$00
	sta $035e,y
	cmp #$ff
	bne Lbl_ee2e
	sec 
	lda $0280,y
	sbc Lbl_ee62,x
	sta $0280,y
	lda $035e,y
	sbc Lbl_ee64,x
	sta $035e,y
	rts 

Lbl_ee5c:
	.byte $0c,$07

Lbl_ee5e:
	.byte $0d,$08

Lbl_ee60:
	.byte $80,$d0

Lbl_ee62:
	.byte $80,$30

Lbl_ee64:
	.byte $f3,$f8

Lbl_ee66:
	jsr Lbl_c5a1
	ldx #$00
	ldy #$00
	jsr Lbl_ee79
	ldx #$02
	iny 
	jsr Lbl_ee79
	jmp Lbl_c59c

Lbl_ee79:
	clc 
	lda $ae,x
	adc Lbl_eeb4,y
	sta $25,x
	lda $af,x
	adc Lbl_eeb6,y
	sta $26,x
	clc 
	lda a:$00b4,y
	adc $25,x
	sta $25,x
	bcc Lbl_ee94
	inc $26,x

Lbl_ee94:
	lda $26,x
	cmp Lbl_eeb8,y
	bcc Lbl_eeb3
	bne Lbl_eea4
	lda $25,x
	cmp Lbl_eeba,y
	bcc Lbl_eeb3

Lbl_eea4:
	sec 
	lda $25,x
	sbc Lbl_eeba,y
	sta $25,x
	lda $26,x
	sbc Lbl_eeb8,y
	sta $26,x

Lbl_eeb3:
	rts 

Lbl_eeb4:
	.byte $32,$a4

Lbl_eeb6:
	.byte $01,$00

Lbl_eeb8:
	.byte $0c,$07

Lbl_eeba:
	.byte $80,$d0

Lbl_eebc:
	lda $ab
	cmp #$fa
	beq Lbl_eec5
	jsr Lbl_f127

Lbl_eec5:
	lda $09
	bne Lbl_eece
	lda $0c
	bne Lbl_eed6
	rts 

Lbl_eece:
	inc $3a
	lda $3a
	and #$01
	beq Lbl_ef38

Lbl_eed6:
	lda #$00
	sta $0c
	ldy #$07

Lbl_eedc:
	tya 
	pha 
	lda a:$0065,y
	beq Lbl_eeef
	bmi Lbl_eef5
	lda a:$0095,y
	cmp #$fa
	beq Lbl_eef5
	jsr Lbl_ef58

Lbl_eeef:
	pla 
	tay 
	dey 
	bpl Lbl_eedc
	rts 

Lbl_eef5:
	tya 
	jsr Lbl_c589
	lda $06d7,y
	pha 
	lda #$00
	sta $06d7,y
	pla 
	cmp #$a9
	bcc Lbl_ef0d
	cmp #$ad
	bcs Lbl_ef24
	lda #$63

Lbl_ef0d:
	cmp #$63
	bcc Lbl_ef24
	cmp #$68
	bcs Lbl_ef24
	sec 
	sbc #$63
	tay 
	lda Lbl_ef27,y
	tax 
	lda Lbl_ef2c,y
	tay 
	jsr Lbl_c463

Lbl_ef24:
	jmp Lbl_eeef

Lbl_ef27:
	.byte $80,$80,$a0,$b0,$80

Lbl_ef2c:
	.byte $30,$20,$04,$30,$30

Lbl_ef31:
	ldx #$80
	ldy #$20
	jmp Lbl_c463

Lbl_ef38:
	lda #$00
	sta $0c
	ldy #$07

Lbl_ef3e:
	tya 
	pha 
	lda a:$006d,y
	beq Lbl_ef4a
	bpl Lbl_ef50
	jsr Lbl_ef58

Lbl_ef4a:
	pla 
	tay 
	dey 
	bpl Lbl_ef3e
	rts 

Lbl_ef50:
	ldx #$08
	jsr Lbl_ef5a
	jmp Lbl_ef4a

Lbl_ef58:
	ldx #$00

Lbl_ef5a:
	stx $01
	tya 
	clc 
	adc $01
	tax 
	lda $85,x
	sta $49
	lda $95,x
	sta $4a
	lda $75,x
	sta $00
	lda $06d7,x
	ldx $4a
	inx 
	bne Lbl_ef76

Lbl_ef75:
	rts 

Lbl_ef76:
	pha 
	tya 
	jsr Lbl_c589
	pla 
	cmp #$64
	bcc Lbl_ef75
	cmp #$66
	bcs Lbl_efc2
	cmp #$64
	bne Lbl_ef75
	lda $bb
	beq Lbl_ef96
	bmi Lbl_ef96
	cmp #$0f
	bcc Lbl_ef31
	lda #$ec
	bne Lbl_ef98

Lbl_ef96:
	lda #$e8

Lbl_ef98:
	sta $4b
	lda #$03
	sta $4d
	lda #$08
	jsr Lbl_f194
	lda #$18
	jsr Lbl_f18c
	lda #$08
	sta $00
	lda #$02
	sta $01

Lbl_efb0:
	jsr Lbl_f102
	lda #$02
	jsr Lbl_f19a
	jsr Lbl_f18a
	inc $00
	dec $01
	bne Lbl_efb0
	rts 

Lbl_efc2:
	cmp #$68
	bcs Lbl_f011
	cmp #$66
	bne Lbl_efd1
	lda #$2c
	ldx #$0c
	jmp Lbl_efd5

Lbl_efd1:
	lda #$20
	ldx #$4c

Lbl_efd5:
	sta $02
	stx $4b
	lda $49
	sec 
	sbc #$04
	sta $49
	lda #$03
	sta $4d
	lda #$04
	sta $01

Lbl_efe8:
	ldx #$03

Lbl_efea:
	lda $02
	jsr Lbl_f10d
	inc $4b
	lda #$08
	jsr Lbl_f18c
	inc $02
	dex 
	bne Lbl_efea
	lda $49
	sec 
	sbc #$18
	sta $49
	lda #$08
	jsr Lbl_f194
	lda #$0d
	jsr Lbl_f19a
	dec $01
	bne Lbl_efe8
	rts 

Lbl_f011:
	cmp #$74
	bcs Lbl_f020
	sbc #$67
	tax 
	lda Lbl_f1b4,x
	tax 
	lda #$40
	bne Lbl_f02a

Lbl_f020:
	cmp #$7c
	bcs Lbl_f035
	sbc #$73
	asl a 
	tax 
	lda #$80

Lbl_f02a:
	stx $4c

Lbl_f02c:
	sta $4b
	lda #$01

Lbl_f030:
	sta $4d
	jmp Lbl_f178

Lbl_f035:
	cmp #$84
	bcs Lbl_f060
	sbc #$7b
	tax 
	lda Lbl_f1c0,x
	sta $4b
	lda #$02
	sta $4d
	lda $043f
	cmp #$7d
	bcc Lbl_f05c
	cmp #$82
	bcs Lbl_f05c
	inc $dc
	lda $dc
	and #$01
	bne Lbl_f05c
	tya 
	jmp Lbl_c589

Lbl_f05c:
	tya 
	jmp Lbl_f104

Lbl_f060:
	cmp #$90
	bcs Lbl_f07e
	sbc #$83
	tax 
	lda Lbl_f1b4,x
	sta $4c
	lda $00
	and #$01
	bne Lbl_f076
	lda #$02
	bne Lbl_f078

Lbl_f076:
	lda #$01

Lbl_f078:
	ldx #$20
	stx $4b
	bne Lbl_f030

Lbl_f07e:
	cmp #$9c
	bcs Lbl_f08e
	sbc #$8f
	tax 
	lda Lbl_f1b4,x
	sta $4c
	lda #$60
	bne Lbl_f02c

Lbl_f08e:
	cmp #$a0
	bcs Lbl_f09e
	sbc #$9b
	tax 
	lda Lbl_f1b0,x
	sta $4c
	lda #$a0
	bne Lbl_f02c

Lbl_f09e:
	cmp #$a8
	beq Lbl_f0e0
	bcs Lbl_f0b5
	sbc #$9f
	tax 
	lda Lbl_f1c8,x
	sta $4c
	lda #$c0
	sta $4b
	lda #$02
	jmp Lbl_f030

Lbl_f0b5:
	cmp #$ad
	bcs Lbl_f0e0
	cmp #$ab
	bcc Lbl_f0c1
	lda #$8c
	bne Lbl_f0c3

Lbl_f0c1:
	lda #$82

Lbl_f0c3:
	sta $4b
	lda #$01
	sta $4d
	lda #$08
	sta $00
	lda #$20
	jsr Lbl_f0e1
	jsr Lbl_f192
	lda #$02
	jsr Lbl_f0e1
	jsr Lbl_f18a
	jsr Lbl_f102

Lbl_f0e0:
	rts 

Lbl_f0e1:
	sta $02
	jsr Lbl_f102
	lda $02
	jsr Lbl_f19a
	inc $00
	rts 

Lbl_f0ee:
	lda $1f
	sta $49
	lda $20
	sta $4a
	lda #$aa
	sta $4b
	lda #$00
	sta $4d
	lda #$01
	bne Lbl_f104

Lbl_f102:
	lda $00

Lbl_f104:
	jsr Lbl_f116
	jsr Lbl_c5a6
	jmp Lbl_f17f

Lbl_f10d:
	jsr Lbl_f116
	jsr Lbl_c56d
	jmp Lbl_f17f

Lbl_f116:
	pha 
	lda $49
	sec 
	sbc #$34
	sta $49
	lda $4a
	sec 
	sbc #$10
	sta $4a
	pla 
	rts 

Lbl_f127:
	lda $b4
	sta $49
	lda $b5
	sta $4a
	lda $ab
	bmi Lbl_f154
	dec $ac
	bne Lbl_f154
	lda $ab
	sta $ac
	lda $b2
	cmp #$63
	beq Lbl_f150
	and #$01
	bne Lbl_f14b
	lda $ca
	bne Lbl_f14b
	inc $cd

Lbl_f14b:
	inc $b2
	jmp Lbl_f154

Lbl_f150:
	lda #$60
	sta $b2

Lbl_f154:
	lda $b2
	sec 
	sbc #$60
	sta $4c
	lda #$e0
	sta $4b
	lda #$00
	sta $4d
	lda #$00
	jsr Lbl_f179
	lda $3d
	and #$0f
	tax 
	lda Lbl_f1a0,x
	sta $4c
	lda #$00
	sta $4b
	ldy #$02

Lbl_f178:
	tya 

Lbl_f179:
	jsr Lbl_f116
	jsr Lbl_c5c7

Lbl_f17f:
	pha 
	lda #$34
	jsr Lbl_f18c
	jsr Lbl_f192
	pla 
	rts 

Lbl_f18a:
	lda #$10

Lbl_f18c:
	clc 
	adc $49
	sta $49
	rts 

Lbl_f192:
	lda #$10

Lbl_f194:
	clc 
	adc $4a
	sta $4a
	rts 

Lbl_f19a:
	clc 
	adc $4b
	sta $4b
	rts 

Lbl_f1a0:
	.byte $0b,$0a,$09,$08,$07,$06,$05,$04,$03,$02,$01,$00,$0f,$0e,$0d,$0c

Lbl_f1b0:
	.byte $00,$0c,$08,$04

Lbl_f1b4:
	.byte $00,$0f,$0d,$0c,$0b,$09,$08,$07,$05,$04,$03,$01

Lbl_f1c0:
	.byte $aa,$aa,$0a,$2a,$4a,$4a,$6a,$8a

Lbl_f1c8:
	.byte $00,$0e,$0c,$0a,$08,$06,$04,$02,$e8,$e0,$19,$d0,$09,$a2,$00,$c8
	.byte $c0,$0a,$d0,$02,$a0,$00,$60,$e8,$e0,$28,$4c,$d3,$f1,$a9,$18,$ca
	.byte $10,$06,$aa,$88,$10,$02,$a0,$09,$60,$a9,$27,$d0,$f2,$a5,$5d,$f0
	.byte $0e,$a4,$5e,$b9,$95,$f3,$f0,$07,$18,$65,$5d,$a8,$b9,$94,$f3,$85
	.byte $02,$4a,$29,$1e,$a8,$b9,$f4,$f3,$85,$00,$b9,$f5,$f3,$85,$01,$a5
	.byte $02,$29,$03,$a8,$b9,$f0,$f3,$18,$65,$00,$85,$00,$90,$02,$e6,$01
	.byte $a9,$00,$85,$02,$a6,$5c,$f0,$06,$20,$5f,$f2,$ca,$d0,$fa,$60,$a5
	.byte $00,$85,$5f,$a5,$01,$85,$60,$a9,$00,$85,$61,$a5,$5b,$f0,$17,$c9
	.byte $05,$90,$0a,$e9,$05,$e6,$5f,$d0,$f6,$e6,$60,$d0,$f2,$aa,$f0,$06
	.byte $20,$7a,$f2,$ca,$d0,$fa,$60,$a5,$02,$18,$69,$05,$85,$02,$c9,$19
	.byte $90,$0f,$a9,$00,$85,$02,$a5,$00,$18,$69,$08,$85,$00,$90,$02,$e6
	.byte $01,$60,$a5,$61,$d0,$34,$a0,$00,$b1,$5f,$85,$61,$4a,$4a,$29,$1e
	.byte $a8,$b9,$0e,$f4,$85,$63,$b9,$0f,$f4,$85,$64,$a5,$61,$29,$07,$a8
	.byte $b9,$06,$f4,$18,$65,$63,$85,$63,$90,$02,$e6,$64,$a5,$02,$85,$62
	.byte $a9,$05,$85,$61,$e6,$5f,$d0,$02,$e6,$60,$c6,$61,$a4,$62,$b1,$63
	.byte $e6,$62,$60,$a6,$5a,$a4,$58,$20,$e5,$f1,$86,$5a,$84,$58,$86,$5c
	.byte $84,$5e,$a5,$59,$85,$5b,$a5,$57,$85,$5d,$a2,$00,$8a,$48,$20,$f5
	.byte $f1,$20,$37,$f2,$68,$aa,$20,$7a,$f2,$9d,$01,$02,$e8,$e0,$22,$f0
	.byte $d1,$e6,$5b,$a5,$5b,$c9,$28,$d0,$ed,$a9,$00,$85,$5b,$e6,$5d,$a5
	.byte $5d,$c9,$0a,$d0,$d7,$a9,$00,$85,$5d,$f0,$d1,$a6,$5a,$a4,$58,$20
	.byte $d0,$f1,$86,$5a,$84,$58,$8a,$18,$69,$03,$c9,$19,$90,$03,$e9,$19
	.byte $c8,$aa,$c8,$98,$c9,$0a,$90,$a6,$e9,$0a,$a8,$b0,$a1,$a6,$59,$a4
	.byte $57,$20,$f1,$f1,$86,$59,$84,$57,$86,$5b,$84,$5d,$a5,$5a,$85,$5c
	.byte $a5,$58,$85,$5e,$a2,$00,$8a,$48,$20,$f5,$f1,$20,$37,$f2,$68,$aa
	.byte $20,$7a,$f2,$9d,$01,$02,$e8,$e0,$20,$f0,$22,$e6,$5c,$a5,$5c,$c9
	.byte $19,$b0,$08,$8a,$48,$20,$5f,$f2,$4c,$43,$f3,$a9,$00,$85,$5c,$e6
	.byte $5e,$a5,$5e,$c9,$0a,$d0,$cf,$a9,$00,$85,$5e,$f0,$c9,$60,$a6,$59
	.byte $a4,$57,$20,$df,$f1,$86,$59,$84,$57,$8a,$18,$69,$20,$c9,$28,$90
	.byte $03,$e9,$28,$c8,$aa,$c0,$0a,$d0,$9f,$a0,$00,$f0,$9b,$00,$0a,$13
	.byte $1c,$25,$2e,$37,$40,$49,$52,$00,$00,$00,$00,$00,$00,$00,$1e,$1f
	.byte $00,$01,$02,$03,$04,$00,$00,$20,$21,$00,$05,$06,$07,$00,$0e,$00
	.byte $00,$00,$00,$08,$09,$00,$00,$00,$00,$16,$00,$0a,$00,$00,$0b,$0c
	.byte $00,$00,$17,$00,$00,$00,$00,$00,$0d,$00,$00,$00,$00,$00,$0f,$10
	.byte $00,$00,$00,$18,$19,$00,$11,$12,$13,$00,$00,$00,$1a,$1b,$00,$00
	.byte $00,$00,$14,$15,$00,$1c,$1d,$00,$00,$28,$50,$78,$2e,$f4,$ce,$f4
	.byte $6e,$f5,$0e,$f6,$ae,$f6,$4e,$f7,$ee,$f7,$8e,$f8,$2e,$f9,$00,$19
	.byte $32,$4b,$64,$7d,$96,$af,$7e,$f9,$46,$fa,$0e,$fb,$d6,$fb,$9e,$fc
	.byte $66,$fd,$2e,$fe,$f6,$fe,$be,$ff,$86,$00,$4e,$01,$16,$02,$de,$02
	.byte $a6,$03,$6e,$04,$36,$05,$0d,$00,$00,$00,$00,$00,$0d,$00,$00,$0d
	.byte $00,$00,$0d,$00,$00,$00,$00,$00,$00,$0d,$00,$00,$00,$0d,$0d,$00
	.byte $00,$00,$00,$0d,$00,$00,$00,$00,$0d,$00,$00,$00,$00,$0d,$00,$05
	.byte $38,$31,$38,$32,$30,$04,$12,$1f,$17,$17,$17,$17,$17,$17,$12,$2c
	.byte $28,$28,$28,$28,$28,$28,$00,$14,$3b,$40,$3c,$41,$10,$10,$00,$00
	.byte $08,$25,$3c,$3f,$3c,$3d,$05,$37,$36,$04,$05,$37,$36,$04,$17,$17
	.byte $17,$17,$17,$17,$17,$35,$28,$28,$28,$28,$28,$19,$3a,$39,$3b,$3c
	.byte $3d,$0a,$0a,$23,$33,$3c,$3c,$3d,$3f,$3e,$3c,$3e,$3c,$3c,$05,$37
	.byte $37,$36,$04,$05,$37,$36,$40,$3c,$3f,$22,$14,$3e,$41,$3b,$25,$1e
	.byte $3b,$2e,$12,$25,$3f,$41,$3c,$3d,$41,$32,$32,$3b,$3c,$3f,$3d,$3f
	.byte $3f,$3c,$3b,$3b,$3b,$3b,$05,$37,$37,$36,$04,$04,$00,$00,$40,$3f
	.byte $41,$3b,$3b,$3b,$30,$00,$25,$1e,$25,$3d,$3c,$3e,$3b,$30,$3c,$3f
	.byte $3c,$0b,$1c,$15,$3b,$24,$1c,$21,$1a,$21,$0d,$00,$20,$20,$00,$0c
	.byte $3b,$40,$3c,$3c,$3d,$3f,$00,$07,$40,$0b,$1e,$41,$25,$41,$12,$3b
	.byte $25,$41,$25,$0b,$3b,$25,$0c,$3b,$40,$3f,$3d,$3c,$3c,$41,$07,$40
	.byte $3f,$3c,$33,$3c,$41,$25,$3c,$3f,$3d,$3e,$3d,$3e,$3c,$41,$3b,$33
	.byte $3e,$3e,$3f,$0b,$1e,$3f,$3d,$3e,$3e,$3e,$3d,$3c,$0b,$40,$3b,$3f
	.byte $3e,$3f,$0b,$10,$40,$3f,$3f,$41,$25,$3d,$3c,$3c,$0b,$3b,$25,$33
	.byte $3d,$41,$3b,$40,$41,$22,$3c,$3f,$3f,$3f,$3c,$3f,$0b,$2e,$41,$40
	.byte $3d,$1e,$41,$3b,$3b,$2e,$0b,$25,$3f,$3c,$0b,$3b,$22,$00,$1c,$29
	.byte $29,$29,$29,$21,$00,$0d,$08,$3f,$3d,$3c,$3c,$3e,$0b,$40,$14,$3c
	.byte $3e,$3d,$3c,$3e,$41,$25,$00,$08,$25,$3f,$1e,$3e,$3f,$3c,$00,$1a
	.byte $15,$16,$25,$0b,$3b,$3b,$00,$00,$00,$00,$1a,$1b,$21,$1a,$3c,$3e
	.byte $3d,$33,$3b,$3b,$1d,$21,$1e,$3f,$3e,$29,$29,$0e,$2a,$00,$41,$40
	.byte $0e,$00,$00,$29,$21,$00,$25,$3f,$0e,$05,$26,$00,$0d,$00,$1b,$29
	.byte $29,$29,$27,$00,$00,$00,$0d,$05,$36,$00,$05,$37,$36,$00,$18,$09
	.byte $3b,$2e,$14,$16,$3b,$2f,$12,$3b,$24,$05,$36,$04,$1a,$27,$12,$3e
	.byte $3c,$3f,$3f,$3c,$32,$2e,$34,$29,$21,$20,$1a,$1b,$21,$00,$05,$38
	.byte $31,$37,$37,$36,$05,$37,$08,$25,$3d,$3c,$3c,$41,$25,$3d,$14,$3b
	.byte $3b,$3b,$16,$25,$3d,$3e,$0d,$1a,$1b,$21,$00,$14,$25,$3f,$00,$0d
	.byte $00,$00,$0d,$00,$1a,$15,$36,$04,$05,$36,$04,$04,$05,$26,$3c,$3d
	.byte $3d,$3c,$3d,$3c,$1c,$27,$3d,$3e,$0b,$3b,$33,$3b,$2f,$00,$3e,$3e
	.byte $3b,$3b,$3d,$41,$2a,$0d,$25,$3f,$3d,$3d,$3e,$3f,$41,$2f,$14,$40
	.byte $3e,$3f,$3e,$3d,$0b,$2a,$0c,$25,$3e,$3d,$1e,$0b,$3b,$24,$13,$3c
	.byte $3e,$3e,$3f,$3c,$33,$22,$0d,$08,$25,$3f,$0b,$3b,$3b,$2f,$34,$29
	.byte $29,$1b,$21,$1a,$1b,$27,$0d,$06,$32,$31,$38,$32,$26,$00,$00,$08
	.byte $3b,$10,$10,$24,$00,$00,$00,$14,$3b,$10,$10,$10,$30,$00,$0d,$06
	.byte $3d,$3c,$3f,$3c,$3c,$2f,$18,$29,$29,$29,$21,$1a,$1b,$27,$06,$32
	.byte $30,$00,$00,$00,$0d,$05,$08,$3b,$22,$0d,$00,$05,$38,$40,$1a,$21
	.byte $00,$05,$38,$3b,$40,$3f,$0d,$05,$38,$3b,$3b,$40,$0b,$40,$06,$3b
	.byte $3b,$3b,$3c,$3f,$3c,$3e,$37,$36,$05,$37,$36,$04,$00,$00,$3c,$3c
	.byte $3c,$3d,$3c,$41,$30,$00,$3d,$33,$40,$3f,$3d,$0b,$3b,$26,$3e,$3f
	.byte $3e,$3d,$3f,$3c,$3e,$2a,$3e,$3d,$3e,$1e,$3c,$3c,$0b,$24,$00,$05
	.byte $37,$37,$37,$37,$37,$38,$0c,$3b,$3b,$40,$3c,$3c,$3d,$3c,$13,$1c
	.byte $29,$29,$15,$3b,$25,$3c,$05,$36,$04,$05,$36,$1a,$15,$16,$1a,$15
	.byte $16,$1c,$1b,$2d,$00,$0d,$3b,$10,$10,$3b,$3b,$3b,$3b,$3f,$3c,$3c
	.byte $3d,$3c,$3d,$3d,$3c,$3d,$3c,$3d,$3f,$3d,$3f,$0b,$3b,$40,$3b,$1e
	.byte $3c,$3f,$3c,$33,$3c,$0b,$1a,$29,$1b,$1b,$21,$1a,$1b,$1b,$3f,$3f
	.byte $3f,$41,$3b,$40,$41,$24,$3d,$3c,$3d,$3f,$3d,$0b,$3b,$24,$0b,$3b
	.byte $1e,$10,$3f,$3c,$1d,$21,$3b,$10,$10,$10,$3b,$1c,$27,$00,$1b,$21
	.byte $1a,$1b,$21,$00,$00,$0d,$0d,$0c,$31,$36,$0c,$32,$32,$32,$00,$07
	.byte $40,$24,$07,$40,$3c,$3e,$18,$09,$25,$3c,$3c,$0b,$40,$0b,$12,$3b
	.byte $10,$10,$3b,$40,$0b,$1c,$18,$15,$1c,$1b,$21,$1a,$21,$0d,$32,$30
	.byte $0d,$04,$04,$05,$38,$30,$3c,$1c,$34,$09,$3c,$3c,$3f,$24,$22,$00
	.byte $04,$08,$10,$3b,$1d,$21,$2d,$06,$3b,$3b,$16,$1c,$27,$00,$18,$15
	.byte $22,$20,$0d,$00,$00,$0d,$0d,$00,$05,$37,$37,$37,$36,$00,$00,$06
	.byte $3b,$10,$10,$24,$20,$00,$12,$3b,$3c,$41,$3b,$3b,$32,$2e,$00,$14
	.byte $3b,$25,$41,$3b,$24,$00,$18,$2d,$14,$3c,$3e,$3c,$41,$30,$0d,$04
	.byte $06,$3b,$25,$3d,$0b,$24,$12,$3e,$3d,$3d,$3c,$3f,$41,$22,$12,$25
	.byte $3f,$0b,$3b,$3c,$0b,$2e,$12,$3b,$10,$10,$3b,$3b,$1c,$2d,$00,$1a
	.byte $1b,$1b,$21,$20,$00,$0d,$0d,$04,$05,$36,$04,$05,$38,$31,$0c,$1f
	.byte $17,$17,$17,$17,$17,$17,$13,$2c,$28,$28,$28,$28,$28,$28,$00,$1a
	.byte $15,$16,$16,$16,$41,$3b,$00,$0c,$32,$32,$32,$32,$25,$41,$37,$36
	.byte $05,$38,$0f,$0f,$30,$00,$17,$17,$17,$2b,$02,$03,$41,$2f,$28,$28
	.byte $28,$28,$28,$39,$3e,$2a,$40,$3e,$3c,$1e,$3c,$3c,$0b,$22,$25,$3f
	.byte $3c,$3c,$3d,$41,$24,$0d,$00,$07,$40,$3c,$3c,$3d,$3d,$3f,$12,$3b
	.byte $25,$33,$3c,$3f,$0b,$3b,$12,$3b,$40,$3f,$41,$3b,$40,$3c,$12,$40
	.byte $3f,$3c,$3f,$3d,$3e,$3c,$12,$25,$3d,$3c,$3c,$3e,$0b,$3b,$41,$3b
	.byte $3b,$3b,$25,$0b,$3b,$2e,$25,$41,$33,$1e,$41,$3b,$24,$00,$3c,$3f
	.byte $3d,$3e,$0b,$3b,$3b,$2e,$3c,$3c,$3f,$3f,$3c,$41,$3b,$2f,$3b,$40
	.byte $3c,$3c,$3c,$3f,$41,$2a,$12,$3b,$3b,$3b,$3b,$25,$3c,$41,$18,$09
	.byte $3c,$41,$40,$3d,$3c,$0b,$12,$16,$3c,$3f,$3f,$3f,$3c,$3c,$0c,$30
	.byte $14,$3b,$3b,$3b,$1e,$10,$13,$16,$2e,$1a,$1b,$1b,$29,$29,$40,$3e
	.byte $3c,$3c,$3d,$3d,$0b,$24,$25,$0b,$33,$40,$3f,$0b,$3b,$22,$3c,$3d
	.byte $3c,$0b,$16,$16,$3b,$2e,$33,$3e,$1d,$21,$04,$04,$20,$00,$29,$29
	.byte $27,$00,$1a,$15,$2e,$00,$11,$0e,$01,$32,$31,$37,$36,$04,$07,$1e
	.byte $3b,$3d,$3c,$3d,$3c,$3c,$14,$25,$3c,$3f,$3c,$3e,$3c,$3d,$00,$20
	.byte $20,$08,$33,$3f,$3d,$3e,$00,$00,$06,$40,$3f,$3c,$3f,$3e,$04,$05
	.byte $36,$00,$04,$00,$04,$00,$3c,$41,$3b,$30,$14,$32,$1c,$2d,$3c,$3e
	.byte $3c,$41,$30,$20,$00,$00,$3d,$0b,$40,$3f,$41,$32,$26,$00,$0b,$3b
	.byte $3f,$3d,$3f,$33,$2a,$00,$0d,$06,$40,$3f,$41,$1e,$40,$3f,$18,$09
	.byte $25,$41,$25,$3d,$0b,$3b,$0c,$40,$3c,$3f,$3c,$3f,$3c,$3c,$13,$3b
	.byte $10,$10,$3b,$10,$10,$10,$34,$29,$29,$1b,$15,$1c,$1b,$1b,$3d,$3c
	.byte $3c,$3f,$3c,$0b,$3b,$2f,$25,$3d,$41,$24,$09,$1e,$1d,$27,$3c,$3f
	.byte $0b,$24,$08,$10,$2a,$00,$3b,$3b,$3b,$22,$14,$3b,$3b,$2e,$1b,$1b
	.byte $21,$00,$0d,$1a,$21,$0d,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
	.byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$ff
	.byte $fc,$fc,$fc,$fc,$f1,$bb,$d4,$bb,$bb,$fe,$de,$d4,$bb,$bb,$f1,$d0
	.byte $d1,$bb,$bb,$fc,$d2,$d3,$bb,$bb,$ba,$ba,$ba,$ba,$ba,$ba,$ba,$ba
	.byte $ba,$ba,$b4,$ba,$ba,$b8,$b9,$ba,$b8,$b9,$bb,$bb,$ba,$b1,$b1,$b1
	.byte $b1,$ba,$ba,$ba,$ba,$ba,$aa,$aa,$aa,$aa,$aa,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$d6,$b1,$b1,$b1,$a5,$d6,$80,$80,$80,$80,$80,$80
	.byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$90,$9e
	.byte $9d,$9c,$8d,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$90
	.byte $9d,$9c,$80,$8f,$bb,$bb,$bb,$90,$bb,$bb,$bb,$bb,$80,$80,$80,$80
	.byte $90,$80,$80,$80,$8f,$bb,$80,$80,$8f,$bb,$bb,$80,$91,$bb,$bb,$bb
	.byte $90,$92,$bb,$bb,$bb,$80,$80,$99,$bb,$bb,$80,$91,$92,$bb,$bb,$80
	.byte $97,$bb,$bb,$bb,$91,$bb,$bb,$bb,$bb,$97,$bb,$bb,$bb,$bb,$99,$bb
	.byte $bb,$bb,$bb,$98,$bb,$bb,$bb,$bb,$99,$a4,$a3,$bb,$bb,$97,$bb,$bb
	.byte $bb,$bb,$98,$bb,$bb,$bb,$bb,$bb,$d9,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$8a,$bb,$d8,$bb,$bb,$97,$bb,$bb,$bb,$bb,$98,$bb,$bb,$bb,$bb
	.byte $a9,$a9,$a9,$a9,$a9,$ba,$db,$dc,$dd,$ba,$ba,$eb,$ec,$ed,$ba,$ba
	.byte $ba,$ba,$ba,$ba,$aa,$aa,$aa,$aa,$aa,$bb,$bb,$bb,$e0,$bb,$e1,$e1
	.byte $e1,$e5,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$80,$80,$80,$80,$9c,$80,$80,$80,$91,$bb,$80,$80,$80,$98
	.byte $bb,$80,$80,$80,$91,$bb,$80,$80,$99,$bb,$bb,$80,$80,$80,$80,$80
	.byte $80,$81,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
	.byte $80,$80,$80,$80,$ff,$ff,$ff,$ff,$ff,$f2,$80,$f2,$80,$f2,$80,$80
	.byte $80,$80,$80,$f3,$80,$f3,$80,$f3,$fc,$fc,$fc,$fc,$fc,$9c,$8d,$90
	.byte $9e,$9d,$bb,$bb,$bb,$bb,$bb,$a9,$a9,$a9,$a9,$a9,$ba,$ba,$ba,$ba
	.byte $ba,$ba,$ba,$a7,$ba,$ba,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc
	.byte $bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$bc,$80
	.byte $80,$f1,$ff,$ff,$80,$80,$80,$f2,$80,$80,$80,$80,$80,$80,$80,$80
	.byte $80,$f3,$80,$80,$80,$f1,$fc,$fc,$80,$80,$80,$80,$91,$80,$80,$80
	.byte $80,$99,$80,$80,$80,$80,$97,$80,$80,$80,$80,$98,$80,$80,$80,$80
	.byte $89,$80,$80,$99,$bb,$bb,$80,$80,$88,$8a,$bb,$80,$80,$80,$89,$bb
	.byte $80,$80,$80,$80,$97,$80,$80,$80,$80,$87,$87,$bb,$bb,$bb,$bb,$80
	.byte $88,$8a,$bb,$bb,$80,$80,$89,$bb,$bb,$80,$80,$80,$87,$bb,$80,$80
	.byte $80,$80,$87,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$a1,$8a,$bb
	.byte $bb,$bb,$80,$88,$a1,$9f,$bb,$80,$80,$80,$80,$87,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $a0,$a2,$88,$a1,$9f,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$b1,$b1,$b1,$b1,$b1,$80,$80
	.byte $80,$80,$91,$80,$80,$80,$80,$99,$80,$80,$80,$80,$88,$80,$80,$80
	.byte $80,$80,$80,$80,$80,$80,$80,$ba,$ba,$b0,$b0,$ba,$b2,$b2,$b2,$b2
	.byte $ba,$bc,$bc,$bd,$bb,$a7,$bc,$bd,$b6,$b7,$ba,$b6,$b7,$ba,$ba,$ba
	.byte $88,$bb,$bb,$bb,$bb,$80,$87,$86,$88,$bb,$80,$80,$80,$80,$88,$80
	.byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$a1,$85,$a2,$88,$a0,$80,$80,$80,$80,$80,$80,$80,$80
	.byte $80,$80,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $a0,$bb,$9f,$83,$85,$80,$85,$80,$80,$80,$80,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$a0,$bb,$bb,$83,$85,$80,$bb
	.byte $bb,$95,$80,$80,$c9,$c0,$c0,$c0,$c1,$c2,$c0,$cd,$c7,$c4,$bb,$c0
	.byte $cd,$c4,$c4,$c9,$c0,$c8,$c3,$c4,$c2,$c5,$c5,$c5,$c3,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$d6,$a6,$b1,$b1,$b1,$88,$9f,$a0,$a1,$85,$80,$80,$80,$80,$80
	.byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$bb
	.byte $bb,$bb,$83,$85,$bb,$a0,$85,$80,$80,$85,$80,$80,$80,$80,$80,$80
	.byte $80,$80,$80,$80,$80,$80,$80,$80,$bb,$bb,$bb,$83,$85,$bb,$bb,$bb
	.byte $84,$80,$bb,$bb,$85,$80,$80,$bb,$84,$80,$80,$80,$86,$80,$80,$80
	.byte $80,$ba,$ba,$ba,$b8,$b9,$ba,$b8,$b9,$e2,$e1,$a8,$bb,$bb,$e0,$bb
	.byte $a8,$bb,$bb,$e0,$bb,$ae,$bb,$bb,$e0,$bb,$bb,$bb,$bb,$bb,$96,$bb
	.byte $bb,$bb,$bb,$95,$bb,$bb,$bb,$bb,$94,$bb,$bb,$bb,$bb,$84,$bb,$bb
	.byte $bb,$bb,$8c,$bb,$bb,$bb,$e0,$bb,$bb,$bb,$bb,$e4,$e1,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$f3,$f3,$f3,$f3
	.byte $80,$bb,$bb,$bb,$bb,$f0,$bb,$bb,$bb,$bb,$f0,$bb,$bb,$bb,$bb,$f0
	.byte $bb,$bb,$fd,$f4,$80,$bb,$bb,$84,$80,$80,$bb,$86,$80,$80,$80,$85
	.byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$ba,$ba
	.byte $b0,$b0,$ba,$b2,$b2,$b2,$b2,$b2,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$ef,$bb,$ef,$bb
	.byte $ef,$f2,$f2,$f2,$f2,$f2,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
	.byte $bb,$bb,$8b,$8d,$80,$bb,$bb,$bb,$95,$80,$bb,$bb,$bb,$94,$80,$bb
	.byte $bb,$bb,$96,$80,$bb,$bb,$bb,$bb,$8e,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$b6,$bb,$bb,$b6,$b7,$ba,$b6,$b7,$ba,$b4,$ba,$ba,$ba,$ba
	.byte $ba,$ba,$d6,$bb,$a7,$af,$af,$d6,$a6,$b2,$b2,$b2,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$93,$80,$80,$80,$80
	.byte $8e,$80,$80,$80,$80,$85,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
	.byte $80,$80,$80,$80,$8c,$80,$80,$80,$80,$95,$80,$80,$80,$80,$94,$80
	.byte $80,$80,$80,$95,$80,$80,$80,$80,$84,$80,$80,$80,$80,$8c,$80,$80
	.byte $80,$80,$bb,$8e,$80,$80,$80,$bb,$95,$80,$80,$80,$bb,$8b,$93,$80
	.byte $80,$bb,$bb,$94,$80,$80,$8e,$80,$80,$80,$80,$bb,$8d,$80,$80,$80
	.byte $bb,$bb,$8c,$80,$80,$bb,$bb,$8b,$8d,$80,$bb,$bb,$bb,$96,$9b,$8e
	.byte $80,$80,$80,$80,$bb,$9e,$8d,$80,$80,$bb,$bb,$bb,$8b,$9d,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$8d,$90,$9e,$9d,$9c,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bc,$bc,$c0,$c0,$c1,$bc,$bc,$c0,$cd,$c4,$bb,$c6,$c0,$cd,$c4
	.byte $c6,$c8,$c5,$c3,$c4,$c2,$c5,$c5,$c5,$c3,$f3,$f3,$f3,$f3,$f6,$fb
	.byte $ef,$bb,$ef,$bb,$f2,$f2,$f2,$f2,$f2,$80,$80,$80,$80,$80,$80,$80
	.byte $80,$80,$80,$bb,$bb,$bb,$bb,$bb,$bb,$d0,$d1,$fb,$bb,$bb,$d2,$d3
	.byte $fb,$bb,$bb,$fc,$fc,$bb,$d6,$b1,$b1,$b1,$a5,$d6,$80,$80,$80,$80
	.byte $80,$80,$80,$80,$80,$80,$8d,$80,$80,$80,$80,$bb,$8e,$9b,$80,$80
	.byte $bb,$bb,$bb,$9e,$8d,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$8d
	.byte $90,$9e,$9d,$9c,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$80,$80
	.byte $80,$90,$9d,$90,$9c,$9e,$bb,$bb,$92,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$af,$af,$a8,$bb,$d6,$b2,$b2,$b2,$a5
	.byte $d6,$bb,$bb,$bb,$bb,$d6,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $ba,$ba,$b0,$b0,$a7,$ba,$ba,$ba,$ba,$b2,$ba,$ba,$ba,$a8,$bb,$ba
	.byte $ba,$b8,$b9,$bb,$b8,$b9,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$e1,$e1,$e1,$e1,$e1,$bb,$ef,$ef,$bb
	.byte $bb,$ef,$ef,$ef,$ef,$bb,$bb,$ef,$ef,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $e1,$e1,$e1,$e9,$e1,$bb,$bb,$bb,$e0,$bb,$bb,$bb,$bb,$e0,$bb,$bb
	.byte $bb,$bb,$e0,$bb,$bb,$bb,$bb,$e0,$bb,$e1,$e1,$e1,$ea,$e1,$df,$c0
	.byte $be,$e0,$bb,$c0,$ca,$d5,$e0,$bb,$bf,$d5,$cf,$e0,$bb,$bb,$bb,$bb
	.byte $e0,$bb,$e1,$e1,$e1,$e8,$e1,$bb,$fe,$fb,$fe,$fb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$e2,$e1
	.byte $bb,$bb,$bb,$e0,$bb,$bb,$bb,$bb,$e0,$bb,$bb,$bb,$bb,$e0,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$e1,$e1,$e1,$e3,$bb,$bb,$bb,$bb,$e0,$bb,$bb,$bb
	.byte $bb,$e0,$bb,$bb,$bb,$bb,$e0,$bb,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff

.segment "VECTORS"

	.word $c04c
	.word $c000
	.word $c2c0
