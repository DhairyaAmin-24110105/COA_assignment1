	.file	"demo.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"Invalid input\n"
.LC3:
	.string	"Time taken: %lf seconds\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L2
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L14
.L2:
	movl	-120(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -96(%rbp)
	movl	-120(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -88(%rbp)
	movl	-120(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -80(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L4
.L7:
	movl	-120(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-96(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-120(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-120(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-80(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -112(%rbp)
	jmp	.L5
.L6:
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$8, (%rax)
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$9, (%rax)
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -112(%rbp)
.L5:
	movl	-120(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	jl	.L6
	addl	$1, -116(%rbp)
.L4:
	movl	-120(%rbp), %eax
	cmpl	%eax, -116(%rbp)
	jl	.L7
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	clock_gettime@PLT
	movl	$0, -108(%rbp)
	jmp	.L8
.L13:
	movl	$0, -104(%rbp)
	jmp	.L9
.L12:
	movl	$0, -100(%rbp)
	jmp	.L10
.L11:
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-104(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-88(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-104(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-80(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-104(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -100(%rbp)
.L10:
	movl	-120(%rbp), %eax
	cmpl	%eax, -100(%rbp)
	jl	.L11
	addl	$1, -104(%rbp)
.L9:
	movl	-120(%rbp), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L12
	addl	$1, -108(%rbp)
.L8:
	movl	-120(%rbp), %eax
	cmpl	%eax, -108(%rbp)
	jl	.L13
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	clock_gettime@PLT
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	subq	%rdx, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	subq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
.L14:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
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
