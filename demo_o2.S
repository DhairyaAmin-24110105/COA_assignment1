	.file	"demo.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC1:
	.string	"Invalid input\n"
.LC3:
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	leaq	28(%rsp), %rsi
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
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L19
	addq	$88, %rsp
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
	movslq	28(%rsp), %rbx
	leaq	0(,%rbx,8), %rbp
	movq	%rbp, %rdi
	call	malloc@PLT
	movq	%rbp, %rdi
	movq	%rax, (%rsp)
	call	malloc@PLT
	movq	%rbp, %rdi
	movq	%rax, %r12
	call	malloc@PLT
	movq	%rax, %rbp
	testl	%ebx, %ebx
	jle	.L9
	leaq	0(,%rbx,4), %r14
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L8:
	movq	%r14, %rdi
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, %rcx
	movq	(%rsp), %rax
	movq	%rcx, 8(%rsp)
	movq	%rcx, (%rax,%r13,8)
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, (%r12,%r13,8)
	movq	%rax, %r15
	call	malloc@PLT
	movq	8(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rax, 0(%rbp,%r13,8)
	.p2align 4,,10
	.p2align 3
.L7:
	movl	$8, (%rcx,%rdx,4)
	movl	$9, (%r15,%rdx,4)
	movl	$0, (%rax,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jne	.L7
	addq	$1, %r13
	cmpq	%r13, %rbx
	jne	.L8
.L9:
	movl	$1, %edi
	leaq	32(%rsp), %rsi
	call	clock_gettime@PLT
	movslq	28(%rsp), %rdi
	testl	%edi, %edi
	jle	.L5
	leaq	0(,%rdi,4), %r10
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L6:
	movq	(%rsp), %rax
	movq	0(%rbp,%r11,8), %r9
	xorl	%esi, %esi
	movq	(%rax,%r11,8), %r8
	.p2align 4,,10
	.p2align 3
.L12:
	movl	(%r9,%rsi), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%r12,%rax,8), %rdx
	movl	(%rdx,%rsi), %edx
	imull	(%r8,%rax,4), %edx
	addq	$1, %rax
	addl	%edx, %ecx
	cmpq	%rax, %rdi
	jne	.L10
	movl	%ecx, (%r9,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r10
	jne	.L12
	addq	$1, %r11
	cmpq	%r11, %rdi
	jne	.L6
.L5:
	leaq	48(%rsp), %rsi
	movl	$1, %edi
	call	clock_gettime@PLT
	movq	56(%rsp), %rax
	pxor	%xmm0, %xmm0
	subq	40(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	48(%rsp), %rax
	subq	32(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %edi
	movl	$1, %eax
	divsd	.LC2(%rip), %xmm0
	leaq	.LC3(%rip), %rsi
	addsd	%xmm1, %xmm0
	call	__printf_chk@PLT
	xorl	%eax, %eax
	jmp	.L1
.L19:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
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
