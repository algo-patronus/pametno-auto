	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"pwm.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	pwm_set_duty
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	pwm_set_duty, %function
pwm_set_duty:
.LFB110:
	.file 1 "pwm.c"
	.loc 1 3 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 4 0
	ldr	r3, .L3
	str	r0, [r3, #52]
	.loc 1 5 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073742848
	.cfi_endproc
.LFE110:
	.size	pwm_set_duty, .-pwm_set_duty
	.align	1
	.p2align 2,,3
	.global	pwm_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	pwm_init, %function
pwm_init:
.LFB111:
	.loc 1 7 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1:
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 8 0
	ldr	r4, .L7
	.loc 1 9 0
	ldr	r0, .L7+4
.LVL2:
	.loc 1 8 0
	ldr	r3, [r4, #48]
	orr	r3, r3, #4
	str	r3, [r4, #48]
	.loc 1 9 0
	ldr	r3, [r0]
	lsls	r5, r1, #1
	movs	r1, #2
.LVL3:
	lsls	r1, r1, r5
	orrs	r1, r1, r3
	str	r1, [r0]
	.loc 1 10 0
	ldr	r3, [r0, #4]
	str	r3, [r0, #4]
	.loc 1 11 0
	ldr	r1, [r0, #32]
	.loc 1 14 0
	ldr	r3, .L7+8
	.loc 1 11 0
	orr	r1, r1, #33554432
	str	r1, [r0, #32]
	.loc 1 13 0
	ldr	r1, [r4, #64]
	.loc 1 14 0
	movs	r5, #83
	.loc 1 13 0
	orr	r1, r1, #2
	.loc 1 15 0
	movw	r0, #20000
	.loc 1 13 0
	str	r1, [r4, #64]
	.loc 1 14 0
	strh	r5, [r3, #40]	@ movhi
	.loc 1 15 0
	str	r0, [r3, #44]
	.loc 1 17 0
	str	r2, [r3, #52]
	.loc 1 19 0
	ldrh	r2, [r3, #24]
.LVL4:
	orr	r2, r2, #104
	strh	r2, [r3, #24]	@ movhi
	.loc 1 20 0
	ldrh	r2, [r3, #24]
	orr	r2, r2, #26624
	strh	r2, [r3, #24]	@ movhi
	.loc 1 21 0
	ldrh	r2, [r3, #28]
	orr	r2, r2, #104
	strh	r2, [r3, #28]	@ movhi
	.loc 1 22 0
	ldrh	r2, [r3, #28]
	orr	r2, r2, #26624
	strh	r2, [r3, #28]	@ movhi
	.loc 1 23 0
	ldrh	r2, [r3, #24]
	orr	r2, r2, #104
	strh	r2, [r3, #24]	@ movhi
	.loc 1 25 0
	ldrh	r2, [r3, #32]
	bic	r2, r2, #2
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #32]	@ movhi
	.loc 1 26 0
	ldrh	r2, [r3]
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 27 0
	ldrh	r2, [r3, #20]
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 28 0
	ldrh	r2, [r3, #32]
	orr	r2, r2, #4352
	orr	r2, r2, #17
	strh	r2, [r3, #32]	@ movhi
	.loc 1 29 0
	ldrh	r2, [r3]
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 30 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L8:
	.align	2
.L7:
	.word	1073887232
	.word	1073874944
	.word	1073742848
	.cfi_endproc
.LFE111:
	.size	pwm_init, .-pwm_init
.Letext0:
	.file 2 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../sdk/core_cm4.h"
	.file 5 "../sdk/system_stm32f4xx.h"
	.file 6 "../sdk/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x588
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.4byte	0x45
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x5
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x5
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xc2
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0xf9
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x28
	.byte	0x6
	.2byte	0x28e
	.4byte	0x185
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x290
	.4byte	0xcd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x291
	.4byte	0xcd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x292
	.4byte	0xcd
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x293
	.4byte	0xcd
	.byte	0xc
	.uleb128 0xc
	.ascii	"IDR\000"
	.byte	0x6
	.2byte	0x294
	.4byte	0xcd
	.byte	0x10
	.uleb128 0xc
	.ascii	"ODR\000"
	.byte	0x6
	.2byte	0x295
	.4byte	0xcd
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x296
	.4byte	0xad
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x297
	.4byte	0xad
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x298
	.4byte	0xcd
	.byte	0x1c
	.uleb128 0xc
	.ascii	"AFR\000"
	.byte	0x6
	.2byte	0x299
	.4byte	0x195
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0xcd
	.4byte	0x195
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x185
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x29a
	.4byte	0xf9
	.uleb128 0xa
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.4byte	0x335
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.4byte	0xcd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x2e0
	.4byte	0xcd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2e1
	.4byte	0xcd
	.byte	0x8
	.uleb128 0xc
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.4byte	0xcd
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x2e3
	.4byte	0xcd
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x2e4
	.4byte	0xcd
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x2e5
	.4byte	0xcd
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x2e6
	.4byte	0xc2
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x2e7
	.4byte	0xcd
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x2e8
	.4byte	0xcd
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x2e9
	.4byte	0xe9
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xcd
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x2eb
	.4byte	0xcd
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x2ec
	.4byte	0xcd
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x2ed
	.4byte	0xc2
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x2ee
	.4byte	0xcd
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2ef
	.4byte	0xcd
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2f0
	.4byte	0xe9
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2f1
	.4byte	0xcd
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2f2
	.4byte	0xcd
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2f3
	.4byte	0xcd
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2f4
	.4byte	0xc2
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2f5
	.4byte	0xcd
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x2f6
	.4byte	0xcd
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x2f7
	.4byte	0xe9
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xcd
	.byte	0x70
	.uleb128 0xc
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xcd
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x2fa
	.4byte	0xe9
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x2fb
	.4byte	0xcd
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x2fc
	.4byte	0xcd
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x2fd
	.4byte	0x1a6
	.uleb128 0xa
	.byte	0x54
	.byte	0x6
	.2byte	0x369
	.4byte	0x51d
	.uleb128 0xc
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x36b
	.4byte	0xad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x36c
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xc
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x36d
	.4byte	0xad
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x36e
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x36f
	.4byte	0xad
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x370
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x371
	.4byte	0xad
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x372
	.4byte	0xa2
	.byte	0xe
	.uleb128 0xc
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x373
	.4byte	0xad
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x374
	.4byte	0xa2
	.byte	0x12
	.uleb128 0xc
	.ascii	"EGR\000"
	.byte	0x6
	.2byte	0x375
	.4byte	0xad
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x376
	.4byte	0xa2
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x377
	.4byte	0xad
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x378
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x379
	.4byte	0xad
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x37a
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x37b
	.4byte	0xad
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x37c
	.4byte	0xa2
	.byte	0x22
	.uleb128 0xc
	.ascii	"CNT\000"
	.byte	0x6
	.2byte	0x37d
	.4byte	0xcd
	.byte	0x24
	.uleb128 0xc
	.ascii	"PSC\000"
	.byte	0x6
	.2byte	0x37e
	.4byte	0xad
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x37f
	.4byte	0xa2
	.byte	0x2a
	.uleb128 0xc
	.ascii	"ARR\000"
	.byte	0x6
	.2byte	0x380
	.4byte	0xcd
	.byte	0x2c
	.uleb128 0xc
	.ascii	"RCR\000"
	.byte	0x6
	.2byte	0x381
	.4byte	0xad
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x382
	.4byte	0xa2
	.byte	0x32
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x383
	.4byte	0xcd
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x384
	.4byte	0xcd
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x385
	.4byte	0xcd
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x386
	.4byte	0xcd
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x387
	.4byte	0xad
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x388
	.4byte	0xa2
	.byte	0x46
	.uleb128 0xc
	.ascii	"DCR\000"
	.byte	0x6
	.2byte	0x389
	.4byte	0xad
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x38a
	.4byte	0xa2
	.byte	0x4a
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x38b
	.4byte	0xad
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x38c
	.4byte	0xa2
	.byte	0x4e
	.uleb128 0xc
	.ascii	"OR\000"
	.byte	0x6
	.2byte	0x38d
	.4byte	0xad
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x38e
	.4byte	0xa2
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x38f
	.4byte	0x341
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x1
	.byte	0x7
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56c
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x1
	.byte	0x7
	.4byte	0x50
	.4byte	.LLST0
	.uleb128 0x10
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x7
	.4byte	0x50
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0x7
	.4byte	0x50
	.4byte	.LLST2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3
	.4byte	0x89
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"AHB1LPENR\000"
.LASF60:
	.ascii	"CCER\000"
.LASF33:
	.ascii	"APB1RSTR\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF71:
	.ascii	"DMAR\000"
.LASF80:
	.ascii	"/home/emir/Desktop/4-godina/MSUT/project\000"
.LASF57:
	.ascii	"CCMR1\000"
.LASF58:
	.ascii	"CCMR2\000"
.LASF2:
	.ascii	"short int\000"
.LASF55:
	.ascii	"SMCR\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF52:
	.ascii	"SSCGR\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF79:
	.ascii	"pwm.c\000"
.LASF42:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF20:
	.ascii	"OTYPER\000"
.LASF63:
	.ascii	"RESERVED10\000"
.LASF38:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"PUPDR\000"
.LASF64:
	.ascii	"CCR1\000"
.LASF7:
	.ascii	"long int\000"
.LASF66:
	.ascii	"CCR3\000"
.LASF67:
	.ascii	"CCR4\000"
.LASF54:
	.ascii	"RCC_TypeDef\000"
.LASF24:
	.ascii	"BSRRH\000"
.LASF75:
	.ascii	"period\000"
.LASF19:
	.ascii	"MODER\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF78:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF72:
	.ascii	"RESERVED13\000"
.LASF23:
	.ascii	"BSRRL\000"
.LASF74:
	.ascii	"TIM_TypeDef\000"
.LASF82:
	.ascii	"pwm_set_duty\000"
.LASF65:
	.ascii	"CCR2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF77:
	.ascii	"duty\000"
.LASF69:
	.ascii	"RESERVED11\000"
.LASF70:
	.ascii	"RESERVED12\000"
.LASF41:
	.ascii	"APB2ENR\000"
.LASF73:
	.ascii	"RESERVED14\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF56:
	.ascii	"DIER\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF68:
	.ascii	"BDTR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF44:
	.ascii	"AHB2LPENR\000"
.LASF32:
	.ascii	"RESERVED0\000"
.LASF35:
	.ascii	"RESERVED1\000"
.LASF39:
	.ascii	"RESERVED2\000"
.LASF21:
	.ascii	"OSPEEDR\000"
.LASF46:
	.ascii	"RESERVED4\000"
.LASF49:
	.ascii	"RESERVED5\000"
.LASF51:
	.ascii	"RESERVED6\000"
.LASF59:
	.ascii	"RESERVED7\000"
.LASF61:
	.ascii	"RESERVED8\000"
.LASF62:
	.ascii	"RESERVED9\000"
.LASF81:
	.ascii	"pwm_init\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF76:
	.ascii	"duty_cycle\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF26:
	.ascii	"GPIO_TypeDef\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF25:
	.ascii	"LCKR\000"
.LASF48:
	.ascii	"APB2LPENR\000"
.LASF3:
	.ascii	"__uint8_t\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
