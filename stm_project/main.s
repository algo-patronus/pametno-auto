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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	check_input.part.0, %function
check_input.part.0:
.LFB119:
	.file 1 "main.c"
	.loc 1 15 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB15:
	.loc 1 17 0
	ldr	r5, .L17
	ldr	r1, .L17+4
	ldrh	r3, [r5]
	.loc 1 19 0
	ldr	r0, .L17+8
	.loc 1 17 0
	uxth	r3, r3
	adds	r2, r3, #1
	uxth	r2, r2
	strh	r2, [r5]	@ movhi
	ldrb	r4, [r1, r3]	@ zero_extendqisi2
	uxtb	r4, r4
.LVL0:
	.loc 1 19 0
	mov	r1, r4
	bl	printUSART2
.LVL1:
	.loc 1 20 0
	ldrh	r3, [r5]
	cmp	r3, #512
	.loc 1 22 0
	itt	cs
	movcs	r3, #0
	strhcs	r3, [r5]	@ movhi
	.loc 1 29 0
	cmp	r4, #77
	beq	.L3
	cmp	r4, #65
	beq	.L3
	.loc 1 34 0
	cmp	r4, #83
	beq	.L7
	sub	r3, r4, #68
	uxtb	r3, r3
	cmp	r3, #17
	bhi	.L1
	ldr	r2, .L17+12
	lsr	r3, r2, r3
	lsls	r3, r3, #31
	bpl	.L1
	.loc 1 35 0
	ldr	r3, .L17+16
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #77
	bne	.L1
	.loc 1 40 0
	ldr	r2, .L17+20
	.loc 1 36 0
	strb	r4, [r3, #1]
	.loc 1 40 0
	movs	r3, #1
	str	r3, [r2]
.L1:
.LBE15:
	.loc 1 44 0
	pop	{r3, r4, r5, pc}
.LVL2:
.L3:
.LBB16:
	.loc 1 30 0
	ldr	r3, .L17+16
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #77
	beq	.L5
	.loc 1 31 0
	subs	r1, r4, #77
	ldr	r2, .L17+20
	it	ne
	movne	r1, #1
	str	r1, [r2]
.L5:
	.loc 1 32 0
	strb	r4, [r3]
.LBE16:
	.loc 1 44 0
	pop	{r3, r4, r5, pc}
.LVL3:
.L7:
.LBB17:
	.loc 1 35 0
	ldr	r3, .L17+16
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #77
	bne	.L1
	.loc 1 38 0
	ldr	r2, .L17+20
	.loc 1 36 0
	strb	r4, [r3, #1]
	.loc 1 38 0
	movs	r3, #0
	str	r3, [r2]
.LBE17:
	.loc 1 44 0
	pop	{r3, r4, r5, pc}
.LVL4:
.L18:
	.align	2
.L17:
	.word	g_usart3_ridx
	.word	g_usart3_buffer
	.word	.LC0
	.word	147713
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE119:
	.size	check_input.part.0, .-check_input.part.0
	.align	1
	.p2align 2,,3
	.global	check_input
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	check_input, %function
check_input:
.LFB113:
	.loc 1 15 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 16 0
	ldr	r2, .L21
	ldr	r3, .L21+4
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	uxth	r3, r3
	cmp	r3, r2
	beq	.L19
	b	check_input.part.0
.LVL5:
.L19:
	.loc 1 44 0
	bx	lr
.L22:
	.align	2
.L21:
	.word	g_usart3_ridx
	.word	g_usart3_widx
	.cfi_endproc
.LFE113:
	.size	check_input, .-check_input
	.align	1
	.p2align 2,,3
	.global	max_distance
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	max_distance, %function
max_distance:
.LFB114:
	.loc 1 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL6:
	.loc 1 48 0
	cmp	r0, r1
	it	lt
	movlt	r0, r1
.LVL7:
	bx	lr
	.cfi_endproc
.LFE114:
	.size	max_distance, .-max_distance
	.align	1
	.p2align 2,,3
	.global	automatic_control
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	automatic_control, %function
automatic_control:
.LFB115:
	.loc 1 50 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 51 0
	bl	servo_90
.LVL8:
	ldr	r4, .L43
	ldr	r5, .L43+4
.LBB18:
.LBB19:
.LBB20:
	.loc 1 16 0
	ldr	r7, .L43+8
	ldr	r6, .L43+12
.L25:
.LBE20:
.LBE19:
.LBE18:
	.loc 1 52 0
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #65
	beq	.L41
	b	.L36
.L28:
.LBB23:
	.loc 1 55 0
	bl	get_ultrasonic
.LVL9:
	cmp	r0, #39
	str	r0, [r4, #4]
	ldrb	r3, [r5]	@ zero_extendqisi2
	ble	.L30
.L29:
	.loc 1 55 0 is_stmt 0 discriminator 1
	cmp	r3, #65
	bne	.L30
	.loc 1 56 0 is_stmt 1
	bl	dc_motors_forward
.LVL10:
.L41:
.LBB21:
.LBB22:
	.loc 1 16 0
	ldrh	r2, [r7]
	ldrh	r3, [r6]
	uxth	r3, r3
	cmp	r3, r2
	beq	.L28
	bl	check_input.part.0
.LVL11:
.LBE22:
.LBE21:
	.loc 1 55 0
	bl	get_ultrasonic
.LVL12:
	cmp	r0, #39
	str	r0, [r4, #4]
	ldrb	r3, [r5]	@ zero_extendqisi2
	bgt	.L29
.L30:
	.loc 1 60 0
	cmp	r3, #77
	beq	.L36
	.loc 1 63 0
	bl	dc_motors_stop
.LVL13:
	.loc 1 65 0
	bl	servo_0
.LVL14:
	.loc 1 66 0
	mov	r0, #500
	bl	delay_ms
.LVL15:
	.loc 1 68 0
	bl	get_ultrasonic
.LVL16:
	str	r0, [r4, #8]
	.loc 1 70 0
	mov	r0, #500
	bl	delay_ms
.LVL17:
	.loc 1 76 0
	bl	servo_180
.LVL18:
	.loc 1 77 0
	mov	r0, #500
	bl	delay_ms
.LVL19:
	.loc 1 78 0
	bl	get_ultrasonic
.LVL20:
	str	r0, [r4, #12]
	.loc 1 79 0
	mov	r0, #500
	bl	delay_ms
.LVL21:
	.loc 1 81 0
	bl	servo_90
.LVL22:
	.loc 1 88 0
	ldrd	r3, r2, [r4, #8]
	cmp	r2, r3
	bge	.L42
	.loc 1 91 0
	bl	dc_motors_right
.LVL23:
.LBE23:
	.loc 1 52 0
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #65
	beq	.L41
.L36:
	.loc 1 95 0
	movs	r3, #0
	str	r3, [r4]
	.loc 1 96 0
	bl	dc_motors_stop
.LVL24:
	.loc 1 98 0
	pop	{r3, r4, r5, r6, r7, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 97 0
	b	servo_90
.LVL25:
.L42:
	.cfi_restore_state
.LBB24:
	.loc 1 89 0
	bl	dc_motors_left
.LVL26:
	b	.L25
.L44:
	.align	2
.L43:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	g_usart3_ridx
	.word	g_usart3_widx
.LBE24:
	.cfi_endproc
.LFE115:
	.size	automatic_control, .-automatic_control
	.align	1
	.p2align 2,,3
	.global	manual_control
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	manual_control, %function
manual_control:
.LFB116:
	.loc 1 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 101 0
	ldr	r3, .L57
	ldr	r3, [r3]
	cbz	r3, .L45
	.loc 1 103 0
	ldr	r3, .L57+4
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	subs	r3, r3, #68
	cmp	r3, #17
	bhi	.L45
	tbb	[pc, r3]
.L48:
	.byte	(.L47-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L49-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L50-.L48)/2
	.byte	(.L51-.L48)/2
	.byte	(.L45-.L48)/2
	.byte	(.L52-.L48)/2
	.p2align 1
.L45:
	.loc 1 126 0
	pop	{r3, pc}
.L52:
	.loc 1 105 0
	movs	r0, #100
	bl	dc_motors_set_speed
.LVL27:
	.loc 1 126 0
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 106 0
	b	dc_motors_forward
.LVL28:
.L47:
	.cfi_restore_state
.LBB27:
.LBB28:
	.loc 1 109 0
	movs	r0, #100
	bl	dc_motors_set_speed
.LVL29:
.LBE28:
.LBE27:
	.loc 1 126 0
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LBB30:
.LBB29:
	.loc 1 110 0
	b	dc_motors_backward
.LVL30:
.L49:
	.cfi_restore_state
.LBE29:
.LBE30:
	.loc 1 113 0
	movs	r0, #50
	bl	dc_motors_set_speed
.LVL31:
	.loc 1 126 0
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 114 0
	b	dc_motors_left
.LVL32:
.L50:
	.cfi_restore_state
	.loc 1 117 0
	movs	r0, #50
	bl	dc_motors_set_speed
.LVL33:
	.loc 1 126 0
	pop	{r3, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 118 0
	b	dc_motors_right
.LVL34:
.L51:
	.cfi_restore_state
	.loc 1 126 0
	pop	{r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 121 0
	b	dc_motors_stop
.LVL35:
.L58:
	.align	2
.L57:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.cfi_endproc
.LFE116:
	.size	manual_control, .-manual_control
	.align	1
	.p2align 2,,3
	.global	drive_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	drive_mode, %function
drive_mode:
.LFB117:
	.loc 1 128 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 129 0
	ldr	r3, .L64
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #65
	beq	.L62
	.loc 1 131 0
	cmp	r3, #77
	beq	.L63
	.loc 1 133 0
	bx	lr
.L63:
	.loc 1 132 0
	b	manual_control
.LVL36:
.L62:
	.loc 1 130 0
	b	automatic_control
.LVL37:
.L65:
	.align	2
.L64:
	.word	.LANCHOR0
	.cfi_endproc
.LFE117:
	.size	drive_mode, .-drive_mode
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	main, %function
main:
.LFB118:
	.loc 1 136 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 137 0
	mov	r0, #364
	bl	initUSART3
.LVL38:
	.loc 1 138 0
	mov	r0, #364
	bl	initUSART2
.LVL39:
	.loc 1 139 0
	bl	enIrqUSART3
.LVL40:
	.loc 1 140 0
	bl	servo_init
.LVL41:
	.loc 1 141 0
	bl	hcsr_init
.LVL42:
	.loc 1 142 0
	bl	dc_motors_init
.LVL43:
	.loc 1 143 0
	bl	dc_motors_stop
.LVL44:
	.loc 1 144 0
	movw	r0, #5000
	bl	delay_ms
.LVL45:
	ldr	r5, .L70
	ldr	r4, .L70+4
.L68:
.LBB31:
.LBB32:
	.loc 1 16 0 discriminator 1
	ldrh	r2, [r5]
	ldrh	r3, [r4]
	uxth	r3, r3
	cmp	r3, r2
	beq	.L67
	bl	check_input.part.0
.LVL46:
.L67:
.LBE32:
.LBE31:
	.loc 1 160 0 discriminator 1
	bl	drive_mode
.LVL47:
	.loc 1 159 0 discriminator 1
	b	.L68
.L71:
	.align	2
.L70:
	.word	g_usart3_ridx
	.word	g_usart3_widx
	.cfi_endproc
.LFE118:
	.size	main, .-main
	.global	left_distance
	.global	middle_distance
	.global	right_distance
	.global	move
	.global	ready
	.global	direction
	.global	mode
	.data
	.set	.LANCHOR0,. + 0
	.type	mode, %object
	.size	mode, 1
mode:
	.byte	77
	.type	direction, %object
	.size	direction, 1
direction:
	.byte	83
	.type	ready, %object
	.size	ready, 1
ready:
	.byte	6
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	move, %object
	.size	move, 4
move:
	.space	4
	.type	middle_distance, %object
	.size	middle_distance, 4
middle_distance:
	.space	4
	.type	right_distance, %object
	.size	right_distance, 4
right_distance:
	.space	4
	.type	left_distance, %object
	.size	left_distance, 4
left_distance:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Dobili smo: %c\012\000"
	.text
.Letext0:
	.file 2 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../sdk/core_cm4.h"
	.file 5 "../sdk/system_stm32f4xx.h"
	.file 6 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 7 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 8 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 9 "/home/emir/Desktop/4-godina/MSUT/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 10 "usart.h"
	.file 11 "sensors.h"
	.file 12 "dc_motors.h"
	.file 13 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe40
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0xc
	.4byte	.LASF168
	.4byte	.LASF169
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0
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
	.uleb128 0x5
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.4byte	0x45
	.uleb128 0x5
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x5
	.4byte	0xb7
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.4byte	0xc2
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x22
	.4byte	0xfd
	.uleb128 0x9
	.byte	0x4
	.4byte	0x103
	.uleb128 0xa
	.4byte	.LASF127
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x72
	.4byte	0x62
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.2byte	0x165
	.4byte	0x90
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.4byte	0x149
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x7
	.byte	0xa8
	.4byte	0x11e
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x7
	.byte	0xa9
	.4byte	0x149
	.byte	0
	.uleb128 0xe
	.4byte	0x37
	.4byte	0x159
	.uleb128 0xf
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.4byte	0x17a
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x7
	.byte	0xa5
	.4byte	0x89
	.byte	0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x7
	.byte	0xaa
	.4byte	0x12a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xab
	.4byte	0x159
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0xaf
	.4byte	0xf2
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x9
	.byte	0x16
	.4byte	0x74
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x18
	.byte	0x9
	.byte	0x2f
	.4byte	0x1ee
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x9
	.byte	0x31
	.4byte	0x1ee
	.byte	0
	.uleb128 0x13
	.ascii	"_k\000"
	.byte	0x9
	.byte	0x32
	.4byte	0x89
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x9
	.byte	0x32
	.4byte	0x89
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x9
	.byte	0x32
	.4byte	0x89
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x9
	.byte	0x32
	.4byte	0x89
	.byte	0x10
	.uleb128 0x13
	.ascii	"_x\000"
	.byte	0x9
	.byte	0x33
	.4byte	0x1f4
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x19b
	.uleb128 0xe
	.4byte	0x190
	.4byte	0x204
	.uleb128 0xf
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x24
	.byte	0x9
	.byte	0x37
	.4byte	0x27d
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x9
	.byte	0x39
	.4byte	0x89
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3a
	.4byte	0x89
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x9
	.byte	0x3b
	.4byte	0x89
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3c
	.4byte	0x89
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3d
	.4byte	0x89
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x9
	.byte	0x3e
	.4byte	0x89
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x9
	.byte	0x3f
	.4byte	0x89
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x9
	.byte	0x40
	.4byte	0x89
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x9
	.byte	0x41
	.4byte	0x89
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF46
	.2byte	0x108
	.byte	0x9
	.byte	0x4a
	.4byte	0x2bd
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x9
	.byte	0x4b
	.4byte	0x2bd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x9
	.byte	0x4c
	.4byte	0x2bd
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x9
	.byte	0x4e
	.4byte	0x190
	.2byte	0x100
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x9
	.byte	0x51
	.4byte	0x190
	.2byte	0x104
	.byte	0
	.uleb128 0xe
	.4byte	0xf0
	.4byte	0x2cd
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF51
	.2byte	0x190
	.byte	0x9
	.byte	0x5d
	.4byte	0x30b
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x9
	.byte	0x5e
	.4byte	0x30b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x9
	.byte	0x5f
	.4byte	0x89
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x9
	.byte	0x61
	.4byte	0x311
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x9
	.byte	0x62
	.4byte	0x27d
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0xe
	.4byte	0x321
	.4byte	0x321
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x327
	.uleb128 0x16
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x8
	.byte	0x9
	.byte	0x75
	.4byte	0x34d
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x9
	.byte	0x76
	.4byte	0x34d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x9
	.byte	0x77
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x68
	.byte	0x9
	.byte	0xb5
	.4byte	0x47d
	.uleb128 0x13
	.ascii	"_p\000"
	.byte	0x9
	.byte	0xb6
	.4byte	0x34d
	.byte	0
	.uleb128 0x13
	.ascii	"_r\000"
	.byte	0x9
	.byte	0xb7
	.4byte	0x89
	.byte	0x4
	.uleb128 0x13
	.ascii	"_w\000"
	.byte	0x9
	.byte	0xb8
	.4byte	0x89
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x9
	.byte	0xb9
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x9
	.byte	0xba
	.4byte	0x3e
	.byte	0xe
	.uleb128 0x13
	.ascii	"_bf\000"
	.byte	0x9
	.byte	0xbb
	.4byte	0x328
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x9
	.byte	0xbc
	.4byte	0x89
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x9
	.byte	0xc3
	.4byte	0xf0
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x9
	.byte	0xc5
	.4byte	0x5ea
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x9
	.byte	0xc7
	.4byte	0x614
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x9
	.byte	0xca
	.4byte	0x638
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x9
	.byte	0xcb
	.4byte	0x652
	.byte	0x2c
	.uleb128 0x13
	.ascii	"_ub\000"
	.byte	0x9
	.byte	0xce
	.4byte	0x328
	.byte	0x30
	.uleb128 0x13
	.ascii	"_up\000"
	.byte	0x9
	.byte	0xcf
	.4byte	0x34d
	.byte	0x38
	.uleb128 0x13
	.ascii	"_ur\000"
	.byte	0x9
	.byte	0xd0
	.4byte	0x89
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x9
	.byte	0xd3
	.4byte	0x658
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x9
	.byte	0xd4
	.4byte	0x668
	.byte	0x43
	.uleb128 0x13
	.ascii	"_lb\000"
	.byte	0x9
	.byte	0xd7
	.4byte	0x328
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x9
	.byte	0xda
	.4byte	0x89
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x9
	.byte	0xdb
	.4byte	0x108
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x9
	.byte	0xde
	.4byte	0x49b
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x9
	.byte	0xe2
	.4byte	0x185
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x9
	.byte	0xe4
	.4byte	0x17a
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x9
	.byte	0xe5
	.4byte	0x89
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x89
	.4byte	0x49b
	.uleb128 0x18
	.4byte	0x49b
	.uleb128 0x18
	.4byte	0xf0
	.uleb128 0x18
	.4byte	0x5d8
	.uleb128 0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4a6
	.uleb128 0x19
	.4byte	0x49b
	.uleb128 0x1a
	.4byte	.LASF74
	.2byte	0x428
	.byte	0x9
	.2byte	0x260
	.4byte	0x5d8
	.uleb128 0x1b
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x262
	.4byte	0x89
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x267
	.4byte	0x6bf
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x267
	.4byte	0x6bf
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x267
	.4byte	0x6bf
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x269
	.4byte	0x89
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x26a
	.4byte	0x8a1
	.byte	0x14
	.uleb128 0x1b
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x26d
	.4byte	0x89
	.byte	0x30
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x26e
	.4byte	0x8b6
	.byte	0x34
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x270
	.4byte	0x89
	.byte	0x38
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x272
	.4byte	0x8c7
	.byte	0x3c
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x275
	.4byte	0x1ee
	.byte	0x40
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x276
	.4byte	0x89
	.byte	0x44
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x277
	.4byte	0x1ee
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x278
	.4byte	0x8cd
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x27b
	.4byte	0x89
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x27c
	.4byte	0x5d8
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x29f
	.4byte	0x87f
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x2a3
	.4byte	0x30b
	.2byte	0x148
	.uleb128 0x1c
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x2a4
	.4byte	0x2cd
	.2byte	0x14c
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x2a8
	.4byte	0x8de
	.2byte	0x2dc
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x2ad
	.4byte	0x684
	.2byte	0x2e0
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x2af
	.4byte	0x8ea
	.2byte	0x2ec
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF96
	.uleb128 0x19
	.4byte	0x5de
	.uleb128 0x9
	.byte	0x4
	.4byte	0x47d
	.uleb128 0x17
	.4byte	0x89
	.4byte	0x60e
	.uleb128 0x18
	.4byte	0x49b
	.uleb128 0x18
	.4byte	0xf0
	.uleb128 0x18
	.4byte	0x60e
	.uleb128 0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5e5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5f0
	.uleb128 0x17
	.4byte	0x113
	.4byte	0x638
	.uleb128 0x18
	.4byte	0x49b
	.uleb128 0x18
	.4byte	0xf0
	.uleb128 0x18
	.4byte	0x113
	.uleb128 0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x61a
	.uleb128 0x17
	.4byte	0x89
	.4byte	0x652
	.uleb128 0x18
	.4byte	0x49b
	.uleb128 0x18
	.4byte	0xf0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x63e
	.uleb128 0xe
	.4byte	0x37
	.4byte	0x668
	.uleb128 0xf
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x37
	.4byte	0x678
	.uleb128 0xf
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x11f
	.4byte	0x353
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0xc
	.byte	0x9
	.2byte	0x123
	.4byte	0x6b9
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x125
	.4byte	0x6b9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x126
	.4byte	0x89
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x127
	.4byte	0x6bf
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x684
	.uleb128 0x9
	.byte	0x4
	.4byte	0x678
	.uleb128 0x1d
	.4byte	.LASF101
	.byte	0xe
	.byte	0x9
	.2byte	0x13f
	.4byte	0x6fa
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x140
	.4byte	0x6fa
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x141
	.4byte	0x6fa
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x142
	.4byte	0x50
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	0x50
	.4byte	0x70a
	.uleb128 0xf
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0xd0
	.byte	0x9
	.2byte	0x280
	.4byte	0x80b
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x282
	.4byte	0x90
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x283
	.4byte	0x5d8
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x284
	.4byte	0x80b
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x285
	.4byte	0x204
	.byte	0x24
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x286
	.4byte	0x89
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x287
	.4byte	0x82
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x288
	.4byte	0x6c5
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x289
	.4byte	0x17a
	.byte	0x68
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x28a
	.4byte	0x17a
	.byte	0x70
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x28b
	.4byte	0x17a
	.byte	0x78
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x28c
	.4byte	0x81b
	.byte	0x80
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x28d
	.4byte	0x82b
	.byte	0x88
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x28e
	.4byte	0x89
	.byte	0xa0
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x28f
	.4byte	0x17a
	.byte	0xa4
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x290
	.4byte	0x17a
	.byte	0xac
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x291
	.4byte	0x17a
	.byte	0xb4
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x292
	.4byte	0x17a
	.byte	0xbc
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x293
	.4byte	0x17a
	.byte	0xc4
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x294
	.4byte	0x89
	.byte	0xcc
	.byte	0
	.uleb128 0xe
	.4byte	0x5de
	.4byte	0x81b
	.uleb128 0xf
	.4byte	0x90
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	0x5de
	.4byte	0x82b
	.uleb128 0xf
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	0x5de
	.4byte	0x83b
	.uleb128 0xf
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x1e
	.byte	0xf0
	.byte	0x9
	.2byte	0x299
	.4byte	0x85f
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x29c
	.4byte	0x85f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x29d
	.4byte	0x86f
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.4byte	0x34d
	.4byte	0x86f
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	0x90
	.4byte	0x87f
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1d
	.byte	0
	.uleb128 0x1f
	.byte	0xf0
	.byte	0x9
	.2byte	0x27e
	.4byte	0x8a1
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x295
	.4byte	0x70a
	.uleb128 0x20
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x29e
	.4byte	0x83b
	.byte	0
	.uleb128 0xe
	.4byte	0x5de
	.4byte	0x8b1
	.uleb128 0xf
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF128
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8b1
	.uleb128 0x21
	.4byte	0x8c7
	.uleb128 0x18
	.4byte	0x49b
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8bc
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0x21
	.4byte	0x8de
	.uleb128 0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8e4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8d3
	.uleb128 0xe
	.4byte	0x678
	.4byte	0x8fa
	.uleb128 0xf
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x32e
	.4byte	0x49b
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x32f
	.4byte	0x4a1
	.uleb128 0xe
	.4byte	0xa2
	.4byte	0x923
	.uleb128 0x22
	.4byte	0x90
	.2byte	0x1ff
	.byte	0
	.uleb128 0x5
	.4byte	0x912
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0xa
	.byte	0x1c
	.4byte	0x923
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0xa
	.byte	0x1d
	.4byte	0xb2
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0xa
	.byte	0x1e
	.4byte	0xb2
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0xa
	.byte	0x29
	.4byte	0x923
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0xa
	.byte	0x2a
	.4byte	0xb2
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0xa
	.byte	0x2b
	.4byte	0xb2
	.uleb128 0x23
	.4byte	.LASF137
	.byte	0x1
	.byte	0xb
	.4byte	0x5de
	.uleb128 0x5
	.byte	0x3
	.4byte	mode
	.uleb128 0x23
	.4byte	.LASF138
	.byte	0x1
	.byte	0xb
	.4byte	0x5de
	.uleb128 0x5
	.byte	0x3
	.4byte	direction
	.uleb128 0x23
	.4byte	.LASF139
	.byte	0x1
	.byte	0xc
	.4byte	0x5de
	.uleb128 0x5
	.byte	0x3
	.4byte	ready
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0xd
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	move
	.uleb128 0x23
	.4byte	.LASF141
	.byte	0x1
	.byte	0xd
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	right_distance
	.uleb128 0x23
	.4byte	.LASF142
	.byte	0x1
	.byte	0xd
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	middle_distance
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.byte	0xd
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	left_distance
	.uleb128 0x24
	.4byte	.LASF170
	.byte	0x1
	.byte	0x87
	.4byte	0x89
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9e
	.uleb128 0x25
	.4byte	.LASF146
	.byte	0x1
	.byte	0x8c
	.4byte	0x89
	.4byte	0xa0b
	.uleb128 0x26
	.byte	0
	.uleb128 0x27
	.4byte	0xc51
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x9f
	.4byte	0xa28
	.uleb128 0x28
	.4byte	.LVL46
	.4byte	0xc6b
	.byte	0
	.uleb128 0x29
	.4byte	.LVL38
	.4byte	0xd7d
	.4byte	0xa3d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x29
	.4byte	.LVL39
	.4byte	0xd88
	.4byte	0xa52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL40
	.4byte	0xd93
	.uleb128 0x28
	.4byte	.LVL41
	.4byte	0xd9e
	.uleb128 0x28
	.4byte	.LVL42
	.4byte	0xda9
	.uleb128 0x28
	.4byte	.LVL43
	.4byte	0xdb4
	.uleb128 0x28
	.4byte	.LVL44
	.4byte	0xdbf
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0xdca
	.4byte	0xa94
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.uleb128 0x28
	.4byte	.LVL47
	.4byte	0xa9e
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF144
	.byte	0x1
	.byte	0x80
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac6
	.uleb128 0x2c
	.4byte	.LVL36
	.4byte	0xac6
	.uleb128 0x2c
	.4byte	.LVL37
	.4byte	0xace
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF171
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF145
	.byte	0x1
	.byte	0x32
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2a
	.uleb128 0x25
	.4byte	.LASF147
	.byte	0x1
	.byte	0x33
	.4byte	0x89
	.4byte	0xaf4
	.uleb128 0x26
	.byte	0
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0xc0e
	.uleb128 0x25
	.4byte	.LASF148
	.byte	0x1
	.byte	0x41
	.4byte	0x89
	.4byte	0xb0e
	.uleb128 0x26
	.byte	0
	.uleb128 0x25
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4c
	.4byte	0x89
	.4byte	0xb1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x2f
	.ascii	"max\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x89
	.uleb128 0x30
	.4byte	0xc51
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.byte	0x35
	.uleb128 0x27
	.4byte	0xc51
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x39
	.4byte	0xb56
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xc6b
	.byte	0
	.uleb128 0x28
	.4byte	.LVL9
	.4byte	0xdd5
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0xde0
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xdd5
	.uleb128 0x28
	.4byte	.LVL13
	.4byte	0xdbf
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0xdeb
	.uleb128 0x29
	.4byte	.LVL15
	.4byte	0xdca
	.4byte	0xb98
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL16
	.4byte	0xdd5
	.uleb128 0x29
	.4byte	.LVL17
	.4byte	0xdca
	.4byte	0xbb6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL18
	.4byte	0xdf6
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0xdca
	.4byte	0xbd4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL20
	.4byte	0xdd5
	.uleb128 0x29
	.4byte	.LVL21
	.4byte	0xdca
	.4byte	0xbf2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL22
	.4byte	0xe01
	.uleb128 0x28
	.4byte	.LVL23
	.4byte	0xe0c
	.uleb128 0x28
	.4byte	.LVL26
	.4byte	0xe17
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xe01
	.uleb128 0x28
	.4byte	.LVL24
	.4byte	0xdbf
	.uleb128 0x2c
	.4byte	.LVL25
	.4byte	0xe01
	.byte	0
	.uleb128 0x31
	.4byte	.LASF172
	.byte	0x1
	.byte	0x2e
	.4byte	0x89
	.byte	0x1
	.4byte	0xc51
	.uleb128 0x32
	.4byte	.LASF150
	.byte	0x1
	.byte	0x2e
	.4byte	0x89
	.uleb128 0x32
	.4byte	.LASF151
	.byte	0x1
	.byte	0x2e
	.4byte	0x89
	.byte	0
	.uleb128 0x33
	.4byte	.LASF173
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	0xc6b
	.uleb128 0x34
	.uleb128 0x35
	.4byte	.LASF152
	.byte	0x1
	.byte	0x11
	.4byte	0x5de
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0xc51
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcab
	.uleb128 0x37
	.4byte	0xc5d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x38
	.4byte	0xc5e
	.4byte	.LLST0
	.uleb128 0x39
	.4byte	.LVL1
	.4byte	0xe22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0xc51
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc8
	.uleb128 0x2c
	.4byte	.LVL5
	.4byte	0xc6b
	.byte	0
	.uleb128 0x36
	.4byte	0xc2a
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcec
	.uleb128 0x3a
	.4byte	0xc3a
	.4byte	.LLST1
	.uleb128 0x3b
	.4byte	0xc45
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x36
	.4byte	0xac6
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7d
	.uleb128 0x29
	.4byte	.LVL27
	.4byte	0xe2d
	.4byte	0xd13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL28
	.4byte	0xde0
	.uleb128 0x29
	.4byte	.LVL29
	.4byte	0xe2d
	.4byte	0xd30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL30
	.4byte	0xe38
	.uleb128 0x29
	.4byte	.LVL31
	.4byte	0xe2d
	.4byte	0xd4d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL32
	.4byte	0xe17
	.uleb128 0x29
	.4byte	.LVL33
	.4byte	0xe2d
	.4byte	0xd6a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL34
	.4byte	0xe0c
	.uleb128 0x2c
	.4byte	.LVL35
	.4byte	0xdbf
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xa
	.byte	0x20
	.uleb128 0x3c
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xa
	.byte	0x13
	.uleb128 0x3c
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xa
	.byte	0x27
	.uleb128 0x3c
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x1
	.byte	0x8c
	.uleb128 0x3c
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xb
	.byte	0x9
	.uleb128 0x3c
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xc
	.byte	0x10
	.uleb128 0x3c
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xc
	.byte	0x15
	.uleb128 0x3c
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xd
	.byte	0x9
	.uleb128 0x3c
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xb
	.byte	0xa
	.uleb128 0x3c
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xc
	.byte	0x11
	.uleb128 0x3c
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x1
	.byte	0x41
	.uleb128 0x3c
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4c
	.uleb128 0x3c
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x1
	.byte	0x33
	.uleb128 0x3c
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xc
	.byte	0x14
	.uleb128 0x3c
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xc
	.byte	0x13
	.uleb128 0x3c
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xa
	.byte	0x15
	.uleb128 0x3c
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xc
	.byte	0x17
	.uleb128 0x3c
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xc
	.byte	0x12
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x17
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x49
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
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
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
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE119
	.2byte	0x5
	.byte	0x3
	.4byte	direction
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF146:
	.ascii	"servo_init\000"
.LASF2:
	.ascii	"short int\000"
.LASF157:
	.ascii	"dc_motors_init\000"
.LASF47:
	.ascii	"_fnargs\000"
.LASF101:
	.ascii	"_rand48\000"
.LASF80:
	.ascii	"_emergency\000"
.LASF171:
	.ascii	"manual_control\000"
.LASF0:
	.ascii	"signed char\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF144:
	.ascii	"drive_mode\000"
.LASF138:
	.ascii	"direction\000"
.LASF92:
	.ascii	"_atexit0\000"
.LASF135:
	.ascii	"g_usart3_widx\000"
.LASF155:
	.ascii	"enIrqUSART3\000"
.LASF122:
	.ascii	"_wcsrtombs_state\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF60:
	.ascii	"_lbfsize\000"
.LASF128:
	.ascii	"__locale_t\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF119:
	.ascii	"_mbrtowc_state\000"
.LASF154:
	.ascii	"initUSART2\000"
.LASF140:
	.ascii	"move\000"
.LASF37:
	.ascii	"__tm_sec\000"
.LASF151:
	.ascii	"right\000"
.LASF21:
	.ascii	"_off_t\000"
.LASF65:
	.ascii	"_close\000"
.LASF139:
	.ascii	"ready\000"
.LASF134:
	.ascii	"g_usart3_buffer\000"
.LASF150:
	.ascii	"left\000"
.LASF66:
	.ascii	"_ubuf\000"
.LASF141:
	.ascii	"right_distance\000"
.LASF55:
	.ascii	"_base\000"
.LASF39:
	.ascii	"__tm_hour\000"
.LASF24:
	.ascii	"__wch\000"
.LASF95:
	.ascii	"__sf\000"
.LASF46:
	.ascii	"_on_exit_args\000"
.LASF61:
	.ascii	"_cookie\000"
.LASF94:
	.ascii	"__sglue\000"
.LASF7:
	.ascii	"long int\000"
.LASF166:
	.ascii	"dc_motors_backward\000"
.LASF58:
	.ascii	"_flags\000"
.LASF50:
	.ascii	"_is_cxa\000"
.LASF76:
	.ascii	"_stdin\000"
.LASF86:
	.ascii	"_result_k\000"
.LASF160:
	.ascii	"get_ultrasonic\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF173:
	.ascii	"check_input\000"
.LASF90:
	.ascii	"_cvtbuf\000"
.LASF69:
	.ascii	"_offset\000"
.LASF120:
	.ascii	"_mbsrtowcs_state\000"
.LASF118:
	.ascii	"_mbrlen_state\000"
.LASF53:
	.ascii	"_fns\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF33:
	.ascii	"_sign\000"
.LASF129:
	.ascii	"_impure_ptr\000"
.LASF78:
	.ascii	"_stderr\000"
.LASF35:
	.ascii	"_Bigint\000"
.LASF109:
	.ascii	"_gamma_signgam\000"
.LASF148:
	.ascii	"servo_0\000"
.LASF62:
	.ascii	"_read\000"
.LASF36:
	.ascii	"__tm\000"
.LASF25:
	.ascii	"__wchb\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF77:
	.ascii	"_stdout\000"
.LASF89:
	.ascii	"_cvtlen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF59:
	.ascii	"_file\000"
.LASF79:
	.ascii	"_inc\000"
.LASF70:
	.ascii	"_data\000"
.LASF99:
	.ascii	"_niobs\000"
.LASF110:
	.ascii	"_rand_next\000"
.LASF10:
	.ascii	"long long int\000"
.LASF116:
	.ascii	"_signal_buf\000"
.LASF107:
	.ascii	"_asctime_buf\000"
.LASF85:
	.ascii	"_result\000"
.LASF167:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF20:
	.ascii	"_LOCK_T\000"
.LASF168:
	.ascii	"main.c\000"
.LASF91:
	.ascii	"_new\000"
.LASF71:
	.ascii	"_lock\000"
.LASF103:
	.ascii	"_mult\000"
.LASF131:
	.ascii	"g_usart2_buffer\000"
.LASF164:
	.ascii	"printUSART2\000"
.LASF142:
	.ascii	"middle_distance\000"
.LASF63:
	.ascii	"_write\000"
.LASF42:
	.ascii	"__tm_year\000"
.LASF125:
	.ascii	"_nmalloc\000"
.LASF156:
	.ascii	"hcsr_init\000"
.LASF133:
	.ascii	"g_usart2_ridx\000"
.LASF124:
	.ascii	"_nextf\000"
.LASF111:
	.ascii	"_r48\000"
.LASF41:
	.ascii	"__tm_mon\000"
.LASF51:
	.ascii	"_atexit\000"
.LASF83:
	.ascii	"__sdidinit\000"
.LASF169:
	.ascii	"/home/emir/Desktop/4-godina/MSUT/project\000"
.LASF23:
	.ascii	"wint_t\000"
.LASF145:
	.ascii	"automatic_control\000"
.LASF88:
	.ascii	"_freelist\000"
.LASF114:
	.ascii	"_wctomb_state\000"
.LASF158:
	.ascii	"dc_motors_stop\000"
.LASF136:
	.ascii	"g_usart3_ridx\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF100:
	.ascii	"_iobs\000"
.LASF123:
	.ascii	"_h_errno\000"
.LASF29:
	.ascii	"_flock_t\000"
.LASF44:
	.ascii	"__tm_yday\000"
.LASF54:
	.ascii	"__sbuf\000"
.LASF73:
	.ascii	"_flags2\000"
.LASF97:
	.ascii	"__FILE\000"
.LASF28:
	.ascii	"_mbstate_t\000"
.LASF57:
	.ascii	"__sFILE\000"
.LASF72:
	.ascii	"_mbstate\000"
.LASF112:
	.ascii	"_mblen_state\000"
.LASF147:
	.ascii	"servo_90\000"
.LASF52:
	.ascii	"_ind\000"
.LASF48:
	.ascii	"_dso_handle\000"
.LASF149:
	.ascii	"servo_180\000"
.LASF81:
	.ascii	"_unspecified_locale_info\000"
.LASF162:
	.ascii	"dc_motors_right\000"
.LASF32:
	.ascii	"_maxwds\000"
.LASF74:
	.ascii	"_reent\000"
.LASF102:
	.ascii	"_seed\000"
.LASF161:
	.ascii	"dc_motors_forward\000"
.LASF159:
	.ascii	"delay_ms\000"
.LASF26:
	.ascii	"__count\000"
.LASF127:
	.ascii	"__lock\000"
.LASF27:
	.ascii	"__value\000"
.LASF64:
	.ascii	"_seek\000"
.LASF43:
	.ascii	"__tm_wday\000"
.LASF22:
	.ascii	"_fpos_t\000"
.LASF19:
	.ascii	"long double\000"
.LASF75:
	.ascii	"_errno\000"
.LASF96:
	.ascii	"char\000"
.LASF68:
	.ascii	"_blksize\000"
.LASF137:
	.ascii	"mode\000"
.LASF56:
	.ascii	"_size\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF152:
	.ascii	"letter\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF31:
	.ascii	"_next\000"
.LASF106:
	.ascii	"_strtok_last\000"
.LASF49:
	.ascii	"_fntypes\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF153:
	.ascii	"initUSART3\000"
.LASF104:
	.ascii	"_add\000"
.LASF30:
	.ascii	"__ULong\000"
.LASF117:
	.ascii	"_getdate_err\000"
.LASF130:
	.ascii	"_global_impure_ptr\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF105:
	.ascii	"_unused_rand\000"
.LASF143:
	.ascii	"left_distance\000"
.LASF165:
	.ascii	"dc_motors_set_speed\000"
.LASF84:
	.ascii	"__cleanup\000"
.LASF34:
	.ascii	"_wds\000"
.LASF98:
	.ascii	"_glue\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF115:
	.ascii	"_l64a_buf\000"
.LASF93:
	.ascii	"_sig_func\000"
.LASF163:
	.ascii	"dc_motors_left\000"
.LASF67:
	.ascii	"_nbuf\000"
.LASF126:
	.ascii	"_unused\000"
.LASF45:
	.ascii	"__tm_isdst\000"
.LASF108:
	.ascii	"_localtime_buf\000"
.LASF38:
	.ascii	"__tm_min\000"
.LASF132:
	.ascii	"g_usart2_widx\000"
.LASF121:
	.ascii	"_wcrtomb_state\000"
.LASF113:
	.ascii	"_mbtowc_state\000"
.LASF87:
	.ascii	"_p5s\000"
.LASF170:
	.ascii	"main\000"
.LASF82:
	.ascii	"_locale\000"
.LASF172:
	.ascii	"max_distance\000"
.LASF40:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
