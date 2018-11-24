	.file	"code.c"
	.section	.rodata
.LC0:
	.string	"Enter a[%d][%d] element: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter b[%d][%d] element: "
.LC3:
	.string	"%d "
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -180(%rbp)
	jmp	.L2
.L5:
	movl	$0, -176(%rbp)
	jmp	.L3
.L4:
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-144(%rbp), %rcx
	movl	-176(%rbp), %eax
	movslq	%eax, %rsi
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	addl	$1, -176(%rbp)
.L3:
	cmpl	$2, -176(%rbp)
	jle	.L4
	addl	$1, -180(%rbp)
.L2:
	cmpl	$2, -180(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar
	movl	$0, -172(%rbp)
	jmp	.L6
.L9:
	movl	$0, -168(%rbp)
	jmp	.L7
.L8:
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	leaq	-96(%rbp), %rcx
	movl	-168(%rbp), %eax
	movslq	%eax, %rsi
	movl	-172(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	addl	$1, -168(%rbp)
.L7:
	cmpl	$2, -168(%rbp)
	jle	.L8
	addl	$1, -172(%rbp)
.L6:
	cmpl	$2, -172(%rbp)
	jle	.L9
	movl	$0, -164(%rbp)
	jmp	.L10
.L15:
	movl	$0, -160(%rbp)
	jmp	.L11
.L14:
	movl	-160(%rbp), %eax
	movslq	%eax, %rcx
	movl	-164(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	$0, -48(%rbp,%rax,4)
	movl	$0, -156(%rbp)
	jmp	.L12
.L13:
	movl	-160(%rbp), %eax
	movslq	%eax, %rcx
	movl	-164(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-48(%rbp,%rax,4), %ecx
	movl	-156(%rbp), %eax
	movslq	%eax, %rsi
	movl	-164(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	-144(%rbp,%rax,4), %esi
	movl	-160(%rbp), %eax
	movslq	%eax, %rdi
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rdi, %rax
	movl	-96(%rbp,%rax,4), %eax
	imull	%esi, %eax
	addl	%eax, %ecx
	movl	-160(%rbp), %eax
	movslq	%eax, %rsi
	movl	-164(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	%ecx, -48(%rbp,%rax,4)
	addl	$1, -156(%rbp)
.L12:
	cmpl	$2, -156(%rbp)
	jle	.L13
	addl	$1, -160(%rbp)
.L11:
	cmpl	$2, -160(%rbp)
	jle	.L14
	addl	$1, -164(%rbp)
.L10:
	cmpl	$2, -164(%rbp)
	jle	.L15
	movl	$10, %edi
	call	putchar
	movl	$0, -152(%rbp)
	jmp	.L16
.L19:
	movl	$0, -148(%rbp)
	jmp	.L17
.L18:
	movl	-148(%rbp), %eax
	movslq	%eax, %rcx
	movl	-152(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -148(%rbp)
.L17:
	cmpl	$2, -148(%rbp)
	jle	.L18
	movl	$10, %edi
	call	putchar
	addl	$1, -152(%rbp)
.L16:
	cmpl	$2, -152(%rbp)
	jle	.L19
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
