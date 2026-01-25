	.file	"demo.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC1:
	.string	"Invalid input\n"
.LC5:
	.string	"Time taken: %lf seconds\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC0(%rip), %rdi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leaq	60(%rsp), %rsi
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L2
	movq	stderr(%rip), %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
.L1:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L22
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L2:
	.cfi_restore_state
	movslq	60(%rsp), %rbp
	leaq	0(,%rbp,8), %r13
	movq	%rbp, %r14
	movq	%r13, %rdi
	call	malloc@PLT
	movq	%r13, %rdi
	movq	%rax, %r12
	call	malloc@PLT
	movq	%r13, %rdi
	movq	%rax, %r15
	call	malloc@PLT
	movq	%rax, %r13
	testl	%ebp, %ebp
	jle	.L11
	leal	-1(%r14), %eax
	movq	%r12, 8(%rsp)
	salq	$2, %rbp
	xorl	%ebx, %ebx
	movl	%eax, 40(%rsp)
	movl	%r14d, %eax
	movq	%rax, 32(%rsp)
	movl	%r14d, %eax
	shrl	$2, %eax
	movq	%r15, 16(%rsp)
	leal	-1(%rax), %r9d
	movl	%r14d, %eax
	movq	%r13, 24(%rsp)
	movl	%r14d, %r13d
	andl	$-4, %eax
	addq	$1, %r9
	movl	%eax, 44(%rsp)
	salq	$4, %r9
	movq	%r9, %r14
	.p2align 4,,10
	.p2align 3
.L10:
	movq	%rbp, %rdi
	call	malloc@PLT
	movq	%rbp, %rdi
	movq	%rax, %r12
	movq	8(%rsp), %rax
	movq	%r12, (%rax,%rbx,8)
	call	malloc@PLT
	movq	%rbp, %rdi
	movq	%rax, %r15
	movq	16(%rsp), %rax
	movq	%r15, (%rax,%rbx,8)
	call	malloc@PLT
	cmpl	$2, 40(%rsp)
	pxor	%xmm0, %xmm0
	movdqa	.LC2(%rip), %xmm2
	movq	%rax, %rdx
	movq	24(%rsp), %rax
	movdqa	.LC3(%rip), %xmm1
	movq	%rdx, (%rax,%rbx,8)
	jbe	.L16
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L8:
	movups	%xmm2, (%r12,%rax)
	movups	%xmm1, (%r15,%rax)
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r14, %rax
	jne	.L8
	movl	44(%rsp), %eax
	movl	%eax, %edi
	cmpl	%r13d, %eax
	je	.L9
.L7:
	movslq	%edi, %r10
	movl	$8, (%r12,%r10,4)
	leaq	0(,%r10,4), %rax
	movl	$9, (%r15,%r10,4)
	movl	$0, (%rdx,%r10,4)
	leal	1(%rdi), %r10d
	cmpl	%r10d, %r13d
	jle	.L9
	addl	$2, %edi
	movl	$0, 4(%rdx,%rax)
	movl	$8, 4(%r12,%rax)
	movl	$9, 4(%r15,%rax)
	cmpl	%edi, %r13d
	jle	.L9
	movl	$8, 8(%r12,%rax)
	movl	$9, 8(%r15,%rax)
	movl	$0, 8(%rdx,%rax)
.L9:
	addq	$1, %rbx
	cmpq	32(%rsp), %rbx
	jne	.L10
	movq	8(%rsp), %r12
	movq	16(%rsp), %r15
	movq	24(%rsp), %r13
.L11:
	movl	$1, %edi
	leaq	64(%rsp), %rsi
	call	clock_gettime@PLT
	movslq	60(%rsp), %rdi
	testl	%edi, %edi
	jle	.L5
	leaq	0(,%rdi,4), %r11
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L6:
	movq	0(%r13,%rbx,8), %r9
	movq	(%r12,%rbx,8), %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L14:
	movl	(%r9,%rsi), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L12:
	movq	(%r15,%rax,8), %rdx
	movl	(%rdx,%rsi), %edx
	imull	(%r8,%rax,4), %edx
	addq	$1, %rax
	addl	%edx, %ecx
	cmpq	%rax, %rdi
	jne	.L12
	movl	%ecx, (%r9,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r11
	jne	.L14
	addq	$1, %rbx
	cmpq	%rbx, %rdi
	jne	.L6
.L5:
	leaq	80(%rsp), %rsi
	movl	$1, %edi
	call	clock_gettime@PLT
	movq	88(%rsp), %rax
	pxor	%xmm0, %xmm0
	subq	72(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	80(%rsp), %rax
	subq	64(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %edi
	movl	$1, %eax
	divsd	.LC4(%rip), %xmm0
	leaq	.LC5(%rip), %rsi
	addsd	%xmm1, %xmm0
	call	__printf_chk@PLT
	xorl	%eax, %eax
	jmp	.L1
.L16:
	xorl	%edi, %edi
	jmp	.L7
.L22:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	8
	.long	8
	.long	8
	.long	8
	.align 16
.LC3:
	.long	9
	.long	9
	.long	9
	.long	9
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
