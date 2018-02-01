	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_print_func
	.p2align	4, 0x90
_print_func:                            ## @print_func
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmpl	$60, -12(%rbp)
	jge	LBB0_14
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -16(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$240, -16(%rbp)
	jge	LBB0_12
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	cmpl	$1, (%rax,%rcx,4)
	jne	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_3 Depth=2
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jmp	LBB0_10
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	LBB0_8
## BB#7:                                ##   in Loop: Header=BB0_3 Depth=2
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=2
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB0_3
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
## BB#13:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_14:
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI1_0:
	.quad	4746794007248502784     ## double 2147483648
LCPI1_1:
	.quad	4611686018427387904     ## double 2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_define_init_val
	.p2align	4, 0x90
_define_init_val:                       ## @define_init_val
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	cmpl	$60, -16(%rbp)
	jge	LBB1_8
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	$0, -20(%rbp)
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$240, -20(%rbp)
	jge	LBB1_6
## BB#4:                                ##   in Loop: Header=BB1_3 Depth=2
	callq	_rand
	movsd	LCPI1_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI1_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rcx
	movslq	-20(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
## BB#5:                                ##   in Loop: Header=BB1_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB1_3
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB1_1
LBB1_8:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_cp_first
	.p2align	4, 0x90
_cp_first:                              ## @cp_first
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	cmpl	$60, -20(%rbp)
	jge	LBB2_8
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	$0, -24(%rbp)
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$240, -24(%rbp)
	jge	LBB2_6
## BB#4:                                ##   in Loop: Header=BB2_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
## BB#5:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB2_3
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_1
LBB2_8:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_cp_prev_to_next
	.p2align	4, 0x90
_cp_prev_to_next:                       ## @cp_prev_to_next
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	cmpl	$60, -20(%rbp)
	jge	LBB3_8
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	$0, -24(%rbp)
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$240, -24(%rbp)
	jge	LBB3_6
## BB#4:                                ##   in Loop: Header=BB3_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
## BB#5:                                ##   in Loop: Header=BB3_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_3
LBB3_6:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_7
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB3_1
LBB3_8:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_generational_change
	.p2align	4, 0x90
_generational_change:                   ## @generational_change
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_3 Depth 2
	cmpl	$60, -24(%rbp)
	jge	LBB4_45
## BB#2:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	$0, -28(%rbp)
LBB4_3:                                 ##   Parent Loop BB4_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$240, -28(%rbp)
	jge	LBB4_43
## BB#4:                                ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$0, -24(%rbp)
	jne	LBB4_12
## BB#5:                                ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$0, -28(%rbp)
	jne	LBB4_7
## BB#6:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	addl	(%rax,%rcx,4), %edx
	movl	%edx, -20(%rbp)
	jmp	LBB4_11
LBB4_7:                                 ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$239, -28(%rbp)
	jne	LBB4_9
## BB#8:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movl	-28(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movl	%edx, -20(%rbp)
	jmp	LBB4_10
LBB4_9:                                 ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movl	-28(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	addl	(%rax,%rcx,4), %edx
	movl	%edx, -20(%rbp)
LBB4_10:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_11
LBB4_11:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_28
LBB4_12:                                ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$59, -24(%rbp)
	jne	LBB4_20
## BB#13:                               ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$0, -28(%rbp)
	jne	LBB4_15
## BB#14:                               ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movl	%ecx, -20(%rbp)
	jmp	LBB4_19
LBB4_15:                                ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$239, -28(%rbp)
	jne	LBB4_17
## BB#16:                               ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movl	%ecx, -20(%rbp)
	jmp	LBB4_18
LBB4_17:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movl	%ecx, -20(%rbp)
LBB4_18:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_19
LBB4_19:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_27
LBB4_20:                                ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$0, -28(%rbp)
	jne	LBB4_22
## BB#21:                               ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movl	%ecx, -20(%rbp)
	jmp	LBB4_26
LBB4_22:                                ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$239, -28(%rbp)
	jne	LBB4_24
## BB#23:                               ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	addl	(%rax,%rdx,4), %ecx
	movl	%ecx, -20(%rbp)
	jmp	LBB4_25
LBB4_24:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	addl	(%rax,%rdx,4), %ecx
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	imulq	$960, %rdx, %rdx        ## imm = 0x3C0
	addq	%rdx, %rax
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	addl	(%rax,%rdx,4), %ecx
	movl	%ecx, -20(%rbp)
LBB4_25:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_26
LBB4_26:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_27
LBB4_27:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_28
LBB4_28:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	cmpl	$1, (%rax,%rcx,4)
	jne	LBB4_34
## BB#29:                               ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$2, -20(%rbp)
	je	LBB4_31
## BB#30:                               ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$3, -20(%rbp)
	jne	LBB4_32
LBB4_31:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
	jmp	LBB4_33
LBB4_32:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
LBB4_33:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_41
LBB4_34:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	LBB4_39
## BB#35:                               ##   in Loop: Header=BB4_3 Depth=2
	cmpl	$3, -20(%rbp)
	jne	LBB4_37
## BB#36:                               ##   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
	jmp	LBB4_38
LBB4_37:                                ##   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
LBB4_38:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_40
LBB4_39:                                ##   in Loop: Header=BB4_3 Depth=2
	leaq	L_.str.4(%rip), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$960, %rcx, %rcx        ## imm = 0x3C0
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movb	$0, %al
	callq	_printf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
LBB4_40:                                ##   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_41
LBB4_41:                                ##   in Loop: Header=BB4_3 Depth=2
	movl	$0, -20(%rbp)
## BB#42:                               ##   in Loop: Header=BB4_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB4_3
LBB4_43:                                ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_44
LBB4_44:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB4_1
LBB4_45:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	subq	$172832, %rsp           ## imm = 0x2A320
	leaq	-57616(%rbp), %rdi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -172820(%rbp)
	callq	_define_init_val
	leaq	-115216(%rbp), %rsi
	leaq	-57616(%rbp), %rdi
	callq	_cp_first
	leaq	-115216(%rbp), %rdi
	callq	_print_func
	movl	$0, -172824(%rbp)
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$1000, -172824(%rbp)    ## imm = 0x3E8
	jge	LBB5_4
## BB#2:                                ##   in Loop: Header=BB5_1 Depth=1
	movl	$1, %edi
	callq	_sleep
	leaq	L_.str.5(%rip), %rdi
	movl	-172824(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -172828(%rbp)     ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-172816(%rbp), %rsi
	leaq	-115216(%rbp), %rdi
	movl	%eax, -172832(%rbp)     ## 4-byte Spill
	callq	_generational_change
	leaq	-172816(%rbp), %rdi
	callq	_print_func
	leaq	-172816(%rbp), %rsi
	leaq	-115216(%rbp), %rdi
	callq	_cp_prev_to_next
## BB#3:                                ##   in Loop: Header=BB5_1 Depth=1
	movl	-172824(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172824(%rbp)
	jmp	LBB5_1
LBB5_4:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB5_6
## BB#5:
	movl	$1, %eax
	addq	$172832, %rsp           ## imm = 0x2A320
	popq	%rbp
	retq
LBB5_6:
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0"

L_.str.1:                               ## @.str.1
	.asciz	"-"

L_.str.2:                               ## @.str.2
	.asciz	"e"

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L_.str.4:                               ## @.str.4
	.asciz	"\n------------e------------\nin prev_val[%d][%d] :%d\n"

L_.str.5:                               ## @.str.5
	.asciz	"\347\254\254%d\344\270\226\344\273\243\n"


.subsections_via_symbols
