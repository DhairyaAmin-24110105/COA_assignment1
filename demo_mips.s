	.file	1 "demo.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.rdata
	.align	2
$LC0:
	.ascii	"%d\000"
	.align	2
$LC1:
	.ascii	"Invalid input\012\000"
	.align	2
$LC3:
	.ascii	"Time taken: %lf seconds\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,112,$31		# vars= 72, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	sw	$16,100($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,92($fp)
	addiu	$2,$fp,28
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L2
	nop

	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$7,$2
	li	$6,14			# 0xe
	li	$5,1			# 0x1
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,1			# 0x1
	.option	pic0
	b	$L14
	nop

	.option	pic2
$L2:
	lw	$2,28($fp)
	sll	$2,$2,2
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,52($fp)
	lw	$2,28($fp)
	sll	$2,$2,2
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,56($fp)
	lw	$2,28($fp)
	sll	$2,$2,2
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,60($fp)
	sw	$0,32($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L7:
	lw	$2,28($fp)
	sll	$4,$2,2
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$16,$3,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,0($16)
	lw	$2,28($fp)
	sll	$4,$2,2
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,56($fp)
	addu	$16,$3,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,0($16)
	lw	$2,28($fp)
	sll	$4,$2,2
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,60($fp)
	addu	$16,$3,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,0($16)
	sw	$0,36($fp)
	.option	pic0
	b	$L5
	nop

	.option	pic2
$L6:
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,36($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	li	$3,8			# 0x8
	sw	$3,0($2)
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,36($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	li	$3,9			# 0x9
	sw	$3,0($2)
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,60($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,36($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$0,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L5:
	lw	$2,28($fp)
	lw	$3,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L6
	nop

	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L4:
	lw	$2,28($fp)
	lw	$3,32($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L7
	nop

	addiu	$2,$fp,76
	move	$5,$2
	li	$4,1			# 0x1
	lw	$2,%call16(clock_gettime)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,clock_gettime
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,40($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L13:
	sw	$0,44($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L12:
	sw	$0,48($fp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L11:
	lw	$2,40($fp)
	sll	$2,$2,2
	lw	$3,60($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,44($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$4,0($2)
	lw	$2,40($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,48($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,48($fp)
	sll	$2,$2,2
	lw	$5,56($fp)
	addu	$2,$5,$2
	lw	$5,0($2)
	lw	$2,44($fp)
	sll	$2,$2,2
	addu	$2,$5,$2
	lw	$2,0($2)
	mul	$3,$3,$2
	lw	$2,40($fp)
	sll	$2,$2,2
	lw	$5,60($fp)
	addu	$2,$5,$2
	lw	$5,0($2)
	lw	$2,44($fp)
	sll	$2,$2,2
	addu	$2,$5,$2
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,48($fp)
	addiu	$2,$2,1
	sw	$2,48($fp)
$L10:
	lw	$2,28($fp)
	lw	$3,48($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L11
	nop

	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
$L9:
	lw	$2,28($fp)
	lw	$3,44($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L12
	nop

	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L8:
	lw	$2,28($fp)
	lw	$3,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L13
	nop

	addiu	$2,$fp,84
	move	$5,$2
	li	$4,1			# 0x1
	lw	$2,%call16(clock_gettime)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,clock_gettime
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,84($fp)
	lw	$2,76($fp)
	subu	$2,$3,$2
	mtc1	$2,$f0
	cvt.d.w	$f2,$f0
	lw	$3,88($fp)
	lw	$2,80($fp)
	subu	$2,$3,$2
	mtc1	$2,$f0
	cvt.d.w	$f4,$f0
	lui	$2,%hi($LC2)
	ldc1	$f0,%lo($LC2)($2)
	div.d	$f0,$f4,$f0
	add.d	$f0,$f2,$f0
	sdc1	$f0,64($fp)
	lw	$7,68($fp)
	lw	$6,64($fp)
	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L14:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,92($fp)
	lw	$2,0($2)
	beq	$3,$2,$L15
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L15:
	move	$2,$4
	move	$sp,$fp
	lw	$31,108($sp)
	lw	$fp,104($sp)
	lw	$16,100($sp)
	addiu	$sp,$sp,112
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.rdata
	.align	3
$LC2:
	.word	1104006501
	.word	0
	.ident	"GCC: (Ubuntu 10.3.0-1ubuntu1) 10.3.0"
	.section	.note.GNU-stack,"",@progbits
