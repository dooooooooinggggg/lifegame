	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movl	$0, -4(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_taju
	.p2align	4, 0x90
_taju:                                  ## @taju
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$16400, %rsp            ## imm = 0x4010
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB1_2
## BB#1:
	movl	$1, %eax
	addq	$16400, %rsp            ## imm = 0x4010
	popq	%rbp
	retq
LBB1_2:
	callq	___stack_chk_fail
	.cfi_endproc


.subsections_via_symbols
