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
	.file	"dc_motors.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	dc_motors_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_init, %function
dc_motors_init:
.LFB110:
	.file 1 "dc_motors.c"
	.loc 1 5 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 6 0
	ldr	r4, .L4
	.loc 1 10 0
	ldr	r2, .L4+4
	.loc 1 6 0
	ldr	r0, [r4, #48]
	.loc 1 13 0
	ldr	r1, .L4+8
	.loc 1 33 0
	ldr	r3, .L4+12
	.loc 1 46 0
	ldr	r5, .L4+16
	.loc 1 6 0
	orr	r0, r0, #8
	str	r0, [r4, #48]
	.loc 1 7 0
	ldr	r0, [r4, #48]
	orr	r0, r0, #2
	str	r0, [r4, #48]
	.loc 1 10 0
	ldr	r0, [r2]
	orr	r0, r0, #20
	str	r0, [r2]
	.loc 1 13 0
	ldr	r0, [r1]
	orr	r0, r0, #696320
	str	r0, [r1]
	.loc 1 18 0
	ldr	r0, [r1, #32]
	orr	r0, r0, #570425344
	str	r0, [r1, #32]
	.loc 1 19 0
	ldr	r0, [r1, #36]
	orr	r0, r0, #34
	str	r0, [r1, #36]
	.loc 1 21 0
	movs	r0, #0
	str	r0, [r2, #4]
	.loc 1 22 0
	str	r0, [r1, #4]
	.loc 1 24 0
	ldr	r1, [r2, #8]
	orr	r1, r1, #60
	str	r1, [r2, #8]
	.loc 1 27 0
	ldr	r1, [r2, #12]
	str	r1, [r2, #12]
	.loc 1 29 0
	ldr	r1, [r2, #20]
	bic	r1, r1, #2
	str	r1, [r2, #20]
	.loc 1 32 0
	ldr	r2, [r4, #64]
	orr	r2, r2, #4
	str	r2, [r4, #64]
	.loc 1 33 0
	movs	r1, #83
	.loc 1 34 0
	mov	r2, #2000
	.loc 1 33 0
	strh	r1, [r3, #40]	@ movhi
	.loc 1 34 0
	str	r2, [r3, #44]
	.loc 1 36 0
	str	r0, [r3, #52]
	.loc 1 37 0
	str	r0, [r3, #56]
	.loc 1 38 0
	str	r0, [r3, #60]
	.loc 1 39 0
	str	r0, [r3, #64]
	.loc 1 41 0
	ldrh	r2, [r3, #24]
	orr	r2, r2, #104
	strh	r2, [r3, #24]	@ movhi
	.loc 1 42 0
	ldrh	r2, [r3, #24]
	orr	r2, r2, #26624
	strh	r2, [r3, #24]	@ movhi
	.loc 1 43 0
	ldrh	r2, [r3, #28]
	orr	r2, r2, #104
	strh	r2, [r3, #28]	@ movhi
	.loc 1 44 0
	ldrh	r2, [r3, #28]
	orr	r2, r2, #26624
	strh	r2, [r3, #28]	@ movhi
	.loc 1 46 0
	ldrh	r2, [r3, #32]
	ands	r2, r2, r5
	strh	r2, [r3, #32]	@ movhi
	.loc 1 47 0
	ldrh	r2, [r3]
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 48 0
	ldrh	r2, [r3, #20]
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 49 0
	ldrh	r2, [r3, #32]
	orr	r2, r2, #4352
	orr	r2, r2, #17
	strh	r2, [r3, #32]	@ movhi
	.loc 1 50 0
	ldrh	r2, [r3]
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 51 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073875968
	.word	1073873920
	.word	1073743872
	.word	-8739
	.cfi_endproc
.LFE110:
	.size	dc_motors_init, .-dc_motors_init
	.align	1
	.p2align 2,,3
	.global	dc_motors_set_direction
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_set_direction, %function
dc_motors_set_direction:
.LFB111:
	.loc 1 53 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 54 0
	vmov	s15, r0	@ int
	vcvt.f32.s32	s13, s15
	.loc 1 55 0
	vmov	s15, r1	@ int
	.loc 1 57 0
	vmov	s12, r3	@ int
	.loc 1 55 0
	vcvt.f32.s32	s14, s15
	.loc 1 56 0
	vmov	s15, r2	@ int
	.loc 1 54 0
	vldr.32	s10, .L7
	vldr.32	s11, .L7+4
	ldr	r0, .L7+8
.LVL1:
	.loc 1 56 0
	vcvt.f32.s32	s15, s15
	.loc 1 57 0
	vcvt.f32.s32	s9, s12
	.loc 1 54 0
	vdiv.f32	s12, s13, s10
	.loc 1 55 0
	vdiv.f32	s13, s14, s10
	.loc 1 56 0
	vdiv.f32	s14, s15, s10
	.loc 1 57 0
	vdiv.f32	s15, s9, s10
	.loc 1 54 0
	vmul.f32	s12, s12, s11
	.loc 1 55 0
	vmul.f32	s13, s13, s11
	.loc 1 56 0
	vmul.f32	s14, s14, s11
	.loc 1 57 0
	vmul.f32	s15, s15, s11
	.loc 1 54 0
	vcvt.u32.f32	s12, s12
	.loc 1 55 0
	vcvt.u32.f32	s13, s13
	.loc 1 56 0
	vcvt.u32.f32	s14, s14
	.loc 1 57 0
	vcvt.u32.f32	s15, s15
	.loc 1 54 0
	vstr.32	s12, [r0, #52]	@ int
	.loc 1 55 0
	vstr.32	s13, [r0, #56]	@ int
	.loc 1 56 0
	vstr.32	s14, [r0, #60]	@ int
	.loc 1 57 0
	vstr.32	s15, [r0, #64]	@ int
	.loc 1 58 0
	bx	lr
.L8:
	.align	2
.L7:
	.word	1120403456
	.word	1157234688
	.word	1073743872
	.cfi_endproc
.LFE111:
	.size	dc_motors_set_direction, .-dc_motors_set_direction
	.align	1
	.p2align 2,,3
	.global	dc_motors_set_speed
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_set_speed, %function
dc_motors_set_speed:
.LFB112:
	.loc 1 60 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 61 0
	ldr	r3, .L10
	str	r0, [r3]
	.loc 1 62 0
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.cfi_endproc
.LFE112:
	.size	dc_motors_set_speed, .-dc_motors_set_speed
	.align	1
	.p2align 2,,3
	.global	dc_motors_start
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_start, %function
dc_motors_start:
.LFB113:
	.loc 1 64 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 65 0
	ldr	r2, .L13
	ldr	r3, [r2, #20]
	orr	r3, r3, #6
	str	r3, [r2, #20]
	.loc 1 67 0
	bx	lr
.L14:
	.align	2
.L13:
	.word	1073875968
	.cfi_endproc
.LFE113:
	.size	dc_motors_start, .-dc_motors_start
	.align	1
	.p2align 2,,3
	.global	dc_motors_forward
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_forward, %function
dc_motors_forward:
.LFB114:
	.loc 1 69 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3:
	.loc 1 70 0
	ldr	r3, .L16
.LBB18:
.LBB19:
	.loc 1 54 0
	vldr.32	s12, .L16+4
	vldr.32	s14, [r3]	@ int
	vldr.32	s13, .L16+8
	ldr	r2, .L16+12
.LBE19:
.LBE18:
.LBB21:
.LBB22:
	.loc 1 65 0
	ldr	r1, .L16+16
.LBE22:
.LBE21:
.LBB24:
.LBB20:
	.loc 1 54 0
	vcvt.f32.s32	s14, s14
	.loc 1 55 0
	movs	r0, #0
	.loc 1 54 0
	vdiv.f32	s15, s14, s12
	vmul.f32	s15, s15, s13
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [r2, #52]	@ int
.LVL4:
	.loc 1 55 0
	str	r0, [r2, #56]
	.loc 1 56 0
	str	r0, [r2, #60]
	.loc 1 57 0
	vstr.32	s15, [r2, #64]	@ int
.LVL5:
.LBE20:
.LBE24:
.LBB25:
.LBB23:
	.loc 1 65 0
	ldr	r3, [r1, #20]
	orr	r3, r3, #6
	str	r3, [r1, #20]
.LBE23:
.LBE25:
	.loc 1 72 0
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.word	1120403456
	.word	1157234688
	.word	1073743872
	.word	1073875968
	.cfi_endproc
.LFE114:
	.size	dc_motors_forward, .-dc_motors_forward
	.align	1
	.p2align 2,,3
	.global	dc_motors_backward
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_backward, %function
dc_motors_backward:
.LFB115:
	.loc 1 74 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 75 0
	ldr	r3, .L19
.LBB26:
.LBB27:
	.loc 1 55 0
	vldr.32	s12, .L19+4
.LBE27:
.LBE26:
	.loc 1 75 0
	vldr.32	s14, [r3]	@ int
.LVL6:
.LBB30:
.LBB28:
	.loc 1 55 0
	vldr.32	s13, .L19+8
	.loc 1 54 0
	ldr	r2, .L19+12
.LBE28:
.LBE30:
.LBB31:
.LBB32:
	.loc 1 65 0
	ldr	r1, .L19+16
.LBE32:
.LBE31:
.LBB34:
.LBB29:
	.loc 1 55 0
	vcvt.f32.s32	s14, s14
.LVL7:
	.loc 1 54 0
	movs	r0, #0
	.loc 1 55 0
	vdiv.f32	s15, s14, s12
	.loc 1 54 0
	str	r0, [r2, #52]
.LVL8:
	.loc 1 55 0
	vmul.f32	s15, s15, s13
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [r2, #56]	@ int
	.loc 1 56 0
	vstr.32	s15, [r2, #60]	@ int
	.loc 1 57 0
	str	r0, [r2, #64]
.LVL9:
.LBE29:
.LBE34:
.LBB35:
.LBB33:
	.loc 1 65 0
	ldr	r3, [r1, #20]
	orr	r3, r3, #6
	str	r3, [r1, #20]
.LBE33:
.LBE35:
	.loc 1 77 0
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	1120403456
	.word	1157234688
	.word	1073743872
	.word	1073875968
	.cfi_endproc
.LFE115:
	.size	dc_motors_backward, .-dc_motors_backward
	.align	1
	.p2align 2,,3
	.global	dc_motors_left
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_left, %function
dc_motors_left:
.LFB116:
	.loc 1 79 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL10:
	.loc 1 80 0
	ldr	r3, .L22
.LBB36:
.LBB37:
	.loc 1 54 0
	vldr.32	s12, .L22+4
	vldr.32	s14, [r3]	@ int
	vldr.32	s13, .L22+8
	ldr	r2, .L22+12
.LBE37:
.LBE36:
.LBB39:
.LBB40:
	.loc 1 65 0
	ldr	r1, .L22+16
.LBE40:
.LBE39:
.LBB42:
.LBB38:
	.loc 1 54 0
	vcvt.f32.s32	s14, s14
	.loc 1 55 0
	movs	r0, #0
	.loc 1 54 0
	vdiv.f32	s15, s14, s12
	vmul.f32	s15, s15, s13
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [r2, #52]	@ int
.LVL11:
	.loc 1 55 0
	str	r0, [r2, #56]
	.loc 1 56 0
	vstr.32	s15, [r2, #60]	@ int
	.loc 1 57 0
	str	r0, [r2, #64]
.LVL12:
.LBE38:
.LBE42:
.LBB43:
.LBB41:
	.loc 1 65 0
	ldr	r3, [r1, #20]
	orr	r3, r3, #6
	str	r3, [r1, #20]
.LBE41:
.LBE43:
	.loc 1 82 0
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.word	1120403456
	.word	1157234688
	.word	1073743872
	.word	1073875968
	.cfi_endproc
.LFE116:
	.size	dc_motors_left, .-dc_motors_left
	.align	1
	.p2align 2,,3
	.global	dc_motors_right
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_right, %function
dc_motors_right:
.LFB117:
	.loc 1 84 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 85 0
	ldr	r3, .L25
.LBB44:
.LBB45:
	.loc 1 55 0
	vldr.32	s12, .L25+4
.LBE45:
.LBE44:
	.loc 1 85 0
	vldr.32	s14, [r3]	@ int
.LVL13:
.LBB48:
.LBB46:
	.loc 1 55 0
	vldr.32	s13, .L25+8
	.loc 1 54 0
	ldr	r2, .L25+12
.LBE46:
.LBE48:
.LBB49:
.LBB50:
	.loc 1 65 0
	ldr	r1, .L25+16
.LBE50:
.LBE49:
.LBB52:
.LBB47:
	.loc 1 55 0
	vcvt.f32.s32	s14, s14
.LVL14:
	.loc 1 54 0
	movs	r0, #0
	.loc 1 55 0
	vdiv.f32	s15, s14, s12
	.loc 1 54 0
	str	r0, [r2, #52]
.LVL15:
	.loc 1 55 0
	vmul.f32	s15, s15, s13
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [r2, #56]	@ int
	.loc 1 56 0
	str	r0, [r2, #60]
	.loc 1 57 0
	vstr.32	s15, [r2, #64]	@ int
.LVL16:
.LBE47:
.LBE52:
.LBB53:
.LBB51:
	.loc 1 65 0
	ldr	r3, [r1, #20]
	orr	r3, r3, #6
	str	r3, [r1, #20]
.LBE51:
.LBE53:
	.loc 1 87 0
	bx	lr
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.word	1120403456
	.word	1157234688
	.word	1073743872
	.word	1073875968
	.cfi_endproc
.LFE117:
	.size	dc_motors_right, .-dc_motors_right
	.align	1
	.p2align 2,,3
	.global	dc_motors_stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dc_motors_stop, %function
dc_motors_stop:
.LFB118:
	.loc 1 89 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 90 0
	ldr	r2, .L28
	ldr	r3, [r2, #20]
	bic	r3, r3, #6
	str	r3, [r2, #20]
	.loc 1 91 0
	bx	lr
.L29:
	.align	2
.L28:
	.word	1073875968
	.cfi_endproc
.LFE118:
	.size	dc_motors_stop, .-dc_motors_stop
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	speed, %object
	.size	speed, 4
speed:
	.space	4
	.text
.Letext0:
	.file 2 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../sdk/core_cm4.h"
	.file 5 "../sdk/system_stm32f4xx.h"
	.file 6 "../sdk/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x768
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.4byte	.LASF82
	.4byte	.LASF83
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
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	speed
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x1
	.byte	0x59
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x1
	.byte	0x54
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a8
	.uleb128 0x11
	.4byte	0x6e8
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x55
	.4byte	0x598
	.uleb128 0x12
	.4byte	0x70f
	.4byte	.LLST13
	.uleb128 0x12
	.4byte	0x706
	.4byte	.LLST14
	.uleb128 0x12
	.4byte	0x6fd
	.4byte	.LLST13
	.uleb128 0x12
	.4byte	0x6f4
	.4byte	.LLST14
	.byte	0
	.uleb128 0x13
	.4byte	0x6bf
	.4byte	.LBB49
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x605
	.uleb128 0x11
	.4byte	0x6e8
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x50
	.4byte	0x5f5
	.uleb128 0x12
	.4byte	0x70f
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	0x706
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	0x6fd
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	0x6f4
	.4byte	.LLST10
	.byte	0
	.uleb128 0x13
	.4byte	0x6bf
	.4byte	.LBB39
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x662
	.uleb128 0x11
	.4byte	0x6e8
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x4b
	.4byte	0x652
	.uleb128 0x12
	.4byte	0x70f
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	0x706
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	0x6fd
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	0x6f4
	.4byte	.LLST5
	.byte	0
	.uleb128 0x13
	.4byte	0x6bf
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x1
	.byte	0x45
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bf
	.uleb128 0x11
	.4byte	0x6e8
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x46
	.4byte	0x6af
	.uleb128 0x12
	.4byte	0x70f
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	0x706
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	0x6fd
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	0x6f4
	.4byte	.LLST1
	.byte	0
	.uleb128 0x13
	.4byte	0x6bf
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x47
	.byte	0
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e8
	.uleb128 0x16
	.ascii	"s\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0x89
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x719
	.uleb128 0x18
	.ascii	"a\000"
	.byte	0x1
	.byte	0x35
	.4byte	0x89
	.uleb128 0x18
	.ascii	"b\000"
	.byte	0x1
	.byte	0x35
	.4byte	0x89
	.uleb128 0x18
	.ascii	"c\000"
	.byte	0x1
	.byte	0x35
	.4byte	0x89
	.uleb128 0x18
	.ascii	"d\000"
	.byte	0x1
	.byte	0x35
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x1
	.byte	0x5
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	0x6e8
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75c
	.uleb128 0x12
	.4byte	0x6f4
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	0x6fd
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1a
	.4byte	0x706
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	0x70f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1b
	.4byte	0x6bf
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	speed
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	speed
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	speed
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	speed
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"AHB1LPENR\000"
.LASF86:
	.ascii	"dc_motors_set_speed\000"
.LASF60:
	.ascii	"CCER\000"
.LASF33:
	.ascii	"APB1RSTR\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF71:
	.ascii	"DMAR\000"
.LASF83:
	.ascii	"/home/emir/Desktop/4-godina/MSUT/project\000"
.LASF57:
	.ascii	"CCMR1\000"
.LASF58:
	.ascii	"CCMR2\000"
.LASF2:
	.ascii	"short int\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF52:
	.ascii	"SSCGR\000"
.LASF75:
	.ascii	"dc_motors_right\000"
.LASF78:
	.ascii	"dc_motors_forward\000"
.LASF87:
	.ascii	"dc_motors_set_direction\000"
.LASF42:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF49:
	.ascii	"RESERVED5\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF62:
	.ascii	"RESERVED9\000"
.LASF20:
	.ascii	"OTYPER\000"
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
.LASF19:
	.ascii	"MODER\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF81:
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
.LASF55:
	.ascii	"SMCR\000"
.LASF65:
	.ascii	"CCR2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF63:
	.ascii	"RESERVED10\000"
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
.LASF84:
	.ascii	"speed\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF56:
	.ascii	"DIER\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF79:
	.ascii	"dc_motors_stop\000"
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
.LASF77:
	.ascii	"dc_motors_backward\000"
.LASF51:
	.ascii	"RESERVED6\000"
.LASF59:
	.ascii	"RESERVED7\000"
.LASF61:
	.ascii	"RESERVED8\000"
.LASF85:
	.ascii	"dc_motors_start\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF82:
	.ascii	"dc_motors.c\000"
.LASF26:
	.ascii	"GPIO_TypeDef\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
.LASF80:
	.ascii	"dc_motors_init\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF76:
	.ascii	"dc_motors_left\000"
.LASF25:
	.ascii	"LCKR\000"
.LASF48:
	.ascii	"APB2LPENR\000"
.LASF3:
	.ascii	"__uint8_t\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
