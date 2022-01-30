;*********************************************************************************************
;** Original File: C:\Users\William\Desktop\New folder (2)\Mach Rider (J) (PRG1) [!].nes
;** 16K PRG-ROM pages: $02
;** 8K CHR-ROM pages: $01
;** Mirroring: vertical
;** SRAM: not available
;** Trainer: not available
;** Mapper: $00
;*********************************************************************************************

.segment "PRG_0"

Lbl_8000:
	lda #$00
	sta $2000

Lbl_8005:
	lda $2002
	bpl Lbl_8005

Lbl_800a:
	lda $2002
	bmi Lbl_800a

Lbl_800f:
	lda $2002
	bpl Lbl_800f
	sei 
	cld 
	ldx #$ff
	txs 
	lda #$00
	tax 

Lbl_801c:
	sta $00,x
	sta $0100,x
	inx 
	bne Lbl_801c
	sta $2001
	lda #$1e
	sta $06
	lda #$90
	sta $05
	ldx #$0f

Lbl_8031:
	lda $0500,x
	cmp Lbl_ff99,x
	bne Lbl_803e
	dex 
	bpl Lbl_8031
	bmi Lbl_805f

Lbl_803e:
	ldx #$0e

Lbl_8040:
	lda #$00
	sta $0794,x
	dex 
	bpl Lbl_8040
	lda #$02
	sta $0795
	sta $079a
	lda #$01
	sta $079f
	ldx #$7f
	lda #$21

Lbl_8059:
	sta $0700,x
	dex 
	bpl Lbl_8059

Lbl_805f:
	jsr Lbl_ead5
	ldx #$5e

Lbl_8064:
	lda Lbl_ff99,x
	sta $0500,x
	dex 
	bpl Lbl_8064
	jmp Lbl_cc07

Lbl_8070:
	pha 
	txa 
	pha 
	tya 
	pha 
	lda #$00
	sta $2003
	lda #$02
	sta $4014
	lda $d9
	cmp $d8
	beq Lbl_809a
	jsr Lbl_cf9f
	lda #$20
	ldy #$00
	jsr Lbl_d1c0
	sty $2005
	sty $2005
	lda $05
	sta $2000

Lbl_809a:
	ldy #$01
	sty $4016
	dey 
	sty $4016
	lda $4016
	and #$03
	sta $54
	beq Lbl_80b4
	lda $5b
	bpl Lbl_80b4
	lda #$00
	sta $5b

Lbl_80b4:
	lda $4016
	and #$03
	sta $55
	beq Lbl_80c5
	lda $5b
	bpl Lbl_80c5
	lda #$01
	sta $5b

Lbl_80c5:
	lda $4016
	and #$03
	sta $51
	lda $4016
	and #$03
	sta $52
	lda #$ff
	sta $57
	sta $58
	ldy #$01
	lda $4016
	and #$03
	beq Lbl_80e4
	sty $57

Lbl_80e4:
	dey 
	lda $4016
	and #$03
	beq Lbl_80ee
	sty $57

Lbl_80ee:
	ldy #$01
	lda $4016
	and #$03
	beq Lbl_80f9
	sty $58

Lbl_80f9:
	dey 
	lda $4016
	and #$03
	beq Lbl_8103
	sty $58

Lbl_8103:
	lda $54
	tax 
	ora $0186
	ora $0187
	sta $54
	lda $0186
	sta $0187
	stx $0186
	lda $52
	cmp $53
	sta $53
	bne Lbl_8123
	lda #$00
	sta $52

Lbl_8123:
	ldy $6d
	beq Lbl_8135
	sty $54
	dey 
	sty $55
	dey 
	sty $58
	lda $14
	bne Lbl_8135
	sty $57

Lbl_8135:
	lda #$01
	sta $07
	lda $58
	bmi Lbl_8141
	lda #$ff
	sta $57

Lbl_8141:
	pla 
	tay 
	pla 
	tax 
	pla 
	rti 

Lbl_8147:
	jmp Lbl_8147

Lbl_814a:
	.byte $a2,$00,$bd,$0c,$d3,$85,$63,$a9,$80,$85,$5c,$a9,$02,$85,$5d,$a2
	.byte $06,$a9,$00,$95,$6d,$ca,$d0,$fb,$a2,$04,$95,$00,$ca,$10,$fb,$20
	.byte $5c,$d2,$4c,$13,$82

Lbl_816f:
	.byte $00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$0a,$0a,$0a,$0a,$0a,$0f
	.byte $0f,$0f,$0f,$0f

Lbl_8183:
	lda #$00
	sta $1f
	jmp Lbl_81ab

Lbl_818a:
	ldy $1e
	cpy #$03
	bne Lbl_8193
	jmp Lbl_9b02

Lbl_8193:
	sty $1f
	lda #$00
	sta $6d
	jsr Lbl_8da0
	lda #$00
	ldx $55
	beq Lbl_81ab
	ldx $58
	bne Lbl_81ab
	ldx $17
	lda Lbl_816f,x

Lbl_81ab:
	sta $17
	lda #$01
	sta $a7
	sta $a8
	jsr Lbl_d446
	ldx #$06
	lda #$00

Lbl_81ba:
	sta $6d,x
	dex 
	bne Lbl_81ba
	sta $76
	sta $78
	ldy $6d
	bne Lbl_81d3
	ldx #$04

Lbl_81c9:
	sta $00,x
	dex 
	bpl Lbl_81c9
	lda Lbl_d30c
	sta $63

Lbl_81d3:
	lda $6d
	beq Lbl_81e4
	ldy $22
	sty $17
	iny 
	cpy #$03
	bcc Lbl_81e2
	ldy #$00

Lbl_81e2:
	sty $22

Lbl_81e4:
	lda #$ff
	jsr Lbl_eaf9
	lda #$f8
	sta $84
	sta $85
	lda #$00
	sta $18

Lbl_81f3:
	ldx #$22
	lda #$00

Lbl_81f7:
	sta $2c,x
	dex 
	bpl Lbl_81f7
	ldx #$07

Lbl_81fe:
	lda #$ff
	sta $e0,x
	sta $f0,x
	dex 
	bpl Lbl_81fe
	lda #$00
	sta $0182
	lda #$06
	sta $3d
	jsr Lbl_d216
	lda #$a0
	sta $40
	ldx $17
	lda Lbl_8543,x
	ldy $1f
	beq Lbl_8223
	lda Lbl_8557,x

Lbl_8223:
	sta $0180
	tax 
	lda Lbl_c2ec,x
	sta $08
	lda Lbl_c2f4,x
	sta $09
	ldy #$00
	lda ($08),y
	sta $74
	sta $017e
	ldx #$ff
	stx $017f
	stx $0184
	inx 
	stx $0185
	lda #$f8
	sta $84
	sta $85
	sta $75
	inc $20
	lda #$00
	sta $a8
	sta $b2
	ldx $17
	lda Lbl_856b,x
	jsr Lbl_ebae
	lda #$06
	sta $a7
	sta $3d
	lda #$32
	sta $92
	lda #$00
	sta $97
	sta $98
	lda #$b9
	sta $b1

Lbl_8272:
	jsr Lbl_8caa
	jsr Lbl_8da9
	jsr Lbl_8c97
	lda $6d
	beq Lbl_82cc
	lda $6e
	beq Lbl_828c
	dec $6e
	lda $6f
	sta $58
	jmp Lbl_82aa

Lbl_828c:
	lda $38
	bne Lbl_829a
	lda $37
	cmp #$28
	bcc Lbl_82aa
	lda #$01
	bne Lbl_82a2

Lbl_829a:
	lda $37
	cmp #$d8
	bcs Lbl_82aa
	lda #$00

Lbl_82a2:
	sta $58
	sta $6f
	lda #$0e
	sta $6e

Lbl_82aa:
	lda #$00
	sta $32
	lda $41
	bne Lbl_82b8
	lda $40
	cmp #$64
	bcc Lbl_82cc

Lbl_82b8:
	inc $32
	lda $41
	bne Lbl_82c4
	lda $40
	cmp #$c8
	bcc Lbl_82cc

Lbl_82c4:
	inc $32
	lda $41
	beq Lbl_82cc
	inc $32

Lbl_82cc:
	ldx $0181
	beq Lbl_8308
	lda $41
	lsr a 
	lda $40
	ror a 
	cmp #$64
	bcs Lbl_82e2

Lbl_82db:
	ldx #$00
	stx $0181
	beq Lbl_8308

Lbl_82e2:
	ldy #$00
	ldx #$00
	lda ($28),y
	beq Lbl_82ee
	bmi Lbl_82ed
	inx 

Lbl_82ed:
	inx 

Lbl_82ee:
	lda Lbl_857f,x
	cmp $58
	beq Lbl_82db
	lda Lbl_8582,x
	sta $3e
	lda Lbl_857f,x
	sta $58
	lda $c1
	ora #$08
	sta $c1
	dec $0181

Lbl_8308:
	lda $3b
	beq Lbl_8312
	dec $3b
	lda $3c
	sta $58

Lbl_8312:
	jsr Lbl_912f
	jsr Lbl_ac36
	jsr Lbl_ff0c
	inc $3f
	lda $46
	cmp #$50
	bcc Lbl_834a
	lda $63
	bpl Lbl_8329
	sta $70

Lbl_8329:
	jsr Lbl_835b
	lda $5f
	cmp #$50
	bcs Lbl_8334
	lda #$50

Lbl_8334:
	sta $5f
	lda #$06
	sta $3d
	lda #$96
	sta $92
	lda #$00
	sta $97
	sta $98
	lda $6d
	beq Lbl_834a
	sta $70

Lbl_834a:
	lda $70
	beq Lbl_8351
	jmp Lbl_92a4

Lbl_8351:
	lda $48
	bne Lbl_8358
	jmp Lbl_8272

Lbl_8358:
	jmp Lbl_93f0

Lbl_835b:
	jsr Lbl_d456
	sta $43
	sta $44
	sta $45
	sta $46
	rts 

Lbl_8367:
	lda $36
	asl a 
	lda $35
	rol a 
	sta $2005
	lda #$00
	sta $2005
	adc $05
	sta $2000
	lda $20
	bne Lbl_837f
	rts 

Lbl_837f:
	lda $46
	bne Lbl_83eb
	lda $41
	sta $a6
	lda $40
	asl a 
	rol $a6
	asl a 
	rol $a6
	asl a 
	rol $a6
	asl a 
	rol $a6
	ldy $32
	lda Lbl_8585,y
	sta $09
	lda Lbl_8589,y
	sta $0a
	ldy $a6
	lda ($09),y
	asl a 
	sta $0b
	lda $40
	sec 
	sbc $0b
	sta $40
	lda $41
	sbc #$00
	sta $41
	bpl Lbl_83ba
	jsr Lbl_d456

Lbl_83ba:
	lda $54
	beq Lbl_83eb
	ldy $32
	lda Lbl_860d,y
	sta $09
	lda Lbl_8611,y
	sta $0a
	ldy $a6
	lda ($09),y
	sta $0b
	tya 
	clc 
	adc #$40
	tay 
	lda ($09),y
	asl a 
	rol $0b
	clc 
	adc $42
	sta $42
	lda $40
	adc $0b
	sta $40
	lda $41
	adc #$00
	sta $41

Lbl_83eb:
	lda $46
	beq Lbl_8401
	lda $40
	sec 
	sbc #$05
	sta $40
	lda $41
	sbc #$00
	sta $41
	bpl Lbl_8401
	jsr Lbl_d456

Lbl_8401:
	lda $41
	sta $08
	sta $0a
	lda $40
	sta $0b
	asl a 
	rol $08
	asl a 
	rol $08
	asl a 
	rol $08
	sta $09
	lda $46
	beq Lbl_841d

Lbl_841a:
	jmp Lbl_84b4

Lbl_841d:
	lda $58
	bmi Lbl_841a
	lda $0a
	beq Lbl_846a
	lda $3b
	bne Lbl_846a
	lda $0182
	beq Lbl_846a
	lda $71
	and #$01
	bne Lbl_846a
	ldy #$00
	lda ($28),y
	bpl Lbl_843f
	eor #$ff
	clc 
	adc #$01

Lbl_843f:
	cmp #$28
	bcs Lbl_845b
	cmp #$18
	bcs Lbl_8453
	cmp #$08
	bcc Lbl_846a
	lda $0b
	cmp #$72
	bcs Lbl_8461
	bcc Lbl_846a

Lbl_8453:
	lda $0b
	cmp #$54
	bcs Lbl_8461
	bcc Lbl_846a

Lbl_845b:
	lda $0b
	cmp #$36
	bcc Lbl_846a

Lbl_8461:
	lda $c1
	ora #$04
	sta $c1
	jmp Lbl_8497

Lbl_846a:
	lda $58
	bne Lbl_8484
	lda $39
	clc 
	adc $09
	sta $39
	lda $37
	adc $08
	sta $37
	lda $38
	adc #$00
	sta $38
	jmp Lbl_8497

Lbl_8484:
	lda $39
	sec 
	sbc $09
	sta $39
	lda $37
	sbc $08
	sta $37
	lda $38
	sbc #$00
	sta $38

Lbl_8497:
	lda $41
	bne Lbl_84a1
	lda $40
	cmp #$c8
	bcc Lbl_84b4

Lbl_84a1:
	lda $42
	sec 
	sbc #$40
	sta $42
	lda $40
	sbc #$00
	sta $40
	lda $41
	sbc #$00
	sta $41

Lbl_84b4:
	lda $3b
	beq Lbl_84b9
	rts 

Lbl_84b9:
	ldy #$00
	lda ($28),y
	bpl Lbl_84c4
	eor #$ff
	clc 
	adc #$01

Lbl_84c4:
	sta $08
	lda $41
	lsr a 
	lda $40
	ror a 
	lsr a 
	lsr a 
	lsr a 
	sta $09
	lda #$00
	sta $0a
	sta $0b
	sta $0c
	ldx #$05

Lbl_84db:
	lsr $08
	bcc Lbl_84ec
	lda $0b
	clc 
	adc $09
	sta $0b
	lda $0c
	adc $0a
	sta $0c

Lbl_84ec:
	asl $09
	rol $0a
	dex 
	bpl Lbl_84db
	asl $0b
	rol $0c
	lda ($28),y
	bmi Lbl_8511
	lda $39
	sec 
	sbc $0b
	sta $39
	lda $37
	sbc $0c
	sta $37
	lda $38
	sbc #$00
	sta $38
	jmp Lbl_8524

Lbl_8511:
	lda $39
	clc 
	adc $0b
	sta $39
	lda $37
	adc $0c
	sta $37
	lda $38
	adc #$00
	sta $38

Lbl_8524:
	lda $38
	bmi Lbl_8534
	lda $37
	cmp #$90
	bcc Lbl_8542
	lda #$90
	sta $37
	bne Lbl_853e

Lbl_8534:
	lda $37
	cmp #$70
	bcs Lbl_8542
	lda #$70
	sta $37

Lbl_853e:
	lda #$00
	sta $39

Lbl_8542:
	rts 

Lbl_8543:
	.byte $00,$01,$02,$03,$04,$05,$06,$00,$05,$06,$07,$00,$05,$06,$07,$01
	.byte $05,$06,$06,$07

Lbl_8557:
	.byte $00,$00,$01,$02,$03,$04,$02,$00,$03,$01,$03,$04,$02,$05,$00,$05
	.byte $06,$06,$07,$07

Lbl_856b:
	.byte $00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.byte $01,$01,$01,$01

Lbl_857f:
	.byte $01,$00,$01

Lbl_8582:
	.byte $06,$00,$06

Lbl_8585:
	.byte $8d,$ad,$cd,$ed

Lbl_8589:
	.byte $85,$85,$85,$85,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$02
	.byte $02,$03,$03,$03,$03,$03,$04,$04,$04,$04,$05,$05,$06,$06,$07,$07
	.byte $08,$08,$08,$08,$01,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02
	.byte $02,$02,$02,$02,$03,$03,$03,$03,$04,$04,$04,$04,$05,$05,$06,$06
	.byte $07,$07,$08,$08,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.byte $01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
	.byte $02,$02,$03,$03,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.byte $01,$01,$02,$02

Lbl_860d:
	.byte $15,$55,$95,$d5

Lbl_8611:
	.byte $86,$86,$86,$86,$02,$02,$02,$03,$03,$03,$03,$03,$04,$04,$04,$04
	.byte $03,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$20,$40,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$80,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$02,$02,$02,$03,$03,$03,$03,$03,$04,$04,$04,$04
	.byte $03,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$20,$40,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$80,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$02,$02,$02,$03,$03,$03,$03,$03,$04,$04,$04,$04
	.byte $03,$03,$03,$03,$03,$03,$02,$02,$02,$02,$01,$01,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$20,$40,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $c0,$80,$40,$00,$20,$00,$c0,$80,$40,$00,$80,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$02,$02,$02,$02
	.byte $02,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$02,$03,$03,$03,$03
	.byte $03,$03,$03,$00,$40,$60,$80,$a0,$c0,$e0,$00,$20,$40,$60,$80,$a0
	.byte $b0,$c0,$d0,$e0,$c0,$a0,$80,$60,$40,$20,$00,$e0,$00,$20,$40,$40
	.byte $40,$40,$20,$ff,$00,$14,$28,$00,$00,$00

Lbl_871b:
	jsr Lbl_cf0d
	lda #$20
	ldx #$00
	sta $10
	stx $11
	inx 

Lbl_8727:
	lda $10
	ldy $11
	jsr Lbl_d1c0
	ldy #$00
	lda #$21

Lbl_8732:
	jsr Lbl_9af5
	iny 
	bne Lbl_8732
	jsr Lbl_8caa
	lda $10
	clc 
	adc #$04
	sta $10
	dex 
	bpl Lbl_8727
	lda #$8c
	ldy #$64
	jsr Lbl_d00a
	ldx $17
	lda $015e
	beq Lbl_8757
	txa 
	and #$03
	tax 

Lbl_8757:
	lda Lbl_8a97,x
	sta $08
	lda Lbl_8aab,x
	sta $09
	ldy #$00

Lbl_8763:
	lda ($08),y
	sta $0134,y
	iny 
	cpy #$08
	bcc Lbl_8763
	jsr Lbl_d1b8
	ldx #$01

Lbl_8772:
	lda #$23
	ldy #$c0
	jsr Lbl_d1c0
	ldy #$00

Lbl_877b:
	lda #$00
	cpy #$20
	bcs Lbl_8790
	lda #$05
	cpy #$18
	bcs Lbl_8790
	lda #$55
	cpy #$10
	bcs Lbl_8790
	lda Lbl_8c87,y

Lbl_8790:
	sta $2007
	iny 
	cpy #$40
	bcc Lbl_877b
	lda #$27
	ldy #$c0
	jsr Lbl_d1c0
	lda #$55
	ldy #$00

Lbl_87a3:
	sta $2007
	cpy #$17
	bne Lbl_87ac
	lda #$05

Lbl_87ac:
	cpy #$1f
	bne Lbl_87b2
	lda #$00

Lbl_87b2:
	iny 
	cpy #$40
	bcc Lbl_87a3
	dex 
	bpl Lbl_8772
	jsr Lbl_8caa
	lda #$89
	ldy #$a0
	jsr Lbl_896c
	lda $1f
	beq Lbl_87d2
	lda #$8a
	ldy #$3e
	jsr Lbl_cfee
	jmp Lbl_87dd

Lbl_87d2:
	lda $18
	beq Lbl_87dd
	lda #$8a
	ldy #$2d
	jsr Lbl_cfee

Lbl_87dd:
	lda $1f
	beq Lbl_87e8
	lda #$8a
	ldy #$36
	jsr Lbl_cfee

Lbl_87e8:
	jsr Lbl_8caa
	lda #$21
	ldy #$c0
	jsr Lbl_8951
	lda #$25
	ldy #$c0
	jsr Lbl_8951
	jsr Lbl_8caa
	lda #$23
	sta $10
	lda #$b0
	sta $11
	ldx #$0e

Lbl_8806:
	lda $10
	ldy $11
	jsr Lbl_d1c0
	txa 
	tay 
	lda #$20

Lbl_8811:
	sta $2007
	dey 
	bpl Lbl_8811
	lda $11
	sec 
	sbc #$1f
	sta $11
	bcs Lbl_8822
	dec $10

Lbl_8822:
	dex 
	bpl Lbl_8806
	ldx #$0e
	lda #$27
	sta $10
	lda #$a0
	sta $11

Lbl_882f:
	lda $10
	ldy $11
	jsr Lbl_d1c0
	txa 
	tay 
	lda #$20

Lbl_883a:
	sta $2007
	dey 
	bpl Lbl_883a
	lda $11
	sec 
	sbc #$20
	sta $11
	bcs Lbl_884b
	dec $10

Lbl_884b:
	dex 
	bpl Lbl_882f
	lda $05
	ora #$04
	sta $2000
	lda #$21
	sta $10
	lda #$de
	sta $11
	ldy #$00
	ldx #$00

Lbl_8861:
	stx $09
	lda Lbl_8c29,x
	sta $08
	lda $10
	sta $2006
	lda $11
	sta $2006
	ldx #$00

Lbl_8874:
	lda Lbl_8c39,y
	sta $2007
	iny 
	inx 
	cpx $08
	bcc Lbl_8874
	lda $11
	clc 
	adc #$1f
	sta $11
	bcc Lbl_888b
	inc $10

Lbl_888b:
	ldx $09
	inx 
	cpx #$10
	bcc Lbl_8861
	lda #$25
	sta $10
	lda #$c0
	sta $11
	ldy #$00
	ldx #$00

Lbl_889e:
	stx $09
	lda Lbl_8c29,x
	sta $08
	lda $10
	sta $2006
	lda $11
	sta $2006
	ldx #$00

Lbl_88b1:
	lda Lbl_8c39,y
	bpl Lbl_88b9
	clc 
	adc #$20

Lbl_88b9:
	sta $2007
	iny 
	inx 
	cpx $08
	bcc Lbl_88b1
	lda $11
	clc 
	adc #$21
	sta $11
	bcc Lbl_88cd
	inc $10

Lbl_88cd:
	ldx $09
	inx 
	cpx #$10
	bcc Lbl_889e
	lda #$21
	ldy #$df
	jsr Lbl_d1c0
	lda #$60
	sta $2007
	lda $05
	sta $2000
	jsr Lbl_8caa
	lda #$21
	ldy #$00
	jsr Lbl_d1c0
	ldx $17
	lda Lbl_8a5b,x
	ldy Lbl_8a47,x
	jsr Lbl_8964
	lda #$25
	ldy #$00
	jsr Lbl_d1c0
	ldx $17
	lda Lbl_8a83,x
	ldy Lbl_8a6f,x
	jsr Lbl_8964
	lda #$6f
	sta $0200
	lda #$20
	sta $0202
	lda #$00
	sta $0203
	lda #$fe
	sta $0201
	jsr Lbl_8caa
	jsr Lbl_8da9
	ldx #$ff
	stx $017d
	stx $017f
	stx $72
	jsr Lbl_8caa
	lda #$3f
	ldy #$00
	jsr Lbl_d1c0
	ldx #$00

Lbl_893c:
	lda $0134,x
	sta $2007
	inx 
	cpx #$08
	bcc Lbl_893c
	jsr Lbl_d1b8
	lda #$20
	ldy #$00
	jmp Lbl_d1c0

Lbl_8951:
	jsr Lbl_d1c0
	lda #$9f
	jsr Lbl_895b
	lda #$9e

Lbl_895b:
	ldy #$20

Lbl_895d:
	sta $2007
	dey 
	bne Lbl_895d

Lbl_8963:
	rts 

Lbl_8964:
	sty $10
	sta $11
	ldy #$00
	beq Lbl_897e

Lbl_896c:
	sty $10
	sta $11
	ldy #$00
	lda ($10),y
	sta $2006
	iny 
	lda ($10),y
	sta $2006
	iny 

Lbl_897e:
	lda ($10),y
	beq Lbl_8963
	cmp #$20
	bcs Lbl_8996
	tax 
	iny 
	bne Lbl_898c
	inc $11

Lbl_898c:
	lda ($10),y

Lbl_898e:
	sta $2007
	dex 
	bne Lbl_898e
	beq Lbl_8999

Lbl_8996:
	sta $2007

Lbl_8999:
	iny 
	bne Lbl_897e
	inc $11
	bne Lbl_897e
	jsr Lbl_c200
	asl Lbl_c323,x

Lbl_89a6:
	.byte $22

Lbl_89a7:
	.byte $c4,$09,$c5,$c6,$09,$c5,$c6,$08,$c5,$c7,$22,$22,$c8,$21,$21,$53
	.byte $43,$4f,$52,$45,$21,$21,$c9,$21,$3d,$5b,$45,$4e,$45,$52,$47,$59
	.byte $c9,$9f,$9f,$9f,$80,$a0,$9f,$9f,$9f,$ca,$22,$22,$c8,$09,$21,$c9
	.byte $21,$3c,$5b,$06,$21,$c9,$9e,$9e,$81,$82,$a2,$a1,$9e,$9e,$ca,$22
	.byte $22,$c8,$21,$21,$54,$4f,$21,$47,$4f,$21,$21,$c9,$21,$3b,$5b,$53
	.byte $48,$4f,$54,$21,$21,$c9,$21,$83,$84,$20,$20,$a4,$a3,$21,$ca,$22
	.byte $22,$c8,$09,$21,$c9,$21,$3a,$5b,$06,$21,$c9,$85,$86,$20,$20,$20
	.byte $20,$a6,$a5,$ca,$22,$22,$cb,$09,$cc,$cd,$09,$cc,$cd,$08,$cc,$ce
	.byte $22,$cf,$1e,$20,$d0,$00,$20,$4f,$52,$49,$44,$45,$52,$21,$00,$20
	.byte $84,$21,$54,$49,$4d,$45,$00,$20,$4f,$44,$49,$53,$54,$9a,$21,$00

Lbl_8a47:
	.byte $bf,$bf,$bf,$0f,$0f,$0f,$0f,$49,$49,$49,$bf,$bf,$bf,$0f,$0f,$0f
	.byte $0f,$49,$49,$49

Lbl_8a5b:
	.byte $8a,$8a,$8a,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8a,$8a,$8a,$8b,$8b,$8b
	.byte $8b,$8b,$8b,$8b

Lbl_8a6f:
	.byte $bf,$bf,$bf,$0f,$0f,$0f,$0f,$49,$49,$49,$bf,$bf,$bf,$0f,$0f,$0f
	.byte $0f,$49,$49,$49

Lbl_8a83:
	.byte $8a,$8a,$8a,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8a,$8a,$8a,$8b,$8b,$8b
	.byte $8b,$8b,$8b,$8b

Lbl_8a97:
	.byte $89,$91,$99,$a1,$a9,$b1,$b9,$c1,$c9,$d1,$d9,$e1,$e9,$f1,$f9,$01
	.byte $09,$11,$19,$21

Lbl_8aab:
	.byte $8b,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8b,$8c
	.byte $8c,$8c,$8c,$8c,$1f,$23,$1f,$23,$05,$23,$f8,$06,$23,$f3,$18,$23
	.byte $f4,$23,$23,$f8,$03,$23,$f4,$23,$f8,$f3,$04,$23,$f8,$0f,$23,$f3
	.byte $f4,$f9,$f1,$f5,$f9,$23,$f1,$f5,$23,$f4,$f4,$f9,$23,$23,$f1,$f5
	.byte $f9,$f8,$0c,$23,$f2,$f6,$f6,$fa,$f2,$f6,$fa,$23,$f2,$f6,$f7,$22
	.byte $f6,$fa,$2c,$2e,$f2,$f6,$fa,$f4,$fa,$2c,$2d,$2f,$2d,$2e,$2c,$2d
	.byte $2e,$02,$23,$00,$1f,$23,$1f,$23,$05,$23,$ec,$0b,$23,$f0,$5c,$11
	.byte $23,$5c,$ed,$0b,$23,$c1,$c0,$ed,$10,$23,$c0,$ee,$23,$5c,$23,$f0
	.byte $ec,$03,$23,$ec,$5c,$ed,$c1,$22,$ee,$10,$23,$c1,$ef,$f0,$c0,$23
	.byte $c1,$f0,$23,$23,$f0,$f0,$22,$ef,$c1,$c1,$ee,$0e,$23,$00,$1f,$23
	.byte $1f,$23,$0e,$23,$fc,$fc,$23,$23,$fc,$fc,$23,$fc,$fb,$12,$23,$fd
	.byte $fd,$03,$23,$fc,$fc,$23,$23,$fc,$fc,$23,$fb,$c1,$ee,$10,$23,$05
	.byte $fd,$23,$fc,$fc,$23,$23,$fc,$fc,$23,$fb,$c1,$ee,$10,$23,$05,$fd
	.byte $23,$fc,$fc,$23,$23,$fc,$fc,$23,$fb,$c1,$ee,$0a,$23,$00,$18,$29
	.byte $08,$37,$18,$0f,$01,$21,$1b,$2a,$01,$30,$1b,$13,$06,$21,$18,$38
	.byte $09,$30,$18,$0f,$30,$12,$31,$27,$03,$0f,$31,$37,$10,$11,$1b,$02
	.byte $10,$30,$1b,$37,$16,$21,$28,$19,$37,$30,$28,$0f,$12,$3b,$1b,$2a
	.byte $0c,$0f,$1b,$16,$37,$21,$27,$1b,$17,$36,$27,$01,$31,$34,$18,$38
	.byte $0a,$30,$18,$23,$04,$31,$10,$27,$1c,$0f,$10,$30,$19,$21,$18,$19
	.byte $37,$30,$18,$0f,$12,$37,$1b,$2a,$0c,$0f,$1b,$27,$16,$21,$39,$1b
	.byte $17,$36,$39,$30,$0f,$36,$27,$38,$0a,$30,$27,$0f,$26,$31,$28,$32
	.byte $01,$30,$28,$30,$14,$12,$18,$37,$09,$30,$18,$0f,$10,$26,$1b,$26
	.byte $09,$30,$1b,$0f,$21,$25,$13,$27,$21,$30,$13,$0f,$21,$3a,$19,$28
	.byte $21,$30,$19,$16,$27,$2c,$28,$33,$18,$30,$28,$07,$29,$12

Lbl_8c29:
	.byte $02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$04,$04,$04,$03,$02,$01

Lbl_8c39:
	.byte $80,$82,$81,$84,$83,$86,$85,$88,$87,$8a,$89,$8b,$82,$89,$8d,$8f
	.byte $8c,$8e,$86,$8c,$90,$92,$8c,$91,$94,$8c,$93,$96,$82,$8c,$95,$97
	.byte $84,$8c,$95,$98,$86,$8c,$95,$99,$8c,$95,$8c,$3f,$00,$20,$0f,$27
	.byte $08,$37,$0f,$0f,$08,$23,$0f,$0f,$2a,$30,$0f,$0f,$10,$30,$0f,$0f
	.byte $02,$37,$0f,$0f,$12,$38,$0f,$0f,$27,$30,$0f,$0f,$16,$37

Lbl_8c87:
	.byte $bf,$af,$ef,$af,$af,$3f,$0f,$cf,$fb,$fa,$fe,$fa,$fa,$f3,$f0,$fc

Lbl_8c97:
	lda #$20
	ldy #$00
	jsr Lbl_d1c0
	sty $2005
	sty $2005
	lda $06
	sta $2001
	rts 

Lbl_8caa:
	ldy #$01

Lbl_8cac:
	lda #$00
	sta $07
	lda $6d
	beq Lbl_8ce1
	lda $14
	bne Lbl_8cca
	lda $51
	beq Lbl_8cca

Lbl_8cbc:
	ldx #$ff
	txs 
	lda $015e
	beq Lbl_8cc7
	jmp Lbl_9b02

Lbl_8cc7:
	jmp Lbl_cc07

Lbl_8cca:
	lda $52
	beq Lbl_8ce1
	lda #$00
	sta $52
	lda $14
	beq Lbl_8cbc
	ldx #$ff
	txs 
	inx 
	stx $6d
	stx $14
	jmp Lbl_818a

Lbl_8ce1:
	lda $07
	beq Lbl_8ce1
	lda $a8
	bne Lbl_8cf1
	lda $a7
	bne Lbl_8cf5
	lda $6d
	beq Lbl_8cfc

Lbl_8cf1:
	dey 
	bne Lbl_8cac
	rts 

Lbl_8cf5:
	lda $52
	sta $a7
	jmp Lbl_8cf1

Lbl_8cfc:
	lda $52
	bne Lbl_8d03
	jmp Lbl_8cf1

Lbl_8d03:
	sta $a8
	tya 
	pha 
	txa 
	pha 
	lda #$01
	sta $1d
	lda #$08
	jsr Lbl_eaf9
	jsr Lbl_8d69
	lda #$1e
	jsr Lbl_8d5c
	lda #$01
	sta $a9

Lbl_8d1e:
	lda $a9
	bne Lbl_8d26
	lda $52
	bne Lbl_8d30

Lbl_8d26:
	lda $52
	sta $a9
	jsr Lbl_8d66
	jmp Lbl_8d1e

Lbl_8d30:
	jsr Lbl_8caa
	jsr Lbl_8d69
	lda #$08
	jsr Lbl_eaf9
	lda #$1e
	jsr Lbl_8d5c
	jsr Lbl_8caa
	lda #$00
	sta $a8
	sta $1d
	jsr Lbl_eaf9
	lda #$01
	sta $a7
	pla 
	tax 
	pla 
	tay 
	jmp Lbl_8cf1

Lbl_8d57:
	.byte $45,$53,$55,$41,$50

Lbl_8d5c:
	sta $ad
	jsr Lbl_8d66
	dec $ad
	bne Lbl_8d66
	rts 

Lbl_8d66:
	jsr Lbl_8caa

Lbl_8d69:
	jsr Lbl_8c97
	jsr Lbl_ebec
	ldy #$0c
	lda #$f0

Lbl_8d73:
	lda $0200,y
	iny 
	bne Lbl_8d73
	ldy #$00
	jsr Lbl_ff00
	jsr Lbl_ff00
	jsr Lbl_ff00
	jsr Lbl_ff00
	jsr Lbl_ff00
	lda $36
	asl a 
	lda $35
	rol a 
	sta $2005
	lda #$00
	sta $2005
	adc $05
	sta $2000
	jmp Lbl_ff0c

Lbl_8da0:
	lda #$00
	sta $07

Lbl_8da4:
	lda $07
	beq Lbl_8da4
	rts 

Lbl_8da9:
	jsr Lbl_8f21
	lda $3f
	and #$01
	beq Lbl_8db5
	jmp Lbl_8e3c

Lbl_8db5:
	lda $1f
	bne Lbl_8de2
	lda $05
	sta $2000
	lda #$20
	ldy #$a5
	jsr Lbl_d1c0
	lda $61
	bne Lbl_8dcb
	lda #$11

Lbl_8dcb:
	eor #$30
	sta $2007
	lda $60
	ora #$30
	sta $2007
	ldy #$3e
	sty $2007
	iny 
	sty $2007
	bne Lbl_8dfa

Lbl_8de2:
	lda $05
	sta $2000
	lda #$20
	ldy #$a6
	jsr Lbl_d1c0
	lda $66
	ora #$30
	sta $2007
	lda $65
	jsr Lbl_8f10

Lbl_8dfa:
	lda #$20
	ldy #$63
	jsr Lbl_d1c0
	ldy #$00

Lbl_8e03:
	lda a:$0000,y
	ora #$30
	sta $2007
	iny 
	cpy #$05
	bne Lbl_8e03
	lda #$30
	sta $2007
	lda $05
	ora #$04
	sta $2000
	ldy $33
	lda Lbl_90b7,y
	sta $10
	lda Lbl_90c3,y
	sta $11
	lda #$21
	ldy #$df
	jsr Lbl_d1c0
	ldy #$00

Lbl_8e31:
	lda ($10),y
	sta $2007
	iny 
	cpy #$10
	bcc Lbl_8e31
	rts 

Lbl_8e3c:
	lda $05
	sta $2000
	lda #$20
	ldy #$6f
	jsr Lbl_d1c0
	lda $1f
	bne Lbl_8e82
	lda $18
	beq Lbl_8e63
	ldx #$05
	ldy $63

Lbl_8e54:
	lda #$5f
	dey 
	bpl Lbl_8e5b
	lda #$21

Lbl_8e5b:
	sta $2007
	dex 
	bne Lbl_8e54
	beq Lbl_8eac

Lbl_8e63:
	lda $5c
	sta $08
	lda $5d
	asl $08
	rol a 
	asl $08
	rol a 
	asl $08
	rol a 
	cmp #$14
	bcc Lbl_8e78
	lda #$14

Lbl_8e78:
	sta $08
	sta $5e
	jsr Lbl_8ef2
	jmp Lbl_8eac

Lbl_8e82:
	lda $69
	bne Lbl_8e88
	lda #$11

Lbl_8e88:
	eor #$30
	sta $2007
	lda $68
	bne Lbl_8e97
	ldy $69
	bne Lbl_8e97
	lda #$11

Lbl_8e97:
	eor #$30
	sta $2007
	lda $67
	ora #$30
	sta $2007
	ldy #$3e
	sty $2007
	iny 
	sty $2007

Lbl_8eac:
	lda $5f
	lsr a 
	lsr a 
	cmp #$14
	bcc Lbl_8eb6
	lda #$14

Lbl_8eb6:
	sta $08
	lda #$20
	ldy #$af
	jsr Lbl_d1c0
	jsr Lbl_8ef2
	lda $05
	sta $2000
	lda $32
	asl a 
	asl a 
	asl a 
	eor #$ff
	clc 
	adc #$28
	sta $0204
	sta $0208
	lda #$bf
	sta $0205
	sta $0209
	lda #$23
	sta $0206
	sta $020a
	lda #$68
	sta $0207
	lda #$70
	sta $020b
	rts 

Lbl_8ef2:
	ldx #$05

Lbl_8ef4:
	lda $08
	cmp #$04
	bcs Lbl_8f02
	adc #$bb
	ldy #$00
	sty $08
	beq Lbl_8f08

Lbl_8f02:
	sbc #$04
	sta $08
	lda #$bf

Lbl_8f08:
	sta $2007
	dex 
	bne Lbl_8ef4
	rts 

Lbl_8f0f:
	.byte $60

Lbl_8f10:
	pha 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	jsr Lbl_8f19
	pla 

Lbl_8f19:
	and #$0f
	ora #$30
	sta $2007
	rts 

Lbl_8f21:
	lda $3f
	lsr a 
	bcc Lbl_8f6a
	lda $017c
	cmp $017d
	beq Lbl_8f47
	sta $017d
	asl a 
	asl a 
	tax 
	lda #$3f
	ldy #$18
	jsr Lbl_d1c0
	ldy #$04

Lbl_8f3d:
	lda Lbl_8fcf,x
	sta $2007
	inx 
	dey 
	bne Lbl_8f3d

Lbl_8f47:
	lda $017e
	cmp $017f
	beq Lbl_8f6a
	sta $017f
	asl a 
	asl a 
	tax 
	lda #$3f
	ldy #$14
	jsr Lbl_d1c0
	ldy #$04

Lbl_8f5e:
	lda Lbl_902f,x
	sta $2007
	inx 
	dey 
	bne Lbl_8f5e
	beq Lbl_8f8a

Lbl_8f6a:
	lda $71
	cmp $72
	beq Lbl_8f8a
	sta $72
	lda #$3f
	ldy #$10
	jsr Lbl_d1c0
	lda $71
	asl a 
	asl a 
	tax 
	ldy #$04

Lbl_8f80:
	lda Lbl_9097,x
	sta $2007
	inx 
	dey 
	bne Lbl_8f80

Lbl_8f8a:
	lda $3f
	and #$1c
	ldy $0182
	bne Lbl_8fb8
	lsr a 
	lsr a 
	ldx $17
	clc 
	adc Lbl_9083,x
	tax 
	lda Lbl_904b,x
	sta $0137
	lda #$3f
	ldy #$00
	jsr Lbl_d1c0
	ldx #$00

Lbl_8fab:
	lda $0134,x
	sta $2007
	inx 
	cpx #$08
	bne Lbl_8fab
	beq Lbl_8fcc

Lbl_8fb8:
	tax 
	lda #$3f
	ldy #$00
	jsr Lbl_d1c0
	ldy #$04

Lbl_8fc2:
	lda Lbl_9063,x
	sta $2007
	inx 
	dey 
	bne Lbl_8fc2

Lbl_8fcc:
	jmp Lbl_d1b8

Lbl_8fcf:
	.byte $18,$21,$30,$10,$18,$0f,$30,$10,$18,$0f,$0c,$2c,$18,$10,$0f,$30
	.byte $18,$0f,$0f,$30,$09,$0f,$11,$30,$18,$0f,$0f,$30,$00,$0f,$16,$30
	.byte $0c,$0f,$37,$30,$09,$0f,$2a,$30,$09,$0f,$24,$30,$18,$0f,$02,$30
	.byte $18,$0f,$01,$30,$18,$0f,$0f,$30,$0c,$0f,$30,$10,$09,$0f,$05,$30
	.byte $18,$00,$00,$00,$00,$00,$00,$30,$0c,$0f,$16,$30,$09,$0f,$15,$30
	.byte $09,$0f,$21,$30,$18,$0f,$0f,$30,$18,$0f,$12,$30,$18,$0f,$16,$30

Lbl_902f:
	.byte $18,$0f,$26,$34,$18,$0f,$2a,$37,$18,$0f,$16,$27,$18,$0f,$12,$31
	.byte $18,$0f,$10,$00,$18,$0f,$30,$14,$18,$0f,$25,$30

Lbl_904b:
	.byte $0f,$0a,$1a,$2a,$2a,$1a,$0a,$0f,$0f,$06,$16,$26,$26,$16,$06,$0f
	.byte $0f,$01,$11,$21,$21,$11,$01,$0f

Lbl_9063:
	.byte $10,$30,$02,$0f,$10,$30,$02,$0a,$10,$30,$02,$1a,$10,$30,$02,$2a
	.byte $10,$30,$02,$2a,$10,$30,$02,$1a,$10,$30,$02,$0a,$10,$30,$02,$0f

Lbl_9083:
	.byte $00,$08,$10,$00,$08,$10,$00,$08,$10,$00,$08,$10,$00,$08,$10,$00
	.byte $08,$10,$00,$08

Lbl_9097:
	.byte $0f,$0f,$02,$37,$0f,$0f,$16,$21,$0f,$0f,$15,$30,$0f,$0f,$22,$30
	.byte $0f,$0f,$24,$30,$0f,$0f,$2a,$30,$0f,$0f,$1c,$30,$0f,$0f,$04,$30

Lbl_90b7:
	.byte $cf,$df,$ef,$ff,$0f,$1f,$cf,$df,$ef,$ff,$0f,$1f

Lbl_90c3:
	.byte $90,$90,$90,$90,$91,$91,$90,$90,$90,$90,$91,$91,$60,$61,$62,$63
	.byte $64,$20,$65,$20,$20,$20,$66,$20,$20,$20,$20,$20,$60,$68,$62,$69
	.byte $6a,$6b,$6a,$6c,$20,$20,$20,$66,$20,$20,$20,$20,$6d,$6e,$6f,$70
	.byte $20,$71,$20,$72,$20,$20,$20,$20,$66,$20,$20,$20,$6d,$73,$74,$6a
	.byte $6b,$75,$20,$20,$76,$20,$20,$20,$20,$67,$20,$20,$6d,$61,$77,$6b
	.byte $78,$79,$6b,$20,$7a,$7b,$20,$20,$20,$20,$67,$20,$60,$68,$7c,$78
	.byte $63,$20,$7d,$20,$20,$7e,$7f,$20,$20,$20,$20,$67

Lbl_912f:
	lda $3f
	and #$01
	beq Lbl_9136
	rts 

Lbl_9136:
	lda #$00
	sta $4a
	sta $4b
	lda $41
	bne Lbl_9147
	lda $40
	bne Lbl_9147
	jmp Lbl_91c7

Lbl_9147:
	lda $41
	sta $08
	lda $40
	asl a 
	rol $08
	clc 
	adc $2d
	sta $2d
	lda $2e
	adc $08
	sta $2e
	sec 
	sbc $31
	sta $4b
	lda $2e
	sta $31
	lda $4b
	beq Lbl_9179
	clc 
	adc $2c
	sta $2c
	cmp #$08
	bcc Lbl_9179
	sbc #$08
	sta $2c
	inc $4a
	inc $2f

Lbl_9179:
	ldy #$01
	lda ($28),y
	cmp $2f
	bcc Lbl_9184
	jmp Lbl_91c7

Lbl_9184:
	lda #$00
	sta $2f
	lda $28
	clc 
	adc #$02
	sta $28
	bcc Lbl_9193
	inc $29

Lbl_9193:
	ldy #$01
	lda ($28),y
	bne Lbl_91c7
	lda $1f
	beq Lbl_91b3
	lda #$60
	sta $28
	lda #$05
	sta $29
	lda $d6
	sta $d4
	lda $d7
	sta $d5
	jsr Lbl_e68e
	jmp Lbl_91c7

Lbl_91b3:
	lda #$0e
	sta $28
	lda #$e7
	sta $29
	lda #$00
	sta $70
	sta $60
	sta $61
	lda #$02
	sta $48

Lbl_91c7:
	lda #$00
	sta $09
	sta $0a
	sta $0b
	sta $0c
	lda #$14
	sta $0d
	lda #$80
	sta $08
	lda $28
	sta $2a
	lda $29
	sta $2b
	lda $2f
	sta $4f
	ldx #$7f

Lbl_91e7:
	lda $09
	sta $0400,x
	lda $08
	clc 
	adc $0a
	sta $08
	lda $09
	adc $0b
	sta $09
	inc $0c
	lda $0d
	bmi Lbl_9204
	lsr a 
	cmp $0c
	bcs Lbl_9253

Lbl_9204:
	lda #$00
	sta $0c
	dec $0d
	ldy #$00
	sty $0e
	lda ($2a),y
	bpl Lbl_9214
	dec $0e

Lbl_9214:
	clc 
	adc $0a
	sta $0a
	lda $0b
	adc $0e
	sta $0b
	inc $4f
	iny 
	lda ($2a),y
	cmp $4f
	bcs Lbl_9253
	lda #$00
	sta $4f
	lda $2a
	clc 
	adc #$02
	sta $2a
	bcc Lbl_9237
	inc $2b

Lbl_9237:
	ldy #$01
	lda ($2a),y
	bne Lbl_9253
	lda $1f
	beq Lbl_924b
	lda #$60
	sta $2a
	lda #$05
	sta $2b
	bne Lbl_9253

Lbl_924b:
	lda #$0e
	sta $2a
	lda #$e7
	sta $2b

Lbl_9253:
	dex 
	bpl Lbl_91e7
	lda $4a
	beq Lbl_9290
	ldy #$00
	sty $08
	lda ($28),y
	bpl Lbl_9269
	inc $08
	eor #$ff
	clc 
	adc #$01

Lbl_9269:
	sta $a0
	lda #$20
	sta $a2
	jsr Lbl_d1f3
	lda $08
	beq Lbl_9283
	lda #$00
	sec 
	sbc $a3
	sta $a3
	lda #$00
	sbc $a4
	sta $a4

Lbl_9283:
	lda $a3
	clc 
	adc $36
	sta $36
	lda $35
	adc $a4
	sta $35

Lbl_9290:
	jsr Lbl_8367
	jmp Lbl_bb75

Lbl_9296:
	.byte $a9,$00,$85,$70,$4c,$72,$82

Lbl_929d:
	lda #$00
	sta $70
	jmp Lbl_93f0

Lbl_92a4:
	lda #$08
	sta $a5

Lbl_92a8:
	jsr Lbl_8caa
	jsr Lbl_8da9
	jsr Lbl_8c97
	sty $54
	ldy #$40
	jsr Lbl_ff00
	inc $3f
	jsr Lbl_912f
	jsr Lbl_ac36
	jsr Lbl_ff0c
	lda $46
	cmp #$60
	bcc Lbl_92d6
	jsr Lbl_835b
	lda #$96
	sta $92
	lda #$00
	sta $97
	sta $98

Lbl_92d6:
	lda $48
	beq Lbl_92dd
	jmp Lbl_93f0

Lbl_92dd:
	lda $47
	bne Lbl_929d
	lda $41
	ora $40
	bne Lbl_92a8
	lda #$00
	sta $8a
	sta $8b
	lda $84
	cmp #$f0
	bcc Lbl_92a8
	lda $85
	cmp #$f0
	bcc Lbl_92a8
	lda $46
	bne Lbl_92a8
	dec $a5
	bpl Lbl_92a8
	lda #$ff
	jsr Lbl_ebae
	lda $1f
	beq Lbl_931e
	ldx #$02

Lbl_930c:
	lda $67,x
	cmp $6a,x
	bcc Lbl_931e
	bne Lbl_9317
	dex 
	bpl Lbl_930c

Lbl_9317:
	lda #$00
	sta $70
	jmp Lbl_9483

Lbl_931e:
	lda #$00
	sta $20
	sta $4c
	sta $4d
	sta $4e
	lda #$01
	sta $a8
	jsr Lbl_8caa
	lda #$23
	ldy #$d2
	jsr Lbl_d1c0
	lda #$ff
	jsr Lbl_9af5
	lda #$21
	ldy #$28
	jsr Lbl_d1c0
	ldy #$0f

Lbl_9344:
	lda Lbl_93dd,y
	sta $2007
	dey 
	bpl Lbl_9344
	lda #$21
	ldy #$08
	jsr Lbl_93cf
	lda #$21
	ldy #$48
	jsr Lbl_93cf
	lda #$21
	ldy #$68
	jsr Lbl_93cf
	jsr Lbl_8c97
	jsr Lbl_ff00
	lda #$00
	sta $4011
	lda #$14
	jsr Lbl_eaf9
	jsr Lbl_ff0c
	lda $6d
	bne Lbl_93c7
	sta $22
	sta $23
	lda #$02
	sta $6d

Lbl_9381:
	jsr Lbl_8caa
	jsr Lbl_8da9
	jsr Lbl_8c97
	jsr Lbl_ff00
	jsr Lbl_ff0c
	lda $b5
	bpl Lbl_9381
	lda #$3c
	jsr Lbl_97ee
	ldx $1f
	ldy Lbl_cdb3,x
	ldx #$00

Lbl_93a0:
	lda $00,x
	cmp $0794,y
	bcc Lbl_93bc
	bne Lbl_93b1
	iny 
	inx 
	cpx #$05
	bcc Lbl_93a0
	bcs Lbl_93bc

Lbl_93b1:
	lda $00,x
	sta $0794,y
	iny 
	inx 
	cpx #$05
	bcc Lbl_93b1

Lbl_93bc:
	lda $015e
	beq Lbl_93c4
	jmp Lbl_9b02

Lbl_93c4:
	jmp Lbl_cc07

Lbl_93c7:
	lda #$3c
	jsr Lbl_97ee
	jmp Lbl_cc07

Lbl_93cf:
	jsr Lbl_d1c0
	ldy #$0f
	lda #$21

Lbl_93d6:
	sta $2007
	dey 
	bpl Lbl_93d6
	rts 

Lbl_93dd:
	.byte $21,$21,$21,$21,$44,$4e,$45,$21,$21,$45,$48,$54,$21,$21,$21,$21
	.byte $00,$05,$0a

Lbl_93f0:
	lda $6d
	bne Lbl_93c7
	lda #$02
	jsr Lbl_ebae
	lda $41
	sta $b3
	lda $40
	sta $b4
	jsr Lbl_d456
	sta $46
	sta $b2
	sta $20
	lda #$5a
	sta $47
	sta $a5

Lbl_9410:
	jsr Lbl_8caa
	jsr Lbl_8da9
	jsr Lbl_8c97
	jsr Lbl_d1ab
	jsr Lbl_912f
	jsr Lbl_ac36
	inc $3f
	jsr Lbl_ff0c
	lda #$00
	sta $8a
	sta $8b
	lda $b1
	cmp #$f8
	bcc Lbl_9410
	lda $84
	cmp #$f8
	bcc Lbl_9410
	lda $85
	cmp #$f8
	bcc Lbl_9410
	lda $c6
	bne Lbl_9410
	lda #$ff
	jsr Lbl_eaf9
	dec $a5
	bne Lbl_9410

Lbl_944c:
	lda $5f
	cmp #$b4
	bcc Lbl_945f
	lda $078e
	cmp #$03
	bne Lbl_945f
	lda $71
	ora #$01
	sta $71

Lbl_945f:
	lda $078c
	cmp #$0c
	bne Lbl_946c
	lda $71
	ora #$02
	sta $71

Lbl_946c:
	lda $078d
	cmp #$06
	bne Lbl_9479
	lda $71
	ora #$04
	sta $71

Lbl_9479:
	jsr Lbl_d81b
	inc $17
	inc $18
	jmp Lbl_81f3

Lbl_9483:
	lda #$01
	sta $a8
	jsr Lbl_db84
	jsr Lbl_8c97
	ldx #$06
	stx $ca
	ldx #$0c
	stx $cc
	lda #$00
	sta $4011
	lda #$02
	jsr Lbl_ebae
	lda #$94
	ldy #$b9
	ldx #$00
	jsr Lbl_d061
	lda #$b4
	sta $08

Lbl_94ac:
	jsr Lbl_8caa
	jsr Lbl_ebec
	dec $08
	bne Lbl_94ac
	jmp Lbl_944c

Lbl_94b9:
	.byte $59,$4f,$55,$20,$48,$41,$56,$45,$20,$51,$55,$41,$4c,$49,$46,$49
	.byte $45,$44,$21,$21,$0d,$0d,$59,$4f,$55,$20,$43,$41,$4e,$20,$54,$52
	.byte $59,$20,$54,$48,$45,$20,$4e,$45,$58,$54,$20,$43,$4f,$55,$52,$53
	.byte $45,$2e,$00

Lbl_94ec:
	.byte $25,$30,$35,$40,$45,$50,$55,$60,$65,$70,$70,$70,$70,$70,$70,$70
	.byte $70,$70,$70,$70

Lbl_9500:
	.byte $02,$00,$02,$05,$03,$00,$04,$00,$04,$08,$05,$03,$06,$02,$06,$05
	.byte $08,$00,$08,$08,$09,$02,$02,$02,$02,$08,$03,$02,$04,$05,$04,$06
	.byte $06,$02,$06,$05,$06,$05,$09,$00,$09,$02,$09,$05

Lbl_952c:
	lda #$01
	sta $a8
	ldx #$0e
	lda #$00

Lbl_9534:
	sta $0780,x
	dex 
	bpl Lbl_9534
	ldx $17
	lda Lbl_94ec,x
	pha 
	asl a 
	asl a 
	asl a 
	asl a 
	sta $65
	pla 
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	sta $66
	lda #$0a
	sta $64
	txa 
	cmp #$0b
	bcc Lbl_9558
	lda #$0a

Lbl_9558:
	asl a 
	tay 
	lda $1f
	cmp #$02
	bne Lbl_9565
	tya 
	clc 
	adc #$16
	tay 

Lbl_9565:
	ldx #$01

Lbl_9567:
	lda #$00
	sta $67,x
	lda Lbl_9500,y
	sta $6a,x
	iny 
	dex 
	bpl Lbl_9567
	lda #$00
	sta $69
	sta $6c
	jsr Lbl_db84
	lda $1f
	beq Lbl_9584
	jmp Lbl_962d

Lbl_9584:
	lda #$97
	ldy #$8d
	jsr Lbl_896c
	lda $015e
	beq Lbl_9597
	lda #$97
	ldy #$d5
	jsr Lbl_896c

Lbl_9597:
	lda #$97
	ldy #$30
	jsr Lbl_896c
	lda #$21
	ldy #$48
	sta $09
	sty $08
	jsr Lbl_ea2f
	ldx #$01
	jsr Lbl_d10b
	lda #$96
	ldy #$9d
	jsr Lbl_d00a
	ldy $17
	ldx Lbl_96e0,y
	lda #$23
	ldy #$e9
	jsr Lbl_d1c0
	ldy #$00

Lbl_95c3:
	lda Lbl_96f4,x
	sta $2007
	inx 
	iny 
	cpy #$06
	bne Lbl_95c3
	jsr Lbl_8c97
	lda #$ff
	sta $5b
	ldx #$02
	stx $ca
	inx 
	stx $cc
	jsr Lbl_ead5
	lda #$00
	sta $4011
	lda #$01
	jsr Lbl_eaf9
	ldx $17
	lda Lbl_9818,x
	ldy Lbl_9804,x
	jsr Lbl_d05f
	ldx #$b4
	jsr Lbl_d0f3
	ldx #$b4
	jsr Lbl_d0f3
	lda $5b
	bpl Lbl_9607
	lda #$00
	sta $5b

Lbl_9607:
	lda $015e
	bne Lbl_960f
	jsr Lbl_d5f3

Lbl_960f:
	lda #$98
	ldy #$ab
	jsr Lbl_d05b
	lda #$02
	jsr Lbl_eaf9
	lda #$98
	ldy #$ad
	jsr Lbl_d05b

Lbl_9622:
	jsr Lbl_8caa
	jsr Lbl_ebec
	lda $b5
	bpl Lbl_9622
	rts 

Lbl_962d:
	jsr Lbl_8c97
	ldx #$04
	stx $ca
	ldx #$0f
	stx $cc
	jsr Lbl_ead5
	lda #$00
	sta $4011
	lda #$02
	jsr Lbl_eaf9
	ldx #$19

Lbl_9647:
	lda Lbl_9683,x
	sta $0480,x
	dex 
	bpl Lbl_9647
	lda $6a
	ora #$30
	sta $0484
	lda $6b
	ora #$30
	sta $0483
	lda $66
	ora #$30
	sta $0494
	lda $65
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	ora #$30
	sta $0495
	lda #$04
	ldy #$80
	jsr Lbl_d05b
	ldx $1f
	lda Lbl_9680,x
	sta $5b
	jmp Lbl_9622

Lbl_9681:
	.byte $01,$00

Lbl_9683:
	.byte $47,$4f,$20,$30,$30,$3e,$3f,$20,$57,$49,$54,$48,$49,$4e,$20,$54
	.byte $49,$4d,$45,$20,$58,$58,$30,$2e,$0d,$00,$23,$c0,$40,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$cc,$5f
	.byte $5f,$5f,$5f,$33,$00,$00,$cc,$55,$55,$55,$55,$33,$00,$00,$cc,$f5
	.byte $f5,$f5,$f5,$33,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

Lbl_96e0:
	.byte $00,$06,$0c,$12,$18,$1e,$24,$2a,$30,$36,$00,$06,$0c,$12,$18,$1e
	.byte $24,$2a,$30,$36

Lbl_96f4:
	.byte $00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$80,$20,$00,$00
	.byte $00,$00,$80,$a0,$00,$00,$00,$00,$80,$a0,$20,$00,$00,$00,$80,$a0
	.byte $a0,$00,$00,$00,$80,$a0,$a0,$20,$00,$00,$80,$a0,$a0,$a0,$00,$00
	.byte $80,$a0,$a0,$a0,$20,$00,$80,$a0,$a0,$a0,$a0,$00,$21,$06,$c2,$12
	.byte $23,$c3,$0c,$21,$22,$c4,$10,$c5,$c7,$22,$0c,$21,$22,$c8,$10,$20
	.byte $ca,$22,$0c,$21,$22,$c8,$10,$20,$ca,$22,$0c,$21,$22,$c8,$10,$20
	.byte $ca,$22,$0c,$21,$22,$c8,$10,$20,$ca,$22,$0c,$21,$22,$c8,$10,$20
	.byte $ca,$22,$0c,$21,$22,$c8,$10,$20,$ca,$22,$0c,$21,$22,$c8,$10,$20
	.byte $ca,$22,$0c,$21,$22,$c8,$10,$20,$ca,$22,$0c,$21,$22,$cb,$10,$cc
	.byte $ce,$22,$0c,$21,$cf,$12,$20,$d0,$00,$22,$a5,$c4,$14,$c5,$c7,$0a
	.byte $21,$c8,$14,$21,$ca,$0a,$21,$c8,$31,$21,$32,$21,$33,$21,$34,$21
	.byte $35,$21,$36,$21,$37,$21,$38,$21,$39,$21,$31,$30,$ca,$0a,$21,$cb
	.byte $14,$cc,$ce,$0b,$21,$1e,$21,$50,$55,$53,$48,$21,$9c,$41,$9c,$21
	.byte $4f,$52,$21,$9c,$42,$9c,$21,$54,$4f,$21,$53,$54,$41,$52,$54,$9a
	.byte $00,$23,$44,$04,$21,$50,$55,$53,$48,$21,$9c,$41,$9c,$21,$54,$4f
	.byte $21,$53,$54,$41,$52,$54,$9a,$04,$21,$00

Lbl_97ee:
	sta $a5

Lbl_97f0:
	jsr Lbl_8caa
	jsr Lbl_8da9
	jsr Lbl_8c97
	jsr Lbl_ff00
	jsr Lbl_ff0c
	dec $a5
	bne Lbl_97f0
	rts 

Lbl_9804:
	.byte $2c,$c7,$1b,$46,$78,$ab,$de,$18,$5e,$b0,$2c,$c7,$1b,$46,$78,$ab
	.byte $de,$18,$5e,$b0

Lbl_9818:
	.byte $98,$98,$99,$99,$99,$99,$99,$9a,$9a,$9a,$98,$98,$99,$99,$99,$99
	.byte $99,$9a,$9a,$9a,$49,$4e,$20,$54,$48,$45,$20,$59,$45,$41,$52,$20
	.byte $32,$31,$31,$32,$2c,$0d,$20,$54,$48,$45,$20,$45,$41,$52,$54,$48
	.byte $20,$48,$41,$53,$20,$42,$45,$45,$4e,$20,$49,$4e,$56,$41,$44,$45
	.byte $44,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$42,$59
	.byte $20,$45,$56,$49,$4c,$20,$46,$4f,$52,$43,$45,$53,$2e,$0c,$4a,$4f
	.byte $55,$52,$4e,$45,$59,$20,$54,$4f,$20,$4e,$45,$49,$47,$48,$42,$4f
	.byte $52,$49,$4e,$47,$0d,$20,$53,$45,$43,$54,$4f,$52,$53,$20,$44,$45
	.byte $53,$54,$52,$4f,$59,$49,$4e,$47,$20,$49,$4e,$56,$41,$44,$45,$52
	.byte $53,$2e,$00,$0c,$00,$20,$20,$20,$20,$59,$4f,$55,$20,$41,$52,$45
	.byte $20,$22,$4d,$41,$43,$48,$20,$52,$49,$44,$45,$52,$22,$21,$00,$54
	.byte $48,$45,$20,$53,$45,$43,$54,$4f,$52,$20,$41,$48,$45,$41,$44,$20
	.byte $48,$41,$53,$20,$46,$41,$4c,$4c,$45,$4e,$0d,$20,$20,$20,$20,$20
	.byte $54,$4f,$20,$54,$48,$45,$20,$46,$4f,$52,$43,$45,$53,$20,$4f,$46
	.byte $20,$45,$56,$49,$4c,$21,$0c,$50,$52,$4f,$43,$45,$45,$44,$20,$54
	.byte $4f,$20,$54,$48,$45,$20,$4e,$45,$58,$54,$20,$53,$45,$43,$54,$4f
	.byte $52,$2e,$00,$53,$45,$41,$52,$43,$48,$20,$46,$4f,$52,$20,$53,$55
	.byte $52,$56,$49,$56,$4f,$52,$53,$0d,$20,$20,$20,$49,$4e,$20,$54,$48
	.byte $45,$20,$43,$49,$54,$59,$20,$41,$48,$45,$41,$44,$2e,$00,$49,$4e
	.byte $56,$41,$44,$45,$52,$53,$20,$47,$4f,$54,$20,$48,$45,$52,$45,$20
	.byte $46,$49,$52,$53,$54,$2c,$0d,$20,$20,$20,$20,$20,$20,$20,$20,$20
	.byte $4b,$45,$45,$50,$20,$53,$45,$41,$52,$43,$48,$49,$4e,$47,$2e,$00
	.byte $4e,$4f,$20,$53,$55,$52,$56,$49,$56,$4f,$52,$53,$2c,$20,$50,$52
	.byte $4f,$43,$45,$45,$44,$20,$54,$4f,$0d,$20,$20,$20,$20,$20,$43,$49
	.byte $54,$59,$20,$49,$4e,$20,$4e,$45,$58,$54,$20,$53,$45,$43,$54,$4f
	.byte $52,$2e,$00,$42,$45,$57,$41,$52,$45,$2c,$20,$43,$49,$54,$59,$20
	.byte $49,$53,$20,$4f,$43,$43,$55,$50,$49,$45,$44,$0d,$20,$20,$20,$20
	.byte $20,$20,$42,$59,$20,$49,$4e,$56,$41,$44,$49,$4e,$47,$20,$46,$4f
	.byte $52,$43,$45,$53,$2e,$00,$45,$41,$52,$54,$48,$20,$46,$4f,$52,$43
	.byte $45,$53,$20,$41,$52,$45,$20,$52,$45,$54,$52,$45,$41,$54,$49,$4e
	.byte $47,$2c,$0d,$20,$20,$20,$20,$20,$20,$59,$4f,$55,$20,$41,$52,$45
	.byte $20,$54,$48,$45,$20,$4f,$4e,$4c,$59,$20,$48,$4f,$50,$45,$2e,$00
	.byte $54,$48,$45,$20,$43,$49,$54,$59,$20,$41,$48,$45,$41,$44,$0d,$20
	.byte $48,$41,$53,$20,$4e,$4f,$54,$20,$42,$45,$45,$4e,$20,$49,$4e,$56
	.byte $41,$44,$45,$44,$20,$59,$45,$54,$2c,$0d,$20,$20,$20,$4c,$41,$55
	.byte $4e,$43,$48,$20,$41,$20,$43,$4f,$55,$4e,$54,$45,$52,$41,$54,$54
	.byte $41,$43,$4b,$21,$21,$00,$54,$48,$49,$53,$20,$53,$45,$43,$54,$4f
	.byte $52,$20,$49,$53,$0d,$20,$4e,$4f,$57,$20,$55,$4e,$44,$45,$52,$20
	.byte $41,$54,$54,$41,$43,$4b,$2c,$0d,$20,$48,$45,$4c,$50,$20,$44,$45
	.byte $46,$45,$4e,$44,$20,$54,$48,$45,$20,$43,$49,$54,$59,$0d,$20,$20
	.byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$46,$52,$4f,$4d,$20,$49,$4e
	.byte $56,$41,$44,$45,$52,$53,$2e,$00,$43,$4f,$4e,$54,$49,$4e,$55,$45
	.byte $20,$59,$4f,$55,$52,$20,$51,$55,$45,$53,$54,$0d,$20,$54,$4f,$20
	.byte $4c,$4f,$43,$41,$54,$45,$20,$54,$48,$45,$20,$53,$45,$43,$52,$45
	.byte $54,$0d,$20,$20,$20,$20,$20,$20,$49,$4e,$56,$41,$44,$45,$52,$53
	.byte $20,$42,$41,$53,$45,$2e,$00,$8d,$07,$20,$8d,$07,$20

Lbl_9af5:
	sta $2007
	sta $2007
	sta $2007
	sta $2007
	rts 

Lbl_9b02:
	lda #$00
	sta $6d
	sta $015e
	jsr Lbl_cf07
	jsr Lbl_d434
	jsr Lbl_ead5
	lda #$ff
	jsr Lbl_eaf9
	jsr Lbl_ebec
	lda $05
	sta $2000
	lda #$21
	ldy #$0a
	ldx #$00
	jsr Lbl_cd74
	lda #$21
	ldy #$6a
	inx 
	jsr Lbl_cd74
	lda #$21
	ldy #$ca
	inx 
	jsr Lbl_cd74
	lda #$9c
	ldy #$17
	jsr Lbl_cfee
	lda #$9c
	ldy #$1e
	jsr Lbl_cfee
	lda #$9c
	ldy #$25
	jsr Lbl_cfee
	lda #$9c
	ldy #$2e
	jsr Lbl_cfee
	lda #$9c
	ldy #$36
	jsr Lbl_896c
	jsr Lbl_8da0
	lda #$9c
	ldy #$41
	jsr Lbl_d00a
	jsr Lbl_d1b8
	jsr Lbl_8c97

Lbl_9b6b:
	jsr Lbl_8da0
	lda $05
	ora #$04
	sta $2000
	lda #$9c
	ldy #$54
	jsr Lbl_d02b
	lda $05
	sta $2000
	ldx $015d
	lda Lbl_9c10,x
	sta $2006
	lda Lbl_9c09,x
	sta $2006
	lda #$5f
	sta $2007
	jsr Lbl_8c97
	jsr Lbl_ebec
	lda $52
	bne Lbl_9bd6
	lda $5a
	bne Lbl_9bcb
	lda $59
	bpl Lbl_9bcb
	lda $57
	bmi Lbl_9bba
	beq Lbl_9bbe
	ldx $015d
	dex 
	bpl Lbl_9bb5
	ldx #$06

Lbl_9bb5:
	stx $015d
	bpl Lbl_9bcb

Lbl_9bba:
	lda $51
	beq Lbl_9bcb

Lbl_9bbe:
	ldx $015d
	inx 
	cpx #$07
	bcc Lbl_9bc8
	ldx #$00

Lbl_9bc8:
	stx $015d

Lbl_9bcb:
	lda $51
	sta $5a
	lda $57
	sta $59
	jmp Lbl_9b6b

Lbl_9bd6:
	ldx #$ff
	txs 
	ldx $015d
	lda Lbl_9bfb,x
	sta $08
	lda Lbl_9c02,x
	sta $09
	jmp ($0008)

Lbl_9be9:
	.byte $20,$65,$a9,$b0,$e5,$ae,$5d,$01,$86,$1e,$a9,$01,$8d,$5e,$01,$4c
	.byte $8a,$81

Lbl_9bfb:
	.byte $e9,$e9,$e9,$f0,$d7,$59,$07

Lbl_9c02:
	.byte $9b,$9b,$9b,$a9,$a9,$9c,$cc

Lbl_9c09:
	.byte $08,$68,$c8,$28,$88,$e8,$48

Lbl_9c10:
	.byte $21,$21,$21,$22,$22,$22,$23,$22,$2a,$53,$41,$56,$45,$00,$22,$8a
	.byte $4c,$4f,$41,$44,$00,$22,$ea,$44,$45,$53,$49,$47,$4e,$00,$23,$4a
	.byte $52,$45,$53,$45,$54,$00,$23,$c0,$10,$ff,$10,$ff,$10,$00,$10,$00
	.byte $00,$3f,$00,$10,$0f,$0f,$30,$12,$0f,$0f,$30,$30,$0f,$0f,$30,$12
	.byte $0f,$0f,$27,$30,$21,$08,$00,$13,$20,$a9,$ff,$20,$f9,$ea,$20,$d5
	.byte $ea,$20,$0d,$cf,$a9,$9e,$a0,$fe,$20,$0a,$d0,$20,$b8,$d1,$a9,$9d
	.byte $a0,$92,$20,$6c,$89,$a9,$9e,$a0,$bb,$20,$0a,$d0,$a9,$c8,$85,$08
	.byte $a9,$20,$85,$09,$a2,$00,$a5,$09,$a4,$08,$20,$c0,$d1,$a0,$10,$bd
	.byte $00,$07,$8d,$07,$20,$e8,$88,$d0,$f6,$a5,$08,$18,$69,$20,$85,$08
	.byte $90,$02,$e6,$09,$e0,$80,$90,$de,$20,$97,$8c,$20,$46,$d4,$20,$18
	.byte $cf,$a9,$00,$85,$cf,$85,$d0,$8d,$60,$01,$8d,$61,$01,$a9,$01,$8d
	.byte $5f,$01,$20,$be,$a2,$20,$21,$9f,$20,$a0,$8d,$20,$ec,$eb,$a5,$51
	.byte $d0,$39,$a5,$58,$c5,$5a,$85,$5a,$d0,$04,$a9,$ff,$85,$58,$a5,$57
	.byte $c5,$59,$85,$59,$d0,$04,$a9,$ff,$85,$57,$a5,$54,$f0,$3c,$a5,$55
	.byte $f0,$06,$a5,$52,$d0,$08,$f0,$d0,$20,$89,$a0,$4c,$c8,$9c,$a2,$7f
	.byte $a9,$21,$9d,$00,$07,$ca,$10,$f8,$4c,$59,$9c,$20,$65,$a9,$b0,$0a
	.byte $a5,$51,$d0,$fc,$a2,$ff,$9a,$4c,$02,$9b,$a9,$00,$8d,$60,$01,$a9
	.byte $02,$8d,$61,$01,$20,$21,$9f,$4c,$c8,$9c,$a5,$55,$f0,$32,$a5,$57
	.byte $30,$0e,$f0,$06,$20,$1f,$a0,$4c,$52,$9d,$20,$1b,$a0,$4c,$52,$9d
	.byte $a5,$58,$10,$03,$4c,$c8,$9c,$f0,$06,$20,$62,$a0,$4c,$52,$9d,$20
	.byte $5d,$a0,$20,$21,$9f,$20,$be,$a2,$a9,$0e,$20,$f9,$ea,$4c,$c8,$9c
	.byte $a5,$57,$30,$0e,$f0,$06,$20,$ef,$9f,$4c,$84,$9d,$20,$eb,$9f,$4c
	.byte $84,$9d,$a5,$58,$10,$03,$4c,$c8,$9c,$f0,$06,$20,$07,$a0,$4c,$84
	.byte $9d,$20,$03,$a0,$20,$21,$9f,$20,$be,$a2,$a9,$0e,$20,$f9,$ea,$4c
	.byte $c8,$9c,$20,$00,$1f,$21,$1f,$21,$1f,$21,$10,$21,$44,$45,$53,$49
	.byte $47,$4e,$13,$21,$c2,$12,$23,$c3,$0c,$21,$22,$c4,$10,$c5,$c7,$22
	.byte $0c,$21,$22,$c8,$10,$21,$ca,$22,$0c,$21,$22,$c8,$10,$21,$ca,$22
	.byte $0c,$21,$22,$c8,$10,$21,$ca,$22,$0c,$21,$22,$c8,$10,$21,$ca,$22
	.byte $0c,$21,$22,$c8,$10,$21,$ca,$22,$0c,$21,$22,$c8,$10,$21,$ca,$22
	.byte $0c,$21,$22,$c8,$10,$21,$ca,$22,$0c,$21,$22,$c8,$10,$21,$ca,$22
	.byte $0c,$21,$22,$cb,$10,$cc,$ce,$22,$0c,$21,$cf,$12,$20,$d0,$06,$21
	.byte $04,$23,$18,$21,$08,$23,$06,$21,$43,$4f,$55,$52,$53,$45,$21,$50
	.byte $41,$52,$54,$53,$06,$21,$09,$23,$21,$21,$23,$d8,$d9,$23,$da,$db
	.byte $23,$d8,$e4,$23,$e5,$db,$23,$d8,$d9,$23,$da,$db,$23,$d4,$d5,$09
	.byte $23,$21,$21,$23,$dc,$21,$23,$21,$dd,$23,$dc,$21,$23,$21,$dd,$23
	.byte $e4,$21,$23,$21,$e5,$23,$21,$d4,$0a,$23,$1f,$23,$d3,$d5,$23,$de
	.byte $21,$23,$21,$df,$23,$eb,$db,$23,$d8,$ea,$23,$e5,$db,$23,$d8,$e4
	.byte $23,$d1,$d5,$09,$23,$d7,$d6,$23,$e0,$e1,$23,$e2,$e3,$23,$21,$e5
	.byte $23,$e4,$21,$23,$21,$e9,$23,$e8,$21,$23,$d1,$d6,$0a,$23,$1f,$23
	.byte $21,$23,$d1,$23,$d2,$23,$d7,$23,$d3,$23,$d5,$23,$e9,$23,$e8,$23
	.byte $d9,$23,$da,$23,$dc,$23,$dd,$0a,$23,$1f,$23,$21,$23,$e4,$23,$e5
	.byte $23,$e6,$23,$d4,$23,$d6,$23,$eb,$23,$ea,$23,$e1,$23,$e2,$23,$de
	.byte $23,$df,$07,$23,$1f,$23,$1f,$23,$1f,$23,$00,$23,$c0,$40,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$50,$50,$50,$50,$00,$00,$00,$00
	.byte $55,$55,$55,$55,$00,$00,$00,$00,$05,$05,$05,$05,$00,$00,$55,$50
	.byte $50,$50,$50,$50,$50,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$3f,$00
	.byte $20,$00,$0f,$10,$30,$00,$02,$26,$0f,$00,$0f,$18,$22,$00,$10,$10
	.byte $0f,$00,$16,$02,$30,$00,$16,$02,$30,$00,$28,$18,$30,$00,$28,$18
	.byte $30,$a2,$00,$ad,$61,$01,$c9,$02,$b0,$16,$a2,$08,$a5,$cf,$c9,$0f
	.byte $d0,$04,$a9,$0e,$85,$cf,$a5,$d0,$c9,$07,$d0,$04,$a9,$06,$85,$d0
	.byte $86,$08,$a5,$d0,$0a,$0a,$0a,$69,$2f,$8d,$00,$02,$8d,$04,$02,$65
	.byte $08,$8d,$08,$02,$8d,$0c,$02,$a5,$cf,$0a,$0a,$0a,$69,$40,$8d,$03
	.byte $02,$8d,$0b,$02,$65,$08,$8d,$07,$02,$8d,$0f,$02,$a9,$b1,$8d,$01
	.byte $02,$8d,$05,$02,$8d,$09,$02,$8d,$0d,$02,$a9,$00,$8d,$02,$02,$a9
	.byte $40,$8d,$06,$02,$a9,$80,$8d,$0a,$02,$a9,$c0,$8d,$0e,$02,$ae,$61
	.byte $01,$bd,$e7,$9f,$8d,$10,$02,$8d,$14,$02,$18,$65,$08,$8d,$18,$02
	.byte $8d,$1c,$02,$ad,$60,$01,$0a,$0a,$0a,$0a,$a6,$08,$f0,$06,$85,$09
	.byte $4a,$18,$65,$09,$69,$28,$8d,$13,$02,$8d,$1b,$02,$65,$08,$8d,$17
	.byte $02,$8d,$1f,$02,$a9,$b1,$8d,$11,$02,$8d,$15,$02,$8d,$19,$02,$8d
	.byte $1d,$02,$a9,$00,$8d,$12,$02,$a9,$40,$8d,$16,$02,$a9,$80,$8d,$1a
	.byte $02,$a9,$c0,$8d,$1e,$02,$60,$8f,$a7,$bf,$cf,$e6,$d0,$d0,$02,$c6
	.byte $d0,$a0,$08,$ad,$61,$01,$c9,$02,$b0,$01,$88,$a5,$d0,$20,$7a,$a0
	.byte $85,$d0,$60,$e6,$cf,$d0,$02,$c6,$cf,$a0,$10,$ad,$61,$01,$c9,$02
	.byte $b0,$01,$88,$a5,$cf,$20,$7a,$a0,$85,$cf,$60,$a9,$01,$d0,$02,$a9
	.byte $ff,$ae,$61,$01,$18,$6d,$61,$01,$29,$03,$8d,$61,$01,$8a,$4d,$61
	.byte $01,$29,$02,$f0,$13,$ad,$61,$01,$4a,$4a,$ae,$60,$01,$bd,$49,$a0
	.byte $90,$03,$bd,$55,$a0,$8d,$60,$01,$60,$00,$00,$01,$02,$02,$03,$04
	.byte $04,$05,$06,$06,$07,$00,$02,$03,$05,$06,$08,$09,$0b,$ee,$60,$01
	.byte $d0,$03,$ce,$60,$01,$a0,$0c,$ad,$61,$01,$c9,$02,$b0,$02,$a0,$08
	.byte $ad,$60,$01,$20,$7a,$a0,$8d,$60,$01,$60,$84,$08,$10,$04,$a4,$08
	.byte $88,$98,$c5,$08,$90,$02,$a9,$00,$60,$20,$fe,$a2,$b0,$2c,$20,$1a
	.byte $a4,$c5,$d1,$f0,$25,$a5,$d1,$c9,$10,$b0,$16,$a8,$b9,$d5,$a8,$9d
	.byte $01,$07,$b9,$e5,$a8,$9d,$10,$07,$b9,$f5,$a8,$9d,$11,$07,$b9,$c5
	.byte $a8,$9d,$00,$07,$20,$5c,$a2,$20,$bb,$a0,$60,$a5,$cf,$48,$a5,$d0
	.byte $48,$a5,$d1,$48,$20,$d1,$a0,$68,$85,$d1,$68,$85,$d0,$68,$85,$cf
	.byte $60,$a9,$07,$85,$d0,$a9,$0f,$85,$cf,$20,$1a,$a4,$c9,$21,$f0,$15
	.byte $a2,$04,$dd,$99,$a1,$f0,$06,$ca,$10,$f8,$4c,$8a,$a1,$20,$a3,$a1
	.byte $90,$03,$4c,$5e,$a1,$a5,$d0,$c9,$07,$f0,$1a,$e6,$d0,$20,$1a,$a4
	.byte $c6,$d0,$c9,$e6,$f0,$6c,$a2,$02,$dd,$8c,$a6,$f0,$55,$dd,$ec,$a6
	.byte $f0,$54,$ca,$10,$f3,$a5,$d0,$f0,$0f,$c6,$d0,$20,$1a,$a4,$e6,$d0
	.byte $c9,$de,$f0,$46,$c9,$df,$f0,$46,$a5,$cf,$c9,$0f,$f0,$15,$e6,$cf
	.byte $20,$1a,$a4,$c6,$cf,$c9,$e1,$f0,$31,$a2,$03,$dd,$9d,$a6,$f0,$22
	.byte $ca,$10,$f8,$a5,$cf,$f0,$43,$c6,$cf,$20,$1a,$a4,$e6,$cf,$c9,$e2
	.byte $f0,$1c,$a2,$03,$dd,$f0,$a6,$f0,$0d,$ca,$10,$f8,$30,$2c,$a9,$21
	.byte $d0,$12,$a9,$d8,$d0,$0e,$a9,$db,$d0,$0a,$a9,$e0,$d0,$06,$a9,$e3
	.byte $d0,$02,$a9,$e7,$85,$d1,$20,$fe,$a2,$b0,$0f,$a5,$d1,$48,$20,$1a
	.byte $a4,$68,$85,$d1,$9d,$00,$07,$20,$5c,$a2,$c6,$cf,$30,$03,$4c,$d9
	.byte $a0,$c6,$d0,$30,$03,$4c,$d5,$a0,$60,$d8,$db,$e0,$e3,$e7,$05,$06
	.byte $09,$0a,$07,$bd,$9e,$a1,$85,$08,$46,$08,$90,$11,$a5,$cf,$c9,$0f
	.byte $f0,$48,$e6,$cf,$20,$1a,$a4,$c6,$cf,$c9,$21,$d0,$3d,$46,$08,$90
	.byte $0f,$a5,$cf,$f0,$35,$c6,$cf,$20,$1a,$a4,$e6,$cf,$c9,$21,$d0,$2a
	.byte $46,$08,$90,$11,$a5,$d0,$c9,$07,$f0,$20,$e6,$d0,$20,$1a,$a4,$c6
	.byte $d0,$c9,$21,$d0,$15,$46,$08,$90,$0f,$a5,$d0,$f0,$0d,$c6,$d0,$20
	.byte $1a,$a4,$e6,$d0,$c9,$21,$d0,$02,$38,$60,$18,$60,$a2,$17,$bd,$de
	.byte $9e,$9d,$62,$01,$ca,$10,$f7,$a2,$27,$8a,$48,$bd,$d2,$a2,$85,$d1
	.byte $20,$fe,$a2,$68,$aa,$90,$28,$bd,$15,$a9,$10,$19,$29,$7f,$a8,$b9
	.byte $62,$01,$1d,$3d,$a9,$99,$62,$01,$bd,$3d,$a9,$4a,$4a,$19,$63,$01
	.byte $99,$63,$01,$d0,$0a,$a8,$b9,$62,$01,$1d,$3d,$a9,$99,$62,$01,$ca
	.byte $10,$c7,$20,$a0,$8d,$a9,$23,$a0,$e0,$20,$c0,$d1,$a2,$00,$bd,$62
	.byte $01,$8d,$07,$20,$e8,$e0,$18,$d0,$f5,$4c,$97,$8c,$a5,$d1,$c9,$10
	.byte $b0,$36,$85,$0a,$aa,$bd,$c5,$a8,$85,$d1,$20,$98,$a2,$e6,$cf,$a6
	.byte $0a,$bd,$d5,$a8,$85,$d1,$20,$98,$a2,$e6,$d0,$a6,$0a,$bd,$f5,$a8
	.byte $85,$d1,$20,$98,$a2,$c6,$cf,$a6,$0a,$bd,$e5,$a8,$85,$d1,$20,$98
	.byte $a2,$c6,$d0,$a5,$0a,$85,$d1,$60,$a5,$d0,$0a,$0a,$0a,$0a,$0a,$05
	.byte $cf,$18,$69,$c8,$85,$08,$a9,$20,$69,$00,$85,$09,$20,$a0,$8d,$a5
	.byte $09,$a4,$08,$20,$c0,$d1,$a5,$d1,$8d,$07,$20,$4c,$97,$8c,$20,$fc
	.byte $a1,$ac,$61,$01,$b9,$fa,$a2,$18,$6d,$60,$01,$aa,$bd,$d2,$a2,$85
	.byte $d1,$60,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d
	.byte $0e,$0f,$21,$d1,$d2,$d7,$d3,$d5,$e9,$e8,$d9,$da,$dc,$dd,$21,$e4
	.byte $e5,$e6,$d4,$d6,$eb,$ea,$e1,$e2,$de,$df,$00,$08,$10,$1c,$a5,$d1
	.byte $c9,$10,$b0,$61,$a5,$cf,$c9,$0f,$b0,$5a,$a5,$d0,$c9,$07,$b0,$54
	.byte $a5,$d1,$d0,$02,$18,$60,$a6,$d1,$bd,$c5,$a8,$85,$0a,$a9,$05,$85
	.byte $0b,$20,$7a,$a3,$b0,$3e,$e6,$cf,$a6,$d1,$bd,$d5,$a8,$85,$0a,$a9
	.byte $09,$85,$0b,$20,$7a,$a3,$c6,$cf,$b0,$2a,$e6,$d0,$a6,$d1,$bd,$e5
	.byte $a8,$85,$0a,$a9,$06,$85,$0b,$20,$7a,$a3,$c6,$d0,$b0,$16,$e6,$cf
	.byte $e6,$d0,$a6,$d1,$bd,$f5,$a8,$85,$0a,$a9,$0a,$85,$0b,$20,$7a,$a3
	.byte $c6,$cf,$c6,$d0,$60,$a5,$d1,$85,$0a,$a9,$0f,$85,$0b,$ad,$5f,$01
	.byte $f0,$08,$a5,$0a,$c9,$21,$d0,$02,$18,$60,$46,$0b,$90,$17,$a5,$d0
	.byte $d0,$04,$a9,$d1,$d0,$07,$c6,$d0,$20,$1a,$a4,$e6,$d0,$20,$27,$a4
	.byte $90,$03,$4c,$19,$a4,$46,$0b,$90,$16,$a5,$d0,$c9,$07,$d0,$04,$a9
	.byte $d1,$d0,$07,$e6,$d0,$20,$1a,$a4,$c6,$d0,$20,$48,$a4,$b0,$6a,$46
	.byte $0b,$90,$31,$a5,$cf,$d0,$21,$a2,$07,$e4,$d0,$f0,$10,$bc,$05,$a9
	.byte $b9,$00,$07,$a0,$06,$d9,$8c,$a5,$f0,$0a,$88,$10,$f8,$ca,$10,$e9
	.byte $a9,$ec,$d0,$02,$a9,$d2,$d0,$07,$c6,$cf,$20,$1a,$a4,$e6,$cf,$20
	.byte $6c,$a4,$b0,$35,$46,$0b,$90,$31,$a5,$cf,$c9,$0f,$d0,$21,$a2,$07
	.byte $e4,$d0,$f0,$10,$bc,$0d,$a9,$b9,$00,$07,$a0,$06,$d9,$84,$a5,$f0
	.byte $0a,$88,$10,$f8,$ca,$10,$e9,$a9,$ec,$d0,$02,$a9,$d2,$d0,$07,$e6
	.byte $cf,$20,$1a,$a4,$c6,$cf,$20,$5a,$a4,$60,$a5,$d0,$0a,$0a,$0a,$0a
	.byte $05,$cf,$aa,$bd,$00,$07,$60,$20,$7e,$a4,$90,$1a,$aa,$bd,$bb,$a3
	.byte $85,$08,$bd,$d7,$a3,$85,$09,$a0,$00,$b1,$08,$f0,$07,$c5,$0a,$f0
	.byte $05,$c8,$d0,$f5,$38,$60,$18,$60,$20,$7e,$a4,$90,$f9,$aa,$bd,$f3
	.byte $a3,$85,$08,$bd,$0f,$a4,$85,$09,$d0,$dd,$20,$7e,$a4,$90,$e7,$aa
	.byte $bd,$65,$a4,$85,$08,$bd,$82,$a4,$85,$09,$d0,$cb,$20,$7e,$a4,$90
	.byte $d5,$aa,$bd,$2b,$a4,$85,$08,$bd,$48,$a4,$85,$09,$d0,$b9,$c9,$21
	.byte $d0,$08,$ad,$5f,$01,$f0,$01,$18,$a9,$d0,$60,$7b,$7a,$9b,$c6,$eb
	.byte $17,$3c,$61,$8c,$ad,$c9,$ec,$04,$1d,$3b,$52,$64,$80,$98,$ae,$c8
	.byte $d7,$e6,$fd,$09,$21,$3e,$57,$a8,$a5,$a5,$a5,$a5,$a6,$a6,$a6,$a6
	.byte $a6,$a6,$a6,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a8
	.byte $a8,$a8,$a8,$69,$6f,$94,$b8,$e4,$09,$35,$5a,$7a,$a2,$be,$da,$02
	.byte $1b,$34,$4b,$62,$7c,$94,$ac,$c6,$d5,$e4,$ee,$07,$1f,$37,$50,$a8
	.byte $a5,$a5,$a5,$a5,$a6,$a6,$a6,$a6,$a6,$a6,$a6,$a7,$a7,$a7,$a7,$a7
	.byte $a7,$a7,$a7,$a7,$a7,$a7,$a7,$a8,$a8,$a8,$a8,$95,$8c,$ae,$dc,$01
	.byte $28,$4f,$72,$9d,$b6,$d7,$f5,$17,$2a,$47,$58,$7a,$8c,$aa,$bb,$d1
	.byte $e1,$ec,$03,$1b,$2f,$46,$66,$b4,$a8,$a5,$a5,$a5,$a6,$a6,$a6,$a6
	.byte $a6,$a6,$a6,$a6,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a8
	.byte $a8,$a8,$a8,$a8,$a8,$87,$84,$a4,$cf,$f6,$20,$47,$6a,$90,$b3,$cf
	.byte $f0,$0d,$26,$3d,$54,$6f,$8a,$a2,$b9,$ce,$dd,$ea,$ff,$13,$2b,$43
	.byte $5c,$a3,$a8,$a5,$a5,$a5,$a5,$a6,$a6,$a6,$a6,$a6,$a6,$a6,$a7,$a7
	.byte $a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a7,$a8,$a8,$a8,$a8,$a8,$d1
	.byte $d4,$d6,$e0,$e1,$e2,$e3,$e8,$e9,$21,$00,$d1,$d3,$d5,$d8,$d9,$da
	.byte $db,$e7,$21,$00,$d1,$d3,$d4,$d7,$d9,$e1,$e9,$00,$d1,$d5,$d6,$d7
	.byte $da,$e2,$e8,$00,$d2,$d3,$d5,$d7,$dc,$dd,$00,$d2,$d4,$d6,$d7,$de
	.byte $df,$ea,$eb,$00,$d2,$d5,$d6,$db,$dd,$df,$e3,$ea,$21,$00,$d2,$d3
	.byte $d4,$d8,$dc,$de,$e0,$eb,$21,$00,$d1,$d4,$d6,$d9,$e0,$e1,$e2,$e3
	.byte $e4,$e8,$e9,$ea,$21,$00,$d2,$d4,$d6,$d7,$de,$df,$ea,$eb,$00,$d2
	.byte $d5,$d6,$db,$dc,$dd,$df,$e3,$e4,$e8,$ea,$21,$00,$d1,$d5,$d6,$d7
	.byte $da,$e2,$e8,$00,$d2,$d3,$d5,$d7,$dc,$dd,$00,$d1,$d3,$d5,$d8,$d9
	.byte $da,$db,$e1,$e7,$21,$00,$d2,$d5,$d6,$db,$dd,$de,$df,$e3,$ea,$21
	.byte $00,$d1,$d5,$d6,$d7,$da,$e2,$e8,$00,$d1,$d4,$d6,$da,$e0,$e1,$e2
	.byte $e3,$e5,$e8,$e9,$eb,$21,$00,$d2,$d4,$d6,$d7,$de,$df,$ea,$eb,$00
	.byte $d1,$d3,$d4,$d7,$d9,$e1,$e9,$00,$d2,$d3,$d4,$d8,$dc,$dd,$de,$e0
	.byte $e5,$e9,$eb,$21,$00,$d2,$d3,$d5,$d7,$dc,$dd,$00,$d1,$d3,$d5,$d8
	.byte $d9,$da,$db,$e2,$e7,$21,$00,$d1,$d3,$d4,$d7,$d9,$e1,$e9,$00,$d2
	.byte $d3,$d4,$d8,$dc,$de,$df,$e0,$eb,$21,$00,$d2,$d3,$d5,$d7,$dc,$dd
	.byte $00,$d2,$d4,$d6,$d7,$de,$df,$ea,$eb,$00,$d1,$d3,$d4,$d7,$d9,$e1
	.byte $e9,$00,$d1,$d5,$d6,$d7,$da,$e2,$e8,$00,$d1,$d4,$d6,$d9,$da,$e0
	.byte $e1,$e2,$e3,$e4,$e5,$e6,$e8,$e9,$ea,$eb,$21,$00,$dc,$e4,$e8,$00
	.byte $d2,$d5,$d6,$db,$dc,$dd,$df,$e3,$e4,$e8,$ea,$21,$00,$d9,$e4,$e6
	.byte $ea,$00,$d1,$d4,$d6,$e0,$e1,$e2,$e3,$e8,$e9,$21,$00,$d3,$d8,$db
	.byte $e7,$21,$00,$d8,$e7,$00,$d1,$d5,$d6,$d7,$da,$e2,$e8,$00,$d1,$d4
	.byte $d6,$e0,$e1,$e2,$e3,$e8,$e9,$21,$00,$d5,$d8,$db,$e7,$21,$00,$d1
	.byte $d3,$d4,$d7,$d9,$e1,$e9,$00,$db,$e7,$00,$d1,$d4,$d6,$d9,$da,$e0
	.byte $e1,$e2,$e3,$e4,$e5,$e6,$e8,$e9,$ea,$eb,$21,$00,$dd,$e5,$e9,$00
	.byte $da,$e5,$e6,$eb,$00,$d2,$d3,$d4,$d8,$dc,$dd,$de,$e0,$e5,$e9,$eb
	.byte $21,$00,$d8,$00,$d2,$d4,$d6,$d7,$de,$df,$ea,$eb,$00,$d2,$d5,$d6
	.byte $db,$dd,$df,$e3,$ea,$21,$00,$d3,$d8,$21,$00,$db,$00,$d2,$d4,$d6
	.byte $d7,$de,$df,$ea,$eb,$00,$d5,$db,$21,$00,$d2,$d3,$d4,$d8,$dc,$de
	.byte $e0,$eb,$21,$00,$d2,$d3,$d5,$d7,$dc,$dd,$00,$e0,$00,$d2,$d5,$d6
	.byte $db,$dd,$df,$e3,$ea,$21,$00,$d4,$e0,$21,$00,$d2,$d3,$d5,$d7,$dc
	.byte $dd,$00,$e3,$00,$d6,$e3,$21,$00,$d2,$d3,$d4,$d8,$dc,$de,$e0,$eb
	.byte $21,$00,$de,$00,$d1,$d3,$d5,$d8,$d9,$da,$db,$e1,$e7,$21,$00,$d2
	.byte $d5,$d6,$db,$dd,$de,$df,$e3,$ea,$21,$00,$e1,$00,$d4,$e0,$21,$00
	.byte $d1,$d3,$d5,$d8,$d9,$da,$db,$e7,$21,$00,$e0,$00,$d1,$d5,$d6,$d7
	.byte $da,$e2,$e8,$00,$d6,$e3,$21,$00,$d1,$d3,$d5,$d8,$d9,$da,$db,$e7
	.byte $21,$00,$d1,$d3,$d4,$d7,$d9,$e1,$e9,$00,$e3,$00,$df,$00,$d1,$d3
	.byte $d5,$d8,$d9,$da,$db,$e2,$e7,$21,$00,$e2,$00,$d2,$d3,$d4,$d8,$dc
	.byte $de,$df,$e0,$eb,$21,$00,$d8,$00,$d3,$d8,$db,$e7,$21,$00,$d8,$e7
	.byte $00,$d3,$d8,$21,$00,$db,$00,$d5,$d8,$db,$e7,$21,$00,$d5,$db,$21
	.byte $00,$db,$e7,$00,$e7,$00,$d8,$db,$21,$00,$d8,$00,$db,$00,$d1,$d4
	.byte $d6,$d9,$da,$e0,$e1,$e2,$e3,$e4,$e5,$e8,$e9,$21,$00,$e6,$00,$da
	.byte $e5,$eb,$00,$d9,$e4,$ea,$00,$d8,$00,$d1,$d3,$d5,$d8,$d9,$da,$db
	.byte $e7,$21,$00,$d1,$d3,$d4,$d7,$d9,$e1,$e9,$00,$d3,$d8,$21,$00,$db
	.byte $00,$d1,$d3,$d5,$d8,$d9,$da,$db,$e7,$21,$00,$d5,$eb,$21,$00,$d1
	.byte $d5,$d6,$d7,$da,$e2,$e8,$00,$d2,$d3,$d5,$d7,$dc,$dd,$00,$d3,$d8
	.byte $db,$21,$00,$d8,$e7,$00,$d2,$d3,$d4,$d8,$dc,$de,$e0,$eb,$21,$00
	.byte $d2,$d3,$d5,$d7,$dc,$dd,$00,$d3,$d8,$db,$21,$00,$d2,$d5,$d6,$db
	.byte $dd,$df,$e3,$ea,$21,$00,$db,$e7,$00,$d1,$d4,$d6,$d9,$da,$e0,$e1
	.byte $e2,$e3,$e4,$e5,$e6,$e8,$e9,$ea,$eb,$21,$00,$d1,$d3,$d5,$d8,$d9
	.byte $da,$db,$e1,$e2,$e7,$21,$00,$d2,$d5,$d6,$db,$dc,$dd,$de,$df,$e3
	.byte $e4,$e8,$ea,$21,$00,$d2,$d3,$d4,$d8,$dc,$dd,$de,$df,$e0,$e5,$e9
	.byte $eb,$21,$00,$d1,$d3,$d4,$d7,$d9,$e1,$e9,$d2,$d5,$d6,$db,$dd,$df
	.byte $e3,$ea,$21,$00,$d1,$d5,$d6,$d7,$da,$e2,$e8,$d2,$d3,$d4,$d8,$dc
	.byte $de,$e0,$eb,$21,$00,$21,$d8,$da,$d8,$e5,$d8,$da,$d4,$d3,$de,$21
	.byte $eb,$d8,$e5,$d8,$d1,$21,$d9,$db,$e4,$db,$d9,$db,$d5,$d5,$21,$df
	.byte $db,$ea,$db,$e4,$d5,$21,$dc,$21,$dc,$21,$e4,$21,$21,$d7,$e0,$e2
	.byte $21,$e4,$21,$e8,$d1,$21,$21,$dd,$21,$dd,$21,$e5,$d4,$d6,$e1,$e3
	.byte $e5,$21,$e9,$21,$d6,$00,$10,$20,$30,$40,$50,$60,$70,$0f,$1f,$2f
	.byte $3f,$4f,$5f,$6f,$7f,$01,$02,$82,$03,$04,$05,$85,$06,$09,$0a,$8a
	.byte $0b,$0c,$0d,$8d,$0e,$11,$11,$12,$12,$13,$13,$14,$14,$15,$15,$16
	.byte $16,$11,$11,$12,$12,$13,$13,$14,$14,$15,$15,$16,$16,$f0,$30,$c0
	.byte $c0,$f0,$30,$c0,$c0,$ff,$33,$cc,$cc,$ff,$33,$cc,$cc,$03,$0c,$03
	.byte $0c,$03,$0c,$03,$0c,$03,$0c,$03,$0c,$30,$c0,$30,$c0,$30,$c0,$30
	.byte $c0,$30,$c0,$30,$c0,$a2,$07,$bc,$05,$a9,$b9,$00,$07,$a0,$06,$d9
	.byte $8c,$a5,$f0,$08,$88,$10,$f8,$ca,$10,$ed,$30,$56,$8e,$7a,$01,$a2
	.byte $07,$bc,$0d,$a9,$b9,$00,$07,$a0,$06,$d9,$84,$a5,$f0,$08,$88,$10
	.byte $f8,$ca,$10,$ed,$30,$3c,$8e,$7b,$01,$a9,$00,$8d,$5f,$01,$a2,$07
	.byte $86,$d0,$a2,$0f,$86,$cf,$a5,$cf,$d0,$09,$a5,$d0,$cd,$7a,$01,$f0
	.byte $17,$d0,$0b,$c9,$0f,$d0,$07,$a5,$d0,$cd,$7b,$01,$f0,$0a,$20,$1a
	.byte $a4,$85,$d1,$20,$fe,$a2,$b0,$0a,$c6,$cf,$10,$da,$c6,$d0,$10,$d2
	.byte $18,$60,$ee,$5f,$01,$38,$60,$20,$0d,$cf,$20,$84,$db,$a9,$aa,$a0
	.byte $27,$20,$ee,$cf,$20,$18,$cf,$20,$97,$8c,$20,$2a,$ab,$4c,$02,$9b
	.byte $20,$0d,$cf,$20,$84,$db,$a9,$aa,$a0,$38,$20,$ee,$cf,$20,$18,$cf
	.byte $20,$97,$8c,$a2,$3f,$a9,$5a,$9d,$00,$06,$ca,$10,$f8,$a9,$17,$8d
	.byte $01,$06,$a9,$01,$8d,$02,$06,$a9,$00,$8d,$03,$06,$a9,$03,$8d,$04
	.byte $06,$20,$6d,$aa,$4c,$02,$9b,$22,$09,$4e,$4f,$57,$21,$4c,$4f,$41
	.byte $44,$49,$4e,$47,$9a,$9a,$9a,$00,$22,$09,$4e,$4f,$57,$21,$53,$41
	.byte $56,$49,$4e,$47,$9a,$9a,$9a,$9a,$00,$22,$0a,$4c,$4f,$41,$44,$21
	.byte $45,$52,$52,$4f,$52,$00,$a5,$05,$29,$7f,$8d,$00,$20,$85,$05,$60
	.byte $ad,$02,$20,$29,$80,$d0,$f9,$a5,$05,$09,$80,$d0,$ed,$20,$56,$aa
	.byte $20,$c4,$aa,$20,$7f,$aa,$20,$d4,$aa,$20,$7f,$aa,$4c,$60,$aa,$a9
	.byte $20,$85,$0a,$a9,$4e,$85,$0b,$20,$e7,$aa,$c6,$0a,$d0,$f9,$c6,$0b
	.byte $d0,$f5,$20,$ec,$aa,$c6,$0c,$d0,$f9,$20,$e7,$aa,$c6,$0d,$d0,$f9
	.byte $20,$ec,$aa,$a9,$00,$85,$2b,$85,$2a,$a0,$00,$b1,$28,$20,$07,$ab
	.byte $c8,$c4,$10,$d0,$f6,$a5,$2b,$48,$a5,$2a,$20,$07,$ab,$68,$20,$07
	.byte $ab,$4c,$ec,$aa,$a9,$40,$85,$10,$a9,$06,$85,$29,$a9,$00,$85,$28
	.byte $a9,$28,$d0,$0e,$a9,$00,$85,$10,$a9,$07,$85,$29,$a9,$00,$85,$28
	.byte $a9,$14,$85,$0c,$85,$0d,$60,$48,$a9,$34,$d0,$03,$48,$a9,$6a,$85
	.byte $08,$85,$09,$a9,$04,$8d,$16,$40,$c6,$08,$d0,$fc,$a9,$ff,$8d,$16
	.byte $40,$c6,$09,$d0,$fc,$68,$60,$20,$ec,$aa,$a2,$08,$85,$08,$18,$65
	.byte $08,$b0,$07,$20,$e7,$aa,$ca,$d0,$f3,$60,$20,$ec,$aa,$20,$23,$ab
	.byte $4c,$16,$ab,$e6,$2a,$d0,$02,$e6,$2b,$60,$20,$56,$aa,$20,$c4,$aa
	.byte $20,$71,$ab,$90,$0a,$a9,$aa,$a0,$49,$20,$ee,$cf,$4c,$2a,$ab,$a0
	.byte $00,$ad,$01,$06,$c9,$17,$f0,$01,$c8,$ad,$02,$06,$c9,$01,$f0,$01
	.byte $c8,$ad,$03,$06,$c9,$00,$f0,$01,$c8,$ad,$04,$06,$c9,$03,$f0,$01
	.byte $c8,$c0,$00,$d0,$d0,$20,$d4,$aa,$20,$71,$ab,$b0,$c8,$20,$60,$aa
	.byte $60,$a5,$0c,$85,$0b,$20,$bd,$ab,$d0,$f7,$c6,$0b,$d0,$f7,$a5,$0d
	.byte $85,$0b,$20,$bd,$ab,$f0,$ea,$c6,$0b,$d0,$f7,$a9,$00,$85,$2b,$85
	.byte $2a,$20,$00,$ac,$20,$00,$ac,$a0,$00,$20,$d1,$ab,$91,$28,$c8,$c4
	.byte $10,$d0,$f6,$a5,$2a,$85,$0e,$a5,$2b,$85,$0f,$20,$d1,$ab,$c5,$0e
	.byte $d0,$07,$20,$d1,$ab,$c5,$0f,$f0,$02,$38,$60,$18,$60,$20,$00,$ac
	.byte $a9,$4e,$85,$08,$c6,$08,$d0,$fc,$20,$f4,$ab,$ad,$16,$40,$29,$02
	.byte $60,$a9,$08,$85,$09,$a9,$00,$85,$0a,$a5,$0a,$18,$65,$0a,$85,$0a
	.byte $20,$bd,$ab,$d0,$05,$20,$23,$ab,$e6,$0a,$c6,$09,$d0,$eb,$20,$00
	.byte $ac,$a5,$0a,$60,$a9,$05,$8d,$16,$40,$48,$68,$48,$68,$48,$68,$60
	.byte $20,$f4,$ab,$ad,$16,$40,$29,$02,$f0,$f6,$20,$f4,$ab,$ad,$16,$40
	.byte $29,$02,$d0,$f6,$60

Lbl_ac15:
	.byte $64,$0a,$01

Lbl_ac18:
	.byte $00,$00,$00

Lbl_ac1b:
	.byte $1f,$0f,$07,$03

Lbl_ac1f:
	pha 
	and #$0f
	bne Lbl_ac30
	pla 
	sec 
	sbc #$07
	cmp #$a0
	bcc Lbl_ac34
	lda #$99
	clc 
	rts 

Lbl_ac30:
	pla 
	sec 
	sbc #$01

Lbl_ac34:
	sec 
	rts 

Lbl_ac36:
	lda $3f
	and #$01
	bne Lbl_ac3d
	rts 

Lbl_ac3d:
	lda $6d
	bne Lbl_ac96
	lda $47
	bne Lbl_ac96
	lda $1f
	beq Lbl_ac73
	lda $65
	ora $66
	bne Lbl_ac58
	sta $0181
	lda #$01
	sta $70
	bne Lbl_ac96

Lbl_ac58:
	dec $64
	bne Lbl_ac96
	lda #$0a
	sta $64
	lda $65
	jsr Lbl_ac1f
	sta $65
	bcs Lbl_ac96
	lda $66
	jsr Lbl_ac1f
	sta $66
	jmp Lbl_ac96

Lbl_ac73:
	lda $3f
	and #$0e
	bne Lbl_ac96
	lda $18
	bne Lbl_ac96
	lda $63
	bmi Lbl_ac96
	lda $5c
	bne Lbl_ac87
	dec $5d

Lbl_ac87:
	dec $5c
	lda $5d
	bpl Lbl_ac96
	ldy #$00
	sty $5c
	sty $5d
	iny 
	sty $70

Lbl_ac96:
	lda $47
	bne Lbl_ad00
	lda #$0b
	asl $c1
	bcs Lbl_acbe
	lda #$0a
	asl $c1
	bcs Lbl_acbe
	lda #$0c
	asl $c1
	bcs Lbl_acbe
	lda #$0d
	asl $c1
	bcs Lbl_acbe
	lda #$09
	asl $c1
	bcs Lbl_acbe
	lda #$04
	asl $c1
	bcc Lbl_acc1

Lbl_acbe:
	jsr Lbl_eaf9

Lbl_acc1:
	lda #$00
	sta $c1
	lda #$00
	sta $4c
	sta $4d
	sta $4e
	tax 
	lda $41
	sta $08
	lda $40
	sta $09

Lbl_acd6:
	lda $09
	sec 
	sbc Lbl_ac15,x
	sta $09
	lda $08
	sbc Lbl_ac18,x
	sta $08
	bcc Lbl_acec
	inc $4c,x
	jmp Lbl_acd6

Lbl_acec:
	lda $09
	clc 
	adc Lbl_ac15,x
	sta $09
	lda $08
	adc Lbl_ac18,x
	sta $08
	inx 
	cpx #$03
	bcc Lbl_acd6

Lbl_ad00:
	lda $41
	sta $50
	lda $40
	asl a 
	rol $50
	clc 
	adc $34
	sta $34
	lda $50
	adc $33
	cmp #$0c
	bcc Lbl_ad19
	sec 
	sbc #$0c

Lbl_ad19:
	sta $33
	lda $57
	cmp $59
	sta $59
	bne Lbl_ad27
	lda #$ff
	sta $57

Lbl_ad27:
	lda $46
	ora $47
	bne Lbl_ad47
	lda $57
	bmi Lbl_ad47
	bne Lbl_ad35
	lda #$ff

Lbl_ad35:
	clc 
	adc $32
	bpl Lbl_ad3c
	lda #$00

Lbl_ad3c:
	cmp #$04
	bcc Lbl_ad42
	lda #$03

Lbl_ad42:
	sta $32
	jsr Lbl_fc2b

Lbl_ad47:
	lda $46
	ora $47
	bne Lbl_ad6c
	lda $41
	lsr a 
	lda $40
	ror a 
	ldy $32
	dey 
	beq Lbl_ad6a
	cpy #$02
	beq Lbl_ad69
	iny 
	beq Lbl_ad60
	lsr a 

Lbl_ad60:
	sta $08
	lsr a 
	clc 
	adc $08
	jmp Lbl_ad6a

Lbl_ad69:
	lsr a 

Lbl_ad6a:
	sta $43

Lbl_ad6c:
	lda $73
	eor #$07
	sta $73
	lda $6d
	bne Lbl_add8
	lda $4a
	beq Lbl_add8
	dec $62
	lda $62
	and #$1f
	bne Lbl_adca
	lda $1f
	beq Lbl_adb0
	inc $67
	ldx #$00

Lbl_ad8a:
	lda $67,x
	cmp #$0a
	bcc Lbl_ad96
	sbc #$0a
	sta $67,x
	inc $68,x

Lbl_ad96:
	inx 
	cpx #$02
	bne Lbl_ad8a
	ldx #$02

Lbl_ad9d:
	lda $67,x
	cmp $6a,x
	bcc Lbl_adca
	bne Lbl_adca
	dex 
	bpl Lbl_ad9d
	lda #$18
	jsr Lbl_eaf9
	jmp Lbl_adca

Lbl_adb0:
	lda $60
	ora $61
	beq Lbl_adca
	lda $61
	bne Lbl_adc0
	lda $60
	cmp #$01
	beq Lbl_adca

Lbl_adc0:
	dec $60
	bpl Lbl_adca
	lda #$09
	sta $60
	dec $61

Lbl_adca:
	lda $62
	ldx $32
	and Lbl_ac1b,x
	bne Lbl_add8
	inc $04
	jsr Lbl_d569

Lbl_add8:
	lda $47
	bne Lbl_ae21
	lda #$00
	sta $c0
	lda $38
	bne Lbl_adec
	lda $37
	cmp #$70
	bcc Lbl_ae21
	bcs Lbl_adf2

Lbl_adec:
	lda $37
	cmp #$94
	bcs Lbl_ae21

Lbl_adf2:
	inc $c0
	inc $98
	bne Lbl_adf8

Lbl_adf8:
	lda $41
	bne Lbl_ae0c
	lda $40
	cmp #$64
	bcc Lbl_ae25
	lda $32
	bne Lbl_ae0c
	lda $40
	cmp #$c8
	bcc Lbl_ae25

Lbl_ae0c:
	lda $40
	sec 
	sbc #$0a
	sta $40
	lda $41
	sbc #$00
	sta $41
	bpl Lbl_ae25
	jsr Lbl_d456
	jmp Lbl_ae25

Lbl_ae21:
	lda #$00
	sta $98

Lbl_ae25:
	lda $46
	beq Lbl_ae2c
	jmp Lbl_d310

Lbl_ae2c:
	lda $47
	beq Lbl_ae33
	jmp Lbl_d45f

Lbl_ae33:
	ldx $58
	inx 
	lda Lbl_b0d0,x
	cmp $3d
	beq Lbl_ae44
	bcs Lbl_ae42
	dec $3d
	bit $3de6

Lbl_ae44:
	lda $58
	bpl Lbl_ae4e
	lda #$00
	sta $3a
	beq Lbl_ae5a

Lbl_ae4e:
	beq Lbl_ae53
	lda #$fb
	bit $05a9
	clc 
	adc $3a
	sta $3a

Lbl_ae5a:
	lda $41
	lsr a 
	lda $40
	ror a 
	clc 
	adc $45
	sta $45
	bcc Lbl_ae6d
	lda $44
	eor #$07
	sta $44

Lbl_ae6d:
	lda $0181
	bne Lbl_ae95
	ldy #$00
	lda ($28),y
	bpl Lbl_ae83
	cmp #$f8
	bcs Lbl_ae8e
	ldy $3d
	lda Lbl_b14c,y
	bpl Lbl_ae93

Lbl_ae83:
	cmp #$08
	bcc Lbl_ae8e
	ldy $3d
	lda Lbl_b157,y
	bpl Lbl_ae93

Lbl_ae8e:
	ldy $3d
	lda Lbl_b141,y

Lbl_ae93:
	sta $3e

Lbl_ae95:
	lda $3e
	clc 
	adc $44
	sta $0a
	tay 
	lda Lbl_b117,y
	sta $c8
	lda Lbl_b125,y
	sta $c9
	lda Lbl_b133,y
	sta $cd
	sta $015c
	lda #$80
	sta $ca
	lda $3f
	lsr a 
	and #$01
	clc 
	adc #$b8
	sta $cc
	ldx #$0c
	lda $70
	beq Lbl_aed0
	lda $5c
	ora $5d
	beq Lbl_aed0
	lda $1f
	bne Lbl_aed0
	jmp Lbl_af3c

Lbl_aed0:
	ldy #$00

Lbl_aed2:
	lda ($c8),y
	clc 
	adc $cc
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	clc 
	adc $ca
	sta $0200,x
	inx 
	iny 
	dec $cd
	bne Lbl_aed2
	stx $15
	lda $9e
	bne Lbl_af01
	jmp Lbl_af3c

Lbl_af01:
	lda #$d8
	sec 
	sbc $9c
	cmp #$d4
	bcc Lbl_af0c
	lda #$d3

Lbl_af0c:
	sta $9c
	ldx $15
	stx $9f
	lda $9b
	sta $0200,x
	sta $0204,x
	inx 
	lda $9c
	sta $0200,x
	sta $0204,x
	inx 
	lda #$03
	sta $0200,x
	sta $0204,x
	inx 
	lda $99
	sta $0200,x
	lda $9a
	inx 
	inx 
	inx 
	inx 
	sta $0200,x
	inx 

Lbl_af3c:
	stx $15
	jsr Lbl_c3f4
	ldx #$01

Lbl_af43:
	stx $16
	lda $76,x
	sta $0c
	lda $78,x
	sta $0d
	lda $7e,x
	sta $cc
	lda $7a,x
	sta $ca
	lda $7c,x
	sta $ce
	ldx $15
	ldy $0d
	bne Lbl_af62
	jmp Lbl_b04d

Lbl_af62:
	lda Lbl_b491,y
	clc 
	adc $0c
	adc $73
	tay 
	lda Lbl_b49a,y
	sta $c8
	lda Lbl_b50a,y
	sta $c9
	lda Lbl_b583,y
	cpy #$46
	bcc Lbl_af7e
	lda #$01

Lbl_af7e:
	sta $cd
	ldy $16
	lda a:$0080,y
	bmi Lbl_afd9
	tay 
	lda Lbl_b5c9,y
	tay 
	lda $0d
	cmp #$07
	bcs Lbl_afaa
	lda $cc
	clc 
	adc #$14
	sta $cc
	lda Lbl_c9d8,y
	sta $cd
	lda Lbl_c9db,y
	sta $c8
	lda Lbl_c9de,y
	sta $c9
	bne Lbl_afb9

Lbl_afaa:
	lda Lbl_b579,y
	sta $c8
	lda Lbl_b57c,y
	sta $c9
	lda Lbl_b57f,y
	sta $cd

Lbl_afb9:
	lda $3f
	and #$02
	bne Lbl_afd9
	stx $15
	ldx $16
	inc $80,x
	lda $80,x
	cmp #$0c
	bne Lbl_afd3
	lda #$ff
	sta $80,x
	lda #$f8
	sta $84,x

Lbl_afd3:
	ldx $15
	cpx #$0c
	bcc Lbl_b04d

Lbl_afd9:
	ldy #$00

Lbl_afdb:
	lda ($c8),y
	clc 
	adc $cc
	sta $0200,x
	cmp #$50
	bcs Lbl_affd
	lda $cc
	cmp #$50
	bcs Lbl_aff8
	lda $0200,x
	sec 
	sbc #$18
	sta $0200,x
	bne Lbl_affd

Lbl_aff8:
	lda #$f0
	sta $0200,x

Lbl_affd:
	inx 
	iny 
	lda ($c8),y
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	clc 
	adc $ca
	sta $0200,x
	lda #$00
	sta $0b
	lda ($c8),y
	bpl Lbl_b01f
	inc $0b

Lbl_b01f:
	lda $0b
	adc $ce
	and #$01
	beq Lbl_b02c
	lda #$f0
	sta $01fd,x

Lbl_b02c:
	inx 
	cpx #$0c
	bcc Lbl_b04d
	cpx #$a0
	bne Lbl_b048
	lda $36
	asl a 
	lda $35
	rol a 
	sta $2005
	lda #$00
	sta $2005
	adc $05
	sta $2000

Lbl_b048:
	iny 
	dec $cd
	bne Lbl_afdb

Lbl_b04d:
	stx $15
	ldx $16
	dex 
	bmi Lbl_b057
	jmp Lbl_af43

Lbl_b057:
	ldx $15
	stx $15
	ldx $15
	beq Lbl_b08a
	cpx #$a0
	bcs Lbl_b08a

Lbl_b063:
	lda #$ff
	nop 
	sta $0200,x
	sta $0200,x
	sta $0200,x
	sta $0200,x
	inx 
	cpx #$a0
	bcc Lbl_b063
	lda $36
	asl a 
	lda $35
	rol a 
	sta $2005
	lda #$00
	sta $2005
	adc $05
	sta $2000

Lbl_b08a:
	stx $15
	jsr Lbl_c692
	ldx $15
	beq Lbl_b09e
	lda #$f0

Lbl_b095:
	sta $0200,x
	inx 
	inx 
	inx 
	inx 
	bne Lbl_b095

Lbl_b09e:
	jmp Lbl_ca9f

Lbl_b0a1:
	sta $c8
	sty $c9
	ldy #$00

Lbl_b0a7:
	lda ($c8),y
	clc 
	adc $cc
	sta $0200,x
	iny 
	inx 
	lda ($c8),y
	sta $0200,x
	iny 
	inx 
	lda ($c8),y
	sta $0200,x
	iny 
	inx 
	lda ($c8),y
	clc 
	adc $ca
	sta $0200,x
	iny 
	inx 
	bpl Lbl_b0cf
	dec $cd
	bne Lbl_b0a7

Lbl_b0cf:
	rts 

Lbl_b0d0:
	.byte $05,$0a,$00,$01,$02,$04,$07,$01,$02,$04,$08,$00,$00,$f8,$00,$f0
	.byte $f0,$f8,$00,$e0,$e0,$e8,$e8,$f0,$f8,$00,$01,$0b,$0c,$0d,$47,$55
	.byte $85,$85,$8d,$91,$2f,$34,$32,$32,$32,$04,$04,$04,$04,$03,$0b,$03
	.byte $03,$00,$08,$00,$08,$04,$04,$04,$04,$04,$04,$04,$04,$fc,$03,$03
	.byte $08,$00,$08,$00,$04,$04,$04

Lbl_b117:
	.byte $62,$a2,$da,$0e,$4e,$82,$ba,$fa,$3a,$72,$a6,$e6,$1a,$52

Lbl_b125:
	.byte $b1,$b1,$b1,$b2,$b2,$b2,$b2,$b2,$b3,$b3,$b3,$b3,$b4,$b4

Lbl_b133:
	.byte $10,$0e,$0d,$10,$0d,$0e,$10,$10,$0e,$0d,$10,$0d,$0e,$10

Lbl_b141:
	.byte $00,$01,$01,$02,$02,$03,$04,$04,$05,$05,$06

Lbl_b14c:
	.byte $00,$00,$00,$01,$01,$02,$02,$03,$03,$03,$03

Lbl_b157:
	.byte $03,$03,$03,$03,$04,$04,$05,$05,$06,$06,$06,$00,$1f,$40,$ec,$00
	.byte $20,$40,$e4,$08,$21,$40,$f4,$08,$22,$40,$ec,$08,$23,$40,$e4,$10
	.byte $24,$40,$fc,$10,$25,$40,$f4,$10,$26,$40,$ec,$10,$27,$40,$e4,$18
	.byte $28,$40,$fc,$18,$29,$40,$f4,$18,$2a,$40,$ec,$18,$2b,$40,$e4,$20
	.byte $2c,$40,$fc,$20,$2d,$40,$f4,$20,$2e,$40,$ec,$00,$0c,$40,$fd,$00
	.byte $0d,$40,$f5,$00,$0e,$40,$ed,$08,$0f,$40,$fd,$08,$10,$40,$f5,$08
	.byte $11,$40,$ed,$10,$12,$40,$fd,$10,$13,$40,$f5,$10,$14,$40,$ed,$18
	.byte $15,$40,$fd,$18,$16,$40,$f5,$18,$17,$40,$ed,$20,$18,$40,$fd,$20
	.byte $19,$40,$f5,$f8,$c0,$40,$f6,$00,$c1,$40,$fe,$00,$c2,$40,$f6,$00
	.byte $c3,$40,$ee,$08,$c4,$40,$fe,$08,$c5,$40,$f6,$08,$c6,$40,$ee,$10
	.byte $c7,$40,$fe,$10,$c8,$40,$f6,$18,$c9,$40,$fe,$18,$ca,$40,$f6,$20
	.byte $cb,$40,$fe,$20,$cc,$40,$f6,$f8,$01,$00,$f9,$f8,$01,$40,$01,$00
	.byte $02,$00,$f1,$00,$03,$00,$f9,$00,$03,$40,$01,$00,$02,$40,$09,$08
	.byte $04,$00,$f1,$08,$05,$00,$f9,$08,$05,$40,$01,$08,$04,$40,$09,$10
	.byte $06,$00,$f9,$10,$06,$40,$01,$18,$07,$00,$f9,$18,$07,$40,$01,$20
	.byte $08,$00,$f9,$20,$08,$40,$01,$f8,$c0,$00,$03,$00,$c1,$00,$fb,$00
	.byte $c2,$00,$03,$00,$c3,$00,$0b,$08,$c4,$00,$fb,$08,$c5,$00,$03,$08
	.byte $c6,$00,$0b,$10,$c7,$00,$fb,$10,$c8,$00,$03,$18,$c9,$00,$fb,$18
	.byte $ca,$00,$03,$20,$cb,$00,$fb,$20,$cc,$00,$03,$00,$0c,$00,$fd,$00
	.byte $0d,$00,$05,$00,$0e,$00,$0d,$08,$0f,$00,$fd,$08,$10,$00,$05,$08
	.byte $11,$00,$0d,$10,$12,$00,$fd,$10,$13,$00,$05,$10,$14,$00,$0d,$18
	.byte $15,$00,$fd,$18,$16,$00,$05,$18,$17,$00,$0d,$20,$18,$00,$fd,$20
	.byte $19,$00,$05,$00,$1f,$00,$0d,$00,$20,$00,$15,$08,$21,$00,$05,$08
	.byte $22,$00,$0d,$08,$23,$00,$15,$10,$24,$00,$fd,$10,$25,$00,$05,$10
	.byte $26,$00,$0d,$10,$27,$00,$15,$18,$28,$00,$fd,$18,$29,$00,$05,$18
	.byte $2a,$00,$0d,$18,$2b,$00,$15,$20,$2c,$00,$fd,$20,$2d,$00,$05,$20
	.byte $2e,$00,$0d,$00,$1f,$40,$ec,$00,$20,$40,$e4,$08,$21,$40,$f4,$08
	.byte $22,$40,$ec,$08,$23,$40,$e4,$10,$24,$40,$fc,$10,$25,$40,$f4,$10
	.byte $26,$40,$ec,$10,$27,$40,$e4,$18,$2f,$40,$fc,$18,$30,$40,$f4,$18
	.byte $2a,$40,$ec,$18,$2b,$40,$e4,$20,$31,$40,$fc,$20,$2d,$40,$f4,$20
	.byte $2e,$40,$ec,$00,$0c,$40,$fd,$00,$0d,$40,$f5,$00,$0e,$40,$ed,$08
	.byte $0f,$40,$fd,$08,$10,$40,$f5,$08,$11,$40,$ed,$10,$12,$40,$fd,$10
	.byte $13,$40,$f5,$10,$14,$40,$ed,$18,$1a,$40,$fd,$18,$1b,$40,$f5,$18
	.byte $17,$40,$ed,$20,$1c,$40,$fd,$20,$19,$40,$f5,$f8,$c0,$40,$f6,$00
	.byte $c1,$40,$fe,$00,$c2,$40,$f6,$00,$c3,$40,$ee,$08,$c4,$40,$fe,$08
	.byte $c5,$40,$f6,$08,$c6,$40,$ee,$10,$c7,$40,$fe,$10,$c8,$40,$f6,$18
	.byte $cd,$40,$fe,$18,$ce,$40,$f6,$20,$cf,$40,$fe,$20,$cc,$40,$f6,$f8
	.byte $01,$00,$f9,$f8,$01,$40,$01,$00,$02,$00,$f1,$00,$03,$00,$f9,$00
	.byte $03,$40,$01,$00,$02,$40,$09,$08,$04,$00,$f1,$08,$05,$00,$f9,$08
	.byte $05,$40,$01,$08,$04,$40,$09,$10,$09,$00,$f9,$10,$09,$40,$01,$18
	.byte $0a,$00,$f9,$18,$0a,$40,$01,$20,$0b,$00,$f9,$20,$0b,$40,$01,$f8
	.byte $c0,$00,$03,$00,$c1,$00,$fb,$00,$c2,$00,$03,$00,$c3,$00,$0b,$08
	.byte $c4,$00,$fb,$08,$c5,$00,$03,$08,$c6,$00,$0b,$10,$c7,$00,$fb,$10
	.byte $c8,$00,$03,$18,$cd,$00,$fb,$18,$ce,$00,$03,$20,$cf,$00,$fb,$20
	.byte $cc,$00,$03,$00,$0c,$00,$fd,$00,$0d,$00,$05,$00,$0e,$00,$0d,$08
	.byte $0f,$00,$fd,$08,$10,$00,$05,$08,$11,$00,$0d,$10,$12,$00,$fd,$10
	.byte $13,$00,$05,$10,$14,$00,$0d,$18,$1a,$00,$fd,$18,$1b,$00,$05,$18
	.byte $17,$00,$0d,$20,$1c,$00,$fd,$20,$19,$00,$05,$00,$1f,$00,$0d,$00
	.byte $20,$00,$15,$08,$21,$00,$05,$08,$22,$00,$0d,$08,$23,$00,$15,$10
	.byte $24,$00,$fd,$10,$25,$00,$05,$10,$26,$00,$0d,$10,$27,$00,$15,$18
	.byte $2f,$00,$fd,$18,$30,$00,$05,$18,$2a,$00,$0d,$18,$2b,$00,$15,$20
	.byte $31,$00,$fd,$20,$2d,$00,$05,$20,$2e,$00

Lbl_b491:
	.byte $0d,$62,$54,$46,$38,$2a,$1c,$0e,$00

Lbl_b49a:
	.byte $00,$61,$61,$a9,$f1,$f1,$00,$00,$39,$39,$81,$c9,$c9,$00,$00,$11
	.byte $45,$79,$a9,$dd,$00,$00,$11,$45,$79,$a9,$dd,$00,$11,$31,$51,$71
	.byte $8d,$ad,$cd,$11,$31,$51,$71,$8d,$ad,$cd,$ed,$fd,$0d,$19,$29,$35
	.byte $45,$ed,$fd,$0d,$19,$29,$35,$45,$55,$59,$5d,$61,$65,$69,$6d,$55
	.byte $59,$5d,$61,$65,$69,$6d,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71
	.byte $71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71
	.byte $71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71

Lbl_b50a:
	.byte $00,$b6,$b6,$b6,$b6,$b6,$00,$00,$b7,$b7,$b7,$b7,$b7,$00,$00,$b8
	.byte $b8,$b8,$b8,$b8,$00,$00,$b9,$b9,$b9,$b9,$b9,$00,$ba,$ba,$ba,$ba
	.byte $ba,$ba,$ba,$ba,$ba,$ba,$ba,$ba,$ba,$ba,$ba,$ba,$bb,$bb,$bb,$bb
	.byte $bb,$ba,$ba,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb
	.byte $bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb,$bb

Lbl_b579:
	.byte $bb,$d9,$f1

Lbl_b57c:
	.byte $21,$b5,$b5

Lbl_b57f:
	.byte $b6,$06,$0c,$10

Lbl_b583:
	.byte $00,$12,$12,$12,$12,$12,$00,$00,$12,$12,$12,$12,$12,$00,$00,$0d
	.byte $0d,$0c,$0d,$0d,$00,$00,$0d,$0d,$0c,$0d,$0d,$00,$08,$08,$08,$07
	.byte $08,$08,$08,$08,$08,$08,$07,$08,$08,$08,$04,$04,$03,$04,$03,$04
	.byte $04,$04,$04,$03,$04,$03,$04,$04,$01,$01,$01,$01,$01,$01,$01,$01
	.byte $01,$01,$01,$01,$01,$01

Lbl_b5c9:
	.byte $01,$02,$01,$02,$03,$02,$03,$02,$03,$03,$03,$03,$03,$03,$03,$03
	.byte $10,$b2,$03,$f9,$10,$b2,$43,$01,$18,$b3,$03,$f1,$18,$b2,$83,$f9
	.byte $18,$b2,$c3,$01,$18,$b3,$43,$09,$0c,$b4,$03,$f1,$0c,$b5,$03,$f9
	.byte $0c,$b5,$43,$01,$0c,$b4,$43,$09,$14,$b6,$03,$f1,$14,$b7,$03,$f9
	.byte $14,$b7,$43,$01,$14,$b6,$43,$09,$1c,$b4,$83,$f1,$1c,$b5,$83,$f9
	.byte $1c,$b5,$c3,$01,$1c,$b4,$c3,$09,$08,$b8,$03,$f1,$08,$b9,$03,$f9
	.byte $08,$b9,$43,$01,$08,$b8,$43,$09,$10,$ba,$03,$f1,$10,$bb,$03,$f9
	.byte $10,$bb,$43,$01,$10,$ba,$43,$09,$18,$ba,$83,$f1,$18,$bb,$83,$f9
	.byte $18,$bb,$c3,$01,$18,$ba,$c3,$09,$20,$b8,$83,$f1,$20,$b9,$83,$f9
	.byte $20,$b9,$c3,$01,$20,$b8,$c3,$09,$00,$4d,$41,$fa,$08,$4e,$41,$02
	.byte $08,$4f,$41,$fa,$08,$50,$41,$f2,$10,$51,$41,$0a,$10,$52,$41,$02
	.byte $10,$53,$41,$fa,$10,$54,$41,$f2,$18,$55,$41,$0a,$18,$56,$41,$02
	.byte $18,$57,$41,$fa,$18,$58,$41,$f2,$18,$59,$41,$ea,$20,$5a,$41,$0a
	.byte $20,$5b,$41,$02,$20,$5c,$41,$fa,$20,$5d,$41,$f2,$20,$5e,$41,$ea
	.byte $00,$32,$01,$f8,$00,$32,$41,$00,$08,$33,$01,$f0,$08,$34,$01,$f8
	.byte $08,$34,$41,$00,$08,$33,$41,$08,$10,$35,$01,$f0,$10,$36,$01,$f8
	.byte $10,$36,$41,$00,$10,$35,$41,$08,$18,$37,$01,$f0,$18,$38,$01,$f8
	.byte $18,$38,$41,$00,$18,$37,$41,$08,$20,$39,$01,$f0,$20,$3a,$01,$f8
	.byte $20,$3a,$41,$00,$20,$39,$41,$08,$00,$4d,$01,$fe,$08,$4e,$01,$f6
	.byte $08,$4f,$01,$fe,$08,$50,$01,$06,$10,$51,$01,$ee,$10,$52,$01,$f6
	.byte $10,$53,$01,$fe,$10,$54,$01,$06,$18,$55,$01,$ee,$18,$56,$01,$f6
	.byte $18,$57,$01,$fe,$18,$58,$01,$06,$18,$59,$01,$0e,$20,$5a,$01,$ee
	.byte $20,$5b,$01,$f6,$20,$5c,$01,$fe,$20,$5d,$01,$06,$20,$5e,$01,$0e
	.byte $00,$4d,$41,$fa,$08,$4e,$41,$02,$08,$4f,$41,$fa,$08,$50,$41,$f2
	.byte $10,$51,$41,$0a,$10,$52,$41,$02,$10,$53,$41,$fa,$10,$54,$41,$f2
	.byte $18,$5f,$41,$0a,$18,$60,$41,$02,$18,$57,$41,$fa,$18,$61,$41,$f2
	.byte $18,$59,$41,$ea,$20,$5a,$41,$0a,$20,$5b,$41,$02,$20,$5c,$41,$fa
	.byte $20,$5d,$41,$f2,$20,$5e,$41,$ea,$00,$32,$01,$f8,$00,$32,$41,$00
	.byte $08,$33,$01,$f0,$08,$34,$01,$f8,$08,$34,$41,$00,$08,$33,$41,$08
	.byte $10,$35,$01,$f0,$10,$36,$01,$f8,$10,$36,$41,$00,$10,$35,$41,$08
	.byte $18,$3b,$01,$f0,$18,$38,$01,$f8,$18,$38,$41,$00,$18,$3b,$41,$08
	.byte $20,$39,$01,$f0,$20,$3a,$01,$f8,$20,$3a,$41,$00,$20,$39,$41,$08
	.byte $00,$4d,$01,$fe,$08,$4e,$01,$f6,$08,$4f,$01,$fe,$08,$50,$01,$06
	.byte $10,$51,$01,$ee,$10,$52,$01,$f6,$10,$53,$01,$fe,$10,$54,$01,$06
	.byte $18,$5f,$01,$ee,$18,$60,$01,$f6,$18,$57,$01,$fe,$18,$61,$01,$06
	.byte $18,$59,$01,$0e,$20,$5a,$01,$ee,$20,$5b,$01,$f6,$20,$5c,$01,$fe
	.byte $20,$5d,$01,$06,$20,$5e,$01,$0e,$00,$7f,$41,$f9,$00,$80,$41,$f1
	.byte $08,$81,$41,$01,$08,$82,$41,$f9,$08,$83,$41,$f1,$10,$84,$41,$09
	.byte $10,$85,$41,$01,$10,$86,$41,$f9,$10,$87,$41,$f1,$18,$88,$41,$09
	.byte $18,$89,$41,$01,$18,$8a,$41,$f9,$18,$8b,$41,$f1,$00,$62,$41,$fc
	.byte $00,$63,$41,$f4,$08,$64,$41,$00,$08,$65,$41,$f8,$08,$66,$41,$f0
	.byte $10,$67,$41,$08,$10,$68,$41,$00,$10,$69,$41,$f8,$10,$6a,$41,$f0
	.byte $18,$6b,$41,$08,$18,$6c,$41,$00,$18,$6d,$41,$f8,$18,$6e,$41,$f0
	.byte $00,$3c,$01,$f8,$00,$3c,$41,$00,$08,$3d,$01,$f8,$08,$3d,$41,$00
	.byte $10,$3e,$01,$f0,$10,$3f,$01,$f8,$10,$3f,$41,$00,$10,$3e,$41,$08
	.byte $18,$40,$01,$f0,$18,$41,$01,$f8,$18,$41,$41,$00,$18,$40,$41,$08
	.byte $00,$62,$01,$fc,$00,$63,$01,$04,$08,$64,$01,$f8,$08,$65,$01,$00
	.byte $08,$66,$01,$08,$10,$67,$01,$f0,$10,$68,$01,$f8,$10,$69,$01,$00
	.byte $10,$6a,$01,$08,$18,$6b,$01,$f0,$18,$6c,$01,$f8,$18,$6d,$01,$00
	.byte $18,$6e,$01,$08,$00,$7f,$01,$00,$00,$80,$01,$08,$08,$81,$01,$f8
	.byte $08,$82,$01,$00,$08,$83,$01,$08,$10,$84,$01,$f0,$10,$85,$01,$f8
	.byte $10,$86,$01,$00,$10,$87,$01,$08,$18,$88,$01,$f0,$18,$89,$01,$f8
	.byte $18,$8a,$01,$00,$18,$8b,$01,$08,$00,$7f,$41,$f9,$00,$80,$41,$f1
	.byte $08,$81,$41,$01,$08,$82,$41,$f9,$08,$83,$41,$f1,$10,$8c,$41,$09
	.byte $10,$8d,$41,$01,$10,$8e,$41,$f9,$10,$8f,$41,$f1,$18,$88,$41,$09
	.byte $18,$89,$41,$01,$18,$8a,$41,$f9,$18,$8b,$41,$f1,$00,$62,$41,$fc
	.byte $00,$63,$41,$f4,$08,$64,$41,$00,$08,$65,$41,$f8,$08,$66,$41,$f0
	.byte $10,$6f,$41,$08,$10,$70,$41,$00,$10,$71,$41,$f8,$10,$72,$41,$f0
	.byte $18,$6b,$41,$08,$18,$6c,$41,$00,$18,$6d,$41,$f8,$18,$6e,$41,$f0
	.byte $00,$3c,$01,$f8,$00,$3c,$41,$00,$08,$3d,$01,$f8,$08,$3d,$41,$00
	.byte $10,$42,$01,$f0,$10,$43,$01,$f8,$10,$43,$41,$00,$10,$42,$41,$08
	.byte $18,$40,$01,$f0,$18,$41,$01,$f8,$18,$41,$41,$00,$18,$40,$41,$08
	.byte $00,$62,$01,$fc,$00,$63,$01,$04,$08,$64,$01,$f8,$08,$65,$01,$00
	.byte $08,$66,$01,$08,$10,$6f,$01,$f0,$10,$70,$01,$f8,$10,$71,$01,$00
	.byte $10,$72,$01,$08,$18,$6b,$01,$f0,$18,$6c,$01,$f8,$18,$6d,$01,$00
	.byte $18,$6e,$01,$08,$00,$7f,$01,$00,$00,$80,$01,$08,$08,$81,$01,$f8
	.byte $08,$82,$01,$00,$08,$83,$01,$08,$10,$8c,$01,$f0,$10,$8d,$01,$f8
	.byte $10,$8e,$01,$00,$10,$8f,$01,$08,$18,$88,$01,$f0,$18,$89,$01,$f8
	.byte $18,$8a,$01,$00,$18,$8b,$01,$08,$08,$9d,$41,$fa,$08,$9e,$41,$f2
	.byte $10,$9f,$41,$02,$10,$a0,$41,$fa,$10,$a1,$41,$f2,$18,$a2,$41,$02
	.byte $18,$a3,$41,$fa,$18,$a4,$41,$f2,$08,$90,$41,$fc,$08,$91,$41,$f4
	.byte $10,$92,$41,$04,$10,$93,$41,$fc,$10,$94,$41,$f4,$18,$95,$41,$04
	.byte $18,$96,$41,$fc,$18,$97,$41,$f4,$08,$73,$41,$fb,$08,$74,$41,$f3
	.byte $10,$75,$41,$03,$10,$76,$41,$fb,$10,$77,$41,$f3,$18,$78,$41,$03
	.byte $18,$79,$41,$fb,$18,$7a,$41,$f3,$08,$44,$01,$fc,$10,$45,$01,$f4
	.byte $10,$46,$01,$fc,$10,$45,$41,$04,$18,$47,$01,$f4,$18,$48,$01,$fc
	.byte $18,$47,$41,$04,$08,$73,$01,$fd,$08,$74,$01,$05,$10,$75,$01,$f5
	.byte $10,$76,$01,$fd,$10,$77,$01,$05,$18,$78,$01,$f5,$18,$79,$01,$fd
	.byte $18,$7a,$01,$05,$08,$90,$01,$fc,$08,$91,$01,$04,$10,$92,$01,$f4
	.byte $10,$93,$01,$fc,$10,$94,$01,$04,$18,$95,$01,$f4,$18,$96,$01,$fc
	.byte $18,$97,$01,$04,$08,$9d,$01,$fd,$08,$9e,$01,$05,$10,$9f,$01,$f5
	.byte $10,$a0,$01,$fd,$10,$a1,$01,$05,$18,$a2,$01,$f5,$18,$a3,$01,$fd
	.byte $18,$a4,$01,$05,$10,$a5,$41,$fe,$10,$a6,$41,$f6,$18,$a7,$41,$fe
	.byte $18,$a8,$41,$f6,$10,$98,$41,$00,$10,$99,$41,$f8,$18,$9a,$41,$00
	.byte $18,$9b,$41,$f8,$10,$7b,$41,$fb,$18,$7c,$41,$00,$18,$7d,$41,$f8
	.byte $10,$49,$01,$f9,$10,$49,$41,$01,$18,$4a,$01,$f9,$18,$4a,$41,$01
	.byte $10,$7b,$01,$fe,$18,$7c,$01,$f9,$18,$7d,$01,$01,$10,$98,$01,$f9
	.byte $10,$99,$01,$01,$18,$9a,$01,$f9,$18,$9b,$01,$01,$10,$a5,$01,$fa
	.byte $10,$a6,$01,$02,$18,$a7,$01,$fa,$18,$a8,$01,$02,$18,$a9,$41,$fb
	.byte $18,$9c,$41,$fb,$18,$7e,$41,$fc,$18,$4b,$01,$fc,$18,$7e,$01,$fd
	.byte $18,$9c,$01,$fe,$18,$a9,$01,$fe,$18,$4c,$01,$fc

Lbl_bb75:
	jsr Lbl_c55a
	jsr Lbl_c297
	jsr Lbl_c36a
	jsr Lbl_c3be
	jsr Lbl_ca06
	ldx $74
	lda $40
	bne Lbl_bb90
	lda $41
	cmp #$96
	bcc Lbl_bba2

Lbl_bb90:
	lda $7e
	sec 
	sbc #$a5
	cmp #$28
	bcc Lbl_bbc1
	lda $7f
	sec 
	sbc #$a5
	cmp #$28
	bcc Lbl_bbc1

Lbl_bba2:
	lda Lbl_c2fc,x
	sta $93
	lda Lbl_c302,x
	sta $94
	lda $97
	bpl Lbl_bbe0
	lda Lbl_c308,x
	sta $93
	lda Lbl_c30e,x
	sta $94
	lda #$80
	sta $97
	jmp Lbl_bbe0

Lbl_bbc1:
	lda $96
	bmi Lbl_bbd4
	lda $93
	clc 
	adc Lbl_c314,x
	sta $93
	bcc Lbl_bbd1
	inc $94

Lbl_bbd1:
	jmp Lbl_bbe0

Lbl_bbd4:
	lda $93
	sec 
	sbc Lbl_c314,x
	sta $93
	bcs Lbl_bbe0
	dec $94

Lbl_bbe0:
	lda $92
	beq Lbl_bbe6
	dec $92

Lbl_bbe6:
	lda $8a
	ora $8b
	beq Lbl_bc04
	lda $46
	ora $47
	bne Lbl_bc04
	lda $41
	bne Lbl_bbfc
	lda $40
	cmp #$1e
	bcc Lbl_bc04

Lbl_bbfc:
	lda #$00
	sta $95
	sta $96
	beq Lbl_bc36

Lbl_bc04:
	lda $41
	sta $96
	lda $40
	asl a 
	rol $96
	asl a 
	rol $96
	sta $95
	sec 
	sbc $93
	sta $95
	lda $96
	sbc $94
	sta $96
	lda $41
	beq Lbl_bc27
	lda $40
	cmp #$25
	bcs Lbl_bc32

Lbl_bc27:
	lda $3f
	and #$04
	bne Lbl_bc36
	inc $97
	jmp Lbl_bc36

Lbl_bc32:
	lda #$00
	sta $97

Lbl_bc36:
	ldx #$01

Lbl_bc38:
	lda $84,x
	cmp #$f8
	bcs Lbl_bc41
	jmp Lbl_bcd8

Lbl_bc41:
	ldy $74
	lda Lbl_c024,y
	sta $80,x
	lda #$00
	sta $8a,x
	sta $90,x
	lda #$f8
	sta $84,x
	lda #$80
	sta $86,x
	cpy #$04
	beq Lbl_bc5e
	lda $c7
	bne Lbl_bc8d

Lbl_bc5e:
	jsr Lbl_d1c7
	lda $19
	and #$0f
	tay 
	lda Lbl_c02a,y
	sta $82,x
	sta $8e,x
	lda $96
	bmi Lbl_bc99
	lda $84
	cmp #$30
	bcc Lbl_bc8d
	lda $85
	cmp #$30
	bcc Lbl_bc8d
	ldy $1f
	cpy #$02
	beq Lbl_bc8d
	jsr Lbl_d1dd
	ldy #$1f
	tya 
	and $1b
	beq Lbl_bc90

Lbl_bc8d:
	jmp Lbl_bddf

Lbl_bc90:
	lda #$00
	sta $84,x
	sta $86,x
	jmp Lbl_bddf

Lbl_bc99:
	lda $84
	cmp #$f8
	bcs Lbl_bca3
	cmp #$c0
	bcs Lbl_bcc3

Lbl_bca3:
	lda $85
	cmp #$f8
	bcs Lbl_bcad
	cmp #$c0
	bcs Lbl_bcc3

Lbl_bcad:
	ldy $1f
	cpy #$02
	beq Lbl_bcc3
	lda $46
	ora $47
	ora $70
	bne Lbl_bcc3
	lda $20
	beq Lbl_bcc3
	lda $92
	beq Lbl_bcc6

Lbl_bcc3:
	jmp Lbl_bddf

Lbl_bcc6:
	jsr Lbl_d1dd
	ldy #$1f
	tya 
	and $1b
	bne Lbl_bcc3
	lda #$f7
	sta $84,x
	sta $86,x
	bne Lbl_bcc3

Lbl_bcd8:
	lda $96
	bpl Lbl_bce3
	lda $80,x
	bmi Lbl_bce3
	jmp Lbl_bddf

Lbl_bce3:
	lda $84,x
	cmp #$d0
	bcc Lbl_bd00
	lda $96
	pha 
	asl a 
	pla 
	ror a 
	pha 
	lda $95
	ror a 
	clc 
	adc $86,x
	sta $86,x
	pla 
	adc $84,x
	sta $84,x
	jmp Lbl_bd0d

Lbl_bd00:
	lda $86,x
	clc 
	adc $95
	sta $86,x
	lda $84,x
	adc $96
	sta $84,x

Lbl_bd0d:
	lda $80,x
	bpl Lbl_bd80
	ldy #$07

Lbl_bd13:
	lda a:$00e0,y
	bmi Lbl_bd7d
	lda $84,x
	sec 
	sbc a:$00f0,y
	bmi Lbl_bd7d
	sta $08
	lda a:$00e8,y
	sec 
	sbc $82,x
	bvs Lbl_bd7d
	clc 
	adc #$18
	cmp #$30
	bcs Lbl_bd7d
	lda $08
	cmp #$08
	bcs Lbl_bd6a
	lda $84,x
	bpl Lbl_bd7d
	stx $15
	ldx $e0,y
	lda Lbl_c03a,x
	ldx $15
	pha 
	pla 
	beq Lbl_bd7d
	lda #$00
	sta $80,x
	lda $90,x
	beq Lbl_bd80
	txa 
	pha 
	ldx $74
	inc $0786,x
	pla 
	tax 
	ldy $74
	lda $5f
	clc 
	adc Lbl_c04f,y
	bcc Lbl_bd65
	lda #$fe

Lbl_bd65:
	sta $5f
	jmp Lbl_bd80

Lbl_bd6a:
	cmp #$30
	bcs Lbl_bd7d
	lda a:$00e8,y
	bpl Lbl_bd77
	lda #$38
	bne Lbl_bd79

Lbl_bd77:
	lda #$c8

Lbl_bd79:
	sta $8e,x
	bne Lbl_bd80

Lbl_bd7d:
	dey 
	bpl Lbl_bd13

Lbl_bd80:
	lda $82,x
	cmp #$70
	bcc Lbl_bd8e
	cmp #$94
	bcs Lbl_bd8e
	lda #$00
	sta $8e,x

Lbl_bd8e:
	lda $80,x
	bpl Lbl_bddf
	lda $8a,x
	beq Lbl_bda2
	dec $8a,x
	bne Lbl_bd9e
	lda $82,x
	sta $8c,x

Lbl_bd9e:
	lda $8c,x
	sta $8e,x

Lbl_bda2:
	lda $8e,x
	cmp $82,x
	beq Lbl_bddb
	lda $82,x
	eor #$80
	sta $08
	lda $8e,x
	eor #$80
	sec 
	sbc $08
	bcc Lbl_bdc6
	inc $88,x
	lda $8e,x
	sec 
	sbc $82,x
	cmp #$07
	bcc Lbl_bdd3
	lda #$07
	bne Lbl_bdd3

Lbl_bdc6:
	dec $88,x
	lda $8e,x
	sec 
	sbc $82,x
	cmp #$f9
	bcs Lbl_bdd3
	lda #$f9

Lbl_bdd3:
	clc 
	adc $82,x
	sta $82,x
	jmp Lbl_bddf

Lbl_bddb:
	lda #$00
	sta $88,x

Lbl_bddf:
	lda $84,x
	lsr a 
	lsr a 
	lsr a 
	tay 
	lda Lbl_c155,y
	sta $78,x
	ldy $84,x
	lda Lbl_c055,y
	sta $7e,x
	cmp #$50
	bcs Lbl_bdf8
	jmp Lbl_bf6c

Lbl_bdf8:
	sec 
	sbc #$50
	cmp #$80
	bcc Lbl_be01
	lda #$7f

Lbl_be01:
	tay 
	lda #$7e
	sec 
	sbc ($26),y
	asl a 
	sta $7a,x
	lda #$00
	adc #$00
	sta $7c,x
	lda #$03
	sta $76,x
	lda $7e,x
	sec 
	sbc #$50
	sta $0d
	tay 
	lda Lbl_c175,y
	sta $a0
	lda #$00
	sta $0c
	lda $82,x
	bpl Lbl_be30
	inc $0c
	eor #$ff
	clc 
	adc #$01

Lbl_be30:
	tay 
	lda Lbl_c216,y
	sta $a2
	jsr Lbl_d1f3
	lda $0c
	beq Lbl_be4d
	lda $7a,x
	sec 
	sbc $a4
	sta $7a,x
	lda $7c,x
	sbc #$00
	sta $7c,x
	jmp Lbl_be5a

Lbl_be4d:
	lda $7a,x
	clc 
	adc $a4
	sta $7a,x
	lda $7c,x
	adc #$00
	sta $7c,x

Lbl_be5a:
	ldy $0d
	cpy #$70
	bcc Lbl_be64
	lda #$03
	bne Lbl_be8b

Lbl_be64:
	lda ($26),y
	dey 
	dey 
	dey 
	dey 
	sec 
	sbc ($26),y
	sta $0e
	lda ($26),y
	dey 
	dey 
	dey 
	dey 
	sec 
	sbc ($26),y
	clc 
	adc $0e
	clc 
	adc #$80
	lsr a 
	lsr a 
	sec 
	sbc #$20
	bpl Lbl_be88
	clc 
	adc #$01

Lbl_be88:
	clc 
	adc $76,x

Lbl_be8b:
	jsr Lbl_bffd
	lda $0d
	cmp #$30
	bcc Lbl_bec1
	sbc #$30
	lsr a 
	lsr a 
	lsr a 
	sta $a2
	lda $7a,x
	bmi Lbl_bead
	eor #$7f
	sta $a0
	ldy #$03
	jsr Lbl_d1f5
	lda $a4
	jmp Lbl_bebb

Lbl_bead:
	eor #$80
	sta $a0
	jsr Lbl_d1f5
	lda $a4
	eor #$ff
	clc 
	adc #$01

Lbl_bebb:
	clc 
	adc $76,x
	jsr Lbl_bffd

Lbl_bec1:
	lda $46
	ora $47
	bne Lbl_bee7
	lda $84,x
	cmp #$8f
	bcc Lbl_bee7
	cmp #$c4
	bcs Lbl_bee7
	lda $7c,x
	bne Lbl_bee7
	lda $7e,x
	sec 
	sbc #$a5
	cmp #$28
	bcs Lbl_bee7
	lda $7a,x
	sec 
	sbc #$63
	cmp #$3c
	bcc Lbl_beea

Lbl_bee7:
	jmp Lbl_bfa7

Lbl_beea:
	lda $80,x
	bpl Lbl_bf5c
	lda $97
	bmi Lbl_bf62
	lda $41
	bne Lbl_befc
	lda $40
	cmp #$80
	bcc Lbl_bf62

Lbl_befc:
	lda #$00
	sta $97
	inc $90,x
	ldy $74
	lda $71
	and #$04
	bne Lbl_bf16
	lda Lbl_c043,y
	sta $3b
	lda Lbl_c049,y
	sta $8a,x
	bne Lbl_bf1e

Lbl_bf16:
	lda #$05
	sta $3b
	lda #$0a
	sta $8a,x

Lbl_bf1e:
	lda $7a,x
	bpl Lbl_bf3b
	cmp #$86
	bcs Lbl_bf31
	lda $82,x
	clc 
	adc #$06
	bvc Lbl_bf2f
	lda #$7f

Lbl_bf2f:
	sta $82,x

Lbl_bf31:
	lda #$7f
	sta $8c,x
	lda #$01
	sta $3c
	bne Lbl_bf54

Lbl_bf3b:
	cmp #$7a
	bcc Lbl_bf4a
	lda $82,x
	sec 
	sbc #$06
	bvc Lbl_bf48
	lda #$81

Lbl_bf48:
	sta $82,x

Lbl_bf4a:
	lda #$81
	sta $8c,x
	lda #$00
	sta $3c
	beq Lbl_bf54

Lbl_bf54:
	lda $c1
	ora #$10
	sta $c1
	bne Lbl_bfa7

Lbl_bf5c:
	lda #$f8
	sta $84,x
	bne Lbl_bfa7

Lbl_bf62:
	lda #$00
	sta $80,x
	jsr Lbl_bfba
	jmp Lbl_bfa7

Lbl_bf6c:
	tay 
	lda #$03
	sta $76,x
	lda #$00
	sta $7c,x
	lda Lbl_c165,y
	sta $a0
	lda #$00
	sta $0c
	lda $82,x
	bpl Lbl_bf89
	inc $0c
	eor #$ff
	clc 
	adc #$01

Lbl_bf89:
	tay 
	lda Lbl_c216,y
	sta $a2
	jsr Lbl_d1f3
	lda $0c
	beq Lbl_bfa0
	lda #$d0
	sec 
	sbc $a4
	sta $7a,x
	jmp Lbl_bfa7

Lbl_bfa0:
	lda #$d0
	clc 
	adc $a4
	sta $7a,x

Lbl_bfa7:
	dex 
	bmi Lbl_bfad
	jmp Lbl_bc38

Lbl_bfad:
	inc $21
	lda $21
	cmp #$03
	bcc Lbl_bfb9
	lda #$00
	sta $21

Lbl_bfb9:
	rts 

Lbl_bfba:
	lda $70
	bne Lbl_bffc
	lda $20
	beq Lbl_bfd2
	inc $46
	lda #$00
	sta $43
	sta $71
	lda #$00
	sta $42
	sta $41
	sta $40

Lbl_bfd2:
	lda #$00
	sta $32
	lda $1f
	bne Lbl_bffc
	lda $18
	beq Lbl_bfdf
	rts 

Lbl_bfdf:
	lda $5c
	sec 
	sbc #$64
	sta $5c
	lda $5d
	sbc #$00
	sta $5d
	bpl Lbl_bffc
	lda #$ff
	sta $63
	lda #$01
	sta $5c
	lda #$00
	sta $5d
	inc $70

Lbl_bffc:
	rts 

Lbl_bffd:
	bpl Lbl_c001
	lda #$00

Lbl_c001:
	cmp #$06
	bcc Lbl_c007
	lda #$06

Lbl_c007:
	sta $76,x
	ldy $78,x
	cpy #$07
	bcc Lbl_c01b
	cmp #$00
	bne Lbl_c015
	inc $76,x

Lbl_c015:
	cmp #$06
	bne Lbl_c01b
	dec $76,x

Lbl_c01b:
	rts 

Lbl_c01c:
	bpl Lbl_c023
	eor #$ff
	clc 
	adc #$01

Lbl_c023:
	rts 

Lbl_c024:
	.byte $ff,$fe,$fd,$fc,$fa,$fe

Lbl_c02a:
	.byte $00,$10,$20,$30,$40,$50,$40,$30,$00,$f0,$e0,$d0,$c0,$b0,$c0,$d0

Lbl_c03a:
	.byte $00,$00,$00,$00,$01,$00,$01,$01,$01

Lbl_c043:
	.byte $05,$06,$07,$08,$09,$19

Lbl_c049:
	.byte $0a,$08,$05,$03,$02,$03

Lbl_c04f:
	.byte $10,$10,$10,$10,$10,$10

Lbl_c055:
	.byte $54,$54,$54,$54,$54,$55,$55,$55,$55,$55,$55,$55,$55,$56,$56,$56
	.byte $56,$56,$56,$56,$56,$57,$57,$57,$57,$57,$57,$57,$58,$58,$58,$58
	.byte $58,$58,$58,$59,$59,$59,$59,$59,$59,$59,$5a,$5a,$5a,$5a,$5a,$5b
	.byte $5b,$5b,$5b,$5b,$5b,$5c,$5c,$5c,$5c,$5c,$5d,$5d,$5d,$5d,$5d,$5e
	.byte $5e,$5e,$5e,$5e,$5f,$5f,$5f,$5f,$60,$60,$60,$60,$60,$61,$61,$61
	.byte $61,$62,$62,$62,$63,$63,$63,$63,$64,$64,$64,$65,$65,$65,$65,$66
	.byte $66,$66,$67,$67,$67,$68,$68,$68,$69,$69,$6a,$6a,$6a,$6b,$6b,$6b
	.byte $6c,$6c,$6d,$6d,$6e,$6e,$6e,$6f,$6f,$70,$70,$71,$71,$72,$72,$73
	.byte $74,$74,$75,$75,$76,$76,$77,$78,$78,$79,$7a,$7a,$7b,$7c,$7c,$7d
	.byte $7e,$7f,$7f,$80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8a,$8b,$8c
	.byte $8d,$8e,$8f,$90,$92,$93,$94,$96,$97,$99,$9a,$9c,$9d,$9f,$a1,$a3
	.byte $a4,$a6,$a8,$aa,$ad,$af,$b1,$b3,$b5,$b7,$b9,$bb,$bd,$c0,$c2,$c4
	.byte $c6,$c8,$ca,$cc,$ce,$d0,$d2,$d4,$d5,$d8,$da,$dc,$df,$e2,$e5,$e8
	.byte $28,$27,$26,$25,$24,$23,$23,$22,$22,$21,$21,$20,$20,$1f,$1f,$1d
	.byte $1d,$1c,$1b,$1b,$1a,$1a,$19,$19,$18,$18,$17,$17,$17,$16,$16,$16
	.byte $15,$15,$15,$15,$14,$14,$14,$14,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0

Lbl_c155:
	.byte $03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$04,$04,$04,$04,$05,$05

Lbl_c165:
	.byte $05,$06,$06,$06,$07,$07,$08,$08,$08,$08,$05,$04,$04,$03,$03,$00

Lbl_c175:
	.byte $0a,$0c,$0e,$10,$12,$14,$16,$18,$1a,$1c,$1e,$20,$22,$24,$26,$28
	.byte $29,$2b,$2c,$2e,$2f,$31,$32,$34,$35,$37,$38,$3a,$3b,$3d,$3e,$40
	.byte $41,$43,$44,$46,$47,$49,$4a,$4c,$4d,$4f,$50,$52,$53,$55,$56,$58
	.byte $59,$5b,$5c,$5e,$5f,$61,$62,$64,$65,$67,$68,$6a,$6b,$6d,$6e,$70
	.byte $71,$73,$74,$76,$77,$79,$7a,$7c,$7d,$7f,$80,$82,$83,$85,$86,$88
	.byte $89,$8b,$8c,$8e,$8f,$91,$92,$94,$95,$97,$98,$9a,$9b,$9d,$9e,$a0
	.byte $a1,$a3,$a4,$a6,$a7,$a9,$aa,$ac,$ad,$af,$b0,$b2,$b3,$b5,$b6,$b8
	.byte $b9,$bb,$bc,$be,$bf,$c1,$c2,$c4,$c5,$c7,$c8,$ca,$cb,$cd,$ce,$d0
	.byte $d1,$d3,$d4,$d6,$d7,$d9,$da,$dc,$dd,$df,$e0

Lbl_c200:

	.byte $e2; Badly defined as code.

Lbl_c201:
	.byte $e3,$e5,$e6,$e8,$e9,$eb,$ec,$ee,$ef,$f1,$f2,$f4,$f5,$f7,$f8,$fa
	.byte $fb,$fd,$fe,$ff,$ff

Lbl_c216:
	.byte $00,$01,$03,$04,$05,$07,$08,$0a,$0b,$0c,$0e,$0f,$10,$12,$13,$15
	.byte $16,$17,$19,$1a,$1b,$1d,$1e,$20,$21,$22,$24,$25,$26,$28,$29,$2b
	.byte $2c,$2d,$2f,$30,$31,$33,$34,$36,$37,$38,$3a,$3b,$3c,$3e,$3f,$41
	.byte $42,$43,$45,$46,$47,$49,$4a,$4c,$4d,$4e,$50,$51,$52,$54,$55,$57
	.byte $58,$59,$5b,$5c,$5d,$5f,$60,$62,$63,$64,$66,$67,$68,$6a,$6b,$6d
	.byte $6e,$6f,$71,$72,$73,$75,$76,$78,$79,$7a,$7c,$7d,$7e,$80,$81,$83
	.byte $84,$86,$87,$88,$89,$8b,$8c,$8e,$8f,$91,$92,$93,$94,$96,$97,$99
	.byte $9a,$9c,$9d,$9e,$9f,$a1,$a2,$a4,$a5,$a7,$a8,$a9,$aa,$ac,$ad,$af
	.byte $b0

Lbl_c297:
	dec $75
	beq Lbl_c29c
	rts 

Lbl_c29c:
	lda $84
	cmp #$f8
	bcc Lbl_c2e9
	lda $85
	cmp #$f8
	bcc Lbl_c2e9
	jsr Lbl_d1dd
	lda $1b
	and #$0f
	cmp #$0a
	bcc Lbl_c2b5
	sbc #$0a

Lbl_c2b5:
	tay 
	lda $c7
	beq Lbl_c2c0
	ldx #$06
	ldy #$09
	bne Lbl_c2c3

Lbl_c2c0:
	ldx $0180

Lbl_c2c3:
	lda Lbl_c2ec,x
	sta $08
	lda Lbl_c2f4,x
	sta $09
	lda ($08),y
	sta $74
	sta $017e
	lda $1c
	and #$3f
	adc #$20
	sta $75
	ldx $74
	lda Lbl_c2fc,x
	sta $93
	lda Lbl_c302,x
	sta $94
	rts 

Lbl_c2e9:
	inc $75
	rts 

Lbl_c2ec:
	.byte $1a,$24,$2e,$38,$42,$4c,$56,$60

Lbl_c2f4:
	.byte $c3,$c3,$c3,$c3,$c3,$c3,$c3,$c3

Lbl_c2fc:
	.byte $20,$70,$38,$b0,$78,$60

Lbl_c302:
	.byte $03,$03,$04,$04,$05,$09

Lbl_c308:
	.byte $78,$04,$54,$08,$34,$60

Lbl_c30e:
	.byte $05,$06,$06,$07,$08,$09

Lbl_c314:
	.byte $14,$19,$23,$2d,$32,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01

Lbl_c323:
	.byte $01,$00,$00,$00,$00,$01,$01,$01,$02,$02,$02,$01,$01,$02,$02,$02
	.byte $03,$03,$03,$05,$05,$01,$01,$01,$02,$02,$03,$03,$03,$03,$05,$00
	.byte $01,$03,$03,$03,$04,$04,$04,$05,$05,$00,$01,$03,$04,$04,$04,$05
	.byte $05,$05,$05,$00,$02,$04,$04,$04,$05,$05,$05,$05,$05,$00,$02,$04
	.byte $04,$05,$05,$05,$05,$05,$05

Lbl_c36a:
	lda $d5
	bne Lbl_c374
	lda $d4
	cmp #$14
	bcc Lbl_c37d

Lbl_c374:
	lda $3f
	ldx $74
	and Lbl_c3b2,x
	beq Lbl_c37e

Lbl_c37d:
	rts 

Lbl_c37e:
	lda $84
	cmp #$b8
	bcs Lbl_c37d
	cmp #$40
	bcc Lbl_c37d
	jsr Lbl_c67e
	bcs Lbl_c37d
	ldy $74
	lda Lbl_c3b8,y
	bmi Lbl_c37d
	cmp #$03
	bne Lbl_c3a1
	lda $017c
	cmp #$01
	bne Lbl_c37d
	lda #$03

Lbl_c3a1:
	sta $e0,x
	tay 
	bmi Lbl_c3b1
	lda $84
	clc 
	adc #$0c
	sta $f0,x
	lda $82
	sta $e8,x

Lbl_c3b1:
	rts 

Lbl_c3b2:
	.byte $3e,$ff,$1e,$1e,$ff,$ff

Lbl_c3b8:
	.byte $03,$ff,$03,$01,$ff,$ff

Lbl_c3be:
	lda $97
	bmi Lbl_c3e5
	jsr Lbl_d1c7
	lda $1a
	eor #$55
	ldx $74
	and Lbl_c3ee,x
	beq Lbl_c3d1
	rts 

Lbl_c3d1:
	lda $19
	lsr a 
	and #$01
	tax 
	bcc Lbl_c3e5
	ldy #$40
	lda $82,x
	bmi Lbl_c3e1
	ldy #$c0

Lbl_c3e1:
	tya 
	sta $8e,x
	rts 

Lbl_c3e5:
	lda $84,x
	bpl Lbl_c3ed
	lda $37
	sta $8e,x

Lbl_c3ed:
	rts 

Lbl_c3ee:
	.byte $fb,$b4,$bc,$9d,$69,$69

Lbl_c3f4:
	lda $41
	sta $09
	lda $40
	asl a 
	rol $09
	asl a 
	rol $09
	sta $08
	ldx #$07

Lbl_c404:
	lda $e0,x
	bmi Lbl_c434
	lda $e0,x
	cmp #$08
	bne Lbl_c41d
	lda $0110,x
	clc 
	adc #$b0
	sta $0110,x
	lda $f0,x
	adc #$04
	sta $f0,x

Lbl_c41d:
	lda $0110,x
	clc 
	adc $08
	sta $0110,x
	lda $f0,x
	adc $09
	sta $f0,x
	cmp #$f0
	bcc Lbl_c434
	lda #$ff
	sta $e0,x

Lbl_c434:
	ldy $f0,x
	lda Lbl_c055,y
	clc 
	adc #$1c
	sta $0128,x
	sec 
	sbc #$6c
	cmp #$80
	bcc Lbl_c448
	lda #$7f

Lbl_c448:
	tay 
	lda #$7c
	sec 
	sbc ($26),y
	asl a 
	sta $0118,x
	lda #$00
	adc #$00
	sta $0120,x
	lda $0128,x
	sec 
	sbc #$6c
	tay 
	lda Lbl_c175,y
	sta $a0
	lda #$00
	sta $0c
	lda $e8,x
	bpl Lbl_c474
	inc $0c
	eor #$ff
	clc 
	adc #$01

Lbl_c474:
	tay 
	lda Lbl_c216,y
	sta $a2
	jsr Lbl_d1f3
	lda $0c
	beq Lbl_c495
	lda $0118,x
	sec 
	sbc $a4
	sta $0118,x
	lda $0120,x
	sbc #$00
	sta $0120,x
	jmp Lbl_c4a6

Lbl_c495:
	lda $0118,x
	clc 
	adc $a4
	sta $0118,x
	lda $0120,x
	adc #$00
	sta $0120,x

Lbl_c4a6:
	lda $46
	ora $47
	beq Lbl_c4af
	jmp Lbl_c541

Lbl_c4af:
	lda $0100,x
	beq Lbl_c4b7
	jmp Lbl_c541

Lbl_c4b7:
	lda $f0,x
	cmp #$f0
	bcc Lbl_c4c0
	jmp Lbl_c541

Lbl_c4c0:
	lda $0128,x
	sec 
	sbc #$c1
	cmp #$28
	bcs Lbl_c541
	ldy $e0,x
	bmi Lbl_c541
	lda $0120,x
	bne Lbl_c541
	lda $0118,x
	sec 
	sbc Lbl_c548,y
	cmp Lbl_c551,y
	bcs Lbl_c541
	lda $92
	bne Lbl_c541
	lda $71
	and #$01
	beq Lbl_c4f1
	cpy #$06
	beq Lbl_c4f1
	cpy #$08
	bne Lbl_c541

Lbl_c4f1:
	cpy #$08
	beq Lbl_c4ff
	lda $41
	bne Lbl_c4ff
	lda $40
	cmp #$96
	bcc Lbl_c541

Lbl_c4ff:
	lda #$01
	sta $0100,x
	cpy #$02
	bcc Lbl_c53c
	cpy #$04
	bcc Lbl_c530
	jsr Lbl_bfba
	jmp Lbl_c541

Lbl_c512:
	.byte $a9,$00,$9d,$00,$01,$a9,$14,$85,$3b,$a2,$00,$bd,$18,$01,$c9,$80
	.byte $90,$01,$e8,$86,$3c,$a5,$c1,$09,$10,$85,$c1,$4c,$41,$c5

Lbl_c530:
	lda $e0,x
	asl a 
	asl a 
	asl a 
	asl a 
	asl a 
	sta $0181
	bne Lbl_c541

Lbl_c53c:
	lda #$80
	sta $0181

Lbl_c541:
	dex 
	bmi Lbl_c547
	jmp Lbl_c404

Lbl_c547:
	rts 

Lbl_c548:
	.byte $6e,$6e,$6c,$6c,$79,$78,$78,$78,$78

Lbl_c551:
	.byte $17,$17,$1e,$1e,$0e,$0f,$0f,$0f,$0f

Lbl_c55a:
	lda $4a
	bne Lbl_c55f
	rts 

Lbl_c55f:
	lda $1f
	bne Lbl_c593
	lda $d4
	ora $d5
	bne Lbl_c56a
	rts 

Lbl_c56a:
	lda $d4
	bne Lbl_c570
	dec $d5

Lbl_c570:
	dec $d4
	lda $d4
	ora $d5
	bne Lbl_c593
	jsr Lbl_c67e
	bcs Lbl_c592
	lda #$81
	sta $e8,x
	lda #$07
	sta $e0,x
	jsr Lbl_c67e
	bcs Lbl_c592
	lda #$7f
	sta $e8,x
	lda #$07
	sta $e0,x

Lbl_c592:
	rts 

Lbl_c593:
	lda $d5
	bne Lbl_c59e
	lda $d4
	cmp #$14
	bcs Lbl_c59e
	rts 

Lbl_c59e:
	dec $d3
	bne Lbl_c5c0
	jsr Lbl_c67e
	bcc Lbl_c5aa
	inc $d3
	rts 

Lbl_c5aa:
	ldy #$81
	lda $3f
	and #$02
	bne Lbl_c5b4
	ldy #$7f

Lbl_c5b4:
	tya 
	sta $e8,x
	lda #$06
	sta $e0,x
	lda #$07
	sta $d3
	rts 

Lbl_c5c0:
	dec $0130
	bne Lbl_c5d0
	jsr Lbl_d1c7
	jsr Lbl_c67e
	bcc Lbl_c5d1
	inc $0130

Lbl_c5d0:
	rts 

Lbl_c5d1:
	ldy #$00
	lda ($d1),y
	sta $e0,x
	cmp #$08
	bne Lbl_c5fc
	lda $0182
	beq Lbl_c5e4
	lda #$04
	bne Lbl_c5e9

Lbl_c5e4:
	lda $17
	clc 
	adc #$04

Lbl_c5e9:
	sta $017c
	lda $0400
	clc 
	adc #$40
	bpl Lbl_c61b

Lbl_c5f4:
	lda #$ff
	sta $e0,x
	sta $f0,x
	bne Lbl_c61b

Lbl_c5fc:
	lda $0180
	cmp #$05
	bcs Lbl_c60b
	lda $0400
	clc 
	adc #$40
	bmi Lbl_c5f4

Lbl_c60b:
	lda $e0,x
	cmp #$02
	bcc Lbl_c61b
	cmp #$06
	bcs Lbl_c61b
	sec 
	sbc #$02
	sta $017c

Lbl_c61b:
	iny 
	lda ($d1),y
	cmp #$80
	bne Lbl_c632
	sty $08
	lda $19
	tay 
	clc 
	adc #$b0
	cmp #$60
	bcs Lbl_c62f
	tay 

Lbl_c62f:
	tya 
	ldy $08

Lbl_c632:
	sta $e8,x
	iny 
	lda ($d1),y
	sta $0130
	lda $d1
	clc 
	adc #$03
	sta $d1
	bcc Lbl_c645
	inc $d2

Lbl_c645:
	lda $0130
	bne Lbl_c67d

Lbl_c64a:
	lda #$10
	sta $0130

Lbl_c64f:
	ldy #$00
	lda ($cf),y
	sta $d1
	iny 
	lda ($cf),y
	sta $d2
	lda $cf
	clc 
	adc #$02
	sta $cf
	bcc Lbl_c665
	inc $d0

Lbl_c665:
	lda $d1
	ora $d2
	bne Lbl_c66e
	jmp Lbl_e68e

Lbl_c66e:
	lda $d2
	bmi Lbl_c67d
	sta $0130
	lda $d1
	sta $0182
	jmp Lbl_c64f

Lbl_c67d:
	rts 

Lbl_c67e:
	ldx #$07

Lbl_c680:
	lda $e0,x
	bmi Lbl_c689
	dex 
	bpl Lbl_c680
	sec 
	rts 

Lbl_c689:
	lda #$00
	sta $f0,x
	sta $0100,x
	clc 
	rts 

Lbl_c692:
	ldx #$07

Lbl_c694:
	lda $e0,x
	bpl Lbl_c69b

Lbl_c698:
	jmp Lbl_c815

Lbl_c69b:
	lda $0128,x
	sta $cc
	sec 
	sbc #$5f
	lsr a 
	lsr a 
	lsr a 
	tay 
	lda Lbl_c81f,y
	cmp #$04
	bcs Lbl_c698
	sta $0108,x
	lda $0118,x
	sta $ca
	lda $0120,x
	sta $ce
	stx $16
	lda $e0,x
	bne Lbl_c6d3
	lda $0108,x
	tax 
	lda Lbl_c8c9,x
	sta $cd
	lda Lbl_c8cd,x
	ldy Lbl_c8d1,x
	jmp Lbl_c7bf

Lbl_c6d3:
	cmp #$01
	bne Lbl_c6e9
	lda $0108,x
	tax 
	lda Lbl_c8c9,x
	sta $cd
	lda Lbl_c8f1,x
	ldy Lbl_c8f5,x
	jmp Lbl_c7bf

Lbl_c6e9:
	cmp #$02
	bne Lbl_c6ff
	lda $0108,x
	tax 
	lda Lbl_c915,x
	sta $cd
	lda Lbl_c919,x
	ldy Lbl_c91d,x
	jmp Lbl_c7bf

Lbl_c6ff:
	cmp #$03
	bne Lbl_c715
	lda $0108,x
	tax 
	lda Lbl_c915,x
	sta $cd
	lda Lbl_c919,x
	ldy Lbl_c91d,x
	jmp Lbl_c7bf

Lbl_c715:
	cmp #$04
	bne Lbl_c730
	lda $0100,x
	bne Lbl_c74b
	lda $0108,x
	tax 
	lda Lbl_c895,x
	sta $cd
	lda Lbl_c899,x
	ldy Lbl_c89d,x
	jmp Lbl_c7bf

Lbl_c730:
	cmp #$05
	bne Lbl_c776
	lda $0100,x
	bne Lbl_c74b
	lda $0108,x
	tax 
	lda Lbl_c831,x
	sta $cd
	lda Lbl_c835,x
	ldy Lbl_c839,x
	jmp Lbl_c7bf

Lbl_c74b:
	pha 
	lda $3f
	and #$02
	bne Lbl_c767
	inc $0100,x
	lda $0100,x
	cmp #$04
	bne Lbl_c767
	lda #$00
	sta $0100,x
	lda #$ff
	sta $e0,x
	sta $f0,x

Lbl_c767:
	pla 
	tax 
	lda Lbl_c9d8,x
	sta $cd
	lda Lbl_c9db,x
	ldy Lbl_c9de,x
	bne Lbl_c7bf

Lbl_c776:
	cmp #$06
	bne Lbl_c791
	lda $0100,x
	bne Lbl_c74b
	lda $0108,x
	tax 
	lda Lbl_c831,x
	sta $cd
	lda Lbl_c865,x
	ldy Lbl_c869,x
	jmp Lbl_c7bf

Lbl_c791:
	cmp #$07
	bne Lbl_c7a7
	lda $0108,x
	tax 
	lda Lbl_c949,x
	sta $cd
	lda Lbl_c94d,x
	ldy Lbl_c951,x
	jmp Lbl_c7bf

Lbl_c7a7:
	cmp #$08
	bne Lbl_c815
	lda $0100,x
	bne Lbl_c74b
	lda $0108,x
	tax 
	lda Lbl_c9a5,x
	sta $cd
	lda Lbl_c9a9,x
	ldy Lbl_c9ad,x

Lbl_c7bf:
	sta $c8
	sty $c9
	ldx $15
	bpl Lbl_c81c
	ldy #$00

Lbl_c7c9:
	lda ($c8),y
	clc 
	adc $cc
	sta $0200,x
	iny 
	cmp #$50
	bcs Lbl_c7da
	iny 
	iny 
	bne Lbl_c80c

Lbl_c7da:
	inx 
	lda ($c8),y
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	clc 
	adc $ca
	sta $0200,x
	lda #$00
	sta $0b
	lda ($c8),y
	bpl Lbl_c7fb
	inc $0b

Lbl_c7fb:
	lda $0b
	adc $ce
	and #$01
	beq Lbl_c809
	dex 
	dex 
	dex 
	jmp Lbl_c811

Lbl_c809:
	inx 
	bpl Lbl_c81c

Lbl_c80c:
	iny 
	dec $cd
	bne Lbl_c7c9

Lbl_c811:
	stx $15
	ldx $16

Lbl_c815:
	dex 
	bmi Lbl_c81b
	jmp Lbl_c694

Lbl_c81b:
	rts 

Lbl_c81c:
	stx $15
	rts 

Lbl_c81f:
	.byte $00,$00,$00,$01,$01,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03
	.byte $03,$03

Lbl_c831:
	.byte $01,$01,$04,$04

Lbl_c835:
	.byte $3d,$41,$45,$55

Lbl_c839:
	.byte $c8,$c8,$c8,$c8,$00,$fd,$02,$00,$00,$fc,$02,$00,$f8,$f8,$02,$fc
	.byte $f8,$f9,$02,$04,$00,$fa,$02,$fc,$00,$fb,$02,$04,$f8,$f4,$02,$fc
	.byte $f8,$f5,$02,$04,$00,$f6,$02,$fc,$00,$f7,$02,$04

Lbl_c865:
	.byte $6d,$71,$75,$85

Lbl_c869:
	.byte $c8,$c8,$c8,$c8,$00,$fd,$00,$00,$00,$fc,$00,$00,$f8,$f8,$00,$fc
	.byte $f8,$f9,$00,$04,$00,$fa,$00,$fc,$00,$fb,$00,$04,$f8,$f4,$00,$fc
	.byte $f8,$f5,$00,$04,$00,$f6,$00,$fc,$00,$f7,$00,$04

Lbl_c895:
	.byte $01,$01,$04,$04

Lbl_c899:
	.byte $a1,$a5,$a9,$b9

Lbl_c89d:
	.byte $c8,$c8,$c8,$c8,$00,$f3,$02,$00,$00,$f2,$02,$00,$f8,$ee,$02,$fc
	.byte $f8,$ef,$02,$04,$00,$f0,$02,$fc,$00,$f1,$02,$04,$f8,$ea,$02,$fc
	.byte $f8,$eb,$02,$04,$00,$ec,$02,$fc,$00,$ed,$02,$04

Lbl_c8c9:
	.byte $01,$01,$02,$03

Lbl_c8cd:
	.byte $d5,$d9,$dd,$e5

Lbl_c8d1:
	.byte $c8,$c8,$c8,$c8,$00,$e9,$03,$00,$00,$e8,$03,$00,$00,$e6,$03,$f8
	.byte $00,$e7,$03,$00,$f8,$e5,$03,$fc,$00,$e5,$03,$f2,$00,$e5,$03,$03

Lbl_c8f1:
	.byte $f9,$fd,$01,$09

Lbl_c8f5:
	.byte $c8,$c8,$c9,$c9,$00,$e9,$01,$00,$00,$e8,$01,$00,$00,$e6,$01,$f8
	.byte $00,$e7,$01,$00,$f8,$e5,$01,$fc,$00,$e5,$01,$f2,$00,$e5,$01,$03

Lbl_c915:
	.byte $01,$01,$02,$06

Lbl_c919:
	.byte $21,$25,$29,$31

Lbl_c91d:
	.byte $c9,$c9,$c9,$c9,$00,$e1,$02,$00,$00,$e0,$02,$00,$00,$de,$02,$fc
	.byte $00,$df,$02,$04,$f8,$d8,$02,$f8,$f8,$d9,$02,$00,$f8,$da,$02,$08
	.byte $00,$db,$02,$f8,$00,$dc,$02,$00,$00,$dd,$02,$08

Lbl_c949:
	.byte $02,$02,$08,$08

Lbl_c94d:
	.byte $55,$5d,$65,$85

Lbl_c951:
	.byte $c9,$c9,$c9,$c9,$fe,$fd,$00,$04,$00,$fd,$00,$04,$fb,$fc,$00,$04
	.byte $00,$fc,$00,$04,$f0,$f8,$00,$fc,$f0,$f9,$00,$04,$f8,$fa,$00,$fc
	.byte $f8,$fb,$00,$04,$f8,$f8,$00,$fc,$f8,$f9,$00,$04,$00,$fa,$00,$fc
	.byte $00,$fb,$00,$04,$ed,$f4,$00,$fc,$ed,$f5,$00,$04,$f5,$f6,$00,$fc
	.byte $f5,$f7,$00,$04,$f8,$f4,$00,$fc,$f8,$f5,$00,$04,$00,$f6,$00,$fc
	.byte $00,$f7,$00,$04

Lbl_c9a5:
	.byte $01,$02,$02,$05

Lbl_c9a9:
	.byte $b1,$b5,$bd,$c5

Lbl_c9ad:
	.byte $c9,$c9,$c9,$c9,$00,$d7,$02,$00,$fe,$d7,$02,$00,$06,$e4,$02,$00
	.byte $fc,$d6,$02,$00,$0e,$e3,$02,$00,$fc,$d4,$02,$fc,$fc,$d5,$02,$04
	.byte $04,$d5,$c2,$fc,$04,$d5,$82,$04,$12,$e2,$00

Lbl_c9d8:
	.byte $00,$01,$04

Lbl_c9db:
	.byte $04,$e2,$e6

Lbl_c9de:
	.byte $f6,$c9,$c9,$c9,$00,$bc,$03,$00,$fc,$bd,$03,$fc,$fc,$bd,$43,$04
	.byte $04,$bd,$83,$fc,$04,$bd,$c3,$04,$fc,$be,$03,$fc,$fc,$be,$43,$04
	.byte $04,$be,$83,$fc,$04,$be,$c3,$04

Lbl_ca06:
	lda $46
	ora $47
	bne Lbl_ca4a
	lda $71
	and #$02
	bne Lbl_ca1e
	lda $55
	cmp $56
	sta $56
	bne Lbl_ca1e
	lda #$00
	sta $55

Lbl_ca1e:
	lda $55
	beq Lbl_ca4a
	lda $9e
	bmi Lbl_ca4a
	lda $71
	and #$02
	bne Lbl_ca36
	lda $5f
	cmp #$02
	bcc Lbl_ca4a
	dec $5f
	dec $5f

Lbl_ca36:
	lda $c1
	ora #$80
	sta $c1
	lda #$c4
	sta $9e
	lda #$7c
	ldx $3e
	clc 
	adc Lbl_cbee,x
	sta $9d

Lbl_ca4a:
	lda $9e
	bmi Lbl_ca4f
	rts 

Lbl_ca4f:
	tax 
	lda $71
	and #$02
	beq Lbl_ca5b
	txa 
	sec 
	sbc #$03
	tax 

Lbl_ca5b:
	txa 
	sec 
	sbc #$06
	cmp #$80
	bcs Lbl_ca67
	lda #$00
	sta $9b

Lbl_ca67:
	sta $9e
	lda $9e
	lsr a 
	lsr a 
	lsr a 
	tay 
	lda Lbl_c155,y
	sta $9c
	ldy $9e
	lda Lbl_c055,y
	clc 
	adc #$06
	sta $9b
	sec 
	sbc #$50
	tay 
	lda Lbl_c175,y
	sta $a0
	lda #$08
	sta $a2
	ldy #$03
	jsr Lbl_d1f5
	lda $9d
	clc 
	adc $a4
	sta $99
	lda $9d
	sec 
	sbc $a4
	sta $9a
	rts 

Lbl_ca9f:
	lda $9e
	bne Lbl_caa4
	rts 

Lbl_caa4:
	ldx #$01

Lbl_caa6:
	lda $80,x
	bpl Lbl_caf3
	lda $84,x
	cmp #$e0
	bcs Lbl_caf3
	lda $9b
	sec 
	sbc #$10
	sbc $7e,x
	jsr Lbl_c01c
	ldy $78,x
	cmp Lbl_cbf5,y
	bcs Lbl_caf3
	lda $99
	sec 
	sbc $7a,x
	jsr Lbl_c01c
	cmp Lbl_cbfe,y
	bcs Lbl_cad9
	lda #$00
	sta $9e
	ldy $9f
	lda #$bc
	sta $0201,y

Lbl_cad9:
	ldy $78,x
	lda $9a
	sec 
	sbc $7a,x
	jsr Lbl_c01c
	cmp Lbl_cbfe,y
	bcs Lbl_caf3
	lda #$00
	sta $9e
	ldy $9f
	lda #$bc
	sta $0205,y

Lbl_caf3:
	lda $9e
	bne Lbl_cb48
	lda $71
	and #$04
	beq Lbl_cb01
	lda #$ff
	sta $80,x

Lbl_cb01:
	inc $80,x
	bmi Lbl_cb41
	txa 
	pha 
	ldx $74
	inc $0780,x
	pla 
	tax 
	lda $74
	cmp $0184
	bne Lbl_cb35
	inc $0185
	lda $0185
	cmp #$09
	bcc Lbl_cb3d
	lda #$00
	sta $0185
	lda #$16
	jsr Lbl_eaf9
	lda #$0a
	ldx $0184
	beq Lbl_cb32
	lda #$0c

Lbl_cb32:
	jmp Lbl_d540

Lbl_cb35:
	sta $0184
	lda #$00
	sta $0185

Lbl_cb3d:
	lda #$40
	bne Lbl_cb43

Lbl_cb41:
	lda #$20

Lbl_cb43:
	ora $c1
	sta $c1
	rts 

Lbl_cb48:
	dex 
	bmi Lbl_cb4e
	jmp Lbl_caa6

Lbl_cb4e:
	ldx #$07

Lbl_cb50:
	lda $0100,x
	beq Lbl_cb58

Lbl_cb55:
	jmp Lbl_cbe2

Lbl_cb58:
	lda $e0,x
	bmi Lbl_cb55
	cmp #$04
	bcc Lbl_cb55
	lda $f0,x
	cmp #$e0
	bcs Lbl_cbe2
	lda $9b
	clc 
	adc #$06
	sec 
	sbc $0128,x
	jsr Lbl_c01c
	cmp #$05
	bcs Lbl_cbe2
	lda $99
	sec 
	sbc $0118,x
	jsr Lbl_c01c
	cmp #$0c
	bcs Lbl_cba1
	lda $e0,x
	cmp #$08
	bne Lbl_cb8c
	inc $0100,x

Lbl_cb8c:
	stx $15
	lda #$20
	ora $c1
	sta $c1
	ldx $15
	lda #$00
	sta $9e
	ldy $9f
	lda #$bc
	sta $0201,y

Lbl_cba1:
	lda $9a
	sec 
	sbc $0118,x
	jsr Lbl_c01c
	cmp #$10
	bcs Lbl_cbe2
	lda $e0,x
	cmp #$08
	bne Lbl_cbb9
	inc $078d
	bne Lbl_cbc9

Lbl_cbb9:
	cmp #$05
	bne Lbl_cbc2
	inc $078c
	bne Lbl_cbc9

Lbl_cbc2:
	cmp #$06
	bne Lbl_cbd0
	inc $078e

Lbl_cbc9:
	inc $0100,x
	lda #$40
	bne Lbl_cbd2

Lbl_cbd0:
	lda #$20

Lbl_cbd2:
	ora $c1
	sta $c1
	lda #$00
	sta $9e
	ldy $9f
	lda #$bc
	sta $0205,y
	rts 

Lbl_cbe2:
	lda $9e
	bne Lbl_cbe7
	rts 

Lbl_cbe7:
	dex 
	bmi Lbl_cbed
	jmp Lbl_cb50

Lbl_cbed:
	rts 

Lbl_cbee:
	.byte $ec,$f4,$f8,$00,$08,$0c,$14

Lbl_cbf5:
	.byte $00,$00,$00,$00,$04,$05,$08,$0b,$0f

Lbl_cbfe:
	.byte $00,$00,$00,$00,$04,$07,$0c,$10,$14

Lbl_cc07:
	lda #$01
	sta $14
	jsr Lbl_cf07
	jsr Lbl_d434
	jsr Lbl_ead5
	ldy #$00
	sty $3f
	iny 
	sty $6d
	lda #$ff
	jsr Lbl_eaf9
	jsr Lbl_ebec
	jsr Lbl_8caa
	lda $05
	sta $2000
	lda #$20
	ldy #$a0
	jsr Lbl_d1c0
	ldy #$00

Lbl_cc34:
	lda Lbl_cdc7,y
	cmp #$80
	beq Lbl_cc52
	cmp #$e0
	bcc Lbl_cc4c
	and #$1f
	tax 
	lda #$20

Lbl_cc44:
	sta $2007
	dex 
	bpl Lbl_cc44
	bmi Lbl_cc4f

Lbl_cc4c:
	sta $2007

Lbl_cc4f:
	iny 
	bne Lbl_cc34

Lbl_cc52:
	jsr Lbl_8caa
	lda #$21
	ldy #$e9
	ldx #$00
	jsr Lbl_cd74
	lda #$22
	ldy #$29
	inx 
	jsr Lbl_cd74
	lda #$22
	ldy #$69
	inx 
	jsr Lbl_cd74
	lda #$ce
	ldy #$e1
	jsr Lbl_cfee
	lda #$ce
	ldy #$9e
	jsr Lbl_896c
	jsr Lbl_8caa
	lda #$ce
	ldy #$ad
	jsr Lbl_d00a
	jsr Lbl_d1b8
	lda #$ce
	ldy #$d0
	jsr Lbl_cfee
	jsr Lbl_8caa
	lda #$20
	ldy #$00
	jsr Lbl_d1c0
	sty $2005
	sty $2005
	jsr Lbl_cf18
	lda $23
	and #$03
	bne Lbl_ccae
	lda #$03
	jsr Lbl_eaf9

Lbl_ccae:
	inc $23

Lbl_ccb0:
	lda #$58
	sta $0a
	lda #$02
	sta $0b
	sta $5a

Lbl_ccba:
	jsr Lbl_d1c7
	jsr Lbl_d1dd
	jsr Lbl_d1dd
	jsr Lbl_8caa
	lda $05
	ora #$04
	sta $2000
	lda #$21
	ldy #$e7
	jsr Lbl_d1c0
	ldx #$08
	lda #$20

Lbl_ccd8:
	sta $2007
	dex 
	bne Lbl_ccd8
	lda $05
	sta $2000
	jsr Lbl_cdb6
	ldx $1e
	cpx #$03
	bne Lbl_ccf6
	lda #$ce
	ldy #$f0
	jsr Lbl_896c
	jmp Lbl_cd1a

Lbl_ccf6:
	lda #$ce
	ldy #$ea
	jsr Lbl_cfee
	lda #$21
	sta $2007
	ldx $1e
	ldy Lbl_cdb3,x
	ldx #$05

Lbl_cd09:
	lda $0794,y
	ora #$30
	sta $2007
	iny 
	dex 
	bne Lbl_cd09
	lda #$30
	sta $2007

Lbl_cd1a:
	jsr Lbl_8c97
	jsr Lbl_ebec
	lda $5a
	bne Lbl_cd47
	lda $59
	bpl Lbl_cd47
	lda $52
	bne Lbl_cd69
	lda $57
	bmi Lbl_cd38
	beq Lbl_cd3c
	ldx $1e
	dex 
	jmp Lbl_cd3f

Lbl_cd38:
	lda $51
	beq Lbl_cd47

Lbl_cd3c:
	ldx $1e
	inx 

Lbl_cd3f:
	txa 
	and #$03
	sta $1e
	jmp Lbl_ccb0

Lbl_cd47:
	lda $51
	sta $5a
	lda $57
	sta $59
	dec $0a
	lda $0a
	cmp #$ff
	bne Lbl_cd5f
	dec $0b
	bpl Lbl_cd5f
	lda $b5
	bmi Lbl_cd62

Lbl_cd5f:
	jmp Lbl_ccba

Lbl_cd62:
	lda #$00
	sta $14
	jmp Lbl_8183

Lbl_cd69:
	ldx #$ff
	txs 
	inx 
	stx $6d
	stx $14
	jmp Lbl_818a

Lbl_cd74:
	jsr Lbl_d1c0
	lda Lbl_cd83,x
	ldy Lbl_cd80,x
	jmp Lbl_8964

Lbl_cd80:
	.byte $86,$96,$a7

Lbl_cd83:
	.byte $cd,$cd,$cd,$46,$49,$47,$48,$54,$49,$4e,$47,$20,$43,$4f,$55,$52
	.byte $53,$45,$00,$45,$4e,$44,$55,$52,$41,$4e,$43,$45,$20,$43,$4f,$55
	.byte $52,$53,$45,$00,$53,$4f,$4c,$4f,$20,$43,$4f,$55,$52,$53,$45,$00

Lbl_cdb3:
	.byte $00,$05,$0a

Lbl_cdb6:
	ldx $1e
	lda Lbl_cef5,x
	ldy Lbl_cef9,x
	jsr Lbl_d1c0
	lda #$5f
	sta $2007
	rts 

Lbl_cdc7:
	.byte $e1,$00,$01,$01,$01,$02,$20,$0a,$0b,$0c,$0d,$0c,$16,$17,$0b,$0c
	.byte $16,$1a,$1b,$0a,$02,$06,$0d,$20,$06,$01,$01,$01,$07,$e1,$e1,$03
	.byte $04,$04,$04,$05,$20,$0e,$0f,$10,$11,$0e,$12,$13,$11,$0e,$12,$e1
	.byte $0e,$1e,$1f,$11,$20,$08,$04,$04,$04,$09,$e1,$e2,$00,$01,$01,$02
	.byte $20,$0e,$12,$13,$11,$0e,$18,$19,$11,$0e,$12,$e1,$0e,$24,$25,$11
	.byte $20,$06,$01,$01,$07,$e2,$e2,$03,$04,$04,$05,$20,$14,$05,$08,$15
	.byte $14,$05,$08,$15,$1c,$1d,$1a,$1b,$14,$05,$08,$15,$20,$08,$04,$04
	.byte $09,$e2,$e3,$00,$01,$02,$0a,$16,$17,$0b,$0a,$0d,$0a,$16,$17,$0b
	.byte $0a,$16,$1a,$1b,$0a,$16,$17,$0b,$06,$01,$07,$e3,$e3,$03,$04,$05
	.byte $0e,$12,$13,$11,$0e,$11,$0e,$12,$13,$11,$0e,$1e,$2a,$20,$0e,$12
	.byte $13,$11,$08,$04,$09,$e3,$e4,$00,$02,$0e,$18,$26,$27,$0e,$11,$0e
	.byte $12,$13,$11,$0e,$24,$2b,$20,$0e,$18,$26,$27,$06,$07,$e4,$e4,$03
	.byte $05,$14,$05,$1c,$15,$14,$15,$14,$1d,$28,$29,$14,$1d,$1a,$1b,$14
	.byte $05,$1c,$15,$08,$09,$e4,$80,$23,$c0,$18,$ff,$08,$0f,$08,$00,$08
	.byte $a0,$08,$05,$08,$00,$00,$3f,$00,$20,$0f,$0f,$30,$11,$0f,$0f,$30
	.byte $30,$0f,$0f,$27,$27,$0f,$08,$27,$30,$0f,$3a,$00,$27,$0f,$00,$00
	.byte $00,$0f,$00,$00,$00,$0f,$00,$00,$00,$23,$2a,$40,$31,$39,$38,$35
	.byte $20,$4e,$49,$4e,$54,$45,$4e,$44,$4f,$00,$22,$a9,$44,$45,$53,$49
	.byte $47,$4e,$00,$22,$ec,$54,$4f,$50,$00,$22,$ec,$0a,$21,$00

Lbl_cef5:
	.byte $21,$22,$22,$22

Lbl_cef9:
	.byte $e7,$27,$67,$a7,$a5,$05,$29,$7f

Lbl_cf01:
	sta $2000
	sta $05
	rts 

Lbl_cf07:
	lda $05
	ora #$80
	bne Lbl_cf01

Lbl_cf0d:
	lda #$00

Lbl_cf0f:
	pha 
	jsr Lbl_8caa
	pla 
	sta $2001
	rts 

Lbl_cf18:
	lda $06
	bne Lbl_cf0f

Lbl_cf1c:
	jsr Lbl_cf0d
	lda #$cf
	ldy #$37
	jsr Lbl_d02b
	jsr Lbl_d1b8
	lda #$20
	ldy #$00
	jsr Lbl_d1c0
	sty $2005
	sty $2005
	rts 

Lbl_cf37:
	.byte $3f,$00,$00,$20,$0f

Lbl_cf3c:
	jsr Lbl_cf77
	ldy #$00

Lbl_cf41:
	lda $0400,y
	sta $0300,x
	inx 
	iny 
	cpy $dc
	bne Lbl_cf41
	stx $d8
	rts 

Lbl_cf50:
	.byte $a9,$04,$a0,$00

Lbl_cf54:
	sta $df
	sty $de
	txa 
	pha 
	ldy #$02
	lda ($de),y
	clc 
	adc #$03
	sta $dd
	ldx $d8
	ldy #$00

Lbl_cf67:
	lda ($de),y
	sta $0300,x
	inx 
	iny 
	cpy $dd
	bne Lbl_cf67
	stx $d8
	pla 
	tax 
	rts 

Lbl_cf77:
	ldx $d8
	lda #$00
	sta $dd
	lda $cc
	asl a 
	asl a 
	asl a 
	asl a 
	rol $dd
	asl a 
	rol $dd
	ora $ca
	pha 
	lda $dd
	ora #$20
	sta $0300,x
	inx 
	pla 
	sta $0300,x
	inx 
	lda $dc
	sta $0300,x
	inx 
	rts 

Lbl_cf9f:
	tya 
	pha 
	txa 
	pha 
	lda $d9
	cmp $d8
	beq Lbl_cfac
	jsr Lbl_cfb1

Lbl_cfac:
	pla 
	tax 
	pla 
	tay 
	rts 

Lbl_cfb1:
	ldx $d9
	lda $0300,x
	inx 
	sta $da
	sta $2006
	lda $0300,x
	inx 
	sta $2006
	ldy $0300,x
	inx 

Lbl_cfc7:
	lda $0300,x
	inx 
	sta $2007
	dey 
	bne Lbl_cfc7
	lda $da
	cmp #$3f
	bne Lbl_cfe7
	lda #$3f
	sta $2006
	lda #$00
	sta $2006
	sta $2006
	sta $2006

Lbl_cfe7:
	stx $d9
	cpx $d8
	bne Lbl_cfb1
	rts 

Lbl_cfee:
	sta $09
	sty $08
	ldy #$00
	lda ($08),y
	sta $2006
	iny 
	lda ($08),y
	sta $2006

Lbl_cfff:
	iny 
	lda ($08),y
	beq Lbl_d009
	sta $2007
	bne Lbl_cfff

Lbl_d009:
	rts 

Lbl_d00a:
	sta $09
	sty $08
	ldy #$00
	lda ($08),y
	sta $2006
	iny 
	lda ($08),y
	sta $2006
	iny 
	lda ($08),y
	sta $0a

Lbl_d020:
	iny 
	lda ($08),y
	sta $2007
	dec $0a
	bne Lbl_d020
	rts 

Lbl_d02b:
	sta $09
	sty $08
	ldy #$00
	lda ($08),y
	sta $2006
	iny 
	lda ($08),y
	sta $2006
	iny 
	lda ($08),y
	sta $0b
	iny 
	lda ($08),y
	sta $0a
	iny 

Lbl_d047:
	lda ($08),y
	sta $2007
	lda $0a
	bne Lbl_d052
	dec $0b

Lbl_d052:
	dec $0a
	lda $0a
	ora $0b
	bne Lbl_d047
	rts 

Lbl_d05b:
	ldx #$10
	bne Lbl_d061

Lbl_d05f:
	ldx #$11

Lbl_d061:
	stx $0a
	sta $09
	sty $08
	lda #$01
	sta $dc

Lbl_d06b:
	lda $0a
	cmp #$11
	bne Lbl_d077
	lda $54
	ora $55
	bne Lbl_d0f2

Lbl_d077:
	ldy #$00
	lda ($08),y
	beq Lbl_d0f2
	ldx #$05

Lbl_d07f:
	cmp Lbl_d119,x
	beq Lbl_d089
	dex 
	bpl Lbl_d07f
	bmi Lbl_d08c

Lbl_d089:
	lda Lbl_d11f,x

Lbl_d08c:
	cmp #$0d
	beq Lbl_d0bc
	cmp #$0c
	beq Lbl_d0c4
	sta $0400
	jsr Lbl_cf3c
	inc $ca
	lda $0400
	cmp #$21
	beq Lbl_d0ae
	lda $0a
	cmp #$10
	bne Lbl_d0ae
	ldx #$07
	jsr Lbl_d0f3

Lbl_d0ae:
	ldx #$03
	jsr Lbl_d0f3
	inc $08
	bne Lbl_d0b9
	inc $09

Lbl_d0b9:
	jmp Lbl_d06b

Lbl_d0bc:
	inc $cc
	lda #$02
	sta $ca
	bne Lbl_d0ae

Lbl_d0c4:
	lda #$02
	sta $ca
	lda #$03
	sta $cc
	lda $54
	ora $55
	bne Lbl_d0db
	lda $5b
	bpl Lbl_d0db
	ldx #$78
	jsr Lbl_d0f3

Lbl_d0db:
	lda #$d1
	ldy #$25
	jsr Lbl_cf54
	jsr Lbl_8caa
	lda #$d1
	ldy #$68
	jsr Lbl_cf54
	jsr Lbl_8caa
	jmp Lbl_d0ae

Lbl_d0f2:
	rts 

Lbl_d0f3:
	txa 
	pha 
	jsr Lbl_8caa
	jsr Lbl_ebec
	pla 
	tax 
	lda $0a
	cmp #$10
	beq Lbl_d107
	lda $5b
	bpl Lbl_d10a

Lbl_d107:
	dex 
	bne Lbl_d0f3

Lbl_d10a:
	rts 

Lbl_d10b:
	txa 
	pha 
	jsr Lbl_8caa
	jsr Lbl_ebec
	pla 
	tax 
	dex 
	bne Lbl_d10b
	rts 

Lbl_d119:
	.byte $22,$2e,$2c,$27,$21,$20

Lbl_d11f:
	.byte $9c,$9a,$9b,$9d,$ba,$21,$20,$60,$40,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$20,$a0,$40,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21

Lbl_d1ab:
	lda #$00
	sta $54
	sta $55
	lda #$ff
	sta $57
	sta $58
	rts 

Lbl_d1b8:
	lda #$3f
	ldy #$00
	jsr Lbl_d1c0
	tya 

Lbl_d1c0:
	sta $2006
	sty $2006
	rts 

Lbl_d1c7:
	asl $19
	rol $1a
	rol a 
	rol a 
	eor $19
	rol a 
	eor $19
	lsr a 
	lsr a 
	eor #$ff
	and #$01
	ora $19
	sta $19
	rts 

Lbl_d1dd:
	asl $1b
	rol $1c
	rol a 
	rol a 
	eor $1b
	rol a 
	eor $1b
	lsr a 
	lsr a 
	eor #$ff
	and #$01
	ora $1b
	sta $1b
	rts 

Lbl_d1f3:
	ldy #$07

Lbl_d1f5:
	lda #$00
	sta $a1
	sta $a3
	sta $a4

Lbl_d1fd:
	lsr $a2
	bcc Lbl_d20e
	lda $a3
	clc 
	adc $a0
	sta $a3
	lda $a4
	adc $a1
	sta $a4

Lbl_d20e:
	asl $a0
	rol $a1
	dey 
	bpl Lbl_d1fd
	rts 

Lbl_d216:
	inc $20
	lda $6d
	bne Lbl_d251
	ldx $17
	cpx #$14
	bcc Lbl_d226
	ldx #$00
	stx $17

Lbl_d226:
	lda Lbl_d2e0,x
	clc 
	adc $63
	sta $63
	lda $18
	cmp #$01
	bne Lbl_d24e
	ldx #$00
	lda Lbl_d30c,x
	sta $08
	ldy #$00
	lda $5e

Lbl_d23f:
	cmp Lbl_d308,x
	bcc Lbl_d24c
	sbc Lbl_d308,x
	iny 
	cpy $08
	bcc Lbl_d23f

Lbl_d24c:
	sty $63

Lbl_d24e:
	jsr Lbl_952c

Lbl_d251:
	jsr Lbl_e623
	lda #$60
	sta $28
	lda #$05
	sta $29
	lda #$50
	sta $5f
	lda #$80
	sta $5c
	lda #$02
	sta $5d
	jsr Lbl_cf1c
	ldy #$0f
	jsr Lbl_8cac
	jsr Lbl_871b
	jsr Lbl_8caa
	lda #$00
	sta $06
	sta $3f
	jsr Lbl_d1ab
	jsr Lbl_912f
	jsr Lbl_ff0c
	inc $3f
	jsr Lbl_ac36
	jsr Lbl_ff0c
	inc $3f
	jsr Lbl_d1ab
	jsr Lbl_912f
	jsr Lbl_ff0c
	inc $3f
	jsr Lbl_ac36
	jsr Lbl_ff0c
	inc $3f
	jsr Lbl_d1ab
	jsr Lbl_912f
	jsr Lbl_ff0c
	inc $3f
	jsr Lbl_ac36
	jsr Lbl_ff0c
	inc $3f
	lda #$f8
	sta $84
	sta $85
	ldy #$00
	sty $4c
	sty $4d
	sty $4e
	iny 
	sty $43
	jsr Lbl_8caa
	lda #$1e
	sta $06
	jsr Lbl_8c97
	jsr Lbl_ead5
	lda #$00
	jsr Lbl_eaf9
	ldy #$00
	jsr Lbl_ff00
	jmp Lbl_ff0c

Lbl_d2e0:
	.byte $00,$00,$00,$01,$00,$00,$01,$00,$00,$01,$00,$00,$01,$00,$00,$01
	.byte $00,$00,$01,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$00
	.byte $00,$00,$01,$00,$00,$00,$00,$01

Lbl_d308:
	.byte $03,$01,$02,$04

Lbl_d30c:
	.byte $03,$05,$04,$02

Lbl_d310:
	lda $46
	cmp #$40
	bcs Lbl_d34b
	ldx $015c
	dex 

Lbl_d31a:
	lda Lbl_d3b4,x
	clc 
	adc $013c,x
	sta $013c,x
	ldy Lbl_d3a3,x
	lda Lbl_d3c4,x
	adc $0203,y
	sta $0203,y
	lda Lbl_d3d4,x
	clc 
	adc $014c,x
	sta $014c,x
	ldy Lbl_d3a3,x
	lda Lbl_d3e4,x
	adc $0200,y
	sta $0200,y
	dex 
	bpl Lbl_d31a
	bmi Lbl_d393

Lbl_d34b:
	bne Lbl_d360
	lda #$13
	jsr Lbl_eaf9
	lda $1f
	bne Lbl_d360
	lda $17
	beq Lbl_d360
	dec $63
	bpl Lbl_d360
	inc $70

Lbl_d360:
	ldx $015c
	dex 

Lbl_d364:
	lda Lbl_d3f4,x
	clc 
	adc $013c,x
	sta $013c,x
	ldy Lbl_d3a3,x
	lda Lbl_d404,x
	adc $0203,y
	sta $0203,y
	lda Lbl_d414,x
	clc 
	adc $014c,x
	sta $014c,x
	ldy Lbl_d3a3,x
	lda Lbl_d424,x
	adc $0200,y
	sta $0200,y
	dex 
	bpl Lbl_d364

Lbl_d393:
	inc $46
	ldy #$80
	jsr Lbl_ff00
	ldy $015c
	ldx Lbl_d3a3,y
	jmp Lbl_af3c

Lbl_d3a3:
	.byte $0c,$10,$14,$18,$1c,$20,$24,$28,$2c,$30,$34,$38,$3c,$40,$44,$48
	.byte $4c

Lbl_d3b4:
	.byte $80,$40,$e0,$60,$80,$00,$c0,$c0,$c0,$40,$60,$20,$a0,$40,$40,$20

Lbl_d3c4:
	.byte $00,$ff,$fe,$fe,$01,$01,$00,$00,$fe,$ff,$fe,$ff,$01,$00,$01,$01

Lbl_d3d4:
	.byte $00,$c0,$00,$a0,$80,$00,$40,$40,$e0,$00,$c0,$e0,$00,$c0,$e0,$00

Lbl_d3e4:
	.byte $ff,$00,$00,$ff,$fe,$00,$00,$ff,$fe,$00,$fd,$fd,$ff,$fd,$ff,$fe

Lbl_d3f4:
	.byte $00,$00,$80,$80,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80

Lbl_d404:
	.byte $fe,$03,$04,$06,$fa,$fc,$fd,$fd,$05,$03,$06,$03,$f9,$ff,$fb,$fb

Lbl_d414:
	.byte $00,$00,$00,$80,$00,$00,$00,$00,$80,$00,$00,$80,$00,$00,$80,$00

Lbl_d424:
	.byte $04,$fd,$00,$01,$06,$00,$ff,$03,$04,$00,$09,$08,$04,$09,$00,$08

Lbl_d434:
	jsr Lbl_8caa
	jsr Lbl_cf0d
	lda $05
	sta $2000
	lda #$d4
	ldy #$51
	jsr Lbl_d02b

Lbl_d446:
	ldy #$00
	lda #$f0

Lbl_d44a:
	sta $0200,y
	iny 
	bne Lbl_d44a
	rts 

Lbl_d451:
	.byte $20,$00,$08,$00,$20

Lbl_d456:
	lda #$00
	sta $40
	sta $41
	sta $42
	rts 

Lbl_d45f:
	lda $b1
	cmp #$f0
	bcc Lbl_d468
	jmp Lbl_d4e3

Lbl_d468:
	lda $b3
	bne Lbl_d478
	lda $b4
	cmp #$c8
	bcs Lbl_d478
	lda $b4
	adc #$02
	sta $b4

Lbl_d478:
	lda $b3
	sta $08
	lda $b4
	asl a 
	rol $08
	sta $09
	lda $b2
	sec 
	sbc $09
	sta $b2
	lda $b1
	sbc $08
	sta $b1
	tax 
	lda Lbl_c055,x
	sta $cc
	txa 
	lsr a 
	lsr a 
	lsr a 
	tay 
	ldx Lbl_d4f4,y
	lda Lbl_d4e8,x
	sta $c8
	lda Lbl_d4ec,x
	sta $c9
	lda Lbl_d4f0,x
	sta $cd
	ldx #$0c
	ldy #$00

Lbl_d4b1:
	lda ($c8),y
	clc 
	adc $cc
	sta $0200,x
	cmp #$50
	bcs Lbl_d4c2
	lda #$f0
	sta $0200,x

Lbl_d4c2:
	inx 
	iny 
	lda ($c8),y
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	sta $0200,x
	inx 
	iny 
	lda ($c8),y
	clc 
	adc #$80
	sta $0200,x
	inx 
	iny 
	dec $cd
	bne Lbl_d4b1
	jmp Lbl_af3c

Lbl_d4e3:
	ldx #$0c
	jmp Lbl_af3c

Lbl_d4e8:
	.byte $3c,$34,$14,$0e

Lbl_d4ec:
	.byte $d5,$d5,$d5,$b2

Lbl_d4f0:
	.byte $01,$02,$08,$10

Lbl_d4f4:
	.byte $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02
	.byte $02,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$00,$00
	.byte $08,$aa,$00,$f9,$08,$aa,$40,$01,$10,$ab,$00,$f9,$10,$ab,$40,$01
	.byte $18,$ac,$00,$f9,$18,$ac,$40,$01,$20,$ad,$00,$f9,$20,$ad,$40,$01
	.byte $18,$ae,$00,$fc,$20,$af,$00,$fc,$20,$b0,$00,$fc

Lbl_d540:
	inc $6d
	dec $6d
	bne Lbl_d563
	sta $08
	pha 
	txa 
	pha 
	tya 
	pha 
	lda $08
	asl a 
	asl a 
	tay 
	ldx #$03

Lbl_d554:
	lda Lbl_d58b,y
	clc 
	adc $01,x
	sta $01,x
	iny 
	dex 
	bpl Lbl_d554
	jsr Lbl_d569

Lbl_d563:
	pla 
	tay 
	pla 
	tax 
	pla 
	rts 

Lbl_d569:
	ldx #$04

Lbl_d56b:
	lda $00,x
	cmp #$0a
	bcc Lbl_d578
	sbc #$0a
	sta $00,x
	inc Lbl_ffff,x

Lbl_d578:
	dex 
	bne Lbl_d56b
	lda $00
	cmp #$0a
	bcc Lbl_d58a
	ldx #$04
	lda #$09

Lbl_d585:
	sta $00,x
	dex 
	bpl Lbl_d585

Lbl_d58a:
	rts 

Lbl_d58b:
	.byte $00,$02,$00,$00,$00,$05,$00,$00,$00,$00,$01,$00,$00,$00,$02,$00
	.byte $00,$00,$05,$00,$00,$00,$03,$00,$00,$04,$00,$00,$00,$00,$01,$00
	.byte $00,$00,$02,$00,$00,$00,$04,$00,$00,$00,$00,$02,$00,$00,$09,$00
	.byte $00,$00,$00,$05,$00,$00,$01,$00,$00,$03,$00,$00,$01,$00,$00,$00

Lbl_d5cb:
	asl a 
	asl a 
	tay 
	ldx #$03

Lbl_d5d0:
	lda Lbl_d58b,y
	clc 
	adc $0790,x
	sta $0790,x
	iny 
	dex 
	bpl Lbl_d5d0
	ldx #$04

Lbl_d5e0:
	lda $078f,x
	cmp #$0a
	bcc Lbl_d5ef
	sbc #$0a
	sta $078f,x
	inc $078e,x

Lbl_d5ef:
	dex 
	bne Lbl_d5e0
	rts 

Lbl_d5f3:
	jsr Lbl_d610

Lbl_d5f6:
	jsr Lbl_d640
	sta $d1
	jsr Lbl_d696
	stx $d1
	pha 
	jsr Lbl_d65e
	pla 
	tax 
	jsr Lbl_d680
	lda $cf
	cmp #$10
	bne Lbl_d5f6
	rts 

Lbl_d610:
	ldy $17
	lda Lbl_dbe7,y
	tay 
	lda Lbl_dbfb,y
	sta $10
	lda Lbl_dc0f,y
	sta $11
	lda $015e
	beq Lbl_d62d
	lda #$00
	sta $10
	lda #$07
	sta $11

Lbl_d62d:
	lda #$00
	sta $cf
	lda #$09
	sta $d2
	lda $5b
	eor #$01
	tax 
	lda $017a,x
	sta $d0
	rts 

Lbl_d640:
	jsr Lbl_8caa
	lda $d0
	asl a 
	asl a 
	asl a 
	asl a 
	asl a 
	ora $cf
	clc 
	adc #$48
	tay 
	lda #$21
	adc #$00
	jsr Lbl_d1c0
	lda $2007
	lda $2007
	rts 

Lbl_d65e:
	lda $d0
	asl a 
	asl a 
	asl a 
	asl a 
	asl a 
	ora $cf
	clc 
	adc #$48
	tay 
	lda #$21
	adc #$00
	jsr Lbl_d1c0
	ldx $d1
	lda Lbl_d7b9,x
	sta $2007
	jsr Lbl_8c97
	jmp Lbl_ebec

Lbl_d680:
	lda Lbl_d7d7,x
	sta $d2
	lda $cf
	clc 
	adc Lbl_d7e3,x
	sta $cf
	lda $d0
	clc 
	adc Lbl_d7ef,x
	sta $d0
	rts 

Lbl_d696:
	ldx $d1
	lda Lbl_d691,x
	tax 

Lbl_d69c:
	lda Lbl_d77d,x
	and #$0f
	cmp $d2
	beq Lbl_d6b3
	lda Lbl_d77d,x
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	cmp $d2
	beq Lbl_d6c4
	inx 
	bne Lbl_d69c

Lbl_d6b3:
	lda Lbl_d79b,x
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	sta $d7
	lda Lbl_d77d,x
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	rts 

Lbl_d6c4:
	lda Lbl_d79b,x
	and #$0f
	sta $d7
	lda Lbl_d77d,x
	and #$0f
	rts 

Lbl_d6d1:
	jsr Lbl_d610
	jsr Lbl_ea13
	lda #$00
	sta $d3
	lda #$04
	sta $d4
	ldx $5b
	lda $017a,x
	sta $d0
	lda #$00
	sta $d5
	sta $d6

Lbl_d6ec:
	lda $d0
	asl a 
	asl a 
	asl a 
	asl a 
	ora $cf
	tay 
	lda ($10),y
	sta $d1
	jsr Lbl_d696
	tax 
	jsr Lbl_d680
	ldx $d7
	cpx #$0f
	beq Lbl_d73d
	lda Lbl_d7fb,x
	cmp $d5
	bne Lbl_d719
	lda Lbl_d80b,x
	clc 
	adc $d6
	bcs Lbl_d719
	sta $d6
	bne Lbl_d73d

Lbl_d719:
	lda $d6
	beq Lbl_d733
	ldy #$00
	lda $d5
	sta ($d3),y
	iny 
	lda $d6
	sta ($d3),y
	lda $d3
	clc 
	adc #$02
	sta $d3
	bcc Lbl_d733
	inc $d4

Lbl_d733:
	lda Lbl_d7fb,x
	sta $d5
	lda Lbl_d80b,x
	sta $d6

Lbl_d73d:
	lda $cf
	cmp #$10
	bne Lbl_d6ec
	ldy #$00
	lda $d5
	sta ($d3),y
	iny 
	lda $d6
	sta ($d3),y
	lda $d3
	clc 
	adc #$02
	sta $d3
	bcc Lbl_d759
	inc $d4

Lbl_d759:
	ldy #$00
	tya 
	sta ($d3),y
	iny 
	sta ($d3),y
	rts 

Lbl_d762:
	.byte $00,$01,$02,$03,$04,$05,$06,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10
	.byte $11,$12,$13,$14,$15,$16,$18,$1a,$1b,$1c,$1d

Lbl_d77d:
	.byte $39,$06,$36,$03,$69,$09,$39,$06,$45,$38,$49,$78,$16,$6b,$05,$07
	.byte $12,$3a,$29,$ab,$18,$4b,$18,$4b,$78,$45,$19,$3b,$08,$04

Lbl_d79b:
	.byte $00,$00,$a2,$a2,$a2,$2a,$00,$00,$ff,$b3,$b3,$ff,$b3,$b3,$b3,$3b
	.byte $ff,$3b,$3b,$ff,$11,$11,$11,$11,$ff,$ff,$4c,$4c,$4c,$c4

Lbl_d7b9:
	.byte $21,$21,$21,$21,$21,$21,$d2,$d1,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$e5,$e4,$d8,$db,$21,$21,$21,$21

Lbl_d7d7:
	.byte $06,$05,$0a,$09,$08,$01,$00,$0b,$04,$03,$02,$07

Lbl_d7e3:
	.byte $00,$00,$01,$01,$01,$00,$00,$00,$ff,$ff,$ff,$00

Lbl_d7ef:
	.byte $ff,$ff,$00,$00,$00,$01,$01,$01,$00,$00,$00,$ff

Lbl_d7fb:
	.byte $00,$00,$d8,$f6,$f7,$00,$00,$00,$00,$00,$28,$0a,$09,$00,$00,$00

Lbl_d80b:
	.byte $10,$16,$0a,$11,$11,$00,$00,$00,$10,$16,$0a,$11,$11,$00,$00,$00

Lbl_d81b:
	lda #$01
	sta $a8
	jsr Lbl_db84
	lda #$db
	ldy #$c4
	jsr Lbl_d00a
	lda #$db
	ldy #$55
	jsr Lbl_896c
	jsr Lbl_da78
	jsr Lbl_8c97
	lda $1f
	cmp #$02
	bne Lbl_d83f
	jmp Lbl_d968

Lbl_d83f:
	jsr Lbl_cf0d
	lda #$da
	ldy #$f1
	jsr Lbl_896c
	jsr Lbl_8c97
	lda #$30
	sta $ca
	lda #$27
	sta $cc
	lda #$12
	sta $cd
	ldx #$80
	lda #$a9
	ldy #$b6
	jsr Lbl_b0a1
	ldx #$00
	stx $017e

Lbl_d866:
	ldx $017e
	beq Lbl_d876
	lda $0786,x
	ora $0780,x
	bne Lbl_d876
	jmp Lbl_d95b

Lbl_d876:
	ldx #$0a
	jsr Lbl_d10b
	jsr Lbl_dab2
	lda #$20
	ldy #$d2
	jsr Lbl_d1c0
	ldx $017e
	lda $0786,x
	jsr Lbl_dace
	lda #$21
	ldy #$32
	jsr Lbl_d1c0
	lda $0780,x
	jsr Lbl_dace
	lda #$20
	ldy #$ca
	jsr Lbl_d1c0
	lda $017e
	asl a 
	asl a 
	tax 
	ldy #$04

Lbl_d8aa:
	lda Lbl_da60,x
	sta $2007
	inx 
	dey 
	bne Lbl_d8aa
	sta $2007
	lda #$21
	ldy #$2a
	jsr Lbl_d1c0
	lda $017e
	asl a 
	asl a 
	tax 
	ldy #$04

Lbl_d8c6:
	lda Lbl_da48,x
	sta $2007
	inx 
	dey 
	bne Lbl_d8c6
	sta $2007
	jsr Lbl_8c97
	jsr Lbl_daa7
	ldx #$01
	jsr Lbl_d10b
	lda #$20
	ldy #$d8
	jsr Lbl_da8f
	lda #$21
	ldy #$38
	jsr Lbl_da8f
	jsr Lbl_8c97
	ldx #$1e
	jsr Lbl_d10b
	ldx $017e
	lda $0786,x
	beq Lbl_d925
	sta $12

Lbl_d8fe:
	ldx #$0a
	jsr Lbl_d10b
	lda $017e
	clc 
	adc #$06
	jsr Lbl_d540
	jsr Lbl_d5cb
	jsr Lbl_da78
	lda #$20
	ldy #$d8
	jsr Lbl_da8f
	jsr Lbl_8c97
	lda #$17
	jsr Lbl_eaf9
	dec $12
	bne Lbl_d8fe

Lbl_d925:
	jsr Lbl_daa7
	ldx $017e
	lda $0780,x
	beq Lbl_d956
	sta $12

Lbl_d932:
	ldx #$0a
	jsr Lbl_d10b
	lda $017e
	jsr Lbl_d540
	jsr Lbl_d5cb
	jsr Lbl_da78
	lda #$21
	ldy #$38
	jsr Lbl_da8f
	jsr Lbl_8c97
	lda #$17
	jsr Lbl_eaf9
	dec $12
	bne Lbl_d932

Lbl_d956:
	ldx #$5a
	jsr Lbl_d10b

Lbl_d95b:
	inc $017e
	lda $017e
	cmp #$06
	bcs Lbl_d968
	jmp Lbl_d866

Lbl_d968:
	ldx #$14
	jsr Lbl_d10b
	lda #$db
	ldy #$1b
	jsr Lbl_896c
	lda #$21
	ldy #$92
	jsr Lbl_d1c0
	lda $078d
	jsr Lbl_dace
	jsr Lbl_8c97
	lda #$28
	sta $ca
	lda #$5c
	sta $cc
	lda #$04
	sta $cd
	lda #$c5
	ldy #$c9
	ldx #$c8
	jsr Lbl_b0a1
	lda #$0d
	sta $13
	lda #$21
	ldy #$98
	ldx $078d
	jsr Lbl_da0f
	ldx #$14
	jsr Lbl_d10b
	lda #$db
	ldy #$2d
	jsr Lbl_896c
	lda #$21
	ldy #$f2
	jsr Lbl_d1c0
	lda $078c
	jsr Lbl_dace
	jsr Lbl_8c97
	lda #$76
	sta $cc
	lda #$04
	sta $cd
	lda #$55
	ldy #$c8
	ldx #$d8
	jsr Lbl_b0a1
	lda #$21
	ldy #$f8
	ldx $078c
	jsr Lbl_da0f
	ldx #$14
	jsr Lbl_d10b
	lda #$db
	ldy #$3e
	jsr Lbl_896c
	jsr Lbl_8c97
	ldx #$01
	jsr Lbl_d10b
	lda #$22
	ldy #$52
	jsr Lbl_d1c0
	lda $5f
	jsr Lbl_dace
	jsr Lbl_8c97
	lda #$22
	ldy #$58
	ldx $5f
	jsr Lbl_da0f
	ldx #$78
	jmp Lbl_d10b

Lbl_da0f:
	beq Lbl_da45
	stx $12
	sta $11
	sty $10
	jsr Lbl_daa7

Lbl_da1a:
	ldx #$0a
	lda $13
	cmp #$0f
	bne Lbl_da24
	ldx #$02

Lbl_da24:
	jsr Lbl_d10b
	lda $13
	jsr Lbl_d540
	jsr Lbl_d5cb
	jsr Lbl_da78
	lda $11
	ldy $10
	jsr Lbl_da8f
	jsr Lbl_8c97
	lda #$17
	jsr Lbl_eaf9
	dec $12
	bne Lbl_da1a

Lbl_da45:
	inc $13
	rts 

Lbl_da48:
	.byte $21,$21,$32,$30,$21,$21,$35,$30,$21,$31,$30,$30,$21,$32,$30,$30
	.byte $21,$35,$30,$30,$21,$33,$30,$30

Lbl_da60:
	.byte $21,$21,$34,$30,$21,$31,$30,$30,$21,$32,$30,$30,$21,$34,$30,$30
	.byte $32,$30,$30,$30,$21,$39,$30,$30

Lbl_da78:
	lda #$23
	ldy #$11
	jsr Lbl_d1c0
	ldy #$00

Lbl_da81:
	lda a:$0000,y
	ora #$30
	sta $2007
	iny 
	cpy #$05
	bne Lbl_da81
	rts 

Lbl_da8f:
	jsr Lbl_d1c0
	ldy #$00

Lbl_da94:
	lda $078f,y
	ora #$30
	sta $2007
	iny 
	cpy #$05
	bne Lbl_da94
	lda #$30
	sta $2007
	rts 

Lbl_daa7:
	ldy #$04
	lda #$00

Lbl_daab:
	sta $078f,y
	dey 
	bpl Lbl_daab
	rts 

Lbl_dab2:
	lda $017e
	asl a 
	asl a 
	tax 
	lda #$3f
	ldy #$14
	jsr Lbl_d1c0
	ldy #$04

Lbl_dac1:
	lda Lbl_902f,x
	sta $2007
	inx 
	dey 
	bne Lbl_dac1
	jmp Lbl_d1b8

Lbl_dace:
	sta $08
	lda #$64
	jsr Lbl_dadc
	lda #$0a
	jsr Lbl_dadc
	lda #$01

Lbl_dadc:
	sta $09
	ldy #$30

Lbl_dae0:
	lda $08
	cmp $09
	bcc Lbl_daed
	sbc $09
	sta $08
	iny 
	bne Lbl_dae0

Lbl_daed:
	sty $2007
	rts 

Lbl_daf1:
	.byte $20,$a9,$42,$4c,$4f,$43,$4b,$45,$44,$1f,$21,$21,$58,$05,$21,$9d
	.byte $21,$06,$30,$1f,$21,$0c,$21,$44,$45,$53,$54,$52,$4f,$59,$45,$44
	.byte $1e,$21,$58,$05,$21,$9d,$21,$06,$30,$00,$21,$8b,$31,$30,$30,$30
	.byte $21,$58,$21,$30,$30,$30,$21,$9d,$21,$06,$30,$00,$21,$ec,$33,$30
	.byte $30,$21,$58,$21,$30,$30,$30,$21,$9d,$21,$06,$30,$00,$22,$44,$53
	.byte $48,$4f,$54,$53,$04,$21,$31,$30,$21,$58,$21,$30,$30,$30,$21,$9d
	.byte $21,$06,$30,$00,$22,$c6,$c4,$12,$c5,$c7,$0c,$21,$c8,$12,$21,$ca
	.byte $0c,$21,$c8,$21,$21,$53,$43,$4f,$52,$45,$21,$21,$21,$30,$30,$30
	.byte $30,$30,$30,$21,$21,$ca,$0c,$21,$c8,$12,$21,$ca,$0c,$21,$cb,$12
	.byte $cc,$ce,$00

Lbl_db84:
	jsr Lbl_cf1c
	jsr Lbl_d446
	ldx #$0c
	jsr Lbl_d10b
	lda #$db
	ldy #$a7
	jsr Lbl_d02b
	lda #$db
	ldy #$ac
	jsr Lbl_d02b
	lda #$db
	ldy #$b1
	jsr Lbl_d00a
	jmp Lbl_d1b8

Lbl_dba7:
	.byte $20,$00,$04,$00,$21,$23,$c0,$00,$40,$00,$3f,$00,$10,$00,$0f,$30
	.byte $30,$00,$0f,$26,$26,$00,$37,$16,$00,$00,$0f,$10,$30,$3f,$00,$20
	.byte $0f,$12,$30,$30,$0f,$12,$26,$26,$0f,$12,$16,$00,$0f,$12,$10,$30
	.byte $0f,$0f,$30,$30,$0f,$0f,$26,$34,$0f,$30,$0f,$00,$0f,$0f,$10,$30

Lbl_dbe7:
	.byte $13,$00,$01,$02,$03,$04,$08,$06,$07,$05,$09,$0a,$0b,$0c,$0d,$0e
	.byte $0f,$10,$11,$12

Lbl_dbfb:
	.byte $23,$a3,$23,$a3,$23,$a3,$23,$a3,$23,$a3,$23,$a3,$23,$a3,$23,$a3
	.byte $23,$a3,$23,$a3

Lbl_dc0f:
	.byte $dc,$dc,$dd,$dd,$de,$de,$df,$df,$e0,$e0,$e1,$e1,$e2,$e2,$e3,$e3
	.byte $e4,$e4,$e5,$e5,$21,$21,$21,$21,$21,$d3,$d1,$d5,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$d3,$d1,$d5,$d3,$d7,$d1,$d7,$d5,$21,$21,$21
	.byte $21,$d3,$d1,$d1,$d1,$d6,$21,$d2,$d2,$d4,$d5,$d4,$d7,$d5,$21,$21
	.byte $d3,$d7,$d5,$21,$21,$d3,$d1,$d6,$d4,$d1,$d7,$d5,$d2,$d2,$21,$d3
	.byte $d7,$d6,$d2,$21,$21,$d2,$d3,$d1,$d5,$d3,$d6,$d2,$d4,$d7,$d5,$d4
	.byte $d7,$d5,$d4,$d1,$d1,$d7,$d6,$d3,$d7,$d6,$d3,$d6,$21,$d2,$d2,$d3
	.byte $d6,$d2,$21,$21,$21,$d4,$d1,$d6,$d4,$d1,$d6,$21,$21,$d2,$d4,$d7
	.byte $d1,$d6,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$d4,$d1,$d6
	.byte $21,$21,$21,$21,$21,$21,$d3,$d5,$21,$d3,$da,$db,$21,$21,$d3,$d5
	.byte $21,$21,$21,$21,$21,$21,$d4,$d7,$d5,$eb,$db,$e9,$d5,$d3,$d6,$de
	.byte $21,$d3,$d5,$21,$d1,$d5,$d3,$d6,$eb,$db,$dd,$21,$d4,$d7,$d5,$e0
	.byte $e1,$d6,$d2,$21,$21,$d4,$d6,$21,$21,$e9,$d6,$21,$21,$d4,$d6,$21
	.byte $d3,$d5,$d4,$d1,$21,$d3,$d1,$d1,$d5,$21,$21,$d3,$d1,$d5,$d3,$d5
	.byte $d2,$d2,$21,$21,$21,$d4,$d1,$d1,$d7,$d1,$d1,$d7,$d1,$d6,$d2,$d2
	.byte $d4,$d7,$d1,$d1,$21,$21,$21,$21,$d4,$d1,$d5,$d4,$d1,$d5,$d4,$d7
	.byte $d1,$d6,$21,$21,$d1,$d1,$d1,$d1,$d1,$d1,$d6,$21,$21,$d4,$d1,$d6
	.byte $21,$21,$21,$21,$21,$d3,$da,$db,$d3,$da,$db,$d3,$d5,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$d4,$d5,$e9,$d6,$21,$dd,$d4,$d7,$da,$db,$d3
	.byte $d5,$d3,$d5,$21,$21,$21,$d4,$d1,$d5,$21,$eb,$e7,$ea,$21,$dd,$d2
	.byte $d2,$d2,$d2,$d3,$d1,$d1,$d1,$d1,$d6,$21,$d8,$e6,$db,$21,$d4,$d6
	.byte $d4,$d6,$d4,$d6,$d1,$d5,$21,$21,$d3,$d1,$e8,$21,$dd,$21,$d3,$d5
	.byte $d3,$d5,$d3,$d5,$21,$d4,$d5,$21,$eb,$db,$21,$d3,$d6,$21,$d2,$d2
	.byte $d2,$d2,$d2,$d2,$21,$21,$d4,$da,$db,$dd,$21,$d4,$d1,$d1,$d6,$d4
	.byte $d6,$d4,$d6,$d4,$21,$21,$21,$21,$e9,$d6,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$d3,$d5,$21,$21,$d3,$da,$db,$21
	.byte $21,$21,$21,$21,$d5,$21,$21,$d8,$ea,$eb,$db,$d3,$d7,$d5,$e9,$d5
	.byte $21,$21,$21,$21,$d2,$21,$21,$dc,$21,$21,$e9,$d6,$d2,$d2,$21,$d4
	.byte $d1,$d1,$d1,$d1,$de,$21,$21,$df,$21,$21,$21,$21,$d4,$d6,$21,$21
	.byte $d3,$d5,$21,$21,$e0,$e1,$e2,$e3,$21,$d8,$d9,$d5,$21,$21,$d3,$d5
	.byte $d4,$d7,$d1,$d1,$21,$21,$21,$d8,$d9,$e8,$21,$d2,$21,$21,$d2,$eb
	.byte $db,$d2,$21,$21,$d1,$d1,$d1,$e8,$21,$21,$21,$d4,$d1,$d1,$d7,$d5
	.byte $e9,$d6,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$d4,$d6
	.byte $21,$21,$21,$21,$d5,$21,$21,$21,$21,$d3,$d5,$21,$21,$d3,$d1,$d5
	.byte $21,$21,$21,$21,$d4,$d5,$21,$21,$d3,$d6,$de,$21,$21,$df,$21,$eb
	.byte $e7,$d9,$d1,$d1,$d3,$d6,$21,$d3,$d6,$21,$e0,$e1,$e2,$e3,$21,$d8
	.byte $e6,$db,$21,$21,$d4,$da,$db,$d4,$d5,$21,$21,$21,$21,$21,$d8,$e4
	.byte $21,$dd,$21,$21,$21,$21,$e5,$e7,$ea,$21,$21,$21,$21,$d8,$e4,$21
	.byte $21,$de,$21,$21,$da,$db,$d8,$e6,$db,$21,$21,$21,$d8,$e4,$21,$21
	.byte $21,$e0,$e1,$d1,$21,$e9,$e8,$21,$e5,$db,$21,$d8,$e4,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$e9,$d1,$e8,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$d3,$d5,$21
	.byte $21,$d8,$d9,$d1,$21,$21,$21,$21,$21,$21,$21,$21,$21,$d4,$d7,$d5
	.byte $d3,$e8,$21,$21,$d1,$d5,$d3,$d5,$d3,$d5,$d3,$d5,$d3,$d1,$d6,$d4
	.byte $d7,$d5,$21,$21,$21,$d4,$d7,$d6,$df,$d4,$d7,$d6,$df,$21,$21,$d8
	.byte $ea,$d4,$da,$db,$21,$d3,$d7,$e2,$e3,$d3,$d7,$e2,$e3,$d3,$d5,$dc
	.byte $d3,$d5,$21,$e9,$d1,$d6,$d2,$d3,$d5,$d2,$d4,$d5,$d3,$d7,$d6,$d4
	.byte $d7,$d6,$21,$21,$21,$21,$d4,$d7,$d6,$df,$21,$d4,$d6,$de,$21,$d3
	.byte $d6,$21,$21,$21,$21,$21,$21,$d4,$e2,$e3,$21,$21,$21,$e0,$e1,$d6
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$d3,$d1,$d1,$d1,$d5,$21,$d3
	.byte $d5,$21,$21,$21,$d8,$d9,$da,$db,$21,$eb,$e7,$d9,$d5,$eb,$e7,$ea
	.byte $d4,$d5,$d8,$d9,$e8,$21,$21,$e9,$d5,$d8,$e6,$db,$d2,$d8,$e6,$db
	.byte $d3,$d6,$dc,$21,$d8,$d9,$da,$e7,$ea,$dc,$21,$dd,$d4,$e8,$21,$dd
	.byte $eb,$e7,$ea,$21,$e8,$21,$d8,$e6,$db,$eb,$e7,$ea,$21,$21,$d8,$ea
	.byte $d8,$e6,$db,$21,$21,$21,$dc,$21,$dd,$d8,$e6,$db,$21,$21,$dc,$d8
	.byte $e4,$21,$e9,$d1,$21,$21,$d4,$d5,$d4,$e8,$21,$dd,$21,$21,$d4,$e8
	.byte $21,$21,$21,$21,$21,$21,$21,$d4,$d1,$d1,$d1,$d6,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$d1,$d1,$d1,$d5,$21,$21,$21,$21,$21,$21,$d3,$d1
	.byte $d1,$da,$db,$21,$d8,$d9,$d1,$d6,$21,$21,$21,$21,$d3,$d1,$d7,$d1
	.byte $da,$db,$dd,$21,$dc,$21,$d3,$d5,$d3,$d5,$d8,$d9,$d6,$21,$d2,$d3
	.byte $d5,$dd,$d4,$d1,$de,$21,$d2,$d2,$d2,$d2,$dc,$d3,$da,$db,$d4,$d7
	.byte $d6,$df,$21,$21,$e0,$e1,$d7,$d6,$d4,$d7,$d6,$df,$21,$dd,$21,$d4
	.byte $e2,$e3,$21,$21,$21,$d3,$d7,$d1,$d1,$d7,$e2,$e3,$d3,$d6,$d3,$d5
	.byte $21,$21,$d8,$d9,$21,$d4,$d6,$21,$d3,$d6,$21,$d3,$d6,$21,$df,$de
	.byte $21,$d8,$e4,$21,$d1,$d1,$d1,$d1,$d6,$21,$21,$d4,$d1,$e2,$e3,$e0
	.byte $e1,$e8,$21,$21,$d1,$d1,$d1,$d1,$d1,$d1,$d1,$d5,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$d3,$d1,$d1,$d1,$d1,$d6,$d3,$d1,$d1,$d1
	.byte $d1,$d1,$d1,$d1,$21,$21,$d4,$d1,$d1,$d1,$d5,$21,$d4,$d1,$d1,$d5
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$d3,$d7,$d1,$d1,$d1,$d1,$d6
	.byte $21,$21,$21,$21,$21,$21,$d3,$d1,$d1,$d6,$d4,$d1,$d1,$d1,$d1,$d1
	.byte $d1,$d5,$21,$21,$21,$21,$d4,$d1,$d1,$d1,$d1,$d1,$d1,$d5,$d3,$d1
	.byte $d1,$d6,$d3,$d1,$d1,$d1,$d1,$d1,$d1,$d1,$d1,$d1,$d1,$d6,$d4,$d1
	.byte $d1,$d1,$d6,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$d3,$d5,$21,$21,$21,$21,$21,$21,$d3,$d5,$21
	.byte $21,$21,$21,$21,$d3,$d6,$d4,$d5,$21,$21,$d3,$d5,$d3,$d6,$d4,$d5
	.byte $21,$21,$d3,$d1,$d6,$21,$d3,$d6,$21,$d3,$d6,$d4,$d6,$21,$21,$d4
	.byte $d5,$d3,$d6,$21,$21,$21,$d4,$d5,$d3,$d6,$21,$21,$21,$21,$21,$21
	.byte $d4,$d6,$21,$21,$d5,$21,$21,$d4,$d6,$d3,$d5,$21,$21,$21,$21,$d3
	.byte $d5,$21,$21,$21,$d4,$d5,$d3,$d5,$d3,$d6,$d4,$d5,$21,$21,$d3,$d6
	.byte $d4,$d5,$d3,$d5,$21,$d4,$d6,$d4,$d6,$21,$21,$d4,$d5,$d3,$d6,$21
	.byte $21,$d4,$d6,$d4,$21,$21,$21,$21,$21,$21,$21,$21,$d4,$d6,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$d3,$d5,$21,$21,$21,$21,$21,$21,$d3,$d5
	.byte $d3,$d5,$21,$21,$21,$21,$d2,$d2,$d3,$d5,$21,$21,$21,$21,$d2,$d2
	.byte $d2,$d2,$21,$21,$d1,$d5,$d2,$d2,$d2,$d2,$d3,$d5,$21,$21,$d2,$d2
	.byte $d2,$d2,$21,$21,$21,$d2,$d2,$d2,$d2,$d2,$d2,$d2,$d3,$d1,$d7,$d7
	.byte $d7,$d7,$d1,$d1,$21,$d4,$d7,$d7,$d7,$d7,$d7,$d7,$d7,$d5,$d2,$d2
	.byte $d2,$d2,$21,$21,$21,$21,$d2,$d2,$d2,$d2,$d2,$d4,$d6,$d2,$d2,$d2
	.byte $d2,$d2,$d3,$d1,$d1,$d1,$d6,$d2,$d2,$d4,$d6,$21,$21,$d2,$d2,$d2
	.byte $d2,$d2,$d2,$21,$21,$21,$21,$d4,$d6,$21,$21,$21,$21,$d4,$d6,$d4
	.byte $d6,$d4,$d6,$21,$21,$21,$21,$21,$21,$d3,$d5,$21,$21,$21,$21,$d8
	.byte $d9,$da,$db,$21,$21,$d3,$d5,$21,$d3,$d6,$de,$21,$d3,$d5,$21,$dc
	.byte $d3,$d5,$dd,$21,$d1,$d7,$d6,$d3,$d6,$21,$e0,$e1,$d7,$d6,$21,$d4
	.byte $d7,$d6,$d4,$d5,$21,$d4,$d5,$d4,$d5,$21,$21,$21,$d4,$d5,$21,$d8
	.byte $ea,$d3,$d1,$d6,$21,$21,$eb,$e7,$ea,$21,$d3,$d5,$21,$d4,$d1,$e8
	.byte $d3,$d6,$d3,$d1,$d3,$d5,$d8,$e6,$db,$d3,$d7,$d6,$d3,$d5,$21,$21
	.byte $d4,$d1,$d6,$21,$d6,$d4,$e8,$21,$e9,$d7,$d6,$21,$df,$d4,$d5,$d3
	.byte $d5,$d8,$d9,$d1,$21,$21,$21,$21,$21,$d4,$d1,$e2,$e3,$21,$d4,$d6
	.byte $d4,$e8,$21,$21,$d1,$d1,$d1,$d1,$d1,$d5,$21,$d3,$d1,$da,$db,$21
	.byte $21,$21,$21,$21,$21,$d8,$d9,$da,$db,$d4,$d5,$d4,$da,$db,$e9,$d5
	.byte $21,$d3,$da,$db,$21,$dc,$21,$21,$dd,$21,$d2,$21,$21,$dd,$21,$eb
	.byte $e7,$ea,$21,$e9,$21,$de,$21,$21,$eb,$db,$de,$21,$21,$df,$21,$d8
	.byte $e6,$db,$21,$21,$21,$e0,$e1,$d5,$21,$dd,$e0,$e1,$e2,$e3,$d3,$e8
	.byte $21,$dd,$21,$21,$d1,$d1,$d1,$d6,$21,$d4,$d5,$d8,$d9,$d1,$d6,$21
	.byte $21,$de,$21,$21,$21,$21,$21,$21,$21,$21,$d4,$e8,$21,$21,$21,$21
	.byte $21,$e0,$e1,$d1,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $d3,$d5,$21,$21,$d1,$d1,$da,$db,$d8,$d9,$da,$db,$d8,$d9,$da,$e7
	.byte $ea,$d2,$d3,$d1,$21,$21,$21,$dd,$dc,$21,$21,$e9,$e8,$21,$d8,$e6
	.byte $db,$d4,$d6,$21,$21,$21,$d3,$d7,$d7,$da,$db,$d8,$d9,$d5,$dc,$21
	.byte $dd,$21,$21,$21,$21,$d8,$ea,$d2,$d2,$21,$dd,$dc,$21,$d4,$d6,$21
	.byte $d4,$d5,$21,$21,$d1,$e8,$21,$d2,$d2,$21,$de,$d4,$d5,$21,$21,$21
	.byte $21,$d4,$d1,$d1,$21,$21,$21,$d4,$d6,$21,$e0,$e1,$d6,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$d3,$d5,$21,$21,$21,$d3,$d5,$21
	.byte $21,$21,$21,$21,$21,$d3,$d1,$d5,$d2,$eb,$db,$21,$d8,$ea,$d4,$d5
	.byte $21,$21,$21,$21,$d1,$d6,$21,$d4,$d6,$21,$e5,$e7,$e4,$21,$21,$d4
	.byte $d1,$d1,$d1,$d1,$21,$21,$21,$21,$21,$21,$d8,$e6,$db,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$d3,$d5,$d8,$e4,$21,$e5,$db,$21,$21
	.byte $d3,$d1,$d1,$d1,$d1,$d1,$d1,$d7,$d6,$dc,$21,$21,$21,$dd,$21,$d3
	.byte $d6,$21,$21,$21,$21,$21,$21,$d4,$d5,$d2,$21,$21,$21,$d2,$d3,$d7
	.byte $d5,$21,$21,$21,$21,$21,$21,$21,$d4,$d6,$21,$21,$21,$d4,$d6,$d4
	.byte $d6,$21,$21,$21,$21,$21,$d3,$d5,$21,$21,$21,$21,$21,$21,$d3,$d5
	.byte $21,$d3,$d5,$21,$d3,$d5,$d2,$d4,$d1,$d1,$d1,$d1,$d1,$d1,$d7,$d6
	.byte $d3,$d7,$d6,$21,$d7,$d6,$d2,$21,$21,$21,$21,$d3,$d5,$21,$d4,$d5
	.byte $d2,$d4,$d1,$d1,$d4,$d1,$d6,$21,$21,$21,$d8,$ea,$d4,$da,$db,$d4
	.byte $d6,$21,$21,$21,$21,$21,$21,$21,$21,$21,$dc,$21,$21,$21,$dd,$21
	.byte $21,$21,$21,$21,$d1,$d1,$d5,$21,$21,$d3,$d6,$21,$21,$21,$de,$21
	.byte $d8,$d9,$d1,$d1,$21,$21,$d4,$d5,$d8,$ea,$21,$21,$21,$21,$e0,$e1
	.byte $e8,$21,$21,$21,$21,$21,$21,$d4,$e8,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$d8,$d9,$da,$db,$21,$d8,$d9,$d1,$d5,$21,$d8,$d9
	.byte $d5,$21,$21,$d3,$dc,$21,$21,$dd,$21,$dc,$d3,$d1,$d6,$21,$dc,$21
	.byte $de,$21,$21,$d2,$d6,$21,$21,$df,$21,$de,$d4,$d1,$da,$db,$eb,$db
	.byte $e0,$e1,$d5,$d2,$d8,$d9,$e2,$e3,$21,$e0,$e1,$da,$db,$e5,$db,$dd
	.byte $21,$d3,$d6,$d2,$dc,$21,$21,$d3,$da,$db,$21,$21,$dd,$21,$e9,$d7
	.byte $d1,$d7,$d1,$d7,$de,$21,$21,$df,$21,$e9,$da,$e7,$ea,$21,$d3,$d6
	.byte $d3,$d6,$d3,$d6,$e0,$e1,$e2,$e3,$21,$21,$d8,$e6,$db,$d8,$ea,$21
	.byte $d4,$d5,$d2,$21,$d1,$d1,$d1,$d1,$d1,$d1,$e8,$21,$e9,$e8,$21,$21
	.byte $21,$d4,$d6,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$d8,$d9,$da,$e7,$d9
	.byte $d1,$da,$db,$21,$d1,$d1,$d1,$da,$db,$21,$d8,$e4,$21,$d8,$e6,$db
	.byte $21,$21,$e9,$d1,$21,$21,$21,$21,$dd,$d3,$e8,$21,$21,$dc,$21,$dd
	.byte $21,$21,$d3,$d1,$d5,$d3,$d1,$d1,$d7,$d6,$21,$21,$21,$df,$21,$de
	.byte $21,$21,$df,$21,$d4,$d6,$21,$21,$d2,$21,$d3,$d1,$e2,$e3,$21,$e0
	.byte $e1,$e2,$e3,$21,$21,$21,$21,$21,$d4,$d1,$d6,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$d1,$d1,$d1,$d1,$d1,$d1,$d5,$21,$21,$d3,$d5,$d3
	.byte $d1,$d1,$d5,$21,$21,$21,$21,$21,$d3,$d1,$d6,$21,$d3,$d6,$d4,$d6
	.byte $d8,$d9,$d7,$d1,$21,$21,$21,$21,$d2,$21,$21,$d3,$d6,$21,$21,$21
	.byte $dc,$21,$d2,$21,$21,$d3,$d5,$21,$d2,$21,$d3,$d6,$d3,$da,$db,$21
	.byte $df,$21,$d2,$21,$21,$d2,$d2,$21,$d2,$d3,$d6,$21,$d2,$21,$e9,$e2
	.byte $e3,$21,$d2,$21,$d1,$d6,$d4,$d1,$d7,$d6,$21,$21,$d2,$21,$21,$21
	.byte $21,$21,$d4,$d1,$21,$21,$21,$21,$de,$21,$21,$21,$df,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$e0,$e1,$d1,$e2,$e3,$21,$21,$21
	.byte $21,$21,$21,$21,$21,$21,$21,$21,$d8,$d9,$da,$db,$21,$21,$21,$21
	.byte $21,$21,$21,$21,$da,$db,$d8,$d9,$e8,$21,$21,$e5,$db,$d3,$d5,$21
	.byte $d3,$d1,$d1,$d1,$21,$e9,$e8,$21,$21,$d3,$d5,$21,$e9,$d7,$d6,$21
	.byte $d2,$21,$21,$21,$21,$21,$21,$21,$21,$d2,$d2,$21,$21,$d4,$d5,$d3
	.byte $d6,$21,$21,$21,$21,$21,$21,$21,$21,$d2,$d2,$d3,$d5,$21,$d4,$d6
	.byte $21,$21,$21,$21,$d1,$d5,$21,$21,$21,$df,$d2,$d2,$d2,$d8,$d9,$da
	.byte $db,$d8,$d9,$d1,$21,$d2,$d8,$d9,$e2,$e3,$d4,$d6,$d4,$e8,$21,$21
	.byte $e9,$e8,$21,$21,$21,$d4,$e8,$21,$21,$21,$21,$21,$21,$21,$21,$21
	.byte $21,$21,$21,$21

Lbl_e623:
	jsr Lbl_d6d1
	lda #$00
	sta $10
	lda #$04
	sta $11
	lda #$60
	sta $12
	lda #$05
	sta $13
	lda #$00
	sta $d4
	sta $d5

Lbl_e63c:
	ldy #$00
	lda ($10),y
	sta ($12),y
	sta $08
	iny 
	lda ($10),y
	sta ($12),y
	sec 
	adc $d4
	sta $d4
	bcc Lbl_e652
	inc $d5

Lbl_e652:
	lda $08
	bne Lbl_e6c1
	lda ($10),y
	bne Lbl_e6b0
	lda #$00
	sta $62
	lda $d5
	sta $60
	lda $d4
	ldx #$05

Lbl_e666:
	lsr $60
	ror a 
	dex 
	bne Lbl_e666
	ldx #$00

Lbl_e66e:
	cmp #$0a
	bcc Lbl_e677
	sbc #$0a
	inx 
	bne Lbl_e66e

Lbl_e677:
	stx $61
	sta $60
	lda $d4
	sec 
	sbc #$0b
	sta $d4
	bcs Lbl_e686
	dec $d5

Lbl_e686:
	lda $d4
	sta $d6
	lda $d5
	sta $d7

Lbl_e68e:
	lda #$00
	sta $0133
	lda #$10
	sta $0130
	sta $d3
	ldx $17
	lda Lbl_dbe7,x
	asl a 
	ora $5b
	tax 
	lda Lbl_e712,x
	sta $cf
	lda Lbl_e73a,x
	sta $d0
	jmp Lbl_c64a

Lbl_e6b0:
	lda $10
	clc 
	adc #$02
	sta $10
	bcc Lbl_e6bb
	inc $11

Lbl_e6bb:
	jsr Lbl_e702
	jmp Lbl_e63c

Lbl_e6c1:
	cmp #$80
	beq Lbl_e6b0
	iny 
	lda ($10),y
	beq Lbl_e6ce
	cmp #$80
	bne Lbl_e6b0

Lbl_e6ce:
	lda $08
	bmi Lbl_e6dd
	sec 
	sbc #$08
	sta $08
	bmi Lbl_e6b0
	beq Lbl_e6b0
	bpl Lbl_e6e6

Lbl_e6dd:
	clc 
	adc #$08
	sta $08
	bpl Lbl_e6b0
	beq Lbl_e6b0

Lbl_e6e6:
	jsr Lbl_e702
	ldy #$00
	lda $08
	sta ($12),y
	iny 
	lda #$01
	sta ($12),y
	lda $d4
	sec 
	adc #$01
	sta $d4
	bcc Lbl_e6ff
	inc $d5

Lbl_e6ff:
	jmp Lbl_e6ce

Lbl_e702:
	lda $12
	clc 
	adc #$02
	sta $12
	bcc Lbl_e70d
	inc $13

Lbl_e70d:
	rts 

Lbl_e70e:
	.byte $00,$ff,$00,$00

Lbl_e712:
	.byte $6a,$74,$8a,$96,$aa,$b2,$bc,$ca,$d6,$e6,$f8,$04,$0e,$18,$22,$2c
	.byte $36,$46,$56,$56,$66,$66,$66,$66,$88,$96,$96,$88,$a0,$a0,$b2,$b2
	.byte $b2,$b2,$d8,$d8,$d8,$d8,$62,$7e

Lbl_e73a:
	.byte $e7,$e7,$e7,$e7,$e7,$e7,$e7,$e7,$e7,$e7,$e7,$e8,$e8,$e8,$e8,$e8
	.byte $e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8,$e8
	.byte $e8,$e8,$e8,$e8,$e8,$e8,$e7,$e7,$4a,$e9,$b9,$e9,$11,$e9,$00,$00
	.byte $11,$e9,$32,$e9,$ad,$e9,$11,$e9,$00,$00,$a1,$e9,$65,$e9,$1d,$e9
	.byte $c5,$e9,$00,$00,$11,$e9,$1d,$e9,$11,$e9,$4a,$e9,$11,$e9,$00,$00
	.byte $a1,$e9,$00,$60,$f5,$e9,$01,$10,$65,$e9,$00,$00,$00,$30,$dd,$e9
	.byte $83,$e9,$dd,$e9,$e9,$e9,$3e,$e9,$01,$60,$65,$e9,$a1,$e9,$00,$00
	.byte $4a,$e9,$ad,$e9,$01,$ea,$00,$00,$11,$e9,$00,$40,$a1,$e9,$00,$40
	.byte $00,$00,$01,$20,$a1,$e9,$00,$00,$20,$00,$11,$e9,$1d,$e9,$00,$00
	.byte $ad,$e9,$01,$ea,$01,$40,$f0,$e8,$00,$20,$00,$00,$a1,$e9,$4a,$e9
	.byte $01,$ea,$01,$ea,$01,$20,$01,$ea,$00,$10,$00,$00,$01,$40,$f0,$e8
	.byte $83,$e9,$d1,$e9,$00,$40,$f0,$e8,$83,$e9,$ff,$e8,$00,$00,$11,$e9
	.byte $3e,$e9,$ad,$e9,$dd,$e9,$e9,$e9,$00,$00,$4a,$e9,$65,$e9,$65,$e9
	.byte $4a,$e9,$00,$00,$f0,$e8,$83,$e9,$e9,$e9,$a1,$e9,$00,$00,$11,$e9
	.byte $4a,$e9,$00,$40,$01,$ea,$00,$00,$4a,$e9,$01,$ea,$e9,$e9,$dd,$e9
	.byte $00,$00,$11,$e9,$f5,$e9,$65,$e9,$a1,$e9,$00,$00,$f0,$e8,$11,$e9
	.byte $4a,$e9,$01,$40,$f0,$e8,$f0,$e8,$00,$40,$00,$00,$83,$e9,$ad,$e9
	.byte $83,$e9,$65,$e9,$01,$40,$83,$e9,$00,$40,$00,$00,$e9,$e9,$dd,$e9
	.byte $01,$ea,$65,$e9,$11,$e9,$f0,$e8,$4a,$e9,$00,$00,$83,$e9,$83,$e9
	.byte $ff,$e8,$c5,$e9,$01,$ea,$01,$ea,$3e,$e9,$ad,$e9,$ad,$e9,$ad,$e9
	.byte $01,$30,$ad,$e9,$3e,$e9,$ad,$e9,$ad,$e9,$00,$20,$00,$00,$01,$40
	.byte $ad,$e9,$00,$20,$ad,$e9,$a1,$e9,$a1,$e9,$00,$00,$83,$e9,$01,$ea
	.byte $f0,$e8,$4a,$e9,$00,$00,$dd,$e9,$e9,$e9,$dd,$e9,$e9,$e9,$83,$e9
	.byte $f5,$e9,$01,$ea,$4a,$e9,$00,$00,$01,$30,$d1,$e9,$d1,$e9,$ff,$e8
	.byte $d1,$e9,$00,$10,$01,$ea,$01,$ea,$ff,$e8,$d1,$e9,$d1,$e9,$d1,$e9
	.byte $d1,$e9,$d1,$e9,$00,$7f,$83,$e9,$83,$e9,$00,$50,$00,$00,$56,$e9
	.byte $01,$ea,$01,$ea,$01,$40,$ad,$e9,$3e,$e9,$00,$50,$ad,$e9,$ad,$e9
	.byte $ad,$e9,$32,$e9,$00,$00,$00,$a0,$05,$00,$d0,$05,$00,$00,$05,$00
	.byte $30,$05,$00,$60,$00,$00,$50,$03,$00,$b0,$02,$00,$30,$02,$00,$d0
	.byte $02,$00,$10,$02,$00,$f0,$00,$02,$40,$04,$02,$c0,$04,$02,$40,$06
	.byte $02,$c0,$00,$02,$40,$04,$02,$10,$04,$02,$e0,$06,$02,$f0,$04,$02
	.byte $c0,$06,$02,$40,$04,$02,$10,$00,$04,$30,$05,$04,$a0,$05,$04,$c0
	.byte $05,$04,$30,$00,$04,$c0,$05,$04,$e0,$05,$04,$c0,$05,$04,$e0,$00
	.byte $03,$20,$05,$03,$48,$05,$03,$b8,$05,$03,$e0,$00,$03,$00,$06,$03
	.byte $e0,$02,$03,$c0,$02,$03,$40,$02,$03,$20,$00,$05,$00,$06,$05,$c0
	.byte $02,$05,$40,$02,$05,$e0,$02,$05,$20,$00,$04,$81,$0a,$04,$7f,$0a
	.byte $06,$81,$0a,$06,$7f,$0a,$04,$81,$00,$05,$a0,$02,$05,$d0,$02,$05
	.byte $00,$02,$05,$30,$02,$05,$60,$0c,$04,$60,$02,$04,$30,$02,$04,$00
	.byte $02,$04,$d0,$02,$04,$a0,$00,$05,$80,$02,$05,$80,$03,$05,$80,$04
	.byte $05,$80,$00,$04,$80,$02,$04,$80,$03,$04,$80,$04,$04,$80,$00,$03
	.byte $80,$02,$03,$80,$03,$03,$80,$04,$03,$80,$00,$02,$80,$02,$02,$80
	.byte $03,$02,$80,$04,$02,$80,$00,$00,$80,$02,$00,$80,$03,$00,$80,$04
	.byte $00,$80,$00,$04,$48,$02,$04,$40,$02,$04,$48,$02,$04,$48,$00,$04
	.byte $b8,$02,$04,$c0,$02,$04,$b8,$02,$04,$b8,$00,$08,$80,$08,$08,$80
	.byte $04,$08,$80,$02,$08,$80,$00,$08,$80,$10,$08,$80,$10,$08,$80,$08
	.byte $08,$80,$04,$08,$80,$02,$08,$80,$00

Lbl_ea13:
	lda #$07
	sta $d0
	jsr Lbl_eaa6
	ldx $d0
	stx $017b
	lda $015e
	bne Lbl_ea26
	dec $d0

Lbl_ea26:
	jsr Lbl_eaa6
	ldx $d0
	stx $017a
	rts 

Lbl_ea2f:
	ldy $17
	lda Lbl_dbe7,y
	tay 
	lda Lbl_dbfb,y
	sta $10
	lda Lbl_dc0f,y
	sta $11
	lda $015e
	beq Lbl_ea4c
	lda #$00
	sta $10
	lda #$07
	sta $11

Lbl_ea4c:
	jsr Lbl_ea13
	ldx $017b
	lda Lbl_eabe,x
	sta $2006
	lda Lbl_eac6,x
	sta $2006
	lda #$5e
	sta $2007
	ldx $017a
	lda Lbl_eabe,x
	sta $2006
	lda Lbl_eac6,x
	sta $2006
	lda #$5d
	sta $2007
	ldx #$08

Lbl_ea79:
	lda $09
	ldy $08
	jsr Lbl_d1c0
	ldy #$00

Lbl_ea82:
	lda ($10),y
	sta $2007
	iny 
	cpy #$10
	bcc Lbl_ea82
	lda $10
	clc 
	adc #$10
	sta $10
	bcc Lbl_ea97
	inc $11

Lbl_ea97:
	lda $08
	clc 
	adc #$20
	sta $08
	bcc Lbl_eaa2
	inc $09

Lbl_eaa2:
	dex 
	bne Lbl_ea79
	rts 

Lbl_eaa6:
	lda $d0
	asl a 
	asl a 
	asl a 
	asl a 
	tay 
	lda ($10),y
	ldx #$06

Lbl_eab1:
	cmp Lbl_eace,x
	beq Lbl_eabd
	dex 
	bpl Lbl_eab1
	dec $d0
	bpl Lbl_eaa6

Lbl_eabd:
	rts 

Lbl_eabe:
	.byte $21,$21,$21,$21,$21,$21,$22,$22

Lbl_eac6:
	.byte $47,$67,$87,$a7,$c7,$e7,$07,$27

Lbl_eace:
	.byte $d1,$d5,$d6,$d7,$da,$e2,$e8

Lbl_ead5:
	ldx #$00
	stx $4011
	stx $b9
	stx $c6
	dex 
	stx $b5
	stx $c2
	stx $ba
	stx $bf
	ldx #$0f
	stx $4015
	lda #$ff

Lbl_eaee:
	sta $07a3,x
	dex 
	bpl Lbl_eaee
	lda $43
	sta $bb
	rts 

Lbl_eaf9:
	tax 
	bmi Lbl_eb2c
	lda $ba
	cmp Lbl_eb4a,x
	bcs Lbl_eb04
	rts 

Lbl_eb04:
	lda Lbl_eb4a,x
	sta $ba
	cpx $b5
	bne Lbl_eb12
	cpx #$0b
	beq Lbl_eb12
	rts 

Lbl_eb12:
	stx $b5
	lda Lbl_eb7c,x
	sta $b6
	lda Lbl_eb95,x
	sta $b7
	lda Lbl_eb63,x
	sta $bf
	lda #$10
	sta $b8
	lda #$01
	sta $b9
	rts 

Lbl_eb2c:
	stx $b5
	inx 
	stx $b9
	stx $ba
	lda #$30
	sta $4000
	sta $4004
	sta $400c
	lda #$00
	sta $4008
	sta $400a
	sta $400b
	rts 

Lbl_eb4a:
	.byte $32,$28,$28,$28,$28,$23,$28,$2d,$1e,$28,$28,$28,$28,$28,$28,$28
	.byte $28,$28,$28,$23,$28,$28,$23,$23,$23

Lbl_eb63:
	.byte $00,$07,$07,$07,$03,$0f,$02,$07,$07,$03,$08,$0a,$03,$05,$01,$02
	.byte $08,$07,$07,$07,$07,$07,$07,$07,$07

Lbl_eb7c:
	.byte $00,$92,$04,$bb,$59,$77,$b8,$d4,$e5,$fc,$1a,$4e,$60,$74,$8e,$a0
	.byte $b7,$45,$94,$ff,$84,$5c,$3f,$f3,$01

Lbl_eb95:
	.byte $00,$ef,$f0,$f0,$fa,$fa,$fa,$fa,$fa,$fa,$fb,$fb,$fb,$fb,$fb,$fb
	.byte $fb,$f2,$f3,$f9,$f9,$f2,$ef,$ee,$ef

Lbl_ebae:
	tax 
	bmi Lbl_ebc6
	stx $c2
	lda Lbl_ebe2,x
	sta $c3
	lda Lbl_ebe7,x
	sta $c4
	lda #$10
	sta $c5
	lda #$01
	sta $c6
	rts 

Lbl_ebc6:
	stx $c2
	inx 
	stx $c6
	lda #$30
	sta $07b3
	sta $07b7
	sta $07bf
	lda #$00
	sta $07bb
	sta $07bd
	sta $07be
	rts 

Lbl_ebe2:
	.byte $94,$b7,$c2,$94,$94

Lbl_ebe7:
	.byte $f3,$f3,$f9,$f3,$f3

Lbl_ebec:
	lda #$c0
	sta $4017
	jsr Lbl_edd7
	jsr Lbl_fbd5
	lda $b5
	beq Lbl_ec24
	ldx $b9
	beq Lbl_ec05
	jsr Lbl_ec8c
	jmp Lbl_ec24

Lbl_ec05:
	cmp #$08
	bne Lbl_ec17
	lda $1d
	bne Lbl_ec24
	ldx #$ff
	stx $ba
	inx 
	stx $b5
	stx $bf
	rts 

Lbl_ec17:
	ldx #$ff
	stx $ba
	stx $b5
	lda $bf
	bmi Lbl_ec24
	inx 
	stx $bf

Lbl_ec24:
	lda $c2
	bmi Lbl_ec8b
	lda $bf
	and #$08
	bne Lbl_ec41
	ldx #$03

Lbl_ec30:
	lda $07bf,x
	cmp $07af,x
	beq Lbl_ec3e
	sta $400c,x
	sta $07af,x

Lbl_ec3e:
	dex 
	bpl Lbl_ec30

Lbl_ec41:
	lda $bf
	and #$04
	bne Lbl_ec5a
	ldx #$03

Lbl_ec49:
	lda $07bb,x
	cmp $07ab,x
	beq Lbl_ec57
	sta $4008,x
	sta $07ab,x

Lbl_ec57:
	dex 
	bpl Lbl_ec49

Lbl_ec5a:
	lda $bf
	and #$02
	bne Lbl_ec73
	ldx #$03

Lbl_ec62:
	lda $07b7,x
	cmp $07a7,x
	beq Lbl_ec70
	sta $4004,x
	sta $07a7,x

Lbl_ec70:
	dex 
	bpl Lbl_ec62

Lbl_ec73:
	lda $bf
	lsr a 
	bcs Lbl_ec8b
	ldx #$03

Lbl_ec7a:
	lda $07b3,x
	cmp $07a3,x
	beq Lbl_ec88
	sta $4000,x
	sta $07a3,x

Lbl_ec88:
	dex 
	bpl Lbl_ec7a

Lbl_ec8b:
	rts 

Lbl_ec8c:
	dec $b9
	beq Lbl_ec97
	rts 

Lbl_ec91:
	inc $b6
	bne Lbl_ec97
	inc $b7

Lbl_ec97:
	ldy #$00
	lda ($b6),y
	and #$c0
	beq Lbl_ecc7
	sec 
	sbc #$40
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	tax 
	lda ($b6),y
	and #$3f
	asl a 
	tay 
	lda Lbl_fe65,y
	sta $4002,x
	sta $07a5,x
	lda Lbl_fe64,y
	cmp $07a6,x
	beq Lbl_ec91
	sta $4003,x
	sta $07a6,x
	jmp Lbl_ec91

Lbl_ecc7:
	lda ($b6),y
	and #$20
	bne Lbl_ecdc
	lda ($b6),y
	sta $b9
	jsr Lbl_ecd5
	rts 

Lbl_ecd5:
	inc $b6
	bne Lbl_ecdb
	inc $b7

Lbl_ecdb:
	rts 

Lbl_ecdc:
	lda ($b6),y
	and #$10
	bne Lbl_ecf5
	lda ($b6),y
	and #$0f
	tax 
	jsr Lbl_ecd5
	lda ($b6),y
	sta $4000,x
	sta $07a3,x
	jmp Lbl_ec91

Lbl_ecf5:
	lda ($b6),y
	cmp #$3f
	bne Lbl_ed16
	ldx #$08

Lbl_ecfd:
	lda #$00
	sta $4002,x
	sta $07a5,x
	sta $4003,x
	lda #$ff
	sta $07a6,x
	dex 
	dex 
	dex 
	dex 
	bpl Lbl_ecfd
	jmp Lbl_ec91

Lbl_ed16:
	cmp #$33
	bne Lbl_ed28
	iny 
	lda ($b6),y
	tax 
	iny 
	lda ($b6),y
	stx $b6
	sta $b7
	jmp Lbl_ec97

Lbl_ed28:
	cmp #$34
	bne Lbl_ed53
	jsr Lbl_ecd5
	lda ($b6),y
	tax 
	jsr Lbl_ecd5
	lda ($b6),y
	pha 
	jsr Lbl_ecd5
	ldy $b8
	lda $b7
	sta $07c2,y
	lda $b6
	sta $07c1,y
	dec $b8
	dec $b8
	pla 
	stx $b6
	sta $b7
	jmp Lbl_ec97

Lbl_ed53:
	cmp #$35
	bne Lbl_ed6a
	inc $b8
	inc $b8
	ldy $b8
	lda $07c2,y
	sta $b7
	lda $07c1,y
	sta $b6
	jmp Lbl_ec97

Lbl_ed6a:
	cmp #$36
	bne Lbl_ed8e
	jsr Lbl_ecd5
	lda ($b6),y
	ldx $b8
	sta $07c0,x
	jsr Lbl_ecd5
	lda $b6
	sta $07c1,x
	lda $b7
	sta $07c2,x
	dec $b8
	dec $b8
	dec $b8
	jmp Lbl_ec97

Lbl_ed8e:
	cmp #$37
	bne Lbl_edaf
	ldx $b8
	dec $07c3,x
	beq Lbl_eda6
	lda $07c4,x
	sta $b6
	lda $07c5,x
	sta $b7
	jmp Lbl_ec97

Lbl_eda6:
	inc $b8
	inc $b8
	inc $b8
	jmp Lbl_ec91

Lbl_edaf:
	and #$06
	asl a 
	tax 
	jsr Lbl_ecd5
	lda ($b6),y
	bpl Lbl_edbb
	dey 

Lbl_edbb:
	clc 
	adc $07a5,x
	sta $4002,x
	sta $07a5,x
	tya 
	adc $07a6,x
	cmp $07a6,x
	beq Lbl_edd4
	sta $4003,x
	sta $07a6,x

Lbl_edd4:
	jmp Lbl_ec91

Lbl_edd7:
	lda $c6
	bne Lbl_eddc
	rts 

Lbl_eddc:
	dec $c6
	beq Lbl_ede4
	rts 

Lbl_ede1:
	jsr Lbl_ee1b

Lbl_ede4:
	ldy #$00
	lda ($c3),y
	and #$c0
	beq Lbl_ee11
	sec 
	sbc #$40
	lsr a 
	lsr a 
	lsr a 
	lsr a 
	tax 
	lda ($c3),y
	and #$3f
	asl a 
	tay 
	lda Lbl_fe65,y
	sta $07b5,x
	lda $3f
	ror a 
	ror a 
	ror a 
	ror a 
	and #$e0
	ora Lbl_fe64,y
	sta $07b6,x
	jmp Lbl_ede1

Lbl_ee11:
	lda ($c3),y
	and #$20
	bne Lbl_ee22
	lda ($c3),y
	sta $c6

Lbl_ee1b:
	inc $c3
	bne Lbl_ee21
	inc $c4

Lbl_ee21:
	rts 

Lbl_ee22:
	lda ($c3),y
	and #$10
	bne Lbl_ee38
	lda ($c3),y
	and #$0f
	tax 
	jsr Lbl_ee1b
	lda ($c3),y
	sta $07b3,x
	jmp Lbl_ede1

Lbl_ee38:
	lda ($c3),y
	cmp #$3f
	bne Lbl_ee53
	ldx #$08

Lbl_ee40:
	lda #$00
	sta $07b5,x
	lda #$ff
	sta $07b6,x
	dex 
	dex 
	dex 
	dex 
	bpl Lbl_ee40
	jmp Lbl_ede1

Lbl_ee53:
	cmp #$33
	bne Lbl_ee65
	iny 
	lda ($c3),y
	tax 
	iny 
	lda ($c3),y
	stx $c3
	sta $c4
	jmp Lbl_ede4

Lbl_ee65:
	cmp #$34
	bne Lbl_ee90
	jsr Lbl_ee1b
	lda ($c3),y
	tax 
	jsr Lbl_ee1b
	lda ($c3),y
	pha 
	jsr Lbl_ee1b
	ldy $c5
	lda $c4
	sta $07d2,y
	lda $c3
	sta $07d1,y
	dec $c5
	dec $c5
	pla 
	stx $c3
	sta $c4
	jmp Lbl_ede4

Lbl_ee90:
	cmp #$35
	bne Lbl_eea7
	inc $c5
	inc $c5
	ldy $c5
	lda $07d2,y
	sta $c4
	lda $07d1,y
	sta $c3
	jmp Lbl_ede4

Lbl_eea7:
	cmp #$36
	bne Lbl_eecb
	jsr Lbl_ee1b
	lda ($c3),y
	ldx $c5
	sta $07d0,x
	jsr Lbl_ee1b
	lda $c3
	sta $07d1,x
	lda $c4
	sta $07d2,x
	dec $c5
	dec $c5
	dec $c5
	jmp Lbl_ede4

Lbl_eecb:
	cmp #$37
	bne Lbl_eeec
	ldx $c5
	dec $07d3,x
	beq Lbl_eee3
	lda $07d4,x
	sta $c3
	lda $07d5,x
	sta $c4
	jmp Lbl_ede4

Lbl_eee3:
	inc $c5
	inc $c5
	inc $c5
	jmp Lbl_ede1

Lbl_eeec:
	and #$07
	sta $c7
	jmp Lbl_ede1

Lbl_eef3:
	.byte $20,$22,$21,$7f,$24,$22,$25,$7f,$3f,$6c,$b0,$02,$3f,$00,$20,$3e
	.byte $21,$7f,$24,$3e,$25,$7f,$28,$ff,$3f,$05,$69,$a4,$e5,$05,$3f,$02
	.byte $64,$9d,$ec,$05,$3f,$02,$69,$a4,$f3,$05,$3f,$02,$6c,$a7,$f1,$07
	.byte $69,$a4,$e5,$05,$3f,$02,$6b,$a6,$e7,$07,$6c,$a7,$e9,$04,$3f,$03
	.byte $6e,$aa,$eb,$04,$3f,$03,$70,$a8,$e9,$18,$3f,$00,$20,$3e,$21,$7f
	.byte $24,$3e,$25,$7f,$28,$ff,$3f,$6b,$a6,$ef,$03,$3f,$03,$6c,$a7,$f0
	.byte $03,$3f,$03,$6b,$a6,$ef,$03,$3f,$03,$6f,$aa,$f3,$06,$3f,$06,$6f
	.byte $aa,$f3,$03,$3f,$03,$72,$ad,$f6,$0e,$3f,$04,$70,$ab,$f4,$03,$3f
	.byte $03,$6b,$a6,$ef,$03,$3f,$03,$6d,$a8,$f1,$03,$3f,$03,$6a,$a5,$ee
	.byte $06,$3f,$06,$6b,$a6,$ef,$03,$3f,$03,$6f,$aa,$f3,$10,$3f,$00,$20
	.byte $38,$21,$7f,$24,$38,$25,$7f,$28,$ff,$3f,$5c,$93,$ce,$07,$7c,$bc
	.byte $03,$3f,$14,$5c,$93,$ce,$07,$7c,$bc,$03,$3f,$14,$5c,$93,$ce,$07
	.byte $7c,$bc,$03,$3f,$14,$5c,$93,$ce,$07,$7c,$bc,$03,$3f,$0a,$7c,$bc
	.byte $ce,$0a,$5c,$93,$da,$07,$7c,$bc,$03,$5c,$93,$da,$07,$7c,$bc,$03
	.byte $ce,$0a,$da,$0a,$5b,$92,$cc,$07,$7c,$bc,$03,$3f,$14,$5b,$92,$cc
	.byte $07,$7c,$bc,$03,$3f,$14,$5b,$92,$cc,$1b,$fc,$03,$cc,$0a,$fc,$0a
	.byte $cc,$07,$fc,$03,$cc,$0a,$d8,$0a,$7c,$bc,$cc,$0a,$cd,$0a,$33,$92
	.byte $ef,$20,$38,$21,$7f,$24,$38,$25,$7f,$28,$ff,$5f,$8f,$d8,$05,$7c
	.byte $bc,$03,$3f,$02,$5f,$8f,$d8,$05,$7c,$bc,$03,$3f,$02,$5f,$8f,$d8
	.byte $05,$7c,$bc,$03,$3f,$0c,$5e,$8e,$d7,$05,$7c,$bc,$03,$3f,$02,$5e
	.byte $8e,$d7,$05,$7c,$bc,$03,$3f,$02,$5e,$8e,$d7,$05,$7c,$bc,$03,$3f
	.byte $0c,$61,$98,$d6,$05,$7c,$bc,$03,$3f,$02,$61,$98,$d6,$05,$7c,$bc
	.byte $03,$3f,$02,$61,$98,$d6,$05,$7c,$bc,$03,$3f,$02,$60,$97,$d5,$05
	.byte $7c,$bc,$03,$3f,$02,$60,$97,$d5,$05,$7c,$bc,$03,$3f,$0c,$60,$97
	.byte $d5,$05,$7c,$bc,$03,$3f,$02,$5f,$96,$d4,$05,$7c,$bc,$03,$3f,$02
	.byte $5f,$96,$d4,$05,$7c,$bc,$03,$3f,$02,$5f,$96,$d4,$05,$7c,$bc,$03
	.byte $3f,$02,$5f,$96,$d4,$05,$7c,$bc,$03,$3f,$02,$62,$92,$d3,$05,$7c
	.byte $bc,$03,$3f,$02,$61,$91,$d2,$1f,$1f,$02,$3f,$00,$20,$3d,$21,$7f
	.byte $24,$3d,$25,$7f,$28,$ff,$3f,$00,$20,$2f,$21,$7f,$24,$2f,$25,$7f
	.byte $28,$ff,$34,$f4,$f0,$20,$33,$24,$33,$34,$57,$f1,$34,$3e,$f1,$34
	.byte $60,$f1,$20,$2f,$24,$2f,$34,$6b,$f1,$34,$3c,$f1,$20,$33,$24,$33
	.byte $34,$57,$f1,$34,$3e,$f1,$34,$60,$f1,$20,$2f,$24,$2f,$34,$b4,$f1
	.byte $00,$65,$9c,$d9,$07,$fc,$03,$d9,$07,$fc,$03,$db,$07,$fc,$03,$d9
	.byte $07,$3f,$03,$63,$9a,$d7,$07,$fc,$03,$d7,$07,$fc,$03,$d9,$07,$fc
	.byte $03,$d7,$07,$3f,$03,$61,$98,$d5,$07,$fc,$03,$d5,$07,$fc,$03,$d7
	.byte $07,$fc,$03,$d5,$07,$3f,$03,$5f,$96,$d3,$07,$fc,$03,$d3,$07,$fc
	.byte $03,$d5,$07,$fc,$03,$d3,$07,$3f,$03,$5d,$94,$d1,$07,$fc,$03,$d1
	.byte $07,$fc,$03,$d4,$07,$fc,$03,$d8,$07,$fc,$03,$db,$07,$fc,$03,$d8
	.byte $07,$fc,$03,$35,$da,$07,$fc,$03,$d8,$07,$fc,$03,$35,$7c,$bc,$da
	.byte $07,$fc,$03,$d8,$07,$fc,$03,$35,$65,$9c,$d9,$07,$fc,$03,$d9,$07
	.byte $fc,$03,$dc,$07,$fc,$03,$e0,$07,$3f,$03,$63,$9a,$d7,$07,$fc,$03
	.byte $d7,$07,$fc,$03,$da,$07,$fc,$03,$de,$07,$3f,$03,$61,$98,$d5,$07
	.byte $fc,$03,$d5,$07,$fc,$03,$d8,$07,$fc,$03,$dc,$07,$3f,$03,$5f,$96
	.byte $d3,$07,$fc,$03,$d3,$07,$fc,$03,$d6,$07,$fc,$03,$da,$07,$3f,$03
	.byte $35,$7c,$bc,$d2,$1a,$fc,$04,$d2,$07,$fc,$0d,$d2,$07,$fc,$03,$d2
	.byte $07,$fc,$03,$d2,$07,$fc,$03,$d2,$07,$fc,$03,$d2,$07,$fc,$03,$d4
	.byte $07,$fc,$03,$d2,$15,$65,$a1,$ec,$05,$3f,$05,$65,$a1,$ec,$05,$3f
	.byte $05,$65,$a1,$ec,$05,$3f,$05,$d3,$1a,$fc,$04,$d3,$07,$fc,$0d,$d3
	.byte $07,$fc,$03,$d3,$07,$fc,$03,$d3,$07,$fc,$03,$d3,$07,$fc,$03,$d3
	.byte $07,$fc,$03,$d5,$07,$fc,$03,$d3,$15,$66,$a2,$ee,$05,$3f,$05,$66
	.byte $a2,$ee,$05,$3f,$05,$66,$a2,$ee,$05,$3f,$05,$65,$a1,$de,$10,$3f
	.byte $04,$68,$98,$dc,$10,$3f,$04,$69,$a6,$da,$07,$3f,$03,$6d,$a8,$d9
	.byte $07,$3f,$03,$6f,$9d,$d8,$07,$3f,$03,$70,$a5,$d6,$10,$10,$10,$10
	.byte $3f,$35,$20,$38,$21,$7f,$24,$38,$25,$7f,$28,$ff,$34,$60,$f2,$34
	.byte $a7,$f2,$34,$60,$f2,$34,$b7,$f2,$00,$34,$74,$f3,$00,$6b,$a6,$d6
	.byte $06,$7c,$bc,$02,$da,$08,$69,$a6,$dc,$06,$7c,$bc,$02,$6b,$a6,$dd
	.byte $06,$7c,$bc,$02,$dc,$08,$69,$a6,$dd,$08,$d6,$08,$da,$08,$dc,$08
	.byte $dd,$08,$dc,$08,$dd,$08,$6c,$a5,$cf,$06,$7c,$bc,$02,$d3,$08,$6b
	.byte $a5,$d5,$06,$7c,$bc,$02,$6c,$a5,$d6,$06,$7c,$bc,$02,$d5,$08,$6b
	.byte $a5,$d6,$08,$35,$6b,$a5,$cf,$08,$d3,$08,$d5,$08,$69,$d6,$08,$d5
	.byte $08,$d6,$08,$35,$6b,$a5,$cf,$08,$d4,$08,$69,$d5,$08,$d6,$08,$65
	.byte $9f,$d5,$08,$d6,$08,$64,$9a,$06,$7c,$bc,$02,$da,$08,$62,$9a,$dc
	.byte $06,$7c,$bc,$02,$64,$9a,$dd,$06,$7c,$bc,$02,$dc,$08,$62,$9a,$dd
	.byte $08,$d6,$08,$da,$08,$dc,$08,$7c,$bc,$dd,$08,$dc,$08,$dd,$08,$64
	.byte $9a,$d3,$06,$7c,$bc,$02,$d6,$08,$62,$9a,$d9,$06,$7c,$bc,$02,$64
	.byte $9a,$da,$06,$7c,$bc,$02,$d9,$08,$62,$9a,$da,$08,$d3,$08,$d6,$08
	.byte $d9,$08,$7c,$bc,$da,$08,$d9,$08,$da,$08,$cf,$08,$d3,$08,$65,$9b
	.byte $d5,$08,$d6,$08,$d5,$08,$d6,$08,$64,$cf,$06,$7c,$bc,$02,$d3,$08
	.byte $62,$9f,$d5,$06,$7c,$bc,$02,$5f,$9b,$d6,$06,$7c,$bc,$02,$d5,$08
	.byte $5a,$96,$d6,$06,$7c,$bc,$02,$5d,$98,$d1,$08,$d5,$04,$7c,$bc,$04
	.byte $5d,$98,$d7,$08,$d8,$08,$d7,$08,$d8,$08,$d1,$08,$d5,$08,$d8,$08
	.byte $51,$bc,$dd,$06,$3f,$02,$4f,$db,$06,$3f,$02,$4d,$d9,$06,$3f,$02
	.byte $35,$64,$9a,$d6,$06,$7c,$bc,$02,$3f,$08,$62,$9a,$d6,$06,$3f,$02
	.byte $64,$9a,$d6,$06,$7c,$bc,$02,$3f,$08,$62,$9a,$d6,$1e,$1e,$14,$3f
	.byte $35,$20,$66,$21,$7f,$24,$2c,$25,$7f,$28,$ff,$2c,$10,$38,$3f,$34
	.byte $fa,$f3,$34,$37,$f4,$34,$fa,$f3,$34,$9a,$f4,$34,$f3,$f4,$34,$f3
	.byte $f4,$33,$94,$f3,$20,$66,$21,$7f,$24,$2c,$25,$7f,$28,$ff,$2c,$10
	.byte $38,$3f,$34,$fa,$f3,$34,$37,$f4,$34,$fa,$f3,$34,$9a,$f4,$34,$f3
	.byte $f4,$34,$f3,$f4,$3a,$20,$bc,$34,$23,$f6,$34,$a4,$f6,$20,$7c,$34
	.byte $bd,$f7,$38,$20,$66,$34,$e8,$f8,$34,$fa,$f3,$34,$37,$f4,$34,$f3
	.byte $f4,$34,$f3,$f4,$33,$b7,$f3,$58,$8c,$05,$bc,$05,$8c,$05,$bc,$05
	.byte $59,$8c,$05,$bc,$05,$57,$8c,$05,$bc,$05,$58,$8a,$05,$bc,$05,$59
	.byte $8a,$05,$bc,$05,$57,$93,$05,$bc,$05,$58,$8a,$05,$bc,$05,$58,$88
	.byte $05,$7c,$bc,$05,$58,$88,$05,$bc,$05,$59,$91,$05,$bc,$05,$57,$88
	.byte $05,$bc,$05,$35,$58,$85,$05,$bc,$05,$59,$94,$05,$bc,$05,$57,$85
	.byte $05,$bc,$05,$58,$85,$05,$bc,$05,$80,$05,$7c,$bc,$05,$58,$80,$05
	.byte $bc,$05,$5c,$8c,$05,$bc,$05,$5c,$80,$05,$bc,$05,$5f,$90,$05,$bc
	.byte $05,$5f,$80,$05,$bc,$05,$62,$83,$05,$bc,$05,$84,$05,$7c,$bc,$05
	.byte $62,$85,$05,$bc,$05,$61,$85,$05,$bc,$05,$5d,$85,$05,$7c,$bc,$05
	.byte $5d,$91,$05,$bc,$05,$8e,$05,$bc,$05,$8c,$05,$7c,$bc,$05,$8f,$05
	.byte $bc,$05,$8b,$05,$bc,$05,$35,$58,$85,$05,$bc,$05,$5d,$94,$05,$bc
	.byte $05,$60,$8c,$05,$bc,$05,$64,$85,$05,$bc,$05,$63,$87,$05,$7c,$bc
	.byte $05,$63,$93,$05,$7c,$bc,$05,$63,$87,$05,$7c,$bc,$05,$62,$8c,$0f
	.byte $7c,$bc,$05,$62,$80,$05,$bc,$05,$83,$05,$bc,$05,$84,$05,$bc,$05
	.byte $61,$85,$05,$bc,$05,$5d,$8f,$05,$bc,$05,$90,$05,$bc,$05,$7c,$91
	.byte $0f,$bc,$05,$89,$05,$bc,$05,$8a,$05,$bc,$05,$8b,$05,$bc,$05,$35
	.byte $7c,$8c,$05,$bc,$05,$58,$8c,$05,$bc,$05,$5c,$8c,$05,$bc,$05,$60
	.byte $8c,$05,$bc,$05,$64,$8c,$05,$bc,$05,$68,$8c,$05,$bc,$05,$6c,$8c
	.byte $05,$bc,$05,$70,$90,$05,$7c,$bc,$05,$8c,$05,$bc,$05,$8c,$05,$bc
	.byte $05,$70,$96,$05,$7c,$bc,$05,$8c,$05,$bc,$05,$8c,$05,$bc,$05,$70
	.byte $98,$05,$7c,$bc,$05,$8c,$05,$bc,$05,$8b,$05,$bc,$05,$8a,$05,$bc
	.byte $05,$58,$8a,$05,$bc,$05,$5c,$8a,$05,$bc,$05,$60,$8a,$05,$bc,$05
	.byte $64,$8a,$05,$bc,$05,$68,$8a,$05,$bc,$05,$6c,$8a,$05,$bc,$05,$70
	.byte $90,$05,$bc,$05,$7c,$8a,$05,$bc,$05,$8a,$05,$bc,$05,$70,$94,$05
	.byte $7c,$bc,$05,$8a,$05,$bc,$05,$8a,$05,$bc,$05,$70,$98,$05,$7c,$bc
	.byte $05,$8a,$05,$bc,$05,$89,$05,$bc,$05,$88,$05,$bc,$05,$58,$88,$05
	.byte $bc,$05,$5d,$88,$05,$bc,$05,$60,$88,$05,$bc,$05,$64,$88,$05,$bc
	.byte $05,$69,$88,$05,$bc,$05,$6c,$88,$05,$bc,$05,$70,$88,$05,$bc,$05
	.byte $7c,$88,$05,$bc,$05,$88,$05,$bc,$05,$70,$94,$05,$7c,$bc,$05,$88
	.byte $05,$bc,$05,$88,$05,$bc,$05,$70,$98,$05,$7c,$bc,$05,$88,$05,$bc
	.byte $05,$87,$05,$bc,$05,$86,$05,$bc,$05,$70,$86,$05,$bc,$05,$6e,$96
	.byte $05,$bc,$05,$68,$86,$05,$bc,$05,$70,$96,$05,$bc,$05,$6e,$86,$05
	.byte $bc,$05,$68,$86,$05,$bc,$05,$70,$86,$05,$bc,$05,$7c,$85,$05,$bc
	.byte $05,$70,$95,$05,$bc,$05,$8f,$05,$bc,$05,$85,$05,$7c,$bc,$05,$95
	.byte $05,$bc,$05,$89,$05,$bc,$05,$8a,$05,$bc,$05,$8b,$05,$bc,$05,$35
	.byte $52,$36,$04,$8c,$05,$bc,$05,$37,$5b,$36,$04,$8c,$05,$bc,$05,$37
	.byte $5a,$36,$04,$8b,$05,$bc,$05,$37,$51,$36,$04,$8b,$05,$bc,$05,$37
	.byte $50,$36,$04,$8a,$05,$bc,$05,$37,$59,$36,$04,$8a,$05,$bc,$05,$37
	.byte $58,$36,$04,$89,$05,$bc,$05,$37,$51,$36,$04,$89,$05,$bc,$05,$37
	.byte $53,$36,$04,$8c,$05,$bc,$05,$37,$5f,$36,$04,$8c,$05,$bc,$05,$37
	.byte $5e,$36,$04,$8b,$05,$bc,$05,$37,$52,$36,$04,$8b,$05,$bc,$05,$37
	.byte $51,$36,$04,$8a,$05,$bc,$05,$37,$5d,$36,$04,$8a,$05,$bc,$05,$37
	.byte $5c,$36,$04,$89,$05,$bc,$05,$37,$50,$36,$04,$89,$05,$bc,$05,$37
	.byte $35,$5d,$85,$05,$bc,$05,$85,$05,$bc,$05,$5f,$85,$05,$bc,$05,$60
	.byte $85,$05,$bc,$05,$85,$05,$bc,$05,$5f,$85,$05,$bc,$05,$5d,$85,$05
	.byte $bc,$05,$64,$88,$05,$bc,$05,$63,$87,$05,$bc,$05,$87,$05,$bc,$05
	.byte $5d,$8e,$05,$bc,$05,$63,$87,$05,$bc,$05,$87,$05,$bc,$05,$93,$05
	.byte $bc,$05,$8e,$05,$7c,$bc,$05,$8d,$05,$bc,$05,$5c,$8c,$05,$bc,$05
	.byte $8c,$05,$bc,$05,$5d,$8c,$05,$bc,$05,$5f,$8c,$05,$bc,$05,$8c,$05
	.byte $bc,$05,$5d,$8c,$05,$bc,$05,$5c,$8c,$05,$bc,$05,$62,$86,$05,$bc
	.byte $05,$61,$85,$05,$bc,$05,$85,$05,$bc,$05,$5b,$8c,$05,$bc,$05,$61
	.byte $85,$05,$bc,$05,$86,$05,$bc,$05,$91,$05,$bc,$05,$8c,$05,$7c,$bc
	.byte $05,$8b,$05,$bc,$05,$5a,$8a,$05,$bc,$05,$8a,$05,$bc,$05,$5b,$8a
	.byte $05,$bc,$05,$5d,$8a,$05,$bc,$05,$8a,$05,$bc,$05,$5b,$8a,$05,$bc
	.byte $05,$5a,$91,$05,$bc,$05,$60,$8a,$05,$bc,$05,$5f,$83,$05,$bc,$05
	.byte $83,$05,$bc,$05,$59,$8a,$05,$bc,$05,$5f,$83,$05,$bc,$05,$83,$05
	.byte $bc,$05,$8f,$05,$bc,$05,$8a,$05,$7c,$bc,$05,$64,$89,$05,$bc,$05
	.byte $58,$88,$05,$bc,$05,$88,$05,$bc,$05,$5a,$92,$05,$bc,$05,$88,$05
	.byte $bc,$05,$5b,$88,$05,$bc,$05,$5d,$92,$05,$bc,$05,$88,$05,$bc,$05
	.byte $5a,$88,$05,$bc,$05,$87,$05,$bc,$05,$87,$05,$bc,$05,$93,$05,$bc
	.byte $05,$87,$05,$bc,$05,$87,$05,$bc,$05,$35,$57,$93,$05,$bc,$05,$58
	.byte $8e,$05,$bc,$05,$5a,$8d,$05,$bc,$05,$5c,$8c,$05,$bc,$05,$8c,$05
	.byte $bc,$05,$5f,$90,$05,$bc,$05,$8c,$05,$bc,$05,$62,$8c,$05,$bc,$05
	.byte $65,$96,$05,$bc,$05,$93,$05,$bc,$05,$64,$90,$05,$bc,$05,$85,$05
	.byte $bc,$05,$5b,$85,$05,$bc,$05,$8c,$05,$bc,$05,$85,$05,$bc,$05,$85
	.byte $05,$bc,$05,$91,$05,$bc,$05,$8c,$05,$7c,$bc,$05,$8b,$05,$bc,$05
	.byte $5a,$8a,$05,$bc,$05,$8a,$05,$bc,$05,$5d,$8e,$05,$bc,$05,$8a,$05
	.byte $bc,$05,$60,$8a,$05,$bc,$05,$63,$94,$05,$bc,$05,$91,$05,$bc,$05
	.byte $62,$8e,$05,$bc,$05,$83,$05,$bc,$05,$59,$83,$05,$bc,$05,$8a,$05
	.byte $bc,$05,$83,$05,$bc,$05,$83,$05,$bc,$05,$8f,$05,$bc,$05,$8a,$05
	.byte $7c,$bc,$05,$89,$05,$bc,$05,$58,$88,$05,$bc,$05,$88,$05,$bc,$05
	.byte $5b,$8c,$05,$bc,$05,$88,$05,$bc,$05,$5e,$88,$05,$bc,$05,$61,$92
	.byte $05,$bc,$05,$8f,$05,$bc,$05,$60,$8c,$05,$bc,$05,$81,$05,$bc,$05
	.byte $57,$81,$05,$bc,$05,$88,$05,$bc,$05,$81,$05,$bc,$05,$81,$05,$bc
	.byte $05,$8d,$05,$bc,$05,$88,$05,$7c,$bc,$05,$87,$05,$bc,$05,$56,$86
	.byte $05,$bc,$05,$86,$05,$bc,$05,$58,$8d,$05,$bc,$05,$86,$05,$bc,$05
	.byte $59,$86,$05,$bc,$05,$5b,$86,$05,$bc,$05,$96,$05,$bc,$05,$58,$86
	.byte $05,$bc,$05,$85,$05,$bc,$05,$85,$05,$bc,$05,$8f,$05,$bc,$05,$85
	.byte $05,$bc,$05,$85,$05,$bc,$05,$91,$05,$bc,$05,$8c,$05,$7c,$bc,$05
	.byte $8b,$05,$bc,$05,$35,$56,$8a,$05,$bc,$05,$8a,$05,$bc,$05,$57,$8a
	.byte $05,$bc,$05,$55,$8a,$05,$bc,$05,$56,$88,$05,$bc,$05,$57,$88,$05
	.byte $bc,$05,$55,$91,$05,$bc,$05,$56,$88,$05,$bc,$05,$7c,$86,$05,$bc
	.byte $05,$56,$86,$05,$bc,$05,$57,$8f,$05,$bc,$05,$55,$86,$05,$bc,$05
	.byte $56,$83,$05,$bc,$05,$57,$86,$05,$bc,$05,$55,$83,$05,$bc,$05,$56
	.byte $83,$05,$bc,$05,$8a,$05,$7c,$bc,$05,$56,$8a,$05,$bc,$05,$5a,$8a
	.byte $05,$bc,$05,$8a,$05,$bc,$05,$5d,$94,$05,$bc,$05,$8a,$05,$bc,$05
	.byte $60,$8d,$05,$bc,$05,$8e,$05,$7c,$bc,$05,$60,$83,$05,$bc,$05,$5f
	.byte $83,$05,$bc,$05,$5b,$83,$05,$7c,$bc,$05,$5b,$8f,$05,$bc,$05,$8c
	.byte $05,$bc,$05,$8a,$05,$bc,$05,$8f,$05,$7c,$bc,$05,$8a,$05,$bc,$05
	.byte $35,$20,$7f,$21,$7f,$24,$3f,$25,$7f,$28,$ff,$3f,$cc,$0a,$50,$0a
	.byte $54,$fc,$0a,$58,$94,$cc,$0a,$5c,$98,$fc,$0a,$60,$9c,$cc,$0a,$64
	.byte $a0,$d0,$0a,$68,$a4,$0a,$6c,$a8,$d1,$08,$3f,$02,$6c,$a8,$d1,$0a
	.byte $3f,$0a,$6c,$a8,$d1,$0a,$3f,$0a,$6c,$a8,$d1,$1e,$12,$3f,$00,$20
	.byte $3f,$21,$7f,$24,$3f,$25,$7f,$5d,$85,$05,$bc,$05,$85,$05,$bc,$05
	.byte $60,$85,$05,$bc,$05,$5d,$85,$05,$bc,$05,$64,$85,$05,$bc,$05,$60
	.byte $87,$05,$bc,$05,$69,$88,$05,$bc,$05,$68,$8c,$05,$bc,$0f,$8c,$05
	.byte $bc,$05,$8c,$05,$bc,$05,$8c,$1e,$14,$7c,$bc,$00,$20,$3f,$21,$7f
	.byte $24,$3f,$25,$7f,$28,$ff,$2c,$30,$6c,$a9,$f1,$02,$6b,$a8,$f0,$02
	.byte $6a,$a7,$ef,$02,$69,$a6,$ee,$02,$68,$a5,$ed,$02,$67,$a4,$ec,$02
	.byte $66,$a3,$eb,$02,$64,$a1,$e9,$02,$5b,$97,$e0,$02,$5c,$98,$e1,$02
	.byte $5d,$99,$e2,$02,$5e,$9a,$e3,$02,$5f,$9b,$e4,$02,$60,$9c,$e5,$02
	.byte $61,$9d,$e6,$02,$62,$9e,$e7,$02,$63,$9f,$e8,$02,$64,$a0,$e9,$02
	.byte $65,$a1,$ea,$02,$3f,$00,$20,$9f,$21,$7f,$24,$9d,$25,$7f,$6e,$ac
	.byte $01,$6f,$ad,$01,$6e,$aa,$01,$6d,$ab,$01,$6c,$aa,$01,$23,$28,$27
	.byte $28,$2c,$30,$00,$20,$b0,$24,$b0,$28,$00,$2f,$08,$2c,$3c,$2e,$0f
	.byte $05,$2c,$30,$01,$2c,$3f,$08,$2c,$3e,$08,$2c,$3d,$08,$2c,$3c,$08
	.byte $2c,$3b,$08,$2c,$3a,$08,$2c,$39,$08,$2c,$38,$08,$2c,$37,$08,$2c
	.byte $36,$08,$2c,$35,$08,$2c,$34,$08,$2c,$33,$08,$2c,$32,$08,$2c,$31
	.byte $08,$2c,$30,$08,$00,$24,$3f,$25,$7f,$36,$03,$36,$08,$9e,$01,$3a
	.byte $04,$01,$37,$bc,$1e,$12,$37,$36,$20,$aa,$01,$3a,$01,$01,$37,$bc
	.byte $00,$24,$3f,$25,$7f,$9e,$01,$bc,$9d,$01,$bc,$9f,$01,$bc,$a5,$01
	.byte $bc,$00,$3f,$2c,$30,$20,$3f,$70,$05,$6b,$05,$70,$05,$6b,$05,$70
	.byte $05,$6b,$05,$70,$05,$6b,$0a,$3f,$00,$20,$9f,$21,$7f,$24,$9d,$25
	.byte $7f,$73,$b1,$01,$74,$b2,$01,$73,$af,$01,$72,$b0,$01,$71,$af,$01
	.byte $23,$28,$27,$28,$2c,$30,$00,$24,$b0,$2f,$08,$2c,$3c,$2e,$0f,$05
	.byte $2c,$30,$01,$2c,$3f,$04,$2c,$3e,$04,$2c,$3d,$04,$2c,$3c,$04,$2c
	.byte $3b,$04,$2c,$3a,$04,$2c,$39,$04,$2c,$38,$04,$2c,$37,$04,$2c,$36
	.byte $04,$2c,$35,$04,$2c,$34,$04,$2c,$30,$04,$00,$24,$af,$25,$91,$2c
	.byte $2f,$2e,$0a,$2f,$ff,$26,$0f,$27,$00,$1f,$2c,$30,$00,$20,$8f,$21
	.byte $7f,$24,$8f,$25,$7f,$6d,$ba,$02,$70,$26,$32,$27,$00,$0a,$2c,$30
	.byte $00,$20,$9f,$21,$7f,$3f,$51,$da,$01,$50,$d9,$01,$4f,$d8,$01,$4d
	.byte $e2,$01,$4b,$d3,$01,$49,$cf,$01,$2c,$30,$00,$20,$9e,$21,$7f,$24
	.byte $9d,$25,$7f,$64,$01,$66,$01,$64,$01,$68,$01,$3f,$00,$20,$9f,$21
	.byte $7f,$24,$9d,$25,$7f,$58,$9f,$05,$3f,$01,$5a,$a1,$05,$3f,$01,$5b
	.byte $a2,$05,$3f,$00,$2c,$23,$2e,$08,$2f,$ff,$05,$2c,$30,$00,$2c,$22
	.byte $2e,$06,$2f,$ff,$03,$2c,$30,$00,$2c,$30,$24,$af,$25,$7f,$b0,$04
	.byte $3f,$00

Lbl_fbd5:
	inc $bb
	ldx $bb
	cpx #$03
	bcc Lbl_fbe1
	ldx #$00
	stx $bb

Lbl_fbe1:
	lda $43
	clc 
	adc Lbl_fc23,x
	tax 
	cpx #$b4
	bcc Lbl_fbee
	ldx #$b4

Lbl_fbee:
	lda $47
	beq Lbl_fbf8
	lda #$00
	sta $07bb
	rts 

Lbl_fbf8:
	lda Lbl_fc64,x
	sec 
	sbc Lbl_fc65,x
	jsr Lbl_fc4b
	lda #$ff
	sta $07bb
	lda Lbl_fc64,x
	sec 
	sbc $bd
	tay 
	lda Lbl_fd64,x
	sbc #$00
	lsr a 
	php 
	sta $07be
	plp 
	tya 
	ror a 
	sta $07bd
	lda $c0
	bne Lbl_fc26
	rts 

Lbl_fc23:
	.byte $00,$01,$02

Lbl_fc26:
	lda $4a
	bne Lbl_fc2b
	rts 

Lbl_fc2b:
	lda $07a6
	sta $4003
	lda $07be
	sta $400b
	lda #$00
	sta $400c
	lda #$0e
	sta $400e
	lda #$88
	sta $400f
	lda #$07
	jmp Lbl_eaf9

Lbl_fc4b:
	sta $bd
	lda $40
	and #$03
	tay 
	lsr $bd
	lsr $bd
	lda $bd

Lbl_fc58:
	dey 
	bmi Lbl_fc61
	clc 
	adc $bd
	jmp Lbl_fc58

Lbl_fc61:
	sta $bd
	rts 

Lbl_fc64:
	.byte $7e

Lbl_fc65:
	.byte $63,$48,$2d,$12,$f8,$df,$c6,$ad,$94,$7c,$64,$4d,$36,$1f,$08,$f2
	.byte $dc,$c7,$b2,$9d,$88,$74,$60,$4c,$38,$25,$12,$00,$ed,$db,$c9,$b8
	.byte $a6,$95,$85,$74,$64,$53,$44,$34,$24,$15,$06,$f7,$e9,$da,$cc,$be
	.byte $b1,$a3,$96,$88,$7b,$6f,$62,$56,$49,$3d,$31,$26,$1a,$0f,$03,$f8
	.byte $ed,$e3,$d8,$ce,$c3,$b9,$af,$a5,$9b,$92,$88,$7f,$76,$6d,$64,$5b
	.byte $52,$4a,$42,$39,$31,$29,$21,$19,$11,$0a,$02,$fb,$f4,$ec,$e5,$de
	.byte $d8,$d1,$ca,$c3,$bd,$b7,$b0,$aa,$a4,$9e,$98,$92,$8c,$87,$81,$7b
	.byte $76,$71,$6b,$66,$61,$5c,$57,$52,$4d,$48,$43,$3f,$3a,$36,$31,$2d
	.byte $28,$24,$20,$1c,$18,$14,$10,$0c,$08,$04,$00,$fd,$f9,$f5,$f2,$ee
	.byte $eb,$e8,$e4,$e1,$de,$db,$d7,$d4,$d1,$ce,$cb,$c8,$c5,$c3,$c0,$bd
	.byte $ba,$b8,$b5,$b2,$b0,$ad,$ab,$a8,$a6,$a3,$a1,$9f,$9c,$9a,$98,$96
	.byte $93,$91,$8f,$8d,$8b,$89,$87,$85,$83,$81,$7f,$7e,$7c,$7a,$78,$76
	.byte $75,$73,$71,$70,$6e,$6d,$6b,$69,$68,$66,$65,$63,$62,$61,$5f,$5e
	.byte $5c,$5b,$5a,$58,$57,$56,$55,$53,$52,$51,$50,$4f,$4d,$4c,$4b,$4a
	.byte $49,$48,$47,$46,$45,$44,$43,$42,$41,$40,$3f,$3e,$3d,$3c,$3b,$3a
	.byte $3a,$39,$38,$37,$36,$36,$35,$34,$33,$32,$32,$31,$30,$30,$2f

Lbl_fd64:
	.byte $07,$07,$07,$07,$07,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06
	.byte $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$04,$04,$04
	.byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$03,$03,$03,$03
	.byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
	.byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01
	.byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

Lbl_fe64:
	.byte $06

Lbl_fe65:
	.byte $ae,$06,$4e,$05,$f3,$05,$9e,$05,$4d,$05,$01,$04,$b9,$04,$75,$04
	.byte $35,$03,$f8,$03,$bf,$03,$89,$03,$57,$03,$27,$02,$f9,$02,$cf,$02
	.byte $a6,$02,$80,$02,$5c,$02,$3a,$02,$1a,$01,$fc,$01,$df,$01,$c4,$01
	.byte $ab,$01,$93,$01,$7c,$01,$67,$01,$52,$01,$3f,$01,$2d,$01,$1c,$01
	.byte $0c,$00,$fd,$00,$ee,$00,$e1,$00,$d4,$00,$c8,$00,$bd,$00,$b2,$00
	.byte $a8,$00,$9f,$00,$96,$00,$8d,$00,$85,$00,$7e,$00,$76,$00,$70,$00
	.byte $69,$00,$63,$00,$5e,$00,$58,$00,$53,$00,$4f,$00,$4a,$00,$46,$00
	.byte $42,$00,$3e,$00,$3c,$00,$24,$00,$00,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
	.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Lbl_ff00:
	dey 
	bne Lbl_ff00
	rts 

Lbl_ff04:
	.byte $00

Lbl_ff05:
	.byte $80,$80,$00

Lbl_ff08:
	.byte $03

Lbl_ff09:
	.byte $03,$04,$03

Lbl_ff0c:
	lda #$90
	sta $2000
	ldy $21
	lda Lbl_ff04,y
	sta $26
	sta $0515
	lda Lbl_ff08,y
	sta $27
	sta $0516
	lda Lbl_ff05,y
	sta $0518
	sta $10
	lda Lbl_ff09,y
	sta $0519
	sta $11
	lda $46
	cmp #$01
	bne Lbl_ff3e
	lda #$05
	jsr Lbl_eaf9

Lbl_ff3e:
	lda $6d
	cmp #$01
	beq Lbl_ff4b
	lda $1d
	bne Lbl_ff4b
	jsr Lbl_ebec

Lbl_ff4b:
	lda #$00
	sta $08
	sta $09
	ldy #$01
	lda ($10),y
	eor #$80
	sta $0b
	and #$04
	sta $0a
	lda $06
	beq Lbl_ff6c

Lbl_ff61:
	lda $2002
	and #$40
	beq Lbl_ff61
	nop 
	nop 
	nop 
	nop 

Lbl_ff6c:
	ldx #$01

Lbl_ff6e:
	jsr $0500
	lda $08
	nop 
	nop 
	nop 
	cpx #$3a
	bcc Lbl_ff6e
	jsr $0500

Lbl_ff7d:
	jsr $0500
	lda $08
	nop 
	nop 
	nop 
	cpx #$60
	bcc Lbl_ff7d
	jsr $0500

Lbl_ff8c:
	jsr $0500
	lda $08
	nop 
	nop 
	nop 
	cpx #$80
	bcc Lbl_ff8c
	rts 

Lbl_ff99:
	.byte $a5,$08,$18,$65,$37,$85,$08,$a5,$09,$65,$38,$85,$09,$18,$69,$3e
	.byte $38,$fd,$00,$04,$9d,$00,$03,$bd,$00,$03,$a8,$29,$04,$c5,$0a,$85
	.byte $0a,$d0,$1d,$98,$45,$0b,$30,$14,$ea,$ea,$98,$0a,$8d,$05,$20,$a9
	.byte $00,$8d,$05,$20,$84,$0b,$ea,$ea,$84,$0b,$e8,$60,$98,$4c,$e6,$ff
	.byte $98,$c5,$0b,$b0,$05,$29,$fc,$4c,$e6,$ff,$09,$03,$ea,$0a,$8d,$05
	.byte $20,$a9,$00,$8d,$05,$20,$65,$05,$8d,$00,$20,$84,$0b,$e8,$60,$ff
	.byte $ff

.segment "VECTORS"

	.word $8070
	.word $8000
	.word $8147
