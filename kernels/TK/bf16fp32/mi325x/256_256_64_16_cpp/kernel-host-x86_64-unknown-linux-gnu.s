	.text
	.file	"kernel.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.globl	_Z23__device_stub__micro_tk13micro_globals # -- Begin function _Z23__device_stub__micro_tk13micro_globals
	.p2align	4, 0x90
	.type	_Z23__device_stub__micro_tk13micro_globals,@function
_Z23__device_stub__micro_tk13micro_globals: # @_Z23__device_stub__micro_tk13micro_globals
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, (%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	movq	%rsp, %r9
	movl	$_Z8micro_tk13micro_globals, %edi
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$72, %rsp
	.cfi_adjust_cfa_offset -72
	retq
.Lfunc_end0:
	.size	_Z23__device_stub__micro_tk13micro_globals, .Lfunc_end0-_Z23__device_stub__micro_tk13micro_globals
	.cfi_endproc
                                        # -- End function
	.globl	_Z6matmulP14__hip_bfloat16S0_S0_ # -- Begin function _Z6matmulP14__hip_bfloat16S0_S0_
	.p2align	4, 0x90
	.type	_Z6matmulP14__hip_bfloat16S0_S0_,@function
_Z6matmulP14__hip_bfloat16S0_S0_:       # @_Z6matmulP14__hip_bfloat16S0_S0_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$208, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$_Z8micro_tk13micro_globals, %edi
	movl	$8, %esi
	movl	$65536, %edx                    # imm = 0x10000
	callq	hipFuncSetAttribute
	movabsq	$4294967808, %rdx               # imm = 0x100000200
	leaq	512(%rdx), %rdi
	movl	$65536, %r8d                    # imm = 0x10000
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB1_2
# %bb.1:
	movq	%r15, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$1, 80(%rsp)
	movq	$8192, 88(%rsp)                 # imm = 0x2000
	movq	$8192, 96(%rsp)                 # imm = 0x2000
	movq	%r14, 112(%rsp)
	movq	$1, 120(%rsp)
	movq	$1, 128(%rsp)
	movq	$8192, 136(%rsp)                # imm = 0x2000
	movq	$8192, 144(%rsp)                # imm = 0x2000
	movq	%rbx, 160(%rsp)
	movq	$1, 168(%rsp)
	movq	$1, 176(%rsp)
	movq	$8192, 184(%rsp)                # imm = 0x2000
	movq	$8192, 192(%rsp)                # imm = 0x2000
	leaq	64(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	movq	%rsp, %r9
	movl	$_Z8micro_tk13micro_globals, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_2:
	callq	hipDeviceSynchronize
	addq	$208, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_Z6matmulP14__hip_bfloat16S0_S0_, .Lfunc_end1-_Z6matmulP14__hip_bfloat16S0_S0_
	.cfi_endproc
                                        # -- End function
	.globl	_Z12rocblas_gemmP14__hip_bfloat16S0_S0_iii # -- Begin function _Z12rocblas_gemmP14__hip_bfloat16S0_S0_iii
	.p2align	4, 0x90
	.type	_Z12rocblas_gemmP14__hip_bfloat16S0_S0_iii,@function
_Z12rocblas_gemmP14__hip_bfloat16S0_S0_iii: # @_Z12rocblas_gemmP14__hip_bfloat16S0_S0_iii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %r13d
	movl	%ecx, %ebp
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	16(%rsp), %rdi
	callq	rocblas_create_handle
	movl	$1065353216, 12(%rsp)           # imm = 0x3F800000
	movl	$0, 8(%rsp)
	movq	16(%rsp), %rdi
	leaq	8(%rsp), %r10
	leaq	12(%rsp), %rax
	movl	$112, %esi
	movl	$111, %edx
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	movl	%r14d, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$151
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	rocblas_gemm_ex
	addq	$144, %rsp
	.cfi_adjust_cfa_offset -144
	movq	16(%rsp), %rdi
	callq	rocblas_destroy_handle
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_Z12rocblas_gemmP14__hip_bfloat16S0_S0_iii, .Lfunc_end2-_Z12rocblas_gemmP14__hip_bfloat16S0_S0_iii
	.cfi_endproc
                                        # -- End function
	.globl	_Z8cpu_gemmPfS_S_iii            # -- Begin function _Z8cpu_gemmPfS_S_iii
	.p2align	4, 0x90
	.type	_Z8cpu_gemmPfS_S_iii,@function
_Z8cpu_gemmPfS_S_iii:                   # @_Z8cpu_gemmPfS_S_iii
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%ecx, 20(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r9d, 12(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %r10
	leaq	40(%rsp), %r11
	leaq	48(%rsp), %rbx
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	20(%rsp), %r9
	movl	$.L__unnamed_1, %edi
	movl	$_Z8cpu_gemmPfS_S_iii.omp_outlined, %edx
	movl	$6, %esi
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_Z8cpu_gemmPfS_S_iii, .Lfunc_end3-_Z8cpu_gemmPfS_S_iii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _Z8cpu_gemmPfS_S_iii.omp_outlined
	.type	_Z8cpu_gemmPfS_S_iii.omp_outlined,@function
_Z8cpu_gemmPfS_S_iii.omp_outlined:      # @_Z8cpu_gemmPfS_S_iii.omp_outlined
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movslq	(%rdx), %r12
	testq	%r12, %r12
	setg	%al
	movl	(%rcx), %edx
	testl	%edx, %edx
	setg	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB4_29
# %bb.1:
	movq	%r8, %r15
	movq	%r9, %rbx
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movslq	%edx, %r13
	imulq	%r13, %r12
	decq	%r12
	movq	$0, 24(%rsp)
	movq	%r12, 8(%rsp)
	movq	$1, 64(%rsp)
	movl	$0, 20(%rsp)
	movl	(%rdi), %esi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	72(%rsp), %rax
	leaq	28(%rsp), %rcx
	leaq	32(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%esi, 24(%rsp)                  # 4-byte Spill
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_8@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	8(%rsp), %rax
	cmpq	%r12, %rax
	cmovlq	%rax, %r12
	movq	%r12, 8(%rsp)
	movq	24(%rsp), %rcx
	cmpq	%r12, %rcx
	jle	.LBB4_2
.LBB4_28:                               # %._crit_edge42
	movl	$.L__unnamed_3, %edi
	movl	16(%rsp), %esi                  # 4-byte Reload
	callq	__kmpc_for_static_fini@PLT
.LBB4_29:
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %.lr.ph41
	.cfi_def_cfa_offset 128
	movq	136(%rsp), %rax
	movslq	(%r15), %rsi
	movq	(%rax), %rdi
	movl	(%r14), %r8d
	testq	%rsi, %rsi
	jle	.LBB4_3
# %bb.11:                               # %.lr.ph.us.preheader
	movq	128(%rsp), %rax
	movq	(%rbx), %rdx
	movq	(%rax), %rax
	movl	%esi, %r15d
	andl	$2147483640, %r15d              # imm = 0x7FFFFFF8
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	addq	$16, %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	%esi, %ebx
	shrl	$3, %ebx
	andl	$268435455, %ebx                # imm = 0xFFFFFFF
	shlq	$5, %rbx
	jmp	.LBB4_12
	.p2align	4, 0x90
.LBB4_22:                               # %._crit_edge.us
                                        #   in Loop: Header=BB4_12 Depth=1
	imull	%r8d, %eax
	addl	%edx, %eax
	cltq
	movss	%xmm0, (%rdi,%rax,4)
	leaq	1(%rcx), %rax
	cmpq	%r12, %rcx
	movq	%rax, %rcx
	je	.LBB4_28
.LBB4_12:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
                                        #     Child Loop BB4_21 Depth 2
	movq	%rcx, %rax
	orq	%r13, %rax
	shrq	$32, %rax
	je	.LBB4_13
# %bb.14:                               #   in Loop: Header=BB4_12 Depth=1
	movq	%rcx, %rax
	cqto
	idivq	%r13
	jmp	.LBB4_15
	.p2align	4, 0x90
.LBB4_13:                               #   in Loop: Header=BB4_12 Depth=1
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	4(%rsp)                         # 4-byte Folded Reload
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
.LBB4_15:                               #   in Loop: Header=BB4_12 Depth=1
	movl	%esi, %r9d
	imull	%eax, %r9d
	movl	%esi, %r10d
	imull	%edx, %r10d
	movslq	%r9d, %rbp
	movslq	%r10d, %r14
	cmpl	$8, %esi
	jae	.LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_12 Depth=1
	xorps	%xmm0, %xmm0
	xorl	%r11d, %r11d
	jmp	.LBB4_20
	.p2align	4, 0x90
.LBB4_17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	40(%rsp), %r9                   # 8-byte Reload
	leaq	(%r9,%rbp,4), %r11
	movq	32(%rsp), %r9                   # 8-byte Reload
	leaq	(%r9,%r14,4), %r9
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	xorps	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB4_18:                               # %vector.body
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-16(%r11,%r10), %xmm2
	movups	(%r11,%r10), %xmm3
	movups	-16(%r9,%r10), %xmm4
	mulps	%xmm2, %xmm4
	addps	%xmm4, %xmm0
	movups	(%r9,%r10), %xmm2
	mulps	%xmm3, %xmm2
	addps	%xmm2, %xmm1
	addq	$32, %r10
	cmpq	%r10, %rbx
	jne	.LBB4_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB4_12 Depth=1
	addps	%xmm0, %xmm1
	movaps	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addps	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	shufps	$85, %xmm2, %xmm0               # xmm0 = xmm0[1,1],xmm2[1,1]
	addss	%xmm2, %xmm0
	movq	%r15, %r11
	cmpq	%rsi, %r15
	je	.LBB4_22
.LBB4_20:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	56(%rsp), %r9                   # 8-byte Reload
	leaq	(%r9,%rbp,4), %r9
	movq	48(%rsp), %r10                  # 8-byte Reload
	leaq	(%r10,%r14,4), %r10
	.p2align	4, 0x90
.LBB4_21:                               # %scalar.ph
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%r11,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	(%r9,%r11,4), %xmm1
	addss	%xmm1, %xmm0
	incq	%r11
	cmpq	%r11, %rsi
	jne	.LBB4_21
	jmp	.LBB4_22
.LBB4_3:                                # %.lr.ph41.split.preheader
	leal	(%r12,%rcx), %eax
	movq	%rcx, %rsi
	testb	$1, %al
	jne	.LBB4_8
# %bb.4:                                # %.lr.ph41.split.prol
	movq	%rcx, %rax
	orq	%r13, %rax
	shrq	$32, %rax
	je	.LBB4_5
# %bb.6:
	movq	%rcx, %rax
	cqto
	idivq	%r13
	jmp	.LBB4_7
.LBB4_5:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	4(%rsp)                         # 4-byte Folded Reload
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
.LBB4_7:
	imull	%r8d, %eax
	addl	%edx, %eax
	cltq
	movl	$0, (%rdi,%rax,4)
	leaq	1(%rcx), %rsi
.LBB4_8:                                # %.lr.ph41.split.prol.loopexit
	cmpq	%rcx, %r12
	jne	.LBB4_9
	jmp	.LBB4_28
	.p2align	4, 0x90
.LBB4_26:                               #   in Loop: Header=BB4_9 Depth=1
	movq	%rsi, %rax
	cqto
	idivq	%r13
.LBB4_27:                               #   in Loop: Header=BB4_9 Depth=1
	imull	%r8d, %eax
	addl	%edx, %eax
	cltq
	movl	$0, (%rdi,%rax,4)
	leaq	1(%rsi), %rax
	cmpq	%r12, %rsi
	movq	%rax, %rsi
	je	.LBB4_28
.LBB4_9:                                # %.lr.ph41.split
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	orq	%r13, %rax
	shrq	$32, %rax
	je	.LBB4_10
# %bb.23:                               #   in Loop: Header=BB4_9 Depth=1
	movq	%rsi, %rax
	cqto
	idivq	%r13
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_10:                               #   in Loop: Header=BB4_9 Depth=1
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	4(%rsp)                         # 4-byte Folded Reload
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
.LBB4_24:                               #   in Loop: Header=BB4_9 Depth=1
	imull	%r8d, %eax
	addl	%edx, %eax
	cltq
	movl	$0, (%rdi,%rax,4)
	incq	%rsi
	movq	%rsi, %rax
	orq	%r13, %rax
	shrq	$32, %rax
	jne	.LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_9 Depth=1
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	4(%rsp)                         # 4-byte Folded Reload
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB4_27
.Lfunc_end4:
	.size	_Z8cpu_gemmPfS_S_iii.omp_outlined, .Lfunc_end4-_Z8cpu_gemmPfS_S_iii.omp_outlined
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z13run_benchmarkmmm
.LCPI5_0:
	.long	0x4f800000                      # float 4.2949673E+9
.LCPI5_1:
	.long	0x40000000                      # float 2
.LCPI5_2:
	.long	0x5f000000                      # float 9.22337203E+18
.LCPI5_19:
	.long	0x3c23d70a                      # float 0.00999999977
.LCPI5_22:
	.long	0x3dcccccd                      # float 0.100000001
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_3:
	.quad	0x3ff0000000000000              # double 1
.LCPI5_9:
	.quad	0xbfe0000000000000              # double -0.5
.LCPI5_16:
	.quad	0x3f0a36e2eb1c432d              # double 5.0000000000000002E-5
.LCPI5_17:
	.quad	0x3ec0c6f7a0b5ed8d              # double 1.9999999999999999E-6
.LCPI5_20:
	.quad	0x4059000000000000              # double 100
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_4:
	.quad	-2147483648                     # 0xffffffff80000000
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI5_5:
	.quad	2147483646                      # 0x7ffffffe
	.quad	2147483646                      # 0x7ffffffe
.LCPI5_6:
	.quad	2567483615                      # 0x9908b0df
	.quad	2567483615                      # 0x9908b0df
.LCPI5_7:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI5_8:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
.LCPI5_10:
	.long	2139095040                      # 0x7f800000
	.long	2139095040                      # 0x7f800000
	.long	2139095040                      # 0x7f800000
	.long	2139095040                      # 0x7f800000
.LCPI5_11:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI5_12:
	.long	32767                           # 0x7fff
	.long	32767                           # 0x7fff
	.long	32767                           # 0x7fff
	.long	32767                           # 0x7fff
.LCPI5_13:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
.LCPI5_14:
	.long	65536                           # 0x10000
	.long	65536                           # 0x10000
	.long	65536                           # 0x10000
	.long	65536                           # 0x10000
.LCPI5_15:
	.long	2139160575                      # 0x7f80ffff
	.long	2139160575                      # 0x7f80ffff
	.long	2139160575                      # 0x7f80ffff
	.long	2139160575                      # 0x7f80ffff
.LCPI5_18:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
.LCPI5_21:
	.long	0x3dcccccd                      # float 0.100000001
	.long	0x3dcccccd                      # float 0.100000001
	.long	0x3dcccccd                      # float 0.100000001
	.long	0x3dcccccd                      # float 0.100000001
	.text
	.globl	_Z13run_benchmarkmmm
	.p2align	4, 0x90
	.type	_Z13run_benchmarkmmm,@function
_Z13run_benchmarkmmm:                   # @_Z13run_benchmarkmmm
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$10280, %rsp                    # imm = 0x2828
	.cfi_def_cfa_offset 10336
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	movl	$29, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movq	%r13, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.3, %esi
	movl	$23, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r15, %rcx
	imulq	%r13, %rcx
	movq	%rcx, %rax
	shrq	$62, %rax
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	xorl	%r12d, %r12d
	negq	%rax
	movl	$0, %edi
	sbbq	%rdi, %rdi
	orq	%rcx, %rdi
	.cfi_escape 0x2e, 0x00
	callq	_Znam
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	%r15, 160(%rsp)                 # 8-byte Spill
	imulq	%r14, %r15
	movq	%r15, %rax
	shrq	$62, %rax
	movq	%r15, %rbp
	leaq	(,%r15,4), %rcx
	negq	%rax
	movl	$0, %edi
	sbbq	%rdi, %rdi
	orq	%rcx, %rdi
	.cfi_escape 0x2e, 0x00
	callq	_Znam
	movq	%rax, %r15
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	imulq	%r13, %r14
	movq	%r14, %rax
	shrq	$62, %rax
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	leaq	(,%r14,4), %rcx
	negq	%rax
	sbbq	%r12, %r12
	orq	%rcx, %r12
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	callq	_Znam
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
	movl	$21, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_486
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB5_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_4
.LBB5_3:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_4:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movq	96(%rsp), %r13                  # 8-byte Reload
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	leaq	296(%rsp), %r14
	movq	%r14, 280(%rsp)
	movl	$1634100580, 296(%rsp)          # imm = 0x61666564
	movl	$1953264993, 299(%rsp)          # imm = 0x746C7561
	movq	$7, 288(%rsp)
	movb	$0, 303(%rsp)
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	leaq	5280(%rsp), %rdi
	leaq	280(%rsp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp1:
# %bb.5:
	movq	280(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB5_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	movq	296(%rsp), %rsi
	incq	%rsi
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPvm
.LBB5_7:                                # %_ZNSt13random_deviceC2Ev.exit
	movq	$42, 280(%rsp)
	movl	$42, %ecx
	movl	$2, %eax
	.p2align	4, 0x90
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	shrq	$30, %rdx
	xorq	%rcx, %rdx
	imulq	$1812433253, %rdx, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	decq	%rcx
	movl	%ecx, %edx
	movq	%rdx, 272(%rsp,%rax,8)
	cmpq	$624, %rax                      # imm = 0x270
	je	.LBB5_13
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
	shrl	$30, %edx
	xorl	%edx, %ecx
	imull	$1812433253, %ecx, %ecx         # imm = 0x6C078965
	addl	%eax, %ecx
	movq	%rcx, 280(%rsp,%rax,8)
	addq	$2, %rax
	jmp	.LBB5_8
.LBB5_13:
	movl	$2567483615, %ebx               # imm = 0x9908B0DF
	movq	$624, 5272(%rsp)                # imm = 0x270
	testq	%r13, %r13
	movq	%r15, 208(%rsp)                 # 8-byte Spill
	movq	%r12, 224(%rsp)                 # 8-byte Spill
	je	.LBB5_14
# %bb.18:                               # %.lr.ph
	.cfi_escape 0x2e, 0x10
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
	flds	.LCPI5_0(%rip)
	fstpt	(%rsp)
	callq	logl@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	fstpt	48(%rsp)                        # 10-byte Folded Spill
	.cfi_escape 0x2e, 0x10
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
	flds	.LCPI5_1(%rip)
	fstpt	(%rsp)
	callq	logl@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	fldt	48(%rsp)                        # 10-byte Folded Reload
	fdivp	%st, %st(1)
	flds	.LCPI5_2(%rip)
	xorl	%ecx, %ecx
	fxch	%st(1)
	fucomi	%st(1), %st
	fldz
	fcmovnb	%st(2), %st
	fstp	%st(2)
	fsubp	%st, %st(1)
	setae	%cl
	fnstcw	38(%rsp)
	movzwl	38(%rsp), %eax
	orl	$3072, %eax                     # imm = 0xC00
	movw	%ax, 94(%rsp)
	fldcw	94(%rsp)
	fistpll	272(%rsp)
	fldcw	38(%rsp)
	shlq	$63, %rcx
	xorq	272(%rsp), %rcx
	leaq	52(%rcx), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB5_19
# %bb.20:
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB5_21
.LBB5_14:
	movl	$624, %r13d                     # imm = 0x270
	movl	$42, %r15d
.LBB5_15:                               # %.preheader828
	testq	%rbp, %rbp
	je	.LBB5_46
# %bb.16:                               # %.lr.ph843
	.cfi_escape 0x2e, 0x10
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
	flds	.LCPI5_0(%rip)
	fstpt	(%rsp)
	callq	logl@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	fstpt	48(%rsp)                        # 10-byte Folded Spill
	.cfi_escape 0x2e, 0x10
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
	flds	.LCPI5_1(%rip)
	fstpt	(%rsp)
	callq	logl@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	fldt	48(%rsp)                        # 10-byte Folded Reload
	fdivp	%st, %st(1)
	flds	.LCPI5_2(%rip)
	xorl	%ecx, %ecx
	fxch	%st(1)
	fucomi	%st(1), %st
	fldz
	fcmovnb	%st(2), %st
	fstp	%st(2)
	fsubp	%st, %st(1)
	setae	%cl
	fnstcw	36(%rsp)
	movzwl	36(%rsp), %eax
	orl	$3072, %eax                     # imm = 0xC00
	movw	%ax, 92(%rsp)
	fldcw	92(%rsp)
	fistpll	248(%rsp)
	fldcw	36(%rsp)
	shlq	$63, %rcx
	xorq	248(%rsp), %rcx
	leaq	52(%rcx), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB5_17
# %bb.33:
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB5_34
.LBB5_19:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.LBB5_21:
	cmpq	$1, %rax
	adcq	$0, %rax
	movl	$624, %r13d                     # imm = 0x270
	movl	$42, %r15d
	xorl	%r14d, %r14d
	movsd	.LCPI5_3(%rip), %xmm6           # xmm6 = [1.0E+0,0.0E+0]
	movaps	.LCPI5_4(%rip), %xmm7           # xmm7 = [18446744071562067968,18446744071562067968]
	movaps	.LCPI5_5(%rip), %xmm8           # xmm8 = [2147483646,2147483646]
	movdqa	.LCPI5_6(%rip), %xmm9           # xmm9 = [2567483615,2567483615]
	movq	$-2147483648, %r12              # imm = 0x80000000
	movq	.LCPI5_7(%rip), %xmm10          # xmm10 = [1127219200,1160773632,0,0]
	movapd	.LCPI5_8(%rip), %xmm11          # xmm11 = [4.503599627370496E+15,1.9342813113834067E+25]
	movsd	.LCPI5_9(%rip), %xmm12          # xmm12 = [-5.0E-1,0.0E+0]
	.p2align	4, 0x90
.LBB5_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_23 Depth 2
                                        #       Child Loop BB5_25 Depth 3
                                        #       Child Loop BB5_27 Depth 3
	movq	%rax, %rcx
	movapd	%xmm6, %xmm1
	xorpd	%xmm0, %xmm0
	jmp	.LBB5_23
	.p2align	4, 0x90
.LBB5_29:                               # %.noexc
                                        #   in Loop: Header=BB5_23 Depth=2
	movq	%r13, %rdx
	incq	%r13
	movq	%r13, 5272(%rsp)
	movq	280(%rsp,%rdx,8), %rdx
	movq	%rdx, %rsi
	shrq	$11, %rsi
	movl	%esi, %esi
	xorq	%rdx, %rsi
	movl	%esi, %edx
	shll	$7, %edx
	andl	$-1658038656, %edx              # imm = 0x9D2C5680
	xorq	%rsi, %rdx
	movl	%edx, %esi
	shll	$15, %esi
	andl	$-272236544, %esi               # imm = 0xEFC60000
	xorq	%rdx, %rsi
	movq	%rsi, %rdx
	shrq	$18, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %xmm2
	punpckldq	%xmm10, %xmm2           # xmm2 = xmm2[0],xmm10[0],xmm2[1],xmm10[1]
	subpd	%xmm11, %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3                    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	%xmm1, 264(%rsp)
	fldl	264(%rsp)
	fmuls	.LCPI5_0(%rip)
	addsd	%xmm3, %xmm0
	fstpl	256(%rsp)
	movsd	256(%rsp), %xmm1                # xmm1 = mem[0],zero
	decq	%rcx
	je	.LBB5_30
.LBB5_23:                               # %select.unfold.i.i.i.i
                                        #   Parent Loop BB5_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_25 Depth 3
                                        #       Child Loop BB5_27 Depth 3
	cmpq	$624, %r13                      # imm = 0x270
	jb	.LBB5_29
# %bb.24:                               # %vector.ph956
                                        #   in Loop: Header=BB5_23 Depth=2
	movq	%r15, %xmm2
	pshufd	$68, %xmm2, %xmm2               # xmm2 = xmm2[0,1,0,1]
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB5_25:                               # %vector.body958
                                        #   Parent Loop BB5_22 Depth=1
                                        #     Parent Loop BB5_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	%xmm2, %xmm3
	movups	288(%rsp,%rdx,8), %xmm2
	shufps	$78, %xmm2, %xmm3               # xmm3 = xmm3[2,3],xmm2[0,1]
	andps	%xmm7, %xmm3
	movaps	%xmm2, %xmm4
	andps	%xmm8, %xmm4
	orps	%xmm3, %xmm4
	movdqu	3456(%rsp,%rdx,8), %xmm3
	psrlq	$1, %xmm4
	movaps	%xmm2, %xmm5
	pslld	$31, %xmm5
	psrad	$31, %xmm5
	pand	%xmm9, %xmm5
	pxor	%xmm3, %xmm5
	pxor	%xmm4, %xmm5
	movdqu	%xmm5, 280(%rsp,%rdx,8)
	addq	$2, %rdx
	cmpq	$226, %rdx
	jne	.LBB5_25
# %bb.26:                               # %vector.ph
                                        #   in Loop: Header=BB5_23 Depth=2
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movq	%xmm2, %rdx
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	2096(%rsp), %rsi
	movl	%esi, %edi
	movl	%esi, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	orq	%rdx, %r8
	shrq	%r8
	xorq	5264(%rsp), %r8
	movq	%rsi, %xmm2
	andl	$1, %edi
	negl	%edi
	andl	%ebx, %edi
	xorq	%r8, %rdi
	movq	%rdi, 2088(%rsp)
	pshufd	$68, %xmm2, %xmm2               # xmm2 = xmm2[0,1,0,1]
	movl	$228, %edx
	.p2align	4, 0x90
.LBB5_27:                               # %vector.body
                                        #   Parent Loop BB5_22 Depth=1
                                        #     Parent Loop BB5_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	280(%rsp,%rdx,8), %xmm3
	shufps	$78, %xmm3, %xmm2               # xmm2 = xmm2[2,3],xmm3[0,1]
	andps	%xmm7, %xmm2
	movaps	%xmm3, %xmm4
	andps	%xmm8, %xmm4
	orps	%xmm2, %xmm4
	movdqu	-1544(%rsp,%rdx,8), %xmm5
	psrlq	$1, %xmm4
	movaps	%xmm3, %xmm2
	pslld	$31, %xmm3
	psrad	$31, %xmm3
	pand	%xmm9, %xmm3
	pxor	%xmm5, %xmm3
	pxor	%xmm4, %xmm3
	movdqu	%xmm3, 272(%rsp,%rdx,8)
	addq	$2, %rdx
	cmpq	$624, %rdx                      # imm = 0x270
	jne	.LBB5_27
# %bb.28:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
                                        #   in Loop: Header=BB5_23 Depth=2
	movq	5264(%rsp), %rdx
	andq	%r12, %rdx
	movq	280(%rsp), %r15
	movl	%r15d, %esi
	andl	$2147483646, %esi               # imm = 0x7FFFFFFE
	orq	%rdx, %rsi
	shrq	%rsi
	xorq	3448(%rsp), %rsi
	movl	%r15d, %edx
	andl	$1, %edx
	negl	%edx
	andl	%ebx, %edx
	xorq	%rsi, %rdx
	movq	%rdx, 5264(%rsp)
	xorl	%r13d, %r13d
	jmp	.LBB5_29
	.p2align	4, 0x90
.LBB5_30:                               #   in Loop: Header=BB5_22 Depth=1
	divsd	%xmm1, %xmm0
	ucomisd	%xmm6, %xmm0
	jae	.LBB5_31
.LBB5_32:                               #   in Loop: Header=BB5_22 Depth=1
	addsd	%xmm12, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movss	%xmm0, (%rcx,%r14,4)
	incq	%r14
	cmpq	96(%rsp), %r14                  # 8-byte Folded Reload
	jne	.LBB5_22
	jmp	.LBB5_15
.LBB5_31:                               #   in Loop: Header=BB5_22 Depth=1
	.cfi_escape 0x2e, 0x00
	xorpd	%xmm1, %xmm1
	movapd	%xmm6, %xmm0
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	nextafter
	movsd	.LCPI5_9(%rip), %xmm12          # xmm12 = [-5.0E-1,0.0E+0]
	movapd	.LCPI5_8(%rip), %xmm11          # xmm11 = [4.503599627370496E+15,1.9342813113834067E+25]
	movq	.LCPI5_7(%rip), %xmm10          # xmm10 = [1127219200,1160773632,0,0]
	movdqa	.LCPI5_6(%rip), %xmm9           # xmm9 = [2567483615,2567483615]
	movaps	.LCPI5_5(%rip), %xmm8           # xmm8 = [2147483646,2147483646]
	movaps	.LCPI5_4(%rip), %xmm7           # xmm7 = [18446744071562067968,18446744071562067968]
	movsd	.LCPI5_3(%rip), %xmm6           # xmm6 = [1.0E+0,0.0E+0]
	movq	48(%rsp), %rax                  # 8-byte Reload
	jmp	.LBB5_32
.LBB5_17:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.LBB5_34:
	cmpq	$1, %rax
	adcq	$0, %rax
	xorl	%r14d, %r14d
	movsd	.LCPI5_3(%rip), %xmm6           # xmm6 = [1.0E+0,0.0E+0]
	movaps	.LCPI5_4(%rip), %xmm7           # xmm7 = [18446744071562067968,18446744071562067968]
	movaps	.LCPI5_5(%rip), %xmm8           # xmm8 = [2147483646,2147483646]
	movdqa	.LCPI5_6(%rip), %xmm9           # xmm9 = [2567483615,2567483615]
	movq	$-2147483648, %r12              # imm = 0x80000000
	movq	.LCPI5_7(%rip), %xmm10          # xmm10 = [1127219200,1160773632,0,0]
	movapd	.LCPI5_8(%rip), %xmm11          # xmm11 = [4.503599627370496E+15,1.9342813113834067E+25]
	movsd	.LCPI5_9(%rip), %xmm12          # xmm12 = [-5.0E-1,0.0E+0]
	.p2align	4, 0x90
.LBB5_35:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_36 Depth 2
                                        #       Child Loop BB5_38 Depth 3
                                        #       Child Loop BB5_40 Depth 3
	movq	%rax, %rcx
	movapd	%xmm6, %xmm1
	xorps	%xmm0, %xmm0
	jmp	.LBB5_36
	.p2align	4, 0x90
.LBB5_42:                               # %.noexc275
                                        #   in Loop: Header=BB5_36 Depth=2
	movq	%r13, %rdx
	incq	%r13
	movq	%r13, 5272(%rsp)
	movq	280(%rsp,%rdx,8), %rdx
	movq	%rdx, %rsi
	shrq	$11, %rsi
	movl	%esi, %esi
	xorq	%rdx, %rsi
	movl	%esi, %edx
	shll	$7, %edx
	andl	$-1658038656, %edx              # imm = 0x9D2C5680
	xorq	%rsi, %rdx
	movl	%edx, %esi
	shll	$15, %esi
	andl	$-272236544, %esi               # imm = 0xEFC60000
	xorq	%rdx, %rsi
	movq	%rsi, %rdx
	shrq	$18, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %xmm2
	punpckldq	%xmm10, %xmm2           # xmm2 = xmm2[0],xmm10[0],xmm2[1],xmm10[1]
	subpd	%xmm11, %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3                    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	%xmm1, 240(%rsp)
	fldl	240(%rsp)
	fmuls	.LCPI5_0(%rip)
	addsd	%xmm3, %xmm0
	fstpl	232(%rsp)
	movsd	232(%rsp), %xmm1                # xmm1 = mem[0],zero
	decq	%rcx
	je	.LBB5_43
.LBB5_36:                               # %select.unfold.i.i.i.i269
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_38 Depth 3
                                        #       Child Loop BB5_40 Depth 3
	cmpq	$624, %r13                      # imm = 0x270
	jb	.LBB5_42
# %bb.37:                               # %vector.ph983
                                        #   in Loop: Header=BB5_36 Depth=2
	movq	%r15, %xmm2
	pshufd	$68, %xmm2, %xmm2               # xmm2 = xmm2[0,1,0,1]
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB5_38:                               # %vector.body985
                                        #   Parent Loop BB5_35 Depth=1
                                        #     Parent Loop BB5_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	%xmm2, %xmm3
	movups	288(%rsp,%rdx,8), %xmm2
	shufps	$78, %xmm2, %xmm3               # xmm3 = xmm3[2,3],xmm2[0,1]
	andps	%xmm7, %xmm3
	movaps	%xmm2, %xmm4
	andps	%xmm8, %xmm4
	orps	%xmm3, %xmm4
	movdqu	3456(%rsp,%rdx,8), %xmm3
	psrlq	$1, %xmm4
	movaps	%xmm2, %xmm5
	pslld	$31, %xmm5
	psrad	$31, %xmm5
	pand	%xmm9, %xmm5
	pxor	%xmm3, %xmm5
	pxor	%xmm4, %xmm5
	movdqu	%xmm5, 280(%rsp,%rdx,8)
	addq	$2, %rdx
	cmpq	$226, %rdx
	jne	.LBB5_38
# %bb.39:                               # %vector.ph969
                                        #   in Loop: Header=BB5_36 Depth=2
	pshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	movq	%xmm2, %rdx
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	2096(%rsp), %rsi
	movl	%esi, %edi
	movl	%esi, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	orq	%rdx, %r8
	shrq	%r8
	xorq	5264(%rsp), %r8
	movq	%rsi, %xmm2
	andl	$1, %edi
	negl	%edi
	andl	%ebx, %edi
	xorq	%r8, %rdi
	movq	%rdi, 2088(%rsp)
	pshufd	$68, %xmm2, %xmm2               # xmm2 = xmm2[0,1,0,1]
	movl	$228, %edx
	.p2align	4, 0x90
.LBB5_40:                               # %vector.body971
                                        #   Parent Loop BB5_35 Depth=1
                                        #     Parent Loop BB5_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	280(%rsp,%rdx,8), %xmm3
	shufps	$78, %xmm3, %xmm2               # xmm2 = xmm2[2,3],xmm3[0,1]
	andps	%xmm7, %xmm2
	movaps	%xmm3, %xmm4
	andps	%xmm8, %xmm4
	orps	%xmm2, %xmm4
	movdqu	-1544(%rsp,%rdx,8), %xmm5
	psrlq	$1, %xmm4
	movaps	%xmm3, %xmm2
	pslld	$31, %xmm3
	psrad	$31, %xmm3
	pand	%xmm9, %xmm3
	pxor	%xmm5, %xmm3
	pxor	%xmm4, %xmm3
	movdqu	%xmm3, 272(%rsp,%rdx,8)
	addq	$2, %rdx
	cmpq	$624, %rdx                      # imm = 0x270
	jne	.LBB5_40
# %bb.41:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i490
                                        #   in Loop: Header=BB5_36 Depth=2
	movq	5264(%rsp), %rdx
	andq	%r12, %rdx
	movq	280(%rsp), %r15
	movl	%r15d, %esi
	andl	$2147483646, %esi               # imm = 0x7FFFFFFE
	orq	%rdx, %rsi
	shrq	%rsi
	xorq	3448(%rsp), %rsi
	movl	%r15d, %edx
	andl	$1, %edx
	negl	%edx
	andl	%ebx, %edx
	xorq	%rsi, %rdx
	movq	%rdx, 5264(%rsp)
	xorl	%r13d, %r13d
	jmp	.LBB5_42
	.p2align	4, 0x90
.LBB5_43:                               #   in Loop: Header=BB5_35 Depth=1
	divsd	%xmm1, %xmm0
	ucomisd	%xmm6, %xmm0
	jae	.LBB5_44
.LBB5_45:                               #   in Loop: Header=BB5_35 Depth=1
	addsd	%xmm12, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movss	%xmm0, (%rcx,%r14,4)
	incq	%r14
	cmpq	%rbp, %r14
	jne	.LBB5_35
	jmp	.LBB5_46
.LBB5_44:                               #   in Loop: Header=BB5_35 Depth=1
	.cfi_escape 0x2e, 0x00
	xorpd	%xmm1, %xmm1
	movapd	%xmm6, %xmm0
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	nextafter
	movsd	.LCPI5_9(%rip), %xmm12          # xmm12 = [-5.0E-1,0.0E+0]
	movapd	.LCPI5_8(%rip), %xmm11          # xmm11 = [4.503599627370496E+15,1.9342813113834067E+25]
	movq	.LCPI5_7(%rip), %xmm10          # xmm10 = [1127219200,1160773632,0,0]
	movdqa	.LCPI5_6(%rip), %xmm9           # xmm9 = [2567483615,2567483615]
	movaps	.LCPI5_5(%rip), %xmm8           # xmm8 = [2147483646,2147483646]
	movaps	.LCPI5_4(%rip), %xmm7           # xmm7 = [18446744071562067968,18446744071562067968]
	movsd	.LCPI5_3(%rip), %xmm6           # xmm6 = [1.0E+0,0.0E+0]
	movq	48(%rsp), %rax                  # 8-byte Reload
	jmp	.LBB5_45
.LBB5_46:                               # %._crit_edge
.Ltmp3:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.5, %esi
	movl	$20, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp4:
	movq	208(%rsp), %r14                 # 8-byte Reload
	movq	216(%rsp), %r12                 # 8-byte Reload
	movq	96(%rsp), %r13                  # 8-byte Reload
# %bb.47:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_57
# %bb.48:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i494
	cmpb	$0, 56(%rbx)
	je	.LBB5_51
# %bb.49:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_53
.LBB5_51:
.Ltmp5:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp6:
# %bb.52:                               # %.noexc498
	movq	(%rbx), %rax
.Ltmp7:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp8:
.LBB5_53:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp9:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp10:
# %bb.54:                               # %.noexc500
.Ltmp11:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp12:
# %bb.55:                               # %_ZNSolsEPFRSoS_E.exit
	movq	%r12, 80(%rsp)
	movq	%r14, 16(%rsp)
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 24(%rsp)
	movq	72(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 128(%rsp)
	movq	160(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 32(%rsp)
	.cfi_escape 0x2e, 0x20
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	16(%rsp), %r10
	leaq	24(%rsp), %r11
	leaq	88(%rsp), %rbx
	leaq	32(%rsp), %rcx
	leaq	136(%rsp), %r8
	leaq	40(%rsp), %r9
	movl	$.L__unnamed_1, %edi
	movl	$_Z8cpu_gemmPfS_S_iii.omp_outlined, %edx
	movl	$6, %esi
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.6, %esi
	movl	$35, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp14:
# %bb.56:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit279
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_57
# %bb.59:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i504
	cmpb	$0, 56(%rbx)
	je	.LBB5_61
# %bb.60:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_63
.LBB5_61:
.Ltmp15:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp16:
# %bb.62:                               # %.noexc509
	movq	(%rbx), %rax
.Ltmp17:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp18:
.LBB5_63:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i506
.Ltmp19:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp20:
# %bb.64:                               # %.noexc511
.Ltmp21:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp22:
# %bb.65:                               # %_ZNSolsEPFRSoS_E.exit281
	leaq	(,%r13,2), %rsi
.Ltmp23:
	.cfi_escape 0x2e, 0x00
	leaq	16(%rsp), %rdi
	movq	%rsi, %r15
	callq	hipMalloc
.Ltmp24:
# %bb.66:                               # %_ZL9hipMallocI14__hip_bfloat16E10hipError_tPPT_m.exit
	leaq	(,%rbp,2), %rsi
.Ltmp25:
	.cfi_escape 0x2e, 0x00
	leaq	8(%rsp), %rdi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	callq	hipMalloc
.Ltmp26:
# %bb.67:                               # %_ZL9hipMallocI14__hip_bfloat16E10hipError_tPPT_m.exit284
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rax), %rsi
.Ltmp27:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	callq	hipMalloc
.Ltmp28:
# %bb.68:                               # %_ZL9hipMallocI14__hip_bfloat16E10hipError_tPPT_m.exit286
.Ltmp29:
	.cfi_escape 0x2e, 0x00
	callq	hipGetLastError
.Ltmp30:
# %bb.69:
	movl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB5_82
# %bb.70:
.Ltmp31:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.7, %esi
	movl	$11, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp32:
# %bb.71:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288
.Ltmp33:
	.cfi_escape 0x2e, 0x00
	movl	%ebx, %edi
	callq	hipGetErrorString
.Ltmp34:
# %bb.72:
	testq	%rax, %rax
	je	.LBB5_73
# %bb.74:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	%rax, %rbx
	callq	strlen
.Ltmp35:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp36:
	jmp	.LBB5_75
.LBB5_82:
.Ltmp47:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.8, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp48:
# %bb.83:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_84
# %bb.86:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i526
	cmpb	$0, 56(%rbx)
	je	.LBB5_88
# %bb.87:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_90
.LBB5_73:
	movq	_ZSt4cerr(%rip), %rax
	movq	-24(%rax), %rax
	leaq	_ZSt4cerr(%rax), %rdi
	movl	_ZSt4cerr+32(%rax), %esi
	orl	$1, %esi
.Ltmp37:
	.cfi_escape 0x2e, 0x00
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp38:
.LBB5_75:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291
	movq	_ZSt4cerr(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cerr+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_84
# %bb.76:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i515
	cmpb	$0, 56(%rbx)
	je	.LBB5_78
# %bb.77:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_80
.LBB5_78:
.Ltmp39:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp40:
# %bb.79:                               # %.noexc520
	movq	(%rbx), %rax
.Ltmp41:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp42:
.LBB5_80:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i517
.Ltmp43:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cerr, %edi
	callq	_ZNSo3putEc
.Ltmp44:
# %bb.81:                               # %.noexc522
	movl	$-1, %ebx
.Ltmp45:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp46:
	jmp	.LBB5_482
.LBB5_88:
.Ltmp49:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp50:
# %bb.89:                               # %.noexc531
	movq	(%rbx), %rax
.Ltmp51:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp52:
.LBB5_90:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i528
.Ltmp53:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp54:
# %bb.91:                               # %.noexc533
.Ltmp55:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp56:
# %bb.92:                               # %_ZNSolsEPFRSoS_E.exit297
.Ltmp57:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znam
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.Ltmp58:
# %bb.93:
.Ltmp60:
	.cfi_escape 0x2e, 0x00
	movq	144(%rsp), %rdi                 # 8-byte Reload
	callq	_Znam
	movq	%rax, 200(%rsp)                 # 8-byte Spill
.Ltmp61:
# %bb.94:                               # %.preheader827
	testq	%r13, %r13
	movq	200(%rsp), %rsi                 # 8-byte Reload
	je	.LBB5_102
# %bb.95:                               # %.lr.ph845.preheader
	cmpq	$3, %r13
	ja	.LBB5_99
# %bb.96:
	xorl	%eax, %eax
	jmp	.LBB5_97
.LBB5_99:                               # %vector.ph996
	movq	%r13, %rax
	andq	$-4, %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI5_10(%rip), %xmm0          # xmm0 = [2139095040,2139095040,2139095040,2139095040]
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI5_11(%rip), %xmm2          # xmm2 = [1,1,1,1]
	movdqa	.LCPI5_12(%rip), %xmm3          # xmm3 = [32767,32767,32767,32767]
	movdqa	.LCPI5_13(%rip), %xmm4          # xmm4 = [65535,0,65535,0,65535,0,65535,0]
	pxor	%xmm5, %xmm5
	movdqa	.LCPI5_14(%rip), %xmm6          # xmm6 = [65536,65536,65536,65536]
	movdqa	.LCPI5_15(%rip), %xmm7          # xmm7 = [2139160575,2139160575,2139160575,2139160575]
	movq	48(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB5_100:                              # %vector.body998
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%r12,%rcx,4), %xmm8
	movdqa	%xmm8, %xmm9
	pand	%xmm0, %xmm9
	pcmpeqd	%xmm0, %xmm9
	pxor	%xmm1, %xmm9
	movdqa	%xmm8, %xmm10
	psrld	$16, %xmm10
	pand	%xmm2, %xmm10
	paddd	%xmm8, %xmm10
	paddd	%xmm3, %xmm10
	movdqa	%xmm8, %xmm11
	pand	%xmm4, %xmm11
	pcmpeqd	%xmm5, %xmm11
	por	%xmm9, %xmm11
	movdqa	%xmm8, %xmm9
	por	%xmm6, %xmm9
	movdqa	%xmm8, %xmm12
	pand	%xmm7, %xmm12
	pcmpeqd	%xmm0, %xmm12
	pand	%xmm11, %xmm10
	pandn	%xmm9, %xmm11
	por	%xmm10, %xmm11
	pand	%xmm12, %xmm8
	pandn	%xmm11, %xmm12
	por	%xmm8, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm12, %xmm12
	movq	%xmm12, (%rdx,%rcx,2)
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_100
	jmp	.LBB5_101
.LBB5_57:                               # %.invoke
.Ltmp553:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp554:
# %bb.58:                               # %.cont
.LBB5_486:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.LBB5_84:                               # %.invoke927
.Ltmp550:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp551:
# %bb.85:                               # %.cont928
.LBB5_115:
.Ltmp59:
	jmp	.LBB5_485
.LBB5_10:
.Ltmp2:
	movq	%rax, %rbx
	movq	280(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB5_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
	movq	296(%rsp), %rsi
	incq	%rsi
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPvm
	jmp	.LBB5_12
.LBB5_50:
.Ltmp555:
	jmp	.LBB5_485
.LBB5_484:
.Ltmp552:
	jmp	.LBB5_485
.LBB5_12:                               # %common.resume
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB5_97:                               # %.lr.ph845
	movl	(%r12,%rax,4), %ecx
	movl	%ecx, %edx
	notl	%edx
	testl	$2139095040, %edx               # imm = 0x7F800000
	jne	.LBB5_98
# %bb.117:
	testw	%cx, %cx
	je	.LBB5_119
# %bb.118:
	orl	$65536, %ecx                    # imm = 0x10000
	jmp	.LBB5_119
.LBB5_98:
	btl	$16, %ecx
	adcl	$32767, %ecx                    # imm = 0x7FFF
.LBB5_119:
	shrl	$16, %ecx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movw	%cx, (%rdx,%rax,2)
	incq	%rax
.LBB5_101:                              # %middle.block994
	cmpq	%rax, %r13
	jne	.LBB5_97
.LBB5_102:                              # %.preheader826
	testq	%rbp, %rbp
	je	.LBB5_110
# %bb.103:                              # %.lr.ph847.preheader
	cmpq	$3, %rbp
	ja	.LBB5_107
# %bb.104:
	xorl	%eax, %eax
	jmp	.LBB5_105
.LBB5_107:                              # %vector.ph1006
	movq	%rbp, %rax
	andq	$-4, %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI5_10(%rip), %xmm0          # xmm0 = [2139095040,2139095040,2139095040,2139095040]
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI5_11(%rip), %xmm2          # xmm2 = [1,1,1,1]
	movdqa	.LCPI5_12(%rip), %xmm3          # xmm3 = [32767,32767,32767,32767]
	movdqa	.LCPI5_13(%rip), %xmm4          # xmm4 = [65535,0,65535,0,65535,0,65535,0]
	pxor	%xmm5, %xmm5
	movdqa	.LCPI5_14(%rip), %xmm6          # xmm6 = [65536,65536,65536,65536]
	movdqa	.LCPI5_15(%rip), %xmm7          # xmm7 = [2139160575,2139160575,2139160575,2139160575]
	.p2align	4, 0x90
.LBB5_108:                              # %vector.body1010
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%r14,%rcx,4), %xmm8
	movdqa	%xmm8, %xmm9
	pand	%xmm0, %xmm9
	pcmpeqd	%xmm0, %xmm9
	pxor	%xmm1, %xmm9
	movdqa	%xmm8, %xmm10
	psrld	$16, %xmm10
	pand	%xmm2, %xmm10
	paddd	%xmm8, %xmm10
	paddd	%xmm3, %xmm10
	movdqa	%xmm8, %xmm11
	pand	%xmm4, %xmm11
	pcmpeqd	%xmm5, %xmm11
	por	%xmm9, %xmm11
	movdqa	%xmm8, %xmm9
	por	%xmm6, %xmm9
	movdqa	%xmm8, %xmm12
	pand	%xmm7, %xmm12
	pcmpeqd	%xmm0, %xmm12
	pand	%xmm11, %xmm10
	pandn	%xmm9, %xmm11
	por	%xmm10, %xmm11
	pand	%xmm12, %xmm8
	pandn	%xmm11, %xmm12
	por	%xmm8, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm12, %xmm12
	movq	%xmm12, (%rsi,%rcx,2)
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_108
	jmp	.LBB5_109
.LBB5_105:                              # %.lr.ph847
	movl	(%r14,%rax,4), %ecx
	movl	%ecx, %edx
	notl	%edx
	testl	$2139095040, %edx               # imm = 0x7F800000
	jne	.LBB5_106
# %bb.120:
	testw	%cx, %cx
	je	.LBB5_122
# %bb.121:
	orl	$65536, %ecx                    # imm = 0x10000
	jmp	.LBB5_122
.LBB5_106:
	btl	$16, %ecx
	adcl	$32767, %ecx                    # imm = 0x7FFF
.LBB5_122:
	shrl	$16, %ecx
	movw	%cx, (%rsi,%rax,2)
	incq	%rax
.LBB5_109:                              # %middle.block1003
	cmpq	%rax, %rbp
	jne	.LBB5_105
.LBB5_110:                              # %._crit_edge848
	movq	16(%rsp), %rdi
.Ltmp62:
	.cfi_escape 0x2e, 0x00
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	%r15, %rdx
	movl	$1, %ecx
	callq	hipMemcpy
.Ltmp63:
# %bb.111:
	movq	8(%rsp), %rdi
.Ltmp64:
	.cfi_escape 0x2e, 0x00
	movq	200(%rsp), %rsi                 # 8-byte Reload
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movl	$1, %ecx
	callq	hipMemcpy
.Ltmp65:
# %bb.112:
.Ltmp66:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.9, %esi
	movl	$25, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp67:
# %bb.113:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit303
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_114
# %bb.124:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i537
	cmpb	$0, 56(%rbx)
	je	.LBB5_126
# %bb.125:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_128
.LBB5_126:
.Ltmp68:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp69:
# %bb.127:                              # %.noexc542
	movq	(%rbx), %rax
.Ltmp70:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp71:
.LBB5_128:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i539
.Ltmp72:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp73:
# %bb.129:                              # %.noexc544
.Ltmp74:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp75:
# %bb.130:                              # %_ZNSolsEPFRSoS_E.exit305
	.cfi_escape 0x2e, 0x00
	movl	$10, %edi
	callq	putchar@PLT
.Ltmp76:
	.cfi_escape 0x2e, 0x00
	leaq	128(%rsp), %rdi
	movq	192(%rsp), %rsi                 # 8-byte Reload
	callq	hipMalloc
.Ltmp77:
# %bb.131:                              # %_ZL9hipMallocI14__hip_bfloat16E10hipError_tPPT_m.exit307
.Ltmp78:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.11, %esi
	movl	$30, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp79:
# %bb.132:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_133
# %bb.135:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i548
	cmpb	$0, 56(%rbx)
	je	.LBB5_137
# %bb.136:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_139
.LBB5_137:
.Ltmp80:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp81:
# %bb.138:                              # %.noexc553
	movq	(%rbx), %rax
.Ltmp82:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp83:
.LBB5_139:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i550
.Ltmp84:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp85:
# %bb.140:                              # %.noexc555
.Ltmp86:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp87:
# %bb.141:                              # %_ZNSolsEPFRSoS_E.exit311.preheader.preheader
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp88:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp89:
# %bb.142:                              # %_ZNSolsEPFRSoS_E.exit311
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp90:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp91:
# %bb.143:                              # %_ZNSolsEPFRSoS_E.exit311.1
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp92:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp93:
# %bb.144:                              # %_ZNSolsEPFRSoS_E.exit311.2
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp94:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp95:
# %bb.145:                              # %_ZNSolsEPFRSoS_E.exit311.3
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp96:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp97:
# %bb.146:                              # %_ZNSolsEPFRSoS_E.exit311.4
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp98:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp99:
# %bb.147:                              # %_ZNSolsEPFRSoS_E.exit311.5
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp100:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp101:
# %bb.148:                              # %_ZNSolsEPFRSoS_E.exit311.6
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp102:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp103:
# %bb.149:                              # %_ZNSolsEPFRSoS_E.exit311.7
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp104:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp105:
# %bb.150:                              # %_ZNSolsEPFRSoS_E.exit311.8
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp106:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp107:
# %bb.151:                              # %_ZNSolsEPFRSoS_E.exit311.9
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp108:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp109:
# %bb.152:                              # %_ZNSolsEPFRSoS_E.exit311.10
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp110:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp111:
# %bb.153:                              # %_ZNSolsEPFRSoS_E.exit311.11
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp112:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp113:
# %bb.154:                              # %_ZNSolsEPFRSoS_E.exit311.12
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp114:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp115:
# %bb.155:                              # %_ZNSolsEPFRSoS_E.exit311.13
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp116:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp117:
# %bb.156:                              # %_ZNSolsEPFRSoS_E.exit311.14
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp118:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp119:
# %bb.157:                              # %_ZNSolsEPFRSoS_E.exit311.15
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp120:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp121:
# %bb.158:                              # %_ZNSolsEPFRSoS_E.exit311.16
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp122:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp123:
# %bb.159:                              # %_ZNSolsEPFRSoS_E.exit311.17
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp124:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp125:
# %bb.160:                              # %_ZNSolsEPFRSoS_E.exit311.18
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp126:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp127:
# %bb.161:                              # %_ZNSolsEPFRSoS_E.exit311.19
.Ltmp129:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize
.Ltmp130:
# %bb.162:
	.cfi_escape 0x2e, 0x00
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp132:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp133:
# %bb.163:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp134:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp135:
# %bb.164:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp136:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp137:
# %bb.165:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp138:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp139:
# %bb.166:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp140:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp141:
# %bb.167:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp142:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp143:
# %bb.168:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp144:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp145:
# %bb.169:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp146:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp147:
# %bb.170:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp148:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp149:
# %bb.171:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp150:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp151:
# %bb.172:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp152:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp153:
# %bb.173:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp154:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp155:
# %bb.174:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp156:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp157:
# %bb.175:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp158:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp159:
# %bb.176:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp160:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp161:
# %bb.177:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp162:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp163:
# %bb.178:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp164:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp165:
# %bb.179:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp166:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp167:
# %bb.180:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp168:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp169:
# %bb.181:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
.Ltmp170:
	.cfi_escape 0x2e, 0x00
	callq	_Z6matmulP14__hip_bfloat16S0_S0_
.Ltmp171:
# %bb.182:
	.cfi_escape 0x2e, 0x00
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
.Ltmp173:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize
.Ltmp174:
# %bb.183:
.Ltmp176:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.12, %esi
	movl	$31, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp177:
# %bb.184:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit313
.Ltmp178:
	subq	%rbx, %r14
	cvtsi2sd	%r14, %xmm0
	mulsd	.LCPI5_16(%rip), %xmm0
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, 144(%rsp)                # 8-byte Spill
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp179:
# %bb.185:                              # %_ZNSolsEd.exit
.Ltmp180:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.13, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp181:
# %bb.186:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_205
# %bb.187:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i559
	cmpb	$0, 56(%r14)
	je	.LBB5_189
# %bb.188:
	movzbl	67(%r14), %eax
	jmp	.LBB5_191
.LBB5_189:
.Ltmp182:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp183:
# %bb.190:                              # %.noexc564
	movq	(%r14), %rax
.Ltmp184:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp185:
.LBB5_191:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i561
.Ltmp186:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp187:
# %bb.192:                              # %.noexc566
.Ltmp188:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp189:
# %bb.193:                              # %_ZNSolsEPFRSoS_E.exit318
.Ltmp190:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.14, %esi
	movl	$28, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp191:
# %bb.194:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320
.Ltmp192:
	movsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI5_7(%rip), %xmm1           # xmm1 = [1127219200,1160773632,0,0]
	unpcklps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI5_8(%rip), %xmm2           # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm4
	unpckhpd	%xmm0, %xmm4                    # xmm4 = xmm4[1],xmm0[1]
	addsd	%xmm0, %xmm4
	movsd	72(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	unpcklps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3                    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	movsd	160(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	unpcklps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	mulsd	.LCPI5_17(%rip), %xmm4
	mulsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm4
	movapd	%xmm4, 96(%rsp)                 # 16-byte Spill
	movapd	%xmm4, %xmm0
	divsd	144(%rsp), %xmm0                # 8-byte Folded Reload
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movapd	%xmm0, 144(%rsp)                # 16-byte Spill
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp193:
# %bb.195:                              # %_ZNSolsEd.exit322
.Ltmp194:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.15, %esi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp195:
# %bb.196:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_205
# %bb.197:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i570
	cmpb	$0, 56(%r14)
	je	.LBB5_199
# %bb.198:
	movzbl	67(%r14), %eax
	jmp	.LBB5_201
.LBB5_199:
.Ltmp196:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp197:
# %bb.200:                              # %.noexc575
	movq	(%r14), %rax
.Ltmp198:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp199:
.LBB5_201:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i572
.Ltmp200:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp201:
# %bb.202:                              # %.noexc577
.Ltmp202:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp203:
# %bb.203:                              # %_ZNSolsEPFRSoS_E.exit326
.Ltmp204:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.16, %esi
	movl	$25, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp205:
# %bb.204:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_205
# %bb.207:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i581
	cmpb	$0, 56(%rbx)
	je	.LBB5_209
# %bb.208:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_211
.LBB5_209:
.Ltmp206:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp207:
# %bb.210:                              # %.noexc586
	movq	(%rbx), %rax
.Ltmp208:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp209:
.LBB5_211:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i583
.Ltmp210:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp211:
# %bb.212:                              # %.noexc588
.Ltmp212:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp213:
# %bb.213:                              # %_ZNSolsEPFRSoS_E.exit330.preheader.preheader
	movl	$20, %r14d
	leaq	80(%rsp), %rbx
	leaq	140(%rsp), %r15
	.p2align	4, 0x90
.LBB5_214:                              # %_ZNSolsEPFRSoS_E.exit330.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %r13
	movq	8(%rsp), %r12
	movq	128(%rsp), %rbp
.Ltmp214:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	rocblas_create_handle
.Ltmp215:
# %bb.215:                              # %.noexc331
                                        #   in Loop: Header=BB5_214 Depth=1
	movl	$1065353216, 32(%rsp)           # imm = 0x3F800000
	movl	$0, 140(%rsp)
	movq	80(%rsp), %rdi
.Ltmp216:
	.cfi_escape 0x2e, 0x90, 0x01
	movl	$112, %esi
	movl	$111, %edx
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movq	160(%rsp), %r9                  # 8-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$151
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	leaq	168(%rsp), %rax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	rocblas_gemm_ex
	addq	$144, %rsp
	.cfi_adjust_cfa_offset -144
.Ltmp217:
# %bb.216:                              # %.noexc332
                                        #   in Loop: Header=BB5_214 Depth=1
	movq	80(%rsp), %rdi
.Ltmp218:
	.cfi_escape 0x2e, 0x00
	callq	rocblas_destroy_handle
.Ltmp219:
# %bb.217:                              # %_ZNSolsEPFRSoS_E.exit330
                                        #   in Loop: Header=BB5_214 Depth=1
	decl	%r14d
	jne	.LBB5_214
# %bb.218:
.Ltmp221:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize
.Ltmp222:
# %bb.219:
	.cfi_escape 0x2e, 0x00
	movl	$20, %r12d
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	leaq	80(%rsp), %r14
	.p2align	4, 0x90
.LBB5_220:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rbx
	movq	8(%rsp), %r13
	movq	128(%rsp), %rbp
.Ltmp223:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	rocblas_create_handle
.Ltmp224:
# %bb.221:                              # %.noexc334
                                        #   in Loop: Header=BB5_220 Depth=1
	movl	$1065353216, 32(%rsp)           # imm = 0x3F800000
	movl	$0, 140(%rsp)
	movq	80(%rsp), %rdi
.Ltmp225:
	.cfi_escape 0x2e, 0x90, 0x01
	movl	$112, %esi
	movl	$111, %edx
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movq	160(%rsp), %r9                  # 8-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$151
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	$168
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	leaq	168(%rsp), %rax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	rocblas_gemm_ex
	addq	$144, %rsp
	.cfi_adjust_cfa_offset -144
.Ltmp226:
# %bb.222:                              # %.noexc335
                                        #   in Loop: Header=BB5_220 Depth=1
	movq	80(%rsp), %rdi
.Ltmp227:
	.cfi_escape 0x2e, 0x00
	callq	rocblas_destroy_handle
.Ltmp228:
# %bb.223:                              #   in Loop: Header=BB5_220 Depth=1
	decl	%r12d
	jne	.LBB5_220
# %bb.224:
	.cfi_escape 0x2e, 0x00
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
.Ltmp230:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize
.Ltmp231:
# %bb.225:
.Ltmp233:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.17, %esi
	movl	$24, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp234:
	movq	224(%rsp), %r15                 # 8-byte Reload
	movq	192(%rsp), %r12                 # 8-byte Reload
# %bb.226:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341
.Ltmp235:
	subq	120(%rsp), %r14                 # 8-byte Folded Reload
	cvtsi2sd	%r14, %xmm0
	mulsd	.LCPI5_16(%rip), %xmm0
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movsd	%xmm0, 160(%rsp)                # 8-byte Spill
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp236:
# %bb.227:                              # %_ZNSolsEd.exit343
.Ltmp237:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.13, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp238:
# %bb.228:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit345
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_295
# %bb.229:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i592
	cmpb	$0, 56(%r14)
	je	.LBB5_235
# %bb.230:
	movzbl	67(%r14), %eax
	jmp	.LBB5_237
.LBB5_235:
.Ltmp239:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp240:
# %bb.236:                              # %.noexc597
	movq	(%r14), %rax
.Ltmp241:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp242:
.LBB5_237:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i594
.Ltmp243:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp244:
# %bb.238:                              # %.noexc599
.Ltmp245:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp246:
# %bb.239:                              # %_ZNSolsEPFRSoS_E.exit347
.Ltmp247:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.18, %esi
	movl	$21, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp248:
# %bb.240:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit349
.Ltmp249:
	movapd	96(%rsp), %xmm0                 # 16-byte Reload
	divsd	160(%rsp), %xmm0                # 8-byte Folded Reload
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movapd	%xmm0, 96(%rsp)                 # 16-byte Spill
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp250:
# %bb.241:                              # %_ZNSolsEd.exit351
.Ltmp251:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.15, %esi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp252:
# %bb.242:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit353
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_295
# %bb.243:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i603
	cmpb	$0, 56(%r14)
	je	.LBB5_245
# %bb.244:
	movzbl	67(%r14), %eax
	jmp	.LBB5_247
.LBB5_245:
.Ltmp253:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp254:
# %bb.246:                              # %.noexc608
	movq	(%r14), %rax
.Ltmp255:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp256:
.LBB5_247:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i605
.Ltmp257:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp258:
# %bb.248:                              # %.noexc610
.Ltmp259:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp260:
# %bb.249:                              # %_ZNSolsEPFRSoS_E.exit355
.Ltmp261:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.19, %esi
	movl	$28, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp262:
# %bb.250:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_295
# %bb.251:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i614
	cmpb	$0, 56(%rbx)
	je	.LBB5_253
# %bb.252:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_255
.LBB5_253:
.Ltmp263:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp264:
# %bb.254:                              # %.noexc619
	movq	(%rbx), %rax
.Ltmp265:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp266:
.LBB5_255:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i616
.Ltmp267:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp268:
# %bb.256:                              # %.noexc621
.Ltmp269:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp270:
# %bb.257:                              # %_ZNSolsEPFRSoS_E.exit359
.Ltmp271:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.20, %esi
	movl	$16, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp272:
# %bb.258:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361
.Ltmp273:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movapd	144(%rsp), %xmm0                # 16-byte Reload
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp274:
# %bb.259:                              # %_ZNSolsEd.exit363
.Ltmp275:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.15, %esi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp276:
# %bb.260:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_295
# %bb.261:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i625
	cmpb	$0, 56(%r14)
	je	.LBB5_263
# %bb.262:
	movzbl	67(%r14), %eax
	jmp	.LBB5_265
.LBB5_263:
.Ltmp277:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp278:
# %bb.264:                              # %.noexc630
	movq	(%r14), %rax
.Ltmp279:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp280:
.LBB5_265:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i627
.Ltmp281:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp282:
# %bb.266:                              # %.noexc632
.Ltmp283:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp284:
# %bb.267:                              # %_ZNSolsEPFRSoS_E.exit367
.Ltmp285:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.21, %esi
	movl	$16, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp286:
# %bb.268:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369
.Ltmp287:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movapd	96(%rsp), %xmm0                 # 16-byte Reload
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp288:
# %bb.269:                              # %_ZNSolsEd.exit371
.Ltmp289:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.15, %esi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp290:
# %bb.270:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit373
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_295
# %bb.271:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i636
	cmpb	$0, 56(%r14)
	je	.LBB5_273
# %bb.272:
	movzbl	67(%r14), %eax
	jmp	.LBB5_275
.LBB5_273:
.Ltmp291:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp292:
# %bb.274:                              # %.noexc641
	movq	(%r14), %rax
.Ltmp293:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp294:
.LBB5_275:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i638
.Ltmp295:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp296:
# %bb.276:                              # %.noexc643
.Ltmp297:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp298:
# %bb.277:                              # %_ZNSolsEPFRSoS_E.exit375
.Ltmp299:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.22, %esi
	movl	$16, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp300:
# %bb.278:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377
	movapd	144(%rsp), %xmm0                # 16-byte Reload
	divsd	96(%rsp), %xmm0                 # 16-byte Folded Reload
.Ltmp301:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp302:
# %bb.279:                              # %_ZNSolsEd.exit379
.Ltmp303:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.23, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp304:
# %bb.280:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_295
# %bb.281:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i647
	cmpb	$0, 56(%r14)
	je	.LBB5_283
# %bb.282:
	movzbl	67(%r14), %eax
	jmp	.LBB5_285
.LBB5_283:
.Ltmp305:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp306:
# %bb.284:                              # %.noexc652
	movq	(%r14), %rax
.Ltmp307:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp308:
.LBB5_285:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i649
.Ltmp309:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp310:
# %bb.286:                              # %.noexc654
.Ltmp311:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp312:
# %bb.287:                              # %_ZNSolsEPFRSoS_E.exit383
.Ltmp313:
	.cfi_escape 0x2e, 0x00
	callq	hipGetLastError
.Ltmp314:
# %bb.288:
	movl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB5_305
# %bb.289:
.Ltmp315:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.7, %esi
	movl	$11, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp316:
# %bb.290:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385
.Ltmp317:
	.cfi_escape 0x2e, 0x00
	movl	%ebx, %edi
	callq	hipGetErrorString
.Ltmp318:
# %bb.291:
	testq	%rax, %rax
	je	.LBB5_292
# %bb.293:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	%rax, %rbx
	callq	strlen
.Ltmp319:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp320:
	jmp	.LBB5_294
.LBB5_305:
	cmpq	$0, 40(%rsp)                    # 8-byte Folded Reload
	movq	$-1, %rbx
	cmovnsq	%r12, %rbx
.Ltmp331:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Znam
	movq	%rax, 120(%rsp)                 # 8-byte Spill
.Ltmp332:
# %bb.306:
.Ltmp334:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Znam
	movq	%rax, 176(%rsp)                 # 8-byte Spill
.Ltmp335:
# %bb.307:
	movq	24(%rsp), %rsi
.Ltmp336:
	.cfi_escape 0x2e, 0x00
	movq	120(%rsp), %rdi                 # 8-byte Reload
	movq	%r12, %rdx
	movl	$2, %ecx
	callq	hipMemcpy
.Ltmp337:
# %bb.308:
	movq	128(%rsp), %rsi
.Ltmp338:
	.cfi_escape 0x2e, 0x00
	movq	176(%rsp), %rdi                 # 8-byte Reload
	movq	%r12, %rdx
	movl	$2, %ecx
	callq	hipMemcpy
.Ltmp339:
# %bb.309:
.Ltmp340:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.24, %esi
	movl	$27, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp341:
# %bb.310:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_311
# %bb.313:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i669
	cmpb	$0, 56(%rbx)
	je	.LBB5_315
# %bb.314:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_317
.LBB5_292:
	movq	_ZSt4cerr(%rip), %rax
	movq	-24(%rax), %rax
	leaq	_ZSt4cerr(%rax), %rdi
	movl	_ZSt4cerr+32(%rax), %esi
	orl	$1, %esi
.Ltmp321:
	.cfi_escape 0x2e, 0x00
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp322:
.LBB5_294:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit389
	movq	_ZSt4cerr(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cerr+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_295
# %bb.297:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i658
	cmpb	$0, 56(%rbx)
	je	.LBB5_299
# %bb.298:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_301
.LBB5_299:
.Ltmp323:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp324:
# %bb.300:                              # %.noexc663
	movq	(%rbx), %rax
.Ltmp325:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp326:
.LBB5_301:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i660
.Ltmp327:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cerr, %edi
	callq	_ZNSo3putEc
.Ltmp328:
# %bb.302:                              # %.noexc665
	movl	$-1, %ebx
.Ltmp329:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp330:
	jmp	.LBB5_482
.LBB5_315:
.Ltmp342:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp343:
# %bb.316:                              # %.noexc674
	movq	(%rbx), %rax
.Ltmp344:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp345:
.LBB5_317:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i671
.Ltmp346:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp347:
# %bb.318:                              # %.noexc676
.Ltmp348:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp349:
# %bb.319:                              # %_ZNSolsEPFRSoS_E.exit395
.Ltmp350:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znam
.Ltmp351:
# %bb.320:
.Ltmp353:
	movq	%rax, %rbp
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znam
.Ltmp354:
# %bb.321:                              # %.preheader
	movq	%rax, %r15
	movq	40(%rsp), %rdx                  # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB5_329
# %bb.322:                              # %.lr.ph854.preheader
	cmpq	$7, %rdx
	ja	.LBB5_325
# %bb.323:
	xorl	%eax, %eax
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	176(%rsp), %rdi                 # 8-byte Reload
	jmp	.LBB5_324
.LBB5_325:                              # %vector.ph1020
	movq	%rdx, %rax
	andq	$-8, %rax
	xorl	%ecx, %ecx
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	176(%rsp), %rdi                 # 8-byte Reload
	.p2align	4, 0x90
.LBB5_326:                              # %vector.body1024
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rcx,2), %xmm0            # xmm0 = mem[0],zero
	movq	8(%rsi,%rcx,2), %xmm1           # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm2, (%rbp,%rcx,4)
	movdqu	%xmm0, 16(%rbp,%rcx,4)
	movq	(%rdi,%rcx,2), %xmm0            # xmm0 = mem[0],zero
	movq	8(%rdi,%rcx,2), %xmm1           # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm2, (%r15,%rcx,4)
	movdqu	%xmm0, 16(%r15,%rcx,4)
	addq	$8, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_326
# %bb.327:                              # %middle.block1017
	movq	40(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB5_328
.LBB5_295:                              # %.invoke931
.Ltmp538:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp539:
# %bb.296:                              # %.cont932
.LBB5_205:                              # %.invoke929
.Ltmp541:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp542:
# %bb.206:                              # %.cont930
.LBB5_114:
.Ltmp547:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp548:
# %bb.123:                              # %.noexc541
.LBB5_133:
.Ltmp544:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp545:
# %bb.134:                              # %.noexc552
.LBB5_311:
.Ltmp535:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp536:
# %bb.312:                              # %.noexc673
.LBB5_335:
.Ltmp352:
	jmp	.LBB5_485
.LBB5_333:
.Ltmp333:
	jmp	.LBB5_485
.LBB5_303:
.Ltmp232:
	jmp	.LBB5_485
.LBB5_231:
.Ltmp175:
	jmp	.LBB5_485
.LBB5_489:
.Ltmp131:
	jmp	.LBB5_485
.LBB5_334:
.Ltmp537:
	jmp	.LBB5_485
.LBB5_487:
.Ltmp546:
	jmp	.LBB5_485
.LBB5_116:
.Ltmp549:
	jmp	.LBB5_485
.LBB5_232:
.Ltmp543:
	jmp	.LBB5_485
.LBB5_490:
.Ltmp172:
	jmp	.LBB5_485
.LBB5_488:
.Ltmp128:
	jmp	.LBB5_485
.LBB5_304:
.Ltmp540:
	jmp	.LBB5_485
.LBB5_234:
.Ltmp229:
	jmp	.LBB5_485
.LBB5_233:
.Ltmp220:
	jmp	.LBB5_485
.LBB5_324:                              # %.lr.ph854
	movzwl	(%rsi,%rax,2), %ecx
	shll	$16, %ecx
	movl	%ecx, (%rbp,%rax,4)
	movzwl	(%rdi,%rax,2), %ecx
	shll	$16, %ecx
	movl	%ecx, (%r15,%rax,4)
	incq	%rax
.LBB5_328:                              # %middle.block1017
	cmpq	%rax, %rdx
	jne	.LBB5_324
.LBB5_329:                              # %._crit_edge855
.Ltmp355:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.25, %esi
	movl	$26, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp356:
# %bb.330:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit397
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_343
# %bb.331:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i680
	cmpb	$0, 56(%rbx)
	je	.LBB5_337
# %bb.332:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_339
.LBB5_337:
.Ltmp357:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp358:
# %bb.338:                              # %.noexc685
	movq	(%rbx), %rax
.Ltmp359:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp360:
.LBB5_339:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i682
.Ltmp361:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp362:
# %bb.340:                              # %.noexc687
.Ltmp363:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp364:
# %bb.341:                              # %_ZNSolsEPFRSoS_E.exit399
.Ltmp365:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.26, %esi
	movl	$56, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp366:
# %bb.342:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit401
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_343
# %bb.345:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i691
	cmpb	$0, 56(%rbx)
	je	.LBB5_347
# %bb.346:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_349
.LBB5_347:
.Ltmp367:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp368:
# %bb.348:                              # %.noexc696
	movq	(%rbx), %rax
.Ltmp369:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp370:
.LBB5_349:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i693
.Ltmp371:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp372:
# %bb.350:                              # %.noexc698
.Ltmp373:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp374:
# %bb.351:                              # %_ZNSolsEPFRSoS_E.exit403.preheader
	cmpq	$0, 40(%rsp)                    # 8-byte Folded Reload
	je	.LBB5_352
# %bb.357:                              # %.lr.ph860.preheader
	xorpd	%xmm0, %xmm0
	movss	%xmm0, 96(%rsp)                 # 4-byte Spill
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	movss	%xmm0, 64(%rsp)                 # 4-byte Spill
	jmp	.LBB5_358
	.p2align	4, 0x90
.LBB5_384:                              # %_ZNSolsEPFRSoS_E.exit429
                                        #   in Loop: Header=BB5_358 Depth=1
	incl	%r13d
.LBB5_385:                              # %_ZNSolsEPFRSoS_E.exit403
                                        #   in Loop: Header=BB5_358 Depth=1
	movss	96(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movaps	160(%rsp), %xmm1                # 16-byte Reload
	addss	%xmm1, %xmm0
	movss	%xmm0, 96(%rsp)                 # 4-byte Spill
	movss	64(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	maxss	%xmm1, %xmm0
	movss	%xmm0, 64(%rsp)                 # 4-byte Spill
	incq	%rbx
	cmpq	%rbx, 40(%rsp)                  # 8-byte Folded Reload
	je	.LBB5_353
.LBB5_358:                              # %.lr.ph860
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbp,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	(%r15,%rbx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, 144(%rsp)                # 4-byte Spill
	movss	%xmm1, 192(%rsp)                # 4-byte Spill
	subss	%xmm1, %xmm0
	andps	.LCPI5_18(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)                # 16-byte Spill
	ucomiss	.LCPI5_19(%rip), %xmm0
	jbe	.LBB5_385
# %bb.359:                              #   in Loop: Header=BB5_358 Depth=1
	cmpl	$19, %r13d
	jg	.LBB5_388
# %bb.360:                              #   in Loop: Header=BB5_358 Depth=1
.Ltmp381:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.27, %esi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp382:
# %bb.361:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit407
                                        #   in Loop: Header=BB5_358 Depth=1
	movq	%rbx, %rax
	movq	72(%rsp), %rcx                  # 8-byte Reload
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB5_362
# %bb.363:                              #   in Loop: Header=BB5_358 Depth=1
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r14
	movq	%rax, %rsi
	jmp	.LBB5_364
	.p2align	4, 0x90
.LBB5_388:                              #   in Loop: Header=BB5_358 Depth=1
	cmpl	$20, %r13d
	jne	.LBB5_384
# %bb.389:                              #   in Loop: Header=BB5_358 Depth=1
.Ltmp375:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.34, %esi
	movl	$39, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp376:
# %bb.390:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit431
                                        #   in Loop: Header=BB5_358 Depth=1
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r12
	testq	%r12, %r12
	je	.LBB5_376
# %bb.391:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i713
                                        #   in Loop: Header=BB5_358 Depth=1
	movl	$_ZSt4cout, %r14d
	cmpb	$0, 56(%r12)
	jne	.LBB5_381
# %bb.392:                              #   in Loop: Header=BB5_358 Depth=1
.Ltmp377:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp378:
# %bb.393:                              # %.noexc718
                                        #   in Loop: Header=BB5_358 Depth=1
	movq	(%r12), %rax
.Ltmp379:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp380:
# %bb.394:                              #   in Loop: Header=BB5_358 Depth=1
	movl	$_ZSt4cout, %r14d
	jmp	.LBB5_382
.LBB5_362:                              #   in Loop: Header=BB5_358 Depth=1
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %r14d
	movl	%eax, %esi
.LBB5_364:                              #   in Loop: Header=BB5_358 Depth=1
.Ltmp383:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertImEERSoT_
.Ltmp384:
# %bb.365:                              # %_ZNSolsEm.exit
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp385:
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.28, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp386:
# %bb.366:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit410
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp387:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
.Ltmp388:
# %bb.367:                              # %_ZNSolsEm.exit412
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp389:
	movq	%rax, %r14
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.29, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp390:
# %bb.368:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit414
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp391:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.30, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp392:
# %bb.369:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit416
                                        #   in Loop: Header=BB5_358 Depth=1
	movss	144(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp393:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp394:
# %bb.370:                              # %_ZNSolsEf.exit
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp395:
	movq	%rax, %r14
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.31, %esi
	movl	$9, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp396:
# %bb.371:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit419
                                        #   in Loop: Header=BB5_358 Depth=1
	movss	192(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp397:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp398:
# %bb.372:                              # %_ZNSolsEf.exit421
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp399:
	movq	%rax, %r14
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.32, %esi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp400:
# %bb.373:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit423
                                        #   in Loop: Header=BB5_358 Depth=1
	movaps	160(%rsp), %xmm0                # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
.Ltmp401:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp402:
# %bb.374:                              # %_ZNSolsEf.exit425
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp403:
	movq	%rax, %r14
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.33, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp404:
# %bb.375:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit427
                                        #   in Loop: Header=BB5_358 Depth=1
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r12
	testq	%r12, %r12
	je	.LBB5_376
# %bb.378:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i702
                                        #   in Loop: Header=BB5_358 Depth=1
	cmpb	$0, 56(%r12)
	je	.LBB5_379
.LBB5_381:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i704.invoke.sink.split
                                        #   in Loop: Header=BB5_358 Depth=1
	movzbl	67(%r12), %eax
	jmp	.LBB5_382
.LBB5_379:                              #   in Loop: Header=BB5_358 Depth=1
.Ltmp405:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp406:
# %bb.380:                              # %.noexc707
                                        #   in Loop: Header=BB5_358 Depth=1
	movq	(%r12), %rax
.Ltmp407:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp408:
.LBB5_382:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i704.invoke
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp409:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
.Ltmp410:
# %bb.383:                              # %.noexc709.invoke
                                        #   in Loop: Header=BB5_358 Depth=1
.Ltmp411:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp412:
	jmp	.LBB5_384
.LBB5_352:
	xorl	%r13d, %r13d
	xorpd	%xmm0, %xmm0
	movss	%xmm0, 64(%rsp)                 # 4-byte Spill
	movss	%xmm0, 96(%rsp)                 # 4-byte Spill
.LBB5_353:                              # %_ZNSolsEPFRSoS_E.exit403._crit_edge
.Ltmp417:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.35, %esi
	movl	$21, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp418:
# %bb.354:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_440
# %bb.355:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i724
	cmpb	$0, 56(%rbx)
	je	.LBB5_395
# %bb.356:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_397
.LBB5_395:
.Ltmp419:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp420:
# %bb.396:                              # %.noexc729
	movq	(%rbx), %rax
.Ltmp421:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp422:
.LBB5_397:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i726
.Ltmp423:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp424:
# %bb.398:                              # %.noexc731
.Ltmp425:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp426:
# %bb.399:                              # %_ZNSolsEPFRSoS_E.exit435
.Ltmp427:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.36, %esi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp428:
# %bb.400:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit437
	movss	64(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp429:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp430:
# %bb.401:                              # %_ZNSolsEf.exit439
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_440
# %bb.402:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i735
	cmpb	$0, 56(%r14)
	je	.LBB5_404
# %bb.403:
	movzbl	67(%r14), %eax
	jmp	.LBB5_406
.LBB5_404:
.Ltmp431:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp432:
# %bb.405:                              # %.noexc740
	movq	(%r14), %rax
.Ltmp433:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp434:
.LBB5_406:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i737
.Ltmp435:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp436:
# %bb.407:                              # %.noexc742
.Ltmp437:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp438:
# %bb.408:                              # %_ZNSolsEPFRSoS_E.exit441
.Ltmp439:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.37, %esi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp440:
# %bb.409:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit443
	cvtsi2ssq	40(%rsp), %xmm1         # 8-byte Folded Reload
	movss	96(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)                 # 4-byte Spill
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
.Ltmp441:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp442:
# %bb.410:                              # %_ZNSolsEf.exit445
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_440
# %bb.411:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i746
	cmpb	$0, 56(%r14)
	je	.LBB5_413
# %bb.412:
	movzbl	67(%r14), %eax
	jmp	.LBB5_415
.LBB5_413:
.Ltmp443:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp444:
# %bb.414:                              # %.noexc751
	movq	(%r14), %rax
.Ltmp445:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp446:
.LBB5_415:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i748
.Ltmp447:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp448:
# %bb.416:                              # %.noexc753
.Ltmp449:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp450:
# %bb.417:                              # %_ZNSolsEPFRSoS_E.exit447
.Ltmp451:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.38, %esi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp452:
# %bb.418:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449
.Ltmp453:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	%r13d, %esi
	callq	_ZNSolsEi
.Ltmp454:
# %bb.419:
.Ltmp455:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.39, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp456:
# %bb.420:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit451
.Ltmp457:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	_ZNSo9_M_insertImEERSoT_
.Ltmp458:
# %bb.421:                              # %_ZNSolsEm.exit453
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_440
# %bb.422:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i757
	cmpb	$0, 56(%r14)
	je	.LBB5_424
# %bb.423:
	movzbl	67(%r14), %eax
	jmp	.LBB5_426
.LBB5_424:
.Ltmp459:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp460:
# %bb.425:                              # %.noexc762
	movq	(%r14), %rax
.Ltmp461:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp462:
.LBB5_426:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i759
.Ltmp463:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp464:
# %bb.427:                              # %.noexc764
.Ltmp465:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp466:
# %bb.428:                              # %_ZNSolsEPFRSoS_E.exit455
.Ltmp467:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.40, %esi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp468:
# %bb.429:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit457
	cvtsi2ss	%r13d, %xmm0
	divss	72(%rsp), %xmm0                 # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI5_20(%rip), %xmm0          # xmm0 = [1.0E+2,0.0E+0]
	mulsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm0
.Ltmp469:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp470:
# %bb.430:                              # %_ZNSolsEd.exit459
.Ltmp471:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.41, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp472:
# %bb.431:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_440
# %bb.432:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i768
	cmpb	$0, 56(%r14)
	je	.LBB5_434
# %bb.433:
	movzbl	67(%r14), %eax
	jmp	.LBB5_436
.LBB5_434:
.Ltmp473:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp474:
# %bb.435:                              # %.noexc773
	movq	(%r14), %rax
.Ltmp475:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp476:
.LBB5_436:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i770
.Ltmp477:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp478:
# %bb.437:                              # %.noexc775
.Ltmp479:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp480:
# %bb.438:                              # %_ZNSolsEPFRSoS_E.exit463
.Ltmp481:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.42, %esi
	movl	$33, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp482:
# %bb.439:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_440
# %bb.442:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i779
	cmpb	$0, 56(%rbx)
	je	.LBB5_444
# %bb.443:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_446
.LBB5_444:
.Ltmp483:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp484:
# %bb.445:                              # %.noexc784
	movq	(%rbx), %rax
.Ltmp485:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp486:
.LBB5_446:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i781
.Ltmp487:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp488:
# %bb.447:                              # %.noexc786
.Ltmp489:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp490:
# %bb.448:                              # %_ZNSolsEPFRSoS_E.exit467.preheader
	movq	40(%rsp), %rsi                  # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB5_449
# %bb.450:                              # %_ZNSolsEPFRSoS_E.exit467.preheader943
	cmpq	$7, %rsi
	ja	.LBB5_454
# %bb.451:
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movq	184(%rsp), %rdx                 # 8-byte Reload
	jmp	.LBB5_452
.LBB5_449:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB5_457
.LBB5_454:                              # %vector.ph1035
	movq	%rsi, %rax
	andq	$-8, %rax
	xorpd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	movaps	.LCPI5_18(%rip), %xmm4          # xmm4 = [NaN,NaN,NaN,NaN]
	movaps	.LCPI5_21(%rip), %xmm5          # xmm5 = [1.00000001E-1,1.00000001E-1,1.00000001E-1,1.00000001E-1]
	xorpd	%xmm3, %xmm3
	xorpd	%xmm1, %xmm1
	xorpd	%xmm0, %xmm0
	movq	184(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB5_455:                              # %vector.body1039
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rbp,%rcx,4), %xmm6
	movups	16(%rbp,%rcx,4), %xmm7
	movups	(%rdx,%rcx,4), %xmm8
	movups	16(%rdx,%rcx,4), %xmm9
	subps	%xmm8, %xmm6
	subps	%xmm9, %xmm7
	andps	%xmm4, %xmm6
	andps	%xmm4, %xmm7
	movaps	%xmm5, %xmm10
	cmpltps	%xmm6, %xmm10
	psubd	%xmm10, %xmm1
	movaps	%xmm5, %xmm6
	cmpltps	%xmm7, %xmm6
	psubd	%xmm6, %xmm0
	movups	(%r15,%rcx,4), %xmm6
	movups	16(%r15,%rcx,4), %xmm7
	subps	%xmm8, %xmm6
	subps	%xmm9, %xmm7
	andps	%xmm4, %xmm6
	andps	%xmm4, %xmm7
	movaps	%xmm5, %xmm8
	cmpltps	%xmm6, %xmm8
	psubd	%xmm8, %xmm2
	movaps	%xmm5, %xmm6
	cmpltps	%xmm7, %xmm6
	psubd	%xmm6, %xmm3
	addq	$8, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_455
# %bb.456:                              # %middle.block1032
	paddd	%xmm2, %xmm3
	pshufd	$238, %xmm3, %xmm2              # xmm2 = xmm3[2,3,2,3]
	paddd	%xmm3, %xmm2
	pshufd	$85, %xmm2, %xmm3               # xmm3 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm3
	movd	%xmm3, %ebx
	paddd	%xmm1, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r14d
	movq	40(%rsp), %rsi                  # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB5_457
.LBB5_452:                              # %_ZNSolsEPFRSoS_E.exit467.preheader1058
	movaps	.LCPI5_18(%rip), %xmm0          # xmm0 = [NaN,NaN,NaN,NaN]
	movss	.LCPI5_22(%rip), %xmm1          # xmm1 = [1.00000001E-1,0.0E+0,0.0E+0,0.0E+0]
	.p2align	4, 0x90
.LBB5_453:                              # %_ZNSolsEPFRSoS_E.exit467
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbp,%rax,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	movss	(%rdx,%rax,4), %xmm3            # xmm3 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm2
	andps	%xmm0, %xmm2
	xorl	%ecx, %ecx
	ucomiss	%xmm1, %xmm2
	seta	%cl
	addl	%ecx, %r14d
	movss	(%r15,%rax,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm2
	andps	%xmm0, %xmm2
	xorl	%ecx, %ecx
	ucomiss	%xmm1, %xmm2
	seta	%cl
	addl	%ecx, %ebx
	incq	%rax
	cmpq	%rax, %rsi
	jne	.LBB5_453
.LBB5_457:                              # %_ZNSolsEPFRSoS_E.exit467._crit_edge
.Ltmp491:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.43, %esi
	movl	$22, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp492:
# %bb.458:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit469
.Ltmp493:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	%r14d, %esi
	callq	_ZNSolsEi
.Ltmp494:
# %bb.459:
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r12
	testq	%r12, %r12
	je	.LBB5_470
# %bb.460:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i790
	cmpb	$0, 56(%r12)
	je	.LBB5_463
# %bb.461:
	movzbl	67(%r12), %eax
	jmp	.LBB5_465
.LBB5_463:
.Ltmp495:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp496:
# %bb.464:                              # %.noexc795
	movq	(%r12), %rax
.Ltmp497:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp498:
.LBB5_465:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i792
.Ltmp499:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
.Ltmp500:
# %bb.466:                              # %.noexc797
.Ltmp501:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp502:
# %bb.467:                              # %_ZNSolsEPFRSoS_E.exit471
.Ltmp503:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.44, %esi
	movl	$22, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp504:
# %bb.468:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit473
.Ltmp505:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	%ebx, %esi
	callq	_ZNSolsEi
.Ltmp506:
# %bb.469:
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB5_470
# %bb.472:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i801
	cmpb	$0, 56(%r14)
	je	.LBB5_474
# %bb.473:
	movzbl	67(%r14), %eax
	jmp	.LBB5_476
.LBB5_474:
.Ltmp507:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp508:
# %bb.475:                              # %.noexc806
	movq	(%r14), %rax
.Ltmp509:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp510:
.LBB5_476:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i803
.Ltmp511:
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
.Ltmp512:
# %bb.477:                              # %.noexc808
.Ltmp513:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp514:
# %bb.478:                              # %_ZNSolsEPFRSoS_E.exit475
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_ZdaPv
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_ZdaPv
	.cfi_escape 0x2e, 0x00
	movq	216(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdaPv
	.cfi_escape 0x2e, 0x00
	movq	208(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdaPv
	.cfi_escape 0x2e, 0x00
	movq	184(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdaPv
	.cfi_escape 0x2e, 0x00
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdaPv
	.cfi_escape 0x2e, 0x00
	movq	200(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdaPv
	.cfi_escape 0x2e, 0x00
	movq	120(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdaPv
	.cfi_escape 0x2e, 0x00
	movq	176(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdaPv
	movq	16(%rsp), %rdi
.Ltmp515:
	.cfi_escape 0x2e, 0x00
	callq	hipFree
.Ltmp516:
# %bb.479:
	movq	8(%rsp), %rdi
.Ltmp517:
	.cfi_escape 0x2e, 0x00
	callq	hipFree
.Ltmp518:
# %bb.480:
	movq	24(%rsp), %rdi
.Ltmp519:
	.cfi_escape 0x2e, 0x00
	callq	hipFree
.Ltmp520:
# %bb.481:
	xorl	%ebx, %ebx
	movq	128(%rsp), %rdi
.Ltmp521:
	.cfi_escape 0x2e, 0x00
	callq	hipFree
.Ltmp522:
.LBB5_482:                              # %_ZNSolsEPFRSoS_E.exit293
.Ltmp523:
	.cfi_escape 0x2e, 0x00
	leaq	5280(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp524:
# %bb.483:                              # %_ZNSt13random_deviceD2Ev.exit
	movl	%ebx, %eax
	addq	$10280, %rsp                    # imm = 0x2828
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB5_376:                              # %.invoke935
	.cfi_def_cfa_offset 10336
.Ltmp414:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp415:
# %bb.377:                              # %.cont936
.LBB5_440:                              # %.invoke937
.Ltmp529:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp530:
# %bb.441:                              # %.cont938
.LBB5_343:                              # %.invoke933
.Ltmp532:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp533:
# %bb.344:                              # %.cont934
.LBB5_470:                              # %.invoke939
.Ltmp526:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp527:
# %bb.471:                              # %.cont940
.LBB5_492:
.Ltmp525:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB5_387:                              # %.loopexit.split-lp
.Ltmp416:
	jmp	.LBB5_485
.LBB5_336:
.Ltmp534:
	jmp	.LBB5_485
.LBB5_491:
.Ltmp528:
	jmp	.LBB5_485
.LBB5_462:
.Ltmp531:
	jmp	.LBB5_485
.LBB5_386:                              # %.loopexit
.Ltmp413:
.LBB5_485:
	movq	%rax, %rbx
.Ltmp556:
	.cfi_escape 0x2e, 0x00
	leaq	5280(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp557:
	jmp	.LBB5_12
.LBB5_493:
.Ltmp558:
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end5:
	.size	_Z13run_benchmarkmmm, .Lfunc_end5-_Z13run_benchmarkmmm
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp22-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp22
	.uleb128 .Ltmp555-.Lfunc_begin0         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp56-.Ltmp23                #   Call between .Ltmp23 and .Ltmp56
	.uleb128 .Ltmp552-.Lfunc_begin0         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp549-.Lfunc_begin0         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp553-.Lfunc_begin0         # >> Call Site 8 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin0         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp554-.Lfunc_begin0         # >> Call Site 9 <<
	.uleb128 .Ltmp550-.Ltmp554              #   Call between .Ltmp554 and .Ltmp550
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp550-.Lfunc_begin0         # >> Call Site 10 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin0         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp551-.Lfunc_begin0         # >> Call Site 11 <<
	.uleb128 .Ltmp62-.Ltmp551               #   Call between .Ltmp551 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp75-.Ltmp62                #   Call between .Ltmp62 and .Ltmp75
	.uleb128 .Ltmp549-.Lfunc_begin0         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp87-.Ltmp76                #   Call between .Ltmp76 and .Ltmp87
	.uleb128 .Ltmp546-.Lfunc_begin0         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp127-.Ltmp88               #   Call between .Ltmp88 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin0         # >> Call Site 15 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin0         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 16 <<
	.uleb128 .Ltmp171-.Ltmp132              #   Call between .Ltmp132 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin0         #     jumps to .Ltmp172
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin0         # >> Call Site 17 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin0         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin0         # >> Call Site 18 <<
	.uleb128 .Ltmp213-.Ltmp176              #   Call between .Ltmp176 and .Ltmp213
	.uleb128 .Ltmp543-.Lfunc_begin0         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin0         # >> Call Site 19 <<
	.uleb128 .Ltmp219-.Ltmp214              #   Call between .Ltmp214 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin0         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin0         # >> Call Site 20 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp543-.Lfunc_begin0         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin0         # >> Call Site 21 <<
	.uleb128 .Ltmp228-.Ltmp223              #   Call between .Ltmp223 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin0         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin0         #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin0         # >> Call Site 23 <<
	.uleb128 .Ltmp320-.Ltmp233              #   Call between .Ltmp233 and .Ltmp320
	.uleb128 .Ltmp540-.Lfunc_begin0         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin0         #     jumps to .Ltmp333
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp341-.Ltmp334              #   Call between .Ltmp334 and .Ltmp341
	.uleb128 .Ltmp537-.Lfunc_begin0         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp330-.Ltmp321              #   Call between .Ltmp321 and .Ltmp330
	.uleb128 .Ltmp540-.Lfunc_begin0         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp349-.Ltmp342              #   Call between .Ltmp342 and .Ltmp349
	.uleb128 .Ltmp537-.Lfunc_begin0         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin0         #     jumps to .Ltmp352
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp534-.Lfunc_begin0         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp538-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp539-.Ltmp538              #   Call between .Ltmp538 and .Ltmp539
	.uleb128 .Ltmp540-.Lfunc_begin0         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp542-.Ltmp541              #   Call between .Ltmp541 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin0         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp548-.Ltmp547              #   Call between .Ltmp547 and .Ltmp548
	.uleb128 .Ltmp549-.Lfunc_begin0         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp546-.Lfunc_begin0         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp535-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp536-.Ltmp535              #   Call between .Ltmp535 and .Ltmp536
	.uleb128 .Ltmp537-.Lfunc_begin0         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp355-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp374-.Ltmp355              #   Call between .Ltmp355 and .Ltmp374
	.uleb128 .Ltmp534-.Lfunc_begin0         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp381-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp412-.Ltmp381              #   Call between .Ltmp381 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin0         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp490-.Ltmp417              #   Call between .Ltmp417 and .Ltmp490
	.uleb128 .Ltmp531-.Lfunc_begin0         #     jumps to .Ltmp531
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp491-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp522-.Ltmp491              #   Call between .Ltmp491 and .Ltmp522
	.uleb128 .Ltmp528-.Lfunc_begin0         #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp523-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp524-.Ltmp523              #   Call between .Ltmp523 and .Ltmp524
	.uleb128 .Ltmp525-.Lfunc_begin0         #     jumps to .Ltmp525
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp414-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin0         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp529-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp530-.Ltmp529              #   Call between .Ltmp529 and .Ltmp530
	.uleb128 .Ltmp531-.Lfunc_begin0         #     jumps to .Ltmp531
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp532-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp533-.Ltmp532              #   Call between .Ltmp532 and .Ltmp533
	.uleb128 .Ltmp534-.Lfunc_begin0         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp526-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp527-.Ltmp526              #   Call between .Ltmp526 and .Ltmp527
	.uleb128 .Ltmp528-.Lfunc_begin0         #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin0         #     jumps to .Ltmp558
	.byte	1                               #   On action: 1
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$8192, %edi                     # imm = 0x2000
	movl	$8192, %esi                     # imm = 0x2000
	movl	$8192, %edx                     # imm = 0x2000
	callq	_Z13run_benchmarkmmm
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __hip_module_ctor
	.type	__hip_module_ctor,@function
__hip_module_ctor:                      # @__hip_module_ctor
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	__hip_gpubin_handle_3c031c907996160d(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB8_2
# %bb.1:
	movl	$__hip_fatbin_wrapper, %edi
	callq	__hipRegisterFatBinary
	movq	%rax, %rdi
	movq	%rax, __hip_gpubin_handle_3c031c907996160d(%rip)
.LBB8_2:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z8micro_tk13micro_globals, %esi
	movl	$.L__unnamed_4, %edx
	movl	$.L__unnamed_4, %ecx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	movl	$__hip_module_dtor, %edi
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	jmp	atexit                          # TAILCALL
.Lfunc_end8:
	.size	__hip_module_ctor, .Lfunc_end8-__hip_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __hip_module_dtor
	.type	__hip_module_dtor,@function
__hip_module_dtor:                      # @__hip_module_dtor
	.cfi_startproc
# %bb.0:
	movq	__hip_gpubin_handle_3c031c907996160d(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB9_2
# %bb.1:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__hipUnregisterFatBinary
	movq	$0, __hip_gpubin_handle_3c031c907996160d(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB9_2:
	retq
.Lfunc_end9:
	.size	__hip_module_dtor, .Lfunc_end9-__hip_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	_Z8micro_tk13micro_globals,@object # @_Z8micro_tk13micro_globals
	.section	.rodata,"a",@progbits
	.globl	_Z8micro_tk13micro_globals
	.p2align	3, 0x0
_Z8micro_tk13micro_globals:
	.quad	_Z23__device_stub__micro_tk13micro_globals
	.size	_Z8micro_tk13micro_globals, 8

	.type	.L__unnamed_5,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_5:
	.asciz	";./launch.cpp;cpu_gemm;48;1;;"
	.size	.L__unnamed_5, 30

	.type	.L__unnamed_2,@object           # @1
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.long	0                               # 0x0
	.long	514                             # 0x202
	.long	0                               # 0x0
	.long	29                              # 0x1d
	.quad	.L__unnamed_5
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_6,@object           # @2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_6:
	.asciz	";./launch.cpp;cpu_gemm;48;37;;"
	.size	.L__unnamed_6, 31

	.type	.L__unnamed_3,@object           # @3
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__unnamed_3:
	.long	0                               # 0x0
	.long	514                             # 0x202
	.long	0                               # 0x0
	.long	30                              # 0x1e
	.quad	.L__unnamed_6
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_1,@object           # @4
	.p2align	3, 0x0
.L__unnamed_1:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	29                              # 0x1d
	.quad	.L__unnamed_5
	.size	.L__unnamed_1, 24

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"--------------------  M_size="
	.size	.L.str, 30

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" N_size="
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" K_size="
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"  --------------------\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Allocated host memory"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Initialized matrices"
	.size	.L.str.5, 21

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Performed CPU matrix multiplication"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"HIP error: "
	.size	.L.str.7, 12

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Allocated device memory"
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Copied matrices to device"
	.size	.L.str.9, 26

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\n=== ThunderKittens Kernel ==="
	.size	.L.str.11, 31

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"ThunderKittens execution time: "
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" us"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"ThunderKittens performance: "
	.size	.L.str.14, 29

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" TFLOPs"
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\n=== rocBLAS Baseline ==="
	.size	.L.str.16, 26

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"rocBLAS execution time: "
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"rocBLAS performance: "
	.size	.L.str.18, 22

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\n=== Performance Summary ==="
	.size	.L.str.19, 29

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"ThunderKittens: "
	.size	.L.str.20, 17

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"rocBLAS:        "
	.size	.L.str.21, 17

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Speedup:        "
	.size	.L.str.22, 17

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"x"
	.size	.L.str.23, 2

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Copied results back to host"
	.size	.L.str.24, 28

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Converted results to float"
	.size	.L.str.25, 27

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"\n=== Correctness Analysis: ThunderKittens vs rocBLAS ==="
	.size	.L.str.26, 57

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Difference at ["
	.size	.L.str.27, 16

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	","
	.size	.L.str.28, 2

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"]: "
	.size	.L.str.29, 4

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"TK="
	.size	.L.str.30, 4

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	" vs BLAS="
	.size	.L.str.31, 10

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	" (diff="
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	")"
	.size	.L.str.33, 2

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"... (showing only first 20 differences)"
	.size	.L.str.34, 40

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"\nCorrectness Summary:"
	.size	.L.str.35, 22

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Max error:     "
	.size	.L.str.36, 16

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Mean error:    "
	.size	.L.str.37, 16

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Large errors:  "
	.size	.L.str.38, 16

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	" / "
	.size	.L.str.39, 4

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Accuracy:      "
	.size	.L.str.40, 16

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"%"
	.size	.L.str.41, 2

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"\n=== CPU Reference Comparison ==="
	.size	.L.str.42, 34

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"TK vs CPU errors:     "
	.size	.L.str.43, 23

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"BLAS vs CPU errors:   "
	.size	.L.str.44, 23

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"default"
	.size	.L.str.45, 8

	.type	.L__unnamed_4,@object           # @5
.L__unnamed_4:
	.asciz	"_Z8micro_tk13micro_globals"
	.size	.L__unnamed_4, 27

	.type	.L__unnamed_7,@object           # @6
	.section	.hip_fatbin,"a",@progbits
	.p2align	12, 0x0
.L__unnamed_7:
	.asciz	"__CLANG_OFFLOAD_BUNDLE__\002\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\036\000\000\000\000\000\000\000host-x86_64-unknown-linux-gnu-\000\020\000\000\000\000\000\000\320e\000\000\000\000\000\000\037\000\000\000\000\000\000\000hipv4-amdgcn-amd-amdhsa--gfx942\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\001@\004\000\000\000\000\000\000\000\003\000\340\000\001\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\320a\000\000\000\000\000\000L\005\000\000@\0008\000\t\000@\000\020\000\016\000\006\000\000\000\004\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\370\001\000\000\000\000\000\000\370\001\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\b\000\000\000\000\000\000\200\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\005\000\000\000\000\t\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\031\000\000\000\000\000\000\300U\000\000\000\000\000\000\300U\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\300^\000\000\000\000\000\000\300~\000\000\000\000\000\000\300~\000\000\000\000\000\000p\000\000\000\000\000\000\000@\001\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\0000_\000\000\000\000\000\0000\217\000\000\000\000\000\0000\217\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\002\000\000\000\006\000\000\000\300^\000\000\000\000\000\000\300~\000\000\000\000\000\000\300~\000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000R\345td\004\000\000\000\300^\000\000\000\000\000\000\300~\000\000\000\000\000\000\300~\000\000\000\000\000\000p\000\000\000\000\000\000\000@\001\000\000\000\000\000\000\001\000\000\000\000\000\000\000Q\345td\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000\334\004\000\000\000\000\000\000\334\004\000\000\000\000\000\000\004\000\000\000\000\000\000\000\007\000\000\000\305\004\000\000 \000\000\000AMDGPU\000\000\203\256amdhsa.kernels\221\336\000\022\253.agpr_count\000\245.args\237\203\247.offset\000\245.size\314\220\253.value_kind\250by_value\203\247.offset\314\220\245.size\004\253.value_kind\264hidden_block_count_x\203\247.offset\314\224\245.size\004\253.value_kind\264hidden_block_count_y\203\247.offset\314\230\245.size\004\253.value_kind\264hidden_block_count_z\203\247.offset\314\234\245.size\002\253.value_kind\263hidden_group_size_x\203\247.offset\314\236\245.size\002\253.value_kind\263hidden_group_size_y\203\247.offset\314\240\245.size\002\253.value_kind\263hidden_group_size_z\203\247.offset\314\242\245.size\002\253.value_kind\262hidden_remainder_x\203\247.offset\314\244\245.size\002\253.value_kind\262hidden_remainder_y\203\247.offset\314\246\245.size\002\253.value_kind\262hidden_remainder_z\203\247.offset\314\270\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offset\314\300\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offset\314\310\245.size\b\253.value_kind\266hidden_global_offset_z\203\247.offset\314\320\245.size\002\253.value_kind\260hidden_grid_dims\203\247.offset\315\001\b\245.size\004\253.value_kind\267hidden_dynamic_lds_size\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size\315\001\220\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\002\000\245.name\272_Z8micro_tk13micro_globals\273.private_segment_fixed_size\000\253.sgpr_count#\261.sgpr_spill_count\000\247.symbol\275_Z8micro_tk13micro_globals.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\314\372\261.vgpr_spill_count\000\257.wavefront_size@\255amdhsa.target\271amdgcn-amd-amdhsa--gfx942\256amdhsa.version\222\001\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\000\031\000\000\000\000\000\000\264Q\000\000\000\000\000\000\034\000\000\000\021\003\006\000@\b\000\000\000\000\000\000@\000\000\000\000\000\000\000:\000\000\000\021\000\n\0000\217\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\032\000\000\000\000\000\205\000\000\220\020\000\001\000\000\000n\226\363@\354\205\221\322\027Q\346I\004\000\000\000\004\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000_Z8micro_tk13micro_globals\000_Z8micro_tk13micro_globals.kd\000__hip_cuid_3c031c907996160d\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\220\001\000\000\000\000\000\000\300\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000>\000\000\000\037\001\257\000\204\001\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\004\006\300\000\000\000\000\200\003\006\300 \000\000\000\000\005\006\3000\000\000\000\000\003\006\300P\000\000\000\000\001\016\300`\000\000\000\000\004\006\300\200\000\000\000\200\006\006\300\220\000\000\000\200\301\007\277\177\300\214\277\200\200\007\205\007\320\t\206\200\000\227\276\007\217\026\206\t\220\t\201\026\200\022\277\032\003\001\222\007\t\030\205\001\002\001\201\001\237\003\220\003\235\003\217\001\003\003\201\033\032\002\222\003\203\007\220\003\310\003\206\001\003\201\201\002\237\003\220\003\235\003\217\002\003\002\201\002\203\002\220\001\002\001\222\001\007\002\201\002\237\001\220\001\227\001\217\002\001\003\201\003\211\001\220\001\204\007\216\240\007\201\201\001\220\t\203\t0\213\276\013\f\002~\200\013\232\201\003\377\003\206\000\376\377\377\002\003\202\201\001G\002~\0020\231\276\030\377\000\201\000\200\000\000\000\320\001\206\377\002\002\n\376\377\177O\001\017\002~\002\t\003\210\000\217\026\206\001\220\001\201\001\0056~\032\033\032\222\033\032\032\226\033\032\033\201\031\033\032\226\032\013\033\222\031\033\231\201\003\237\003\220\032\201\033\201\031\013\234\201\031\013\t\277\033\032\032\205\034\031\031\205\032\201\033\201\031\013\t\277\033\032\013\205\013\003\013\210\013\003\213\201\013\t\003\222\002\003\202\201\007\002\007\201\007\210\007\216\007\237\002\220\016\002\002\222\016\007\003\226\003\002\002\201\017\007\003\222\002\003\003\201\016\007\002\222\002\201\202\216\022\002\022\200\023\003\023\202\013\210\013\216\013\237\t\220\f\t\002\222\f\013\003\226\003\002\002\201\r\013\003\222\002\003\003\201\f\013\002\222\002\201\202\216\203\000\004$\024\002\024\200\270\004@&\203\0008 \025\003\025\202\002\002\350\321\034\035\200\004\237\004\006\"\004\000\b\322\002\003I\000\3008:(\000\200\\\334\004\000\177\n\004\002\350\321\035\035\200\004\237\b\n\"\006\000\b\322\004\003I\000\000\200\\\334\006\000\177\016\006\000\375\321\016\016\t\004\237\f\016\"\b\000\b\322\006\003I\000\3778B(\300\000\000\000\000\200\\\334\b\000\177\024\b\002\350\321!\035\200\004\237\020\022\"\022\000\b\322\b\003I\000\000\200\\\334\022\000\177\030\204\000$$\201@&$\377$\006&\200\037\000\000\030&<h\036\007\nh\204\n\016 \210&H(\377\016\016&x\000\000\000\030H>h\007\013\n*p\017\214\277\000\000\232\330\005\n\000\000\037\007\nh\204\n\016 \377\016\016&x\000\000\000\007\013\n*\000\000\232\330\005\f\000\000\377\006\n(\000 \000\000\036\013\016h\204\016\022 \377\022\022&x\000\000\000\t\017\016*\000\000\232\330\007\016\000\000\037\013\016h\204\016\022 \377\022\022&x\000\000\000\t\017\016*\000\000\232\330\007\020\000\000\377\006\016(\000@\000\000\036\017\022h\204\022\024 \377\024\024&x\000\000\000\n\023\022*\000\000\232\330\t\024\000\000\037\017\022h\204\022\024 \377\024\024&x\000\000\000\n\023\022*\000\000\232\330\t\026\000\000\377\006\022(\000`\000\000\036\023\024h\204\024\026 \377\026\026&x\000\000\000\013\025\024*\000\000\232\330\n\030\000\000\037\023\024h\204\024\026 \377\026\026&x\000\000\000\013\025\024*\000\000\232\330\n\032\000\000\n\002\350\321\034\031\200\004\237\024\026\"\f\000\b\322\n\003Q\000\177\300\214\277\000\200\\\334\f\000\177\024\f\002\350\321\035\031\200\004\237\030\032\"\016\000\b\322\f\003Q\000\000\200\\\334\016\000\177\030\016\000\375\321\f\016)\004\237\034\036\"\020\000\b\322\016\003Q\000\026\200\022\277\000\200\\\334\020\000\177\034\020\002\350\321!\031\200\004\000\001\003\205\000\000\200\277\003&\026h\237 \"\"\013\007\036h \000\b\322\020\003Q\000\204\036\" \377\"\"&x\000\000\000\003H\032h\021\037\036*\000\200\\\334 \000\177 p\017\214\277\000\000\232\330\017\024\000\000\r\007\036h\204\036\" \377\"\"&x\000\000\000\021\037\036*\000\000\232\330\017\026\000\000\013\013\036h\204\036\" \377\"\"&x\000\000\000\021\037\036*\000\000\232\330\017\030\000\000\r\013\036h\204\036\" \377\"\"&x\000\000\000\021\037\036*\000\000\232\330\017\032\000\000\013\017\036h\204\036\" \377\"\"&x\000\000\000\021\037\036*\000\000\232\330\017\034\000\000\r\017\036h\204\036\" \377\"\"&x\000\000\000\021\037\036*\013\023\026h\000\000\232\330\017\036\000\000\204\026\036 \377\036\036&x\000\000\000\017\027\026*\000\000\232\330\013 \000\000\r\023\026h\204\026\032 \377\032\032&x\000\000\000\r\027\026*\000\000\232\330\013\"\000\000\210\000\002 \201\002\224}\177\300\214\277\000\000\212\277j \200\276\001\000\210\277\000\000\212\277~\000\376\207\201\004B%\217\000&'\202\000\004 \224\000\310\321\000\r\t\002\214\004$'\207&\005$\201\bD%\004\000\000\322\224\033\t\004\201\fF%\201$\r$\003\b\bh\201\020H%\004\r\020h\204\020\026 \002\000\000\322\001\033\t\004\377\026\026&x\000\000\000\030\004\004h\206\002*%\013\021@+\002\r\020h\225'\003(\204\020\026 \001\000\375\321\001\017a\000\377\026\026&x\000\000\000\377\002\002h\000@\000\000\013\021>+\001\r\020h\204\020\026 \377\026\026&x\000\000\000\013\021<+\240\f\020(\201\024J%\004\021\024h\204\024\026 \377\026\026&x\000\000\000\013\025:+\002\021\024h\204\024\026 \377\026\026&x\000\000\000\001\021\020h\013\0258+\204\020\024 \377\024\024&x\000\000\000\n\0216+\300\f\020(\004\021\024h\204\024\026 \377\026\026&x\000\000\000\013\0254+\002\021\024h\204\024\026 \377\026\026&x\000\000\000\001\021\020h\013\0252+\204\020\024 \377\f\f(`\000\000\000\377\024\024&x\000\000\000\004\r\bh\n\0210+\204\b\020 \377\020\020&x\000\000\000\002\r\004h\b\t.+\204\004\b \377\b\b&x\000\000\000\001\r\002h\004\005,+\204\002\004 \377\004\004&x\000\000\000\002\003\002*\377$\004&p\000\000\000\030\004\bh\004\007\024h\210\004\f(\204\024\026 \030\f\020h\377\026\026&x\000\000\000\013\025R+\b\007\024h\204\024\026 \377\026\026&x\000\000\000\013\025T+\004\013\024h\204\024\026 \377\026\026&x\000\000\000\013\025V+\b\013\024h\204\024\026 \377\026\026&x\000\000\000\013\025X+\004\017\024h\204\024\026 \377\026\026&x\000\000\000\013\025Z+\b\017\024h\204\024\026 \377\026\026&x\000\000\000\004\023\bh\013\025\\+\204\b\024 \377\024\024&x\000\000\000\n\t^+\b\023\bh\204\b\020 \377\020\020&x\000\000\000\003\004\004h\b\t`+\003\f\bh\002\007\fh\204\f\020 \377\020\020&x\000\000\000\004\007\006h\b\rb+\204\006\f \377\f\f&x\000\000\000\006\007d+\002\013\006h\204\006\f \377\f\f&x\000\000\000\006\007f+\004\013\006h\204\006\n \377\n\n&x\000\000\000\005\007h+\002\017\006h\204\006\n \377\n\n&x\000\000\000\005\007j+\004\017\006h\204\006\n \377\n\n&x\000\000\000\002\023\004h\005\007l+\204\004\006 \377\006\006&x\000\000\000\003\005n+\004\023\004h\204\004\006 \377\006\006&x\000\000\000\003\005p+\200\002\004~\016\211\002\216\f\211\016\216\201\030L%\201\034N%\201 P%\377\001\226\276\200\000\000\000\377\000\203\276\000\000\002\000\377\000\230\276\377\377\000\000\002\003\006~\002\003\b~\002\003\n~\002\003\f~\002\003\016~\002\003\020~\002\003\022~\002\003\024~\002\003\026~\002\003\030~\002\003\032~\002\003\034~\002\003\036~\002\003 ~\002\003\"~\002\003$~\002\003&~\002\003(~\002\003*~\002\003,~\002\003.~\002\0030~\002\0032~\002\0034~\002\0036~\002\0038~\002\003:~\002\003<~\002\003>~\002\003@~\002\003B~\002\003D~\002\003F~\002\003H~\002\003J~\002\003L~\002\003N~\002\003P~\002\003R~\002\003T~\002\003V~\002\003X~\002\003Z~\002\003\\~\002\003^~\002\003`~\002\003b~\002\003d~\002\003f~\002\003h~\002\003j~\002\003l~\002\003n~\002\003p~\002\003r~\002\003t~\002\003v~\002\003x~\002\003z~\002\003|~\002\003~~\002\003\200~\002\003\202~\002\003\204~\002\003\206~\002\003\210~\002\003\212~\002\003\214~\002\003\216~\002\003\220~\002\003\222~\002\003\224~\002\003\226~\002\003\230~\002\003\232~\002\003\234~\002\003\236~\002\003\240~\002\003\242~\002\003\244~\002\003\246~\002\003\250~\002\003\252~\002\003\254~\002\003\256~\002\003\260~\002\003\262~\002\003\264~\002\003\266~\002\003\270~\002\003\272~\002\003\274~\002\003\276~\002\003\300~\002\003\302~\002\003\304~\002\003\306~\002\003\310~\002\003\312~\002\003\314~\002\003\316~\002\003\320~\002\003\322~\002\003\324~\002\003\326~\002\003\330~\002\003\332~\002\003\334~\002\003\336~\002\003\340~\002\003\342~\002\003\344~\002\003\346~\002\003\350~\002\003\352~\002\003\354~\002\003\356~\002\003\360~\002\003\362~\002\003\364~\002\003\366~\002\003\370~\002\003\372~\002\003\374~\002\003\376~\002\003\000\177\002\003\002\177\022\026\000\200\023\027\001\202\000\020\\\340\241\202\000\200\000\020\\\340\242\206\000\200\000\020\\\340\243\212\000\200\000\020\\\340\244\216\000\200\000\000\354\330\240\000\000\272\000\b\354\330\240\000\000\276\000\020\354\330\240\000\000\302\000\030\354\330\240\000\000\306\000\000\354\330\237\000\000\274\000\b\354\330\237\000\000\300\000\020\354\330\237\000\000\304\000\030\354\330\237\000\000\310\000\000\354\330\236\000\000\312\177\300\214\277\000\b\354\330\236\000\000\314\177\300\214\277\000\020\354\330\236\000\000\316\177\300\214\277\000\030\354\330\236\000\000\320\177\300\214\277\000\000\200\277\272\000\312\321\030t\353\006\276\000\312\321\030|\373\006\302\000\312\321\030\204\013\007\306\000\312\321\030\214\033\007\274\000\312\321\030x\363\006\300\000\312\321\030\200\003\007\304\000\312\321\030\210\023\007\310\000\312\321\030\220#\007\312\000\312\321\030\224+\007\314\000\312\321\030\2303\007\316\000\312\321\030\234;\007\320\000\312\321\030\240C\007\177\300\214\277\000\000\212\277\177\300\214\277\001\000\217\277~\000\341\323\274u\373\005z\000\341\323\274}\353\005v\000\341\323\274\205\333\005r\000\341\323\274\215\313\005n\000\341\323\300u\273\005j\000\341\323\300}\253\005f\000\341\323\300\205\233\005b\000\341\323\300\215\213\005^\000\341\323\304u{\005Z\000\341\323\304}k\005V\000\341\323\304\205[\005R\000\341\323\304\215K\005N\000\341\323\310u;\005J\000\341\323\310}+\005F\000\341\323\310\205\033\005B\000\341\323\310\215\013\005>\000\341\323\312u\373\004:\000\341\323\312}\353\0046\000\341\323\312\205\333\0042\000\341\323\312\215\313\004.\000\341\323\314u\273\004*\000\341\323\314}\253\004&\000\341\323\314\205\233\004\"\000\341\323\314\215\213\004\036\000\341\323\316u{\004\032\000\341\323\316}k\004\026\000\341\323\316\205[\004\022\000\341\323\316\215K\004\272\000\341\323\320u;\004\276\000\341\323\320}+\004\302\000\341\323\320\205\033\004\306\000\341\323\320\215\013\004\000\000\217\277\000\000\212\277\024\026\f\200\025\027\r\202\003\000\217\276\000\020\\\340\245\002\003\200\000\020\\\340\246\006\003\200\000\020\\\340\247\n\003\200\000\020\\\340\250\016\003\200\000\000\354\330\235\000\000\312\000\b\354\330\235\000\000\314\000\020\354\330\235\000\000\316\000\030\354\330\235\000\000\320\000\000\354\330\234\000\000\322\000\b\354\330\234\000\000\324\000\020\354\330\234\000\000\326\000\030\354\330\234\000\000\330\000\000\354\330\233\000\000\332\177\300\214\277\000\b\354\330\233\000\000\334\177\300\214\277\000\020\354\330\233\000\000\336\177\300\214\277\000\030\354\330\233\000\000\340\177\300\214\277\000\000\200\277\312\000\312\321\030\224+\007\314\000\312\321\030\2303\007\316\000\312\321\030\234;\007\320\000\312\321\030\240C\007\322\000\312\321\030\244K\007\324\000\312\321\030\250S\007\326\000\312\321\030\254[\007\330\000\312\321\030\260c\007\332\000\312\321\030\264k\007\334\000\312\321\030\270s\007\336\000\312\321\030\274{\007\340\000\312\321\030\300\203\007\177\300\214\277\000\000\212\277\177\300\214\277\001\000\217\277~\000\341\323\322\225\373\005z\000\341\323\322\231\353\005v\000\341\323\322\235\333\005r\000\341\323\322\241\313\005n\000\341\323\324\225\273\005j\000\341\323\324\231\253\005f\000\341\323\324\235\233\005b\000\341\323\324\241\213\005^\000\341\323\326\225{\005Z\000\341\323\326\231k\005V\000\341\323\326\235[\005R\000\341\323\326\241K\005N\000\341\323\330\225;\005J\000\341\323\330\231+\005F\000\341\323\330\235\033\005B\000\341\323\330\241\013\005>\000\341\323\332\225\373\004:\000\341\323\332\231\353\0046\000\341\323\332\235\333\0042\000\341\323\332\241\313\004.\000\341\323\334\225\273\004*\000\341\323\334\231\253\004&\000\341\323\334\235\233\004\"\000\341\323\334\241\213\004\036\000\341\323\336\225{\004\032\000\341\323\336\231k\004\026\000\341\323\336\235[\004\022\000\341\323\336\241K\004\272\000\341\323\340\225\353\006\276\000\341\323\340\231\373\006\302\000\341\323\340\235\013\007\306\000\341\323\340\241\033\007\000\000\217\277\000\000\212\277\000\000\354\330\232\000\000\312\000\b\354\330\232\000\000\314\000\020\354\330\232\000\000\316\000\030\354\330\232\000\000\320\000\000\354\330\231\000\000\322\000\b\354\330\231\000\000\324\000\020\354\330\231\000\000\326\000\030\354\330\231\000\000\330\000\000\354\330\230\000\000\332\000\b\354\330\230\000\000\334\000\020\354\330\230\000\000\336\000\030\354\330\230\000\000\340\000\000\354\330\227\000\000\342\000\b\354\330\227\000\000\344\000\020\354\330\227\000\000\346\000\030\354\330\227\000\000\350\000\000\354\330\226\000\000\352\000\b\354\330\226\000\000\354\000\020\354\330\226\000\000\356\000\030\354\330\226\000\000\360\000\000\354\330\001\000\000\362\177\300\214\277\000\b\354\330\001\000\000\364\177\300\214\277\000\020\354\330\001\000\000\366\177\300\214\277\000\030\354\330\001\000\000\370\177\300\214\277\000\000\200\277\312\000\312\321\030\224+\007\314\000\312\321\030\2303\007\316\000\312\321\030\234;\007\320\000\312\321\030\240C\007\322\000\312\321\030\244K\007\324\000\312\321\030\250S\007\326\000\312\321\030\254[\007\330\000\312\321\030\260c\007\332\000\312\321\030\264k\007\334\000\312\321\030\270s\007\336\000\312\321\030\274{\007\340\000\312\321\030\300\203\007\342\000\312\321\030\304\213\007\344\000\312\321\030\310\223\007\346\000\312\321\030\314\233\007\350\000\312\321\030\320\243\007\352\000\312\321\030\324\253\007\354\000\312\321\030\330\263\007\356\000\312\321\030\334\273\007\360\000\312\321\030\340\303\007\362\000\312\321\030\344\313\007\364\000\312\321\030\350\323\007\366\000\312\321\030\354\333\007\370\000\312\321\030\360\343\007\177\300\214\277\000\000\212\277\177\300\214\277\001\000\217\277~\000\341\323\322\225\373\005z\000\341\323\322\231\353\005v\000\341\323\322\235\333\005r\000\341\323\322\241\313\005n\000\341\323\324\225\273\005j\000\341\323\324\231\253\005f\000\341\323\324\235\233\005b\000\341\323\324\241\213\005^\000\341\323\326\225{\005Z\000\341\323\326\231k\005V\000\341\323\326\235[\005R\000\341\323\326\241K\005N\000\341\323\330\225;\005J\000\341\323\330\231+\005F\000\341\323\330\235\033\005B\000\341\323\330\241\013\005>\000\341\323\332\225\373\004:\000\341\323\332\231\353\0046\000\341\323\332\235\333\0042\000\341\323\332\241\313\004.\000\341\323\334\225\273\004*\000\341\323\334\231\253\004&\000\341\323\334\235\233\004\"\000\341\323\334\241\213\004\036\000\341\323\336\225{\004\032\000\341\323\336\231k\004\026\000\341\323\336\235[\004\022\000\341\323\336\241K\004\272\000\341\323\340\225\353\006\276\000\341\323\340\231\373\006\302\000\341\323\340\235\013\007\306\000\341\323\340\241\033\007\000\000\217\277\000\000\212\277p\017\214\277w\017\214\277\000\000\232\330\251\202\000\000\000\000\232\330\252\204\000\000v\017\214\277\000\000\232\330\253\206\000\000\000\000\232\330\254\210\000\000u\017\214\277\000\000\232\330\255\212\000\000\000\000\232\330\256\214\000\000t\017\214\277\000\000\232\330\257\216\000\000\000\000\232\330\260\220\000\000s\017\214\277\000\000\232\330\261\002\000\000\000\000\232\330\262\004\000\000r\017\214\277\000\000\232\330\263\006\000\000\000\000\232\330\264\b\000\000q\017\214\277\000\000\232\330\265\n\000\000\000\000\232\330\266\f\000\000p\017\214\277\000\000\232\330\267\016\000\000\000\000\232\330\270\020\000\000\000\000\212\277\177\300\214\277\001\000\217\277~\000\341\323\352\305\373\005z\000\341\323\352\311\353\005v\000\341\323\352\315\333\005r\000\341\323\352\321\313\005n\000\341\323\354\305\273\005j\000\341\323\354\311\253\005f\000\341\323\354\315\233\005b\000\341\323\354\321\213\005^\000\341\323\356\305{\005Z\000\341\323\356\311k\005V\000\341\323\356\315[\005R\000\341\323\356\321K\005N\000\341\323\360\305;\005J\000\341\323\360\311+\005F\000\341\323\360\315\033\005B\000\341\323\360\321\013\005>\000\341\323\362\305\373\004:\000\341\323\362\311\353\0046\000\341\323\362\315\333\0042\000\341\323\362\321\313\004.\000\341\323\364\305\273\004*\000\341\323\364\311\253\004&\000\341\323\364\315\233\004\"\000\341\323\364\321\213\004\036\000\341\323\366\305{\004\032\000\341\323\366\311k\004\026\000\341\323\366\315[\004\022\000\341\323\366\321K\004\016\000\341\323\370\305\353\006\n\000\341\323\370\311\373\006\006\000\341\323\370\315\013\007\002\000\341\323\370\321\033\007\000\000\217\277\000\000\212\277\026\377\026\200\200\000\000\000\027\200\027\202\000@\026\261\327\375\204\277\000\001\000\260\000\000\230}j \200\276\001\000\210\277\000\000\212\277~\000\376\207\000\000\354\330\240\000\000\202\000\b\354\330\240\000\000\204\000\020\354\330\240\000\000\206\000\030\354\330\240\000\000\210\000\000\354\330\237\000\000\212\000\b\354\330\237\000\000\214\000\020\354\330\237\000\000\216\000\030\354\330\237\000\000\220\000\000\354\330\236\000\000\240\177\300\214\277\000\b\354\330\236\000\000\242\177\300\214\277\000\020\354\330\236\000\000\244\177\300\214\277\377\000\200\276\377\377\000\000\000\030\354\330\236\000\000\236\177\300\214\277\202\000\312\321\000\004\013\006\204\000\312\321\000\b\023\006\206\000\312\321\000\f\033\006\210\000\312\321\000\020#\006\212\000\312\321\000\024+\006\214\000\312\321\000\0303\006\216\000\312\321\000\034;\006\220\000\312\321\000 C\006\240\000\312\321\000@\203\006\242\000\312\321\000D\213\006\244\000\312\321\000H\223\006\236\000\312\321\000<{\006\177\300\214\277\000\000\212\277\177\300\214\277\001\000\217\277~\000\341\323\212\005\373\005z\000\341\323\212\t\353\005v\000\341\323\212\r\333\005r\000\341\323\212\021\313\005n\000\341\323\214\005\273\005j\000\341\323\214\t\253\005f\000\341\323\214\r\233\005b\000\341\323\214\021\213\005^\000\341\323\216\005{\005Z\000\341\323\216\tk\005V\000\341\323\216\r[\005R\000\341\323\216\021K\005N\000\341\323\220\005;\005J\000\341\323\220\t+\005F\000\341\323\220\r\033\005B\000\341\323\220\021\013\005>\000\341\323\240\005\373\004:\000\341\323\240\t\353\0046\000\341\323\240\r\333\0042\000\341\323\240\021\313\004.\000\341\323\242\005\273\004*\000\341\323\242\t\253\004&\000\341\323\242\r\233\004\"\000\341\323\242\021\213\004\036\000\341\323\244\005{\004\032\000\341\323\244\tk\004\026\000\341\323\244\r[\004\022\000\341\323\244\021K\004\016\000\341\323\236\005;\004\n\000\341\323\236\t+\004\006\000\341\323\236\r\033\004\002\000\341\323\236\021\013\004\000\000\217\277\000\000\212\277\000\000\354\330\235\000\000\202\000\b\354\330\235\000\000\204\000\020\354\330\235\000\000\206\000\030\354\330\235\000\000\210\000\000\354\330\234\000\000\212\000\b\354\330\234\000\000\214\000\020\354\330\234\000\000\216\000\030\354\330\234\000\000\220\000\000\354\330\233\000\000\234\177\300\214\277\000\b\354\330\233\000\000\236\177\300\214\277\000\020\354\330\233\000\000\240\177\300\214\277\000\030\354\330\233\000\000\242\177\300\214\277\000\000\200\277\202\000\312\321\000\004\013\006\204\000\312\321\000\b\023\006\206\000\312\321\000\f\033\006\210\000\312\321\000\020#\006\212\000\312\321\000\024+\006\214\000\312\321\000\0303\006\216\000\312\321\000\034;\006\220\000\312\321\000 C\006\234\000\312\321\0008s\006\236\000\312\321\000<{\006\240\000\312\321\000@\203\006\242\000\312\321\000D\213\006\177\300\214\277\000\000\212\277\177\300\214\277\001\000\217\277~\000\341\323\212\005\373\005z\000\341\323\212\t\353\005v\000\341\323\212\r\333\005r\000\341\323\212\021\313\005n\000\341\323\214\005\273\005j\000\341\323\214\t\253\005f\000\341\323\214\r\233\005b\000\341\323\214\021\213\005^\000\341\323\216\005{\005Z\000\341\323\216\tk\005V\000\341\323\216\r[\005R\000\341\323\216\021K\005N\000\341\323\220\005;\005J\000\341\323\220\t+\005F\000\341\323\220\r\033\005B\000\341\323\220\021\013\005>\000\341\323\234\005\373\004:\000\341\323\234\t\353\0046\000\341\323\234\r\333\0042\000\341\323\234\021\313\004.\000\341\323\236\005\273\004*\000\341\323\236\t\253\004&\000\341\323\236\r\233\004\"\000\341\323\236\021\213\004\036\000\341\323\240\005{\004\032\000\341\323\240\tk\004\026\000\341\323\240\r[\004\022\000\341\323\240\021K\004\016\000\341\323\242\005;\004\n\000\341\323\242\t+\004\006\000\341\323\242\r\033\004\002\000\341\323\242\021\013\004\000\000\217\277\000\000\212\277\000\000\354\330\232\000\000\276\000\b\354\330\232\000\000\302\000\020\354\330\232\000\000\306\000\030\354\330\232\000\000\312\000\000\354\330\231\000\000\202\000\b\354\330\231\000\000\204\000\020\354\330\231\000\000\206\000\030\354\330\231\000\000\210\000\000\354\330\230\000\000\232\000\b\354\330\230\000\000\252\000\020\354\330\230\000\000\272\000\030\354\330\230\000\000\314\000\000\354\330\227\000\000\316\000\b\354\330\227\000\000\320\000\020\354\330\227\000\000\322\000\030\354\330\227\000\000\324\000\000\354\330\226\000\000\326\000\b\354\330\226\000\000\330\000\020\354\330\226\000\000\332\000\030\354\330\226\000\000\334\000\000\354\330\001\000\000\336\177\300\214\277\000\b\354\330\001\000\000\340\177\300\214\277\000\020\354\330\001\000\000\342\177\300\214\277\000\030\354\330\001\000\000\344\177\300\214\277\000\000\200\277\276\000\312\321\000|\373\006\302\000\312\321\000\204\013\007\306\000\312\321\000\214\033\007\312\000\312\321\000\224+\007\202\000\312\321\000\004\013\006\204\000\312\321\000\b\023\006\206\000\312\321\000\f\033\006\210\000\312\321\000\020#\006\232\000\312\321\0004k\006\252\000\312\321\000T\253\006\272\000\312\321\000t\353\006\314\000\312\321\000\2303\007\316\000\312\321\000\234;\007\320\000\312\321\000\240C\007\322\000\312\321\000\244K\007\324\000\312\321\000\250S\007\326\000\312\321\000\254[\007\330\000\312\321\000\260c\007\332\000\312\321\000\264k\007\334\000\312\321\000\270s\007\336\000\312\321\000\274{\007\340\000\312\321\000\300\203\007\342\000\312\321\000\304\213\007\344\000\312\321\000\310\223\007\177\300\214\277\000\000\212\277\177\300\214\277\001\000\217\277~\000\341\323\202}\373\005z\000\341\323\202\205\353\005v\000\341\323\202\215\333\005r\000\341\323\202\225\313\005n\000\341\323\204}\273\005j\000\341\323\204\205\253\005f\000\341\323\204\215\233\005b\000\341\323\204\225\213\005^\000\341\323\206}{\005Z\000\341\323\206\205k\005V\000\341\323\206\215[\005R\000\341\323\206\225K\005N\000\341\323\210};\005J\000\341\323\210\205+\005\000\000\341\323\314\225\013\004\202\000\341\323\210\215\033\005\206\000\341\323\210\225\013\005\212\000\341\323\232}\373\004\216\000\341\323\232\205\353\004\226\000\341\323\232\215\333\004\232\000\341\323\232\225\313\004\236\000\341\323\252}\273\004\242\000\341\323\252\205\253\004\246\000\341\323\252\215\233\004\252\000\341\323\252\225\213\004\256\000\341\323\272}{\004\262\000\341\323\272\205k\004\266\000\341\323\272\215[\004\272\000\341\323\272\225K\004\276\000\341\323\314};\004\302\000\341\323\314\205+\004\306\000\341\323\314\215\033\004\000\000\217\277\000\000\212\277\177\300\214\277\001\000\217\277D\000\341\323\326\235\373\005|\000\341\323\326\241\353\005x\000\341\323\326\245\333\005t\000\341\323\326\251\313\005p\000\341\323\330\235\273\005l\000\341\323\330\241\253\005h\000\341\323\330\245\233\005d\000\341\323\330\251\213\005`\000\341\323\332\235{\005\\\000\341\323\332\241k\005X\000\341\323\332\245[\005T\000\341\323\332\251K\005P\000\341\323\334\235;\005L\000\341\323\334\241+\005H\000\341\323\334\245\013\006@\000\341\323\334\251\033\006<\000\341\323\336\235+\0068\000\341\323\336\241;\0064\000\341\323\336\245[\0060\000\341\323\336\251k\006,\000\341\323\340\235{\006(\000\341\323\340\241\213\006$\000\341\323\340\245\233\006 \000\341\323\340\251\253\006\034\000\341\323\342\235\273\006\030\000\341\323\342\241\313\006\024\000\341\323\342\245\333\006\020\000\341\323\342\251\353\006\f\000\341\323\344\235\373\006\b\000\341\323\344\241\013\007\004\000\341\323\344\245\033\007\000\000\341\323\344\251\003\004\000\000\217\277\000\000\212\277\377\000\200\276\000\000\200\177\377\210\000'\000\000\200\177\000\000\233}j \200\276~\000\200\210\200\000\310\321D!\005\002\377\177\002\260\200\000\377\321D\001\013\000\000#\200\276\200\002\000\177\377\210\002)\000\000\001\000\371\000\225}D\000\004\006\001\000\200\277\201\211\000\001~\000\376\207\377\000\200\276\000\000\200\177\377\212\210&\000\000\200\177\000\210\232}j \200\276~\000\200\210D\000\310\321E!\005\002\377\177\002\260\204\000\377\321E\211\n\000\000#\200\276\200\002\210~\377\212\002)\000\000\001\000\371\210\224}E\000\004\006\001\000\200\277\201\213\b\001~\000\376\207\377\000\200\276\000\000\200\177\377\214\210&\000\000\200\177\000\210\232}j \200\276~\000\200\210D\000\310\321F!\005\002\377\177\002\260\205\000\377\321F\211\n\000\000#\200\276\200\002\210~\377\214\212(\000\000\001\000\371\210\224}F\000\004\006\001\000\200\277E\215\n\001~\000\376\207\377\000\200\276\000\000\200\177\377\216\210&\000\000\200\177\000\210\232}j \200\276~\000\200\210D\000\310\321G!\005\002\377\177\002\260\206\000\377\321G\211\n\000\000#\200\276\200\002\210~\377\216\212(\000\000\001\000\371\210\224}G\000\004\006\001\000\200\277E\217\f\001~\000\376\207F\000\000\322\224\r-\000\201\000\205\322\021\214\002\000F\000\350\321\020\214\002\002\020\t\000\222\000\000\200\277G\000\377\321G\001\004\006\b\006\000\222\220\000\017!\004\002\210~\005\002\212~\007*\001)\000\n\000\222\237\000\003#\202\000\b\322F\003\021\005\000\020\000\222D\000\b\322\200\003\t\006\000\201\b\216\377\000\200\276\000\000\377\377\377\f\003'\000\000\377\377\206\000\205\322\223!\000\000\b\002\214~\377\002\216~\000\000\002\000\371\n\013)\201\006\006\005\204\000\001\322\204\001\034\006\201\000\376\321\206%\007\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340\201\204\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\370\b'\000\000\200\177\000\b\233}j \200\276~\000\200\210\204\000\310\321|!\005\002\377\177\002\260\204\000\377\321|\t\013\000\000#\200\276\200\002\b\177\377\370\n)\000\000\001\000\371\b\225}|\000\004\006\001\000\200\277\205\371\b\001~\000\376\207\377\000\200\276\000\000\200\177\377\372\370&\000\000\200\177\000\370\232}j \200\276~\000\200\210|\000\310\321}!\005\002\377\177\002\260\205\000\377\321}\371\n\000\000#\200\276\200\002\370~\377\372\n)\000\000\001\000\371\370\224}}\000\004\006\001\000\200\277\205\373\n\001~\000\376\207\377\000\200\276\000\000\200\177\377\374\370&\000\000\200\177\000\370\232}j \200\276~\000\200\210|\000\310\321~!\005\002\377\177\002\260\207\000\377\321~\371\n\000\000#\200\276\200\002\370~\377\374\372(\000\000\001\000\371\370\224}~\000\004\006\001\000\200\277}\375\016\001~\000\376\207\377\000\200\276\000\000\200\177\377\376\370&\000\000\200\177\000\370\232}j \200\276~\000\200\210|\000\310\321\177!\005\002\377\177\002\260\210\000\377\321\177\371\n\000\000#\200\276\200\002\370~\377\376\372(\000\000\001\000\371\370\224}\177\000\004\006\001\000\200\277}\377\020\001~\000\376\207\020\204\t\216\220\b\371 \377\000\200\276\000\000\377\377\377\020\373&\000\000\377\377\t\f\377h\371\016\373(}\006\006\005|\000\001\322\205\001\360\005~\000\376\321\177%\007\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340~|\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\360\370&\000\000\200\177\000\370\232}j \200\276~\000\200\210|\000\310\321x!\005\002\377\177\002\260|\000\377\321x\371\n\000\000#\200\276\200\002\370~\377\360\372(\000\000\001\000\371\370\224}x\000\004\006\001\000\200\277}\361\370\000~\000\376\207\377\000\200\276\000\000\200\177\377\362\360&\000\000\200\177\000\360\232}j \200\276~\000\200\210x\000\310\321y!\005\002\377\177\002\260}\000\377\321y\361\n\000\000#\200\276\200\002\360~\377\362\372(\000\000\001\000\371\360\224}y\000\004\006\001\000\200\277}\363\372\000~\000\376\207\377\000\200\276\000\000\200\177\377\364\360&\000\000\200\177\000\360\232}j \200\276~\000\200\210x\000\310\321z!\005\002\377\177\002\260\204\000\377\321z\361\n\000\000#\200\276\200\002\360~\377\364\362(\000\000\001\000\371\360\224}z\000\004\006\001\000\200\277y\365\b\001~\000\376\207\377\000\200\276\000\000\200\177\377\366\360&\000\000\200\177\000\360\232}j \200\276~\000\200\210x\000\310\321{!\005\002\377\177\002\260\205\000\377\321{\361\n\000\000#\200\276\200\002\360~\377\366\362(\000\000\001\000\371\360\224}{\000\004\006\001\000\200\277y\367\n\001~\000\376\207\220\370\360 \377\000\200\276\000\000\377\377\377\n\363&\000\000\377\377\t\376\366h\371\b\363(y\006\006\005x\000\001\322}\001\340\005z\000\376\321{%\007\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340zx\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\350\360&\000\000\200\177\000\360\232}j \200\276~\000\200\210x\000\310\321t!\005\002\377\177\002\260x\000\377\321t\361\n\000\000#\200\276\200\002\360~\377\350\362(\000\000\001\000\371\360\224}t\000\004\006\001\000\200\277y\351\360\000~\000\376\207\377\000\200\276\000\000\200\177\377\352\350&\000\000\200\177\000\350\232}j \200\276~\000\200\210t\000\310\321u!\005\002\377\177\002\260y\000\377\321u\351\n\000\000#\200\276\200\002\350~\377\352\362(\000\000\001\000\371\350\224}u\000\004\006\001\000\200\277y\353\362\000~\000\376\207\377\000\200\276\000\000\200\177\377\354\350&\000\000\200\177\000\350\232}j \200\276~\000\200\210t\000\310\321v!\005\002\377\177\002\260|\000\377\321v\351\n\000\000#\200\276\200\002\350~\377\354\352(\000\000\001\000\371\350\224}v\000\004\006\001\000\200\277u\355\370\000~\000\376\207\377\000\200\276\000\000\200\177\377\356\350&\000\000\200\177\000\350\232}j \200\276~\000\200\210t\000\310\321w!\005\002\377\177\002\260}\000\377\321w\351\n\000\000#\200\276\200\002\350~\377\356\352(\000\000\001\000\371\350\224}w\000\004\006\001\000\200\277u\357\372\000~\000\376\207\220\360\350 \377\000\200\276\000\000\377\377\377\372\352&\000\000\377\377\t\366\356h\371\370\352(u\006\006\005t\000\001\322y\001\320\005v\000\376\321w%\007\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340vt\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\340\350&\000\000\200\177\000\350\232}j \200\276~\000\200\210t\000\310\321p!\005\002\377\177\002\260t\000\377\321p\351\n\000\000#\200\276\200\002\350~\377\340\352(\000\000\001\000\371\350\224}p\000\004\006\001\000\200\277u\341\350\000~\000\376\207\377\000\200\276\000\000\200\177\377\342\340&\000\000\200\177\000\340\232}j \200\276~\000\200\210p\000\310\321q!\005\002\377\177\002\260u\000\377\321q\341\n\000\000#\200\276\200\002\340~\377\342\352(\000\000\001\000\371\340\224}q\000\004\006\001\000\200\277u\343\352\000~\000\376\207\377\000\200\276\000\000\200\177\377\344\340&\000\000\200\177\000\340\232}j \200\276~\000\200\210p\000\310\321r!\005\002\377\177\002\260x\000\377\321r\341\n\000\000#\200\276\200\002\340~\377\344\342(\000\000\001\000\371\340\224}r\000\004\006\001\000\200\277q\345\360\000~\000\376\207\377\000\200\276\000\000\200\177\377\346\340&\000\000\200\177\000\340\232}j \200\276~\000\200\210p\000\310\321s!\005\002\377\177\002\260y\000\377\321s\341\n\000\000#\200\276\200\002\340~\377\346\342(\000\000\001\000\371\340\224}s\000\004\006\001\000\200\277q\347\362\000~\000\376\207\220\350\340 \220$\347(\377\000\200\276\000\000\377\377\377\362\342&\000\000\377\377\371\360\342(q\006\006\005p\000\001\322u\001\300\005r\000\376\321\206\347\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340rp\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\330\340&\000\000\200\177\000\340\232}j \200\276~\000\200\210p\000\310\321l!\005\002\377\177\002\260p\000\377\321l\341\n\000\000#\200\276\200\002\340~\377\330\342(\000\000\001\000\371\340\224}l\000\004\006\001\000\200\277q\331\340\000~\000\376\207\377\000\200\276\000\000\200\177\377\332\330&\000\000\200\177\000\330\232}j \200\276~\000\200\210l\000\310\321m!\005\002\377\177\002\260q\000\377\321m\331\n\000\000#\200\276\200\002\330~\377\332\342(\000\000\001\000\371\330\224}m\000\004\006\001\000\200\277q\333\342\000~\000\376\207\377\000\200\276\000\000\200\177\377\334\330&\000\000\200\177\000\330\232}j \200\276~\000\200\210l\000\310\321n!\005\002\377\177\002\260t\000\377\321n\331\n\000\000#\200\276\200\002\330~\377\334\332(\000\000\001\000\371\330\224}n\000\004\006\001\000\200\277m\335\350\000~\000\376\207\377\000\200\276\000\000\200\177\377\336\330&\000\000\200\177\000\330\232}j \200\276~\000\200\210l\000\310\321o!\005\002\377\177\002\260u\000\377\321o\331\n\000\000#\200\276\200\002\330~\377\336\332(\000\000\001\000\371\330\224}o\000\004\006\001\000\200\277m\337\352\000~\000\376\207\220\340\330 \377\000\200\276\000\000\377\377\377\352\332&\000\000\377\377\371\350\332(m\006\006\005l\000\001\322q\001\260\005n\000\376\321\177\347\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340nl\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\320\330&\000\000\200\177\000\330\232}j \200\276~\000\200\210l\000\310\321h!\005\002\377\177\002\260l\000\377\321h\331\n\000\000#\200\276\200\002\330~\377\320\332(\000\000\001\000\371\330\224}h\000\004\006\001\000\200\277m\321\330\000~\000\376\207\377\000\200\276\000\000\200\177\377\322\320&\000\000\200\177\000\320\232}j \200\276~\000\200\210h\000\310\321i!\005\002\377\177\002\260m\000\377\321i\321\n\000\000#\200\276\200\002\320~\377\322\332(\000\000\001\000\371\320\224}i\000\004\006\001\000\200\277m\323\332\000~\000\376\207\377\000\200\276\000\000\200\177\377\324\320&\000\000\200\177\000\320\232}j \200\276~\000\200\210h\000\310\321j!\005\002\377\177\002\260o\000\377\321j\321\n\000\000#\200\276\200\002\320~\377\324\322(\000\000\001\000\371\320\224}j\000\004\006\001\000\200\277i\325\336\000~\000\376\207\377\000\200\276\000\000\200\177\377\326\320&\000\000\200\177\000\320\232}j \200\276~\000\200\210h\000\310\321k!\005\002\377\177\002\260p\000\377\321k\321\n\000\000#\200\276\200\002\320~\377\326\322(\000\000\001\000\371\320\224}k\000\004\006\001\000\200\277i\327\340\000~\000\376\207\220\330\320 \377\000\200\276\000\000\377\377\377\340\322&\000\000\377\377\371\336\322(i\006\006\005h\000\001\322m\001\240\005j\000\376\321{\347\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340jh\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\310\320&\000\000\200\177\000\320\232}j \200\276~\000\200\210h\000\310\321d!\005\002\377\177\002\260h\000\377\321d\321\n\000\000#\200\276\200\002\320~\377\310\322(\000\000\001\000\371\320\224}d\000\004\006\001\000\200\277i\311\320\000~\000\376\207\377\000\200\276\000\000\200\177\377\312\310&\000\000\200\177\000\310\232}j \200\276~\000\200\210d\000\310\321e!\005\002\377\177\002\260i\000\377\321e\311\n\000\000#\200\276\200\002\310~\377\312\322(\000\000\001\000\371\310\224}e\000\004\006\001\000\200\277i\313\322\000~\000\376\207\377\000\200\276\000\000\200\177\377\314\310&\000\000\200\177\000\310\232}j \200\276~\000\200\210d\000\310\321f!\005\002\377\177\002\260k\000\377\321f\311\n\000\000#\200\276\200\002\310~\377\314\312(\000\000\001\000\371\310\224}f\000\004\006\001\000\200\277e\315\326\000~\000\376\207\377\000\200\276\000\000\200\177\377\316\310&\000\000\200\177\000\310\232}j \200\276~\000\200\210d\000\310\321g!\005\002\377\177\002\260l\000\377\321g\311\n\000\000#\200\276\200\002\310~\377\316\312(\000\000\001\000\371\310\224}g\000\004\006\001\000\200\277e\317\330\000~\000\376\207\220\320\310 \377\000\200\276\000\000\377\377\377\330\312&\000\000\377\377\371\326\312(e\006\006\005d\000\001\322i\001\220\005f\000\376\321w\347\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340fd\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\300\310&\000\000\200\177\000\310\232}j \200\276~\000\200\210d\000\310\321`!\005\002\377\177\002\260d\000\377\321`\311\n\000\000#\200\276\200\002\310~\377\300\312(\000\000\001\000\371\310\224}`\000\004\006\001\000\200\277e\301\310\000~\000\376\207\377\000\200\276\000\000\200\177\377\302\300&\000\000\200\177\000\300\232}j \200\276~\000\200\210`\000\310\321a!\005\002\377\177\002\260e\000\377\321a\301\n\000\000#\200\276\200\002\300~\377\302\312(\000\000\001\000\371\300\224}a\000\004\006\001\000\200\277e\303\312\000~\000\376\207\377\000\200\276\000\000\200\177\377\304\300&\000\000\200\177\000\300\232}j \200\276~\000\200\210`\000\310\321b!\005\002\377\177\002\260g\000\377\321b\301\n\000\000#\200\276\200\002\300~\377\304\302(\000\000\001\000\371\300\224}b\000\004\006\001\000\200\277a\305\316\000~\000\376\207\377\000\200\276\000\000\200\177\377\306\300&\000\000\200\177\000\300\232}j \200\276~\000\200\210`\000\310\321c!\005\002\377\177\002\260h\000\377\321c\301\n\000\000#\200\276\200\002\300~\377\306\302(\000\000\001\000\371\300\224}c\000\004\006\001\000\200\277a\307\320\000~\000\376\207\220\310\300 \240$\307(\377\000\200\276\000\000\377\377\377\320\302&\000\000\377\377\371\316\302(a\006\006\005`\000\001\322e\001\200\005b\000\376\321\206\307\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340b`\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\270\300&\000\000\200\177\000\300\232}j \200\276~\000\200\210`\000\310\321\\!\005\002\377\177\002\260`\000\377\321\\\301\n\000\000#\200\276\200\002\300~\377\270\302(\000\000\001\000\371\300\224}\\\000\004\006\001\000\200\277a\271\300\000~\000\376\207\377\000\200\276\000\000\200\177\377\272\270&\000\000\200\177\000\270\232}j \200\276~\000\200\210\\\000\310\321]!\005\002\377\177\002\260a\000\377\321]\271\n\000\000#\200\276\200\002\270~\377\272\302(\000\000\001\000\371\270\224}]\000\004\006\001\000\200\277a\273\302\000~\000\376\207\377\000\200\276\000\000\200\177\377\274\270&\000\000\200\177\000\270\232}j \200\276~\000\200\210\\\000\310\321^!\005\002\377\177\002\260d\000\377\321^\271\n\000\000#\200\276\200\002\270~\377\274\272(\000\000\001\000\371\270\224}^\000\004\006\001\000\200\277]\275\310\000~\000\376\207\377\000\200\276\000\000\200\177\377\276\270&\000\000\200\177\000\270\232}j \200\276~\000\200\210\\\000\310\321_!\005\002\377\177\002\260e\000\377\321_\271\n\000\000#\200\276\200\002\270~\377\276\272(\000\000\001\000\371\270\224}_\000\004\006\001\000\200\277]\277\312\000~\000\376\207\220\300\270 \377\000\200\276\000\000\377\377\377\312\272&\000\000\377\377\371\310\272(]\006\006\005\\\000\001\322a\001p\005^\000\376\321\177\307\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340^\\\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\260\270&\000\000\200\177\000\270\232}j \200\276~\000\200\210\\\000\310\321X!\005\002\377\177\002\260\\\000\377\321X\271\n\000\000#\200\276\200\002\270~\377\260\272(\000\000\001\000\371\270\224}X\000\004\006\001\000\200\277]\261\270\000~\000\376\207\377\000\200\276\000\000\200\177\377\262\260&\000\000\200\177\000\260\232}j \200\276~\000\200\210X\000\310\321Y!\005\002\377\177\002\260]\000\377\321Y\261\n\000\000#\200\276\200\002\260~\377\262\272(\000\000\001\000\371\260\224}Y\000\004\006\001\000\200\277]\263\272\000~\000\376\207\377\000\200\276\000\000\200\177\377\264\260&\000\000\200\177\000\260\232}j \200\276~\000\200\210X\000\310\321Z!\005\002\377\177\002\260_\000\377\321Z\261\n\000\000#\200\276\200\002\260~\377\264\262(\000\000\001\000\371\260\224}Z\000\004\006\001\000\200\277Y\265\276\000~\000\376\207\377\000\200\276\000\000\200\177\377\266\260&\000\000\200\177\000\260\232}j \200\276~\000\200\210X\000\310\321[!\005\002\377\177\002\260`\000\377\321[\261\n\000\000#\200\276\200\002\260~\377\266\262(\000\000\001\000\371\260\224}[\000\004\006\001\000\200\277Y\267\300\000~\000\376\207\220\270\260 \377\000\200\276\000\000\377\377\377\300\262&\000\000\377\377\371\276\262(Y\006\006\005X\000\001\322]\001`\005Z\000\376\321{\307\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340ZX\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\250\260&\000\000\200\177\000\260\232}j \200\276~\000\200\210X\000\310\321T!\005\002\377\177\002\260X\000\377\321T\261\n\000\000#\200\276\200\002\260~\377\250\262(\000\000\001\000\371\260\224}T\000\004\006\001\000\200\277Y\251\260\000~\000\376\207\377\000\200\276\000\000\200\177\377\252\250&\000\000\200\177\000\250\232}j \200\276~\000\200\210T\000\310\321U!\005\002\377\177\002\260Y\000\377\321U\251\n\000\000#\200\276\200\002\250~\377\252\262(\000\000\001\000\371\250\224}U\000\004\006\001\000\200\277Y\253\262\000~\000\376\207\377\000\200\276\000\000\200\177\377\254\250&\000\000\200\177\000\250\232}j \200\276~\000\200\210T\000\310\321V!\005\002\377\177\002\260[\000\377\321V\251\n\000\000#\200\276\200\002\250~\377\254\252(\000\000\001\000\371\250\224}V\000\004\006\001\000\200\277U\255\266\000~\000\376\207\377\000\200\276\000\000\200\177\377\256\250&\000\000\200\177\000\250\232}j \200\276~\000\200\210T\000\310\321W!\005\002\377\177\002\260\\\000\377\321W\251\n\000\000#\200\276\200\002\250~\377\256\252(\000\000\001\000\371\250\224}W\000\004\006\001\000\200\277U\257\270\000~\000\376\207\220\260\250 \377\000\200\276\000\000\377\377\377\270\252&\000\000\377\377\371\266\252(U\006\006\005T\000\001\322Y\001P\005V\000\376\321w\307\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340VT\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\240\250&\000\000\200\177\000\250\232}j \200\276~\000\200\210T\000\310\321P!\005\002\377\177\002\260T\000\377\321P\251\n\000\000#\200\276\200\002\250~\377\240\252(\000\000\001\000\371\250\224}P\000\004\006\001\000\200\277U\241\250\000~\000\376\207\377\000\200\276\000\000\200\177\377\242\240&\000\000\200\177\000\240\232}j \200\276~\000\200\210P\000\310\321Q!\005\002\377\177\002\260U\000\377\321Q\241\n\000\000#\200\276\200\002\240~\377\242\252(\000\000\001\000\371\240\224}Q\000\004\006\001\000\200\277U\243\252\000~\000\376\207\377\000\200\276\000\000\200\177\377\244\240&\000\000\200\177\000\240\232}j \200\276~\000\200\210P\000\310\321R!\005\002\377\177\002\260W\000\377\321R\241\n\000\000#\200\276\200\002\240~\377\244\242(\000\000\001\000\371\240\224}R\000\004\006\001\000\200\277Q\245\256\000~\000\376\207\377\000\200\276\000\000\200\177\377\246\240&\000\000\200\177\000\240\232}j \200\276~\000\200\210P\000\310\321S!\005\002\377\177\002\260X\000\377\321S\241\n\000\000#\200\276\200\002\240~\377\246\242(\000\000\001\000\371\240\224}S\000\004\006\001\000\200\277Q\247\260\000~\000\376\207\220\250\240 \260$\247(\377\000\200\276\000\000\377\377\377\260\242&\000\000\377\377\371\256\242(Q\006\006\005P\000\001\322U\001@\005R\000\376\321\206\247\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340RP\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\230\240&\000\000\200\177\000\240\232}j \200\276~\000\200\210P\000\310\321L!\005\002\377\177\002\260P\000\377\321L\241\n\000\000#\200\276\200\002\240~\377\230\242(\000\000\001\000\371\240\224}L\000\004\006\001\000\200\277Q\231\240\000~\000\376\207\377\000\200\276\000\000\200\177\377\232\230&\000\000\200\177\000\230\232}j \200\276~\000\200\210L\000\310\321M!\005\002\377\177\002\260Q\000\377\321M\231\n\000\000#\200\276\200\002\230~\377\232\242(\000\000\001\000\371\230\224}M\000\004\006\001\000\200\277Q\233\242\000~\000\376\207\377\000\200\276\000\000\200\177\377\234\230&\000\000\200\177\000\230\232}j \200\276~\000\200\210L\000\310\321N!\005\002\377\177\002\260T\000\377\321N\231\n\000\000#\200\276\200\002\230~\377\234\232(\000\000\001\000\371\230\224}N\000\004\006\001\000\200\277M\235\250\000~\000\376\207\377\000\200\276\000\000\200\177\377\236\230&\000\000\200\177\000\230\232}j \200\276~\000\200\210L\000\310\321O!\005\002\377\177\002\260U\000\377\321O\231\n\000\000#\200\276\200\002\230~\377\236\232(\000\000\001\000\371\230\224}O\000\004\006\001\000\200\277M\237\252\000~\000\376\207\220\240\230 \377\000\200\276\000\000\377\377\377\252\232&\000\000\377\377\371\250\232(M\006\006\005L\000\001\322Q\0010\005N\000\376\321\177\247\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340NL\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\220\230&\000\000\200\177\000\230\232}j \200\276~\000\200\210L\000\310\321H!\005\002\377\177\002\260L\000\377\321H\231\n\000\000#\200\276\200\002\230~\377\220\232(\000\000\001\000\371\230\224}H\000\004\006\001\000\200\277M\221\230\000~\000\376\207\377\000\200\276\000\000\200\177\377\222\220&\000\000\200\177\000\220\232}j \200\276~\000\200\210H\000\310\321I!\005\002\377\177\002\260M\000\377\321I\221\n\000\000#\200\276\200\002\220~\377\222\232(\000\000\001\000\371\220\224}I\000\004\006\001\000\200\277M\223\232\000~\000\376\207\377\000\200\276\000\000\200\177\377\224\220&\000\000\200\177\000\220\232}j \200\276~\000\200\210H\000\310\321J!\005\002\377\177\002\260O\000\377\321J\221\n\000\000#\200\276\200\002\220~\377\224\222(\000\000\001\000\371\220\224}J\000\004\006\001\000\200\277I\225\236\000~\000\376\207\377\000\200\276\000\000\200\177\377\226\220&\000\000\200\177\000\220\232}j \200\276~\000\200\210H\000\310\321K!\005\002\377\177\002\260P\000\377\321K\221\n\000\000#\200\276\200\002\220~\377\226\222(\000\000\001\000\371\220\224}K\000\004\006\001\000\200\277I\227\240\000~\000\376\207\220\230\220 \377\000\200\276\000\000\377\377\377\240\222&\000\000\377\377\371\236\222(I\006\006\005H\000\001\322M\001 \005J\000\376\321{\247\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340JH\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\200\220&\000\000\200\177\000\220\232}j \200\276~\000\200\210H\000\310\321@!\005\002\377\177\002\260H\000\377\321@\221\n\000\000#\200\276\200\002\220~\377\200\222(\000\000\001\000\371\220\224}@\000\004\006\001\000\200\277I\201\220\000~\000\376\207\377\000\200\276\000\000\200\177\377\202\200&\000\000\200\177\000\200\232}j \200\276~\000\200\210@\000\310\321A!\005\002\377\177\002\260I\000\377\321A\201\n\000\000#\200\276\200\002\200~\377\202\222(\000\000\001\000\371\200\224}A\000\004\006\001\000\200\277I\203\222\000~\000\376\207\377\000\200\276\000\000\200\177\377\204\200&\000\000\200\177\000\200\232}j \200\276~\000\200\210@\000\310\321B!\005\002\377\177\002\260K\000\377\321B\201\n\000\000#\200\276\200\002\200~\377\204\202(\000\000\001\000\371\200\224}B\000\004\006\001\000\200\277A\205\226\000~\000\376\207\377\000\200\276\000\000\200\177\377\206\200&\000\000\200\177\000\200\232}j \200\276~\000\200\210@\000\310\321C!\005\002\377\177\002\260L\000\377\321C\201\n\000\000#\200\276\200\002\200~\377\206\202(\000\000\001\000\371\200\224}C\000\004\006\001\000\200\277A\207\230\000~\000\376\207\220\220\200 \377\000\200\276\000\000\377\377\377\230\202&\000\000\377\377\371\226\202(A\006\006\005@\000\001\322I\001\000\005B\000\376\321w\247\006\002~\001\202\276D\005\b~E\005\n~F\005\f~G\005\016~\004\210\324}\000\000\200\277\000\000\352\320\006\214\002\000j\000\200\206\000 \200\276\000\020t\340B@\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377x\200&\000\000\200\177\000\200\232}j \200\276~\000\200\210@\000\310\321<!\005\002\377\177\002\260@\000\377\321<\201\n\000\000#\200\276\200\002\200~\377x\202(\000\000\001\000\371\200\224}<\000\004\006\001\000\200\277Ay\200\000~\000\376\207\377\000\200\276\000\000\200\177\377zx&\000\000\200\177\000x\232}j \200\276~\000\200\210<\000\310\321=!\005\002\377\177\002\260C\000\377\321=y\n\000\000#\200\276\200\002x~\377z\202(\000\000\001\000\371x\224}=\000\004\006\001\000\200\277A{\206\000~\000\376\207\377\000\200\276\000\000\200\177\377|x&\000\000\200\177\000x\232}j \200\276~\000\200\210<\000\310\321>!\005\002\377\177\002\260A\000\377\321>y\n\000\000#\200\276\200\002x~\377|z(\000\000\001\000\371x\224}>\000\004\006\001\000\200\277=}\202\000~\000\376\207\377\000\200\276\000\000\200\177\377~x&\000\000\200\177\000x\232}j \200\276~\000\200\210<\000\310\321?!\005\002\377\177\002\260D\000\377\321?y\n\000\000#\200\276\200\002x~\377~z(\000\000\001\000\371x\224}?\000\004\006\001\000\200\277=\177\210\000~\000\376\207\377\000yh\200\000\000\000\220\200\200 \237xz\"\377\000\200\276\000\000\377\377\377\210\210&\000\000\377\377<\000\b\322<\003\t\006\b\002|~\377\002~~\000\000\002\000\371\202\202(D\006\006\005@\000\001\322C\001\000\005~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340\201@\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377p\200&\000\000\200\177\000\200\232}j \200\276~\000\200\210@\000\310\3218!\005\002\377\177\002\260@\000\377\3218\201\n\000\000#\200\276\200\002\200~\377p\202(\000\000\001\000\371\200\224}8\000\004\006\001\000\200\277Aq\200\000~\000\376\207\377\000\200\276\000\000\200\177\377rp&\000\000\200\177\000p\232}j \200\276~\000\200\2108\000\310\3219!\005\002\377\177\002\260A\000\377\3219q\n\000\000#\200\276\200\002p~\377r\202(\000\000\001\000\371p\224}9\000\004\006\001\000\200\277As\202\000~\000\376\207\377\000\200\276\000\000\200\177\377tp&\000\000\200\177\000p\232}j \200\276~\000\200\2108\000\310\321:!\005\002\377\177\002\260C\000\377\321:q\n\000\000#\200\276\200\002p~\377tr(\000\000\001\000\371p\224}:\000\004\006\001\000\200\2779u\206\000~\000\376\207\377\000\200\276\000\000\200\177\377vp&\000\000\200\177\000p\232}j \200\276~\000\200\2108\000\310\321;!\005\002\377\177\002\260D\000\377\321;q\n\000\000#\200\276\200\002p~\377vr(\000\000\001\000\371p\224};\000\004\006\001\000\200\2779w\210\000~\000\376\207\220\200p \377\000\200\276\000\000\377\377\377\210r&\000\000\377\377\371\206r(9\006\006\0058\000\001\322A\001\340\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340~8\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377hp&\000\000\200\177\000p\232}j \200\276~\000\200\2108\000\310\3214!\005\002\377\177\002\2608\000\377\3214q\n\000\000#\200\276\200\002p~\377hr(\000\000\001\000\371p\224}4\000\004\006\001\000\200\2779ip\000~\000\376\207\377\000\200\276\000\000\200\177\377jh&\000\000\200\177\000h\232}j \200\276~\000\200\2104\000\310\3215!\005\002\377\177\002\2609\000\377\3215i\n\000\000#\200\276\200\002h~\377jr(\000\000\001\000\371h\224}5\000\004\006\001\000\200\2779kr\000~\000\376\207\377\000\200\276\000\000\200\177\377lh&\000\000\200\177\000h\232}j \200\276~\000\200\2104\000\310\3216!\005\002\377\177\002\260:\000\377\3216i\n\000\000#\200\276\200\002h~\377lj(\000\000\001\000\371h\224}6\000\004\006\001\000\200\2775mt\000~\000\376\207\377\000\200\276\000\000\200\177\377nh&\000\000\200\177\000h\232}j \200\276~\000\200\2104\000\310\3217!\005\002\377\177\002\260;\000\377\3217i\n\000\000#\200\276\200\002h~\377nj(\000\000\001\000\371h\224}7\000\004\006\001\000\200\2775ov\000~\000\376\207\220ph \377\000\200\276\000\000\377\377\377vj&\000\000\377\377\371tj(5\006\006\0054\000\001\3229\001\320\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340z4\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377`h&\000\000\200\177\000h\232}j \200\276~\000\200\2104\000\310\3210!\005\002\377\177\002\2604\000\377\3210i\n\000\000#\200\276\200\002h~\377`j(\000\000\001\000\371h\224}0\000\004\006\001\000\200\2775ah\000~\000\376\207\377\000\200\276\000\000\200\177\377b`&\000\000\200\177\000`\232}j \200\276~\000\200\2100\000\310\3211!\005\002\377\177\002\2605\000\377\3211a\n\000\000#\200\276\200\002`~\377bj(\000\000\001\000\371`\224}1\000\004\006\001\000\200\2775cj\000~\000\376\207\377\000\200\276\000\000\200\177\377d`&\000\000\200\177\000`\232}j \200\276~\000\200\2100\000\310\3212!\005\002\377\177\002\2606\000\377\3212a\n\000\000#\200\276\200\002`~\377db(\000\000\001\000\371`\224}2\000\004\006\001\000\200\2771el\000~\000\376\207\377\000\200\276\000\000\200\177\377f`&\000\000\200\177\000`\232}j \200\276~\000\200\2100\000\310\3213!\005\002\377\177\002\2607\000\377\3213a\n\000\000#\200\276\200\002`~\377fb(\000\000\001\000\371`\224}3\000\004\006\001\000\200\2771gn\000~\000\376\207\220h` \377\000\200\276\000\000\377\377\377nb&\000\000\377\377\371lb(1\006\006\0050\000\001\3225\001\300\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340v0\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377X`&\000\000\200\177\000`\232}j \200\276~\000\200\2100\000\310\321,!\005\002\377\177\002\2600\000\377\321,a\n\000\000#\200\276\200\002`~\377Xb(\000\000\001\000\371`\224},\000\004\006\001\000\200\2771Y`\000~\000\376\207\377\000\200\276\000\000\200\177\377ZX&\000\000\200\177\000X\232}j \200\276~\000\200\210,\000\310\321-!\005\002\377\177\002\2601\000\377\321-Y\n\000\000#\200\276\200\002X~\377Zb(\000\000\001\000\371X\224}-\000\004\006\001\000\200\2771[b\000~\000\376\207\377\000\200\276\000\000\200\177\377\\X&\000\000\200\177\000X\232}j \200\276~\000\200\210,\000\310\321.!\005\002\377\177\002\2602\000\377\321.Y\n\000\000#\200\276\200\002X~\377\\Z(\000\000\001\000\371X\224}.\000\004\006\001\000\200\277-]d\000~\000\376\207\377\000\200\276\000\000\200\177\377^X&\000\000\200\177\000X\232}j \200\276~\000\200\210,\000\310\321/!\005\002\377\177\002\2603\000\377\321/Y\n\000\000#\200\276\200\002X~\377^Z(\000\000\001\000\371X\224}/\000\004\006\001\000\200\277-_f\000~\000\376\207\220`X \377\000\200\276\000\000\377\377\377fZ&\000\000\377\377\371dZ(-\006\006\005,\000\001\3221\001\260\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340r,\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377PX&\000\000\200\177\000X\232}j \200\276~\000\200\210,\000\310\321(!\005\002\377\177\002\260,\000\377\321(Y\n\000\000#\200\276\200\002X~\377PZ(\000\000\001\000\371X\224}(\000\004\006\001\000\200\277-QX\000~\000\376\207\377\000\200\276\000\000\200\177\377RP&\000\000\200\177\000P\232}j \200\276~\000\200\210(\000\310\321)!\005\002\377\177\002\260-\000\377\321)Q\n\000\000#\200\276\200\002P~\377RZ(\000\000\001\000\371P\224})\000\004\006\001\000\200\277-SZ\000~\000\376\207\377\000\200\276\000\000\200\177\377TP&\000\000\200\177\000P\232}j \200\276~\000\200\210(\000\310\321*!\005\002\377\177\002\260.\000\377\321*Q\n\000\000#\200\276\200\002P~\377TR(\000\000\001\000\371P\224}*\000\004\006\001\000\200\277)U\\\000~\000\376\207\377\000\200\276\000\000\200\177\377VP&\000\000\200\177\000P\232}j \200\276~\000\200\210(\000\310\321+!\005\002\377\177\002\260/\000\377\321+Q\n\000\000#\200\276\200\002P~\377VR(\000\000\001\000\371P\224}+\000\004\006\001\000\200\277)W^\000~\000\376\207\220XP \377\000\200\276\000\000\377\377\377^R&\000\000\377\377\371\\R()\006\006\005(\000\001\322-\001\240\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340n(\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377HP&\000\000\200\177\000P\232}j \200\276~\000\200\210(\000\310\321$!\005\002\377\177\002\260(\000\377\321$Q\n\000\000#\200\276\200\002P~\377HR(\000\000\001\000\371P\224}$\000\004\006\001\000\200\277)IP\000~\000\376\207\377\000\200\276\000\000\200\177\377JH&\000\000\200\177\000H\232}j \200\276~\000\200\210$\000\310\321%!\005\002\377\177\002\260)\000\377\321%I\n\000\000#\200\276\200\002H~\377JR(\000\000\001\000\371H\224}%\000\004\006\001\000\200\277)KR\000~\000\376\207\377\000\200\276\000\000\200\177\377LH&\000\000\200\177\000H\232}j \200\276~\000\200\210$\000\310\321&!\005\002\377\177\002\260*\000\377\321&I\n\000\000#\200\276\200\002H~\377LJ(\000\000\001\000\371H\224}&\000\004\006\001\000\200\277%MT\000~\000\376\207\377\000\200\276\000\000\200\177\377NH&\000\000\200\177\000H\232}j \200\276~\000\200\210$\000\310\321'!\005\002\377\177\002\260+\000\377\321'I\n\000\000#\200\276\200\002H~\377NJ(\000\000\001\000\371H\224}'\000\004\006\001\000\200\277%OV\000~\000\376\207\220PH \377\000\200\276\000\000\377\377\377VJ&\000\000\377\377\371TJ(%\006\006\005$\000\001\322)\001\220\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340j$\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377@H&\000\000\200\177\000H\232}j \200\276~\000\200\210$\000\310\321 !\005\002\377\177\002\260$\000\377\321 I\n\000\000#\200\276\200\002H~\377@J(\000\000\001\000\371H\224} \000\004\006\001\000\200\277%AH\000~\000\376\207\377\000\200\276\000\000\200\177\377B@&\000\000\200\177\000@\232}j \200\276~\000\200\210 \000\310\321!!\005\002\377\177\002\260%\000\377\321!A\n\000\000#\200\276\200\002@~\377BJ(\000\000\001\000\371@\224}!\000\004\006\001\000\200\277%CJ\000~\000\376\207\377\000\200\276\000\000\200\177\377D@&\000\000\200\177\000@\232}j \200\276~\000\200\210 \000\310\321\"!\005\002\377\177\002\260&\000\377\321\"A\n\000\000#\200\276\200\002@~\377DB(\000\000\001\000\371@\224}\"\000\004\006\001\000\200\277!EL\000~\000\376\207\377\000\200\276\000\000\200\177\377F@&\000\000\200\177\000@\232}j \200\276~\000\200\210 \000\310\321#!\005\002\377\177\002\260'\000\377\321#A\n\000\000#\200\276\200\002@~\377FB(\000\000\001\000\371@\224}#\000\004\006\001\000\200\277!GN\000~\000\376\207\220H@ \377\000\200\276\000\000\377\377\377NB&\000\000\377\377\371LB(!\006\006\005 \000\001\322%\001\200\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340f \001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\3778@&\000\000\200\177\000@\232}j \200\276~\000\200\210 \000\310\321\034!\005\002\377\177\002\260 \000\377\321\034A\n\000\000#\200\276\200\002@~\3778B(\000\000\001\000\371@\224}\034\000\004\006\001\000\200\277!9@\000~\000\376\207\377\000\200\276\000\000\200\177\377:8&\000\000\200\177\0008\232}j \200\276~\000\200\210\034\000\310\321\035!\005\002\377\177\002\260!\000\377\321\0359\n\000\000#\200\276\200\0028~\377:B(\000\000\001\000\3718\224}\035\000\004\006\001\000\200\277!;B\000~\000\376\207\377\000\200\276\000\000\200\177\377<8&\000\000\200\177\0008\232}j \200\276~\000\200\210\034\000\310\321\036!\005\002\377\177\002\260\"\000\377\321\0369\n\000\000#\200\276\200\0028~\377<:(\000\000\001\000\3718\224}\036\000\004\006\001\000\200\277\035=D\000~\000\376\207\377\000\200\276\000\000\200\177\377>8&\000\000\200\177\0008\232}j \200\276~\000\200\210\034\000\310\321\037!\005\002\377\177\002\260#\000\377\321\0379\n\000\000#\200\276\200\0028~\377>:(\000\000\001\000\3718\224}\037\000\004\006\001\000\200\277\035?F\000~\000\376\207\220@8 \377\000\200\276\000\000\377\377\377F:&\000\000\377\377\371D:(\035\006\006\005\034\000\001\322!\001p\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340b\034\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\37708&\000\000\200\177\0008\232}j \200\276~\000\200\210\034\000\310\321\030!\005\002\377\177\002\260\034\000\377\321\0309\n\000\000#\200\276\200\0028~\3770:(\000\000\001\000\3718\224}\030\000\004\006\001\000\200\277\03518\000~\000\376\207\377\000\200\276\000\000\200\177\37720&\000\000\200\177\0000\232}j \200\276~\000\200\210\030\000\310\321\031!\005\002\377\177\002\260\035\000\377\321\0311\n\000\000#\200\276\200\0020~\3772:(\000\000\001\000\3710\224}\031\000\004\006\001\000\200\277\0353:\000~\000\376\207\377\000\200\276\000\000\200\177\37740&\000\000\200\177\0000\232}j \200\276~\000\200\210\030\000\310\321\032!\005\002\377\177\002\260\036\000\377\321\0321\n\000\000#\200\276\200\0020~\37742(\000\000\001\000\3710\224}\032\000\004\006\001\000\200\277\0315<\000~\000\376\207\377\000\200\276\000\000\200\177\37760&\000\000\200\177\0000\232}j \200\276~\000\200\210\030\000\310\321\033!\005\002\377\177\002\260\037\000\377\321\0331\n\000\000#\200\276\200\0020~\37762(\000\000\001\000\3710\224}\033\000\004\006\001\000\200\277\0317>\000~\000\376\207\22080 \377\000\200\276\000\000\377\377\377>2&\000\000\377\377\371<2(\031\006\006\005\030\000\001\322\035\001`\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340^\030\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377(0&\000\000\200\177\0000\232}j \200\276~\000\200\210\030\000\310\321\024!\005\002\377\177\002\260\030\000\377\321\0241\n\000\000#\200\276\200\0020~\377(2(\000\000\001\000\3710\224}\024\000\004\006\001\000\200\277\031)0\000~\000\376\207\377\000\200\276\000\000\200\177\377*(&\000\000\200\177\000(\232}j \200\276~\000\200\210\024\000\310\321\025!\005\002\377\177\002\260\031\000\377\321\025)\n\000\000#\200\276\200\002(~\377*2(\000\000\001\000\371(\224}\025\000\004\006\001\000\200\277\031+2\000~\000\376\207\377\000\200\276\000\000\200\177\377,(&\000\000\200\177\000(\232}j \200\276~\000\200\210\024\000\310\321\026!\005\002\377\177\002\260\032\000\377\321\026)\n\000\000#\200\276\200\002(~\377,*(\000\000\001\000\371(\224}\026\000\004\006\001\000\200\277\025-4\000~\000\376\207\377\000\200\276\000\000\200\177\377.(&\000\000\200\177\000(\232}j \200\276~\000\200\210\024\000\310\321\027!\005\002\377\177\002\260\033\000\377\321\027)\n\000\000#\200\276\200\002(~\377.*(\000\000\001\000\371(\224}\027\000\004\006\001\000\200\277\025/6\000~\000\376\207\2200( \377\000\200\276\000\000\377\377\3776*&\000\000\377\377\3714*(\025\006\006\005\024\000\001\322\031\001P\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340Z\024\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377 (&\000\000\200\177\000(\232}j \200\276~\000\200\210\024\000\310\321\020!\005\002\377\177\002\260\024\000\377\321\020)\n\000\000#\200\276\200\002(~\377 *(\000\000\001\000\371(\224}\020\000\004\006\001\000\200\277\025!(\000~\000\376\207\377\000\200\276\000\000\200\177\377\" &\000\000\200\177\000 \232}j \200\276~\000\200\210\020\000\310\321\021!\005\002\377\177\002\260\025\000\377\321\021!\n\000\000#\200\276\200\002 ~\377\"*(\000\000\001\000\371 \224}\021\000\004\006\001\000\200\277\025#*\000~\000\376\207\377\000\200\276\000\000\200\177\377$ &\000\000\200\177\000 \232}j \200\276~\000\200\210\020\000\310\321\022!\005\002\377\177\002\260\026\000\377\321\022!\n\000\000#\200\276\200\002 ~\377$\"(\000\000\001\000\371 \224}\022\000\004\006\001\000\200\277\021%,\000~\000\376\207\377\000\200\276\000\000\200\177\377& &\000\000\200\177\000 \232}j \200\276~\000\200\210\020\000\310\321\023!\005\002\377\177\002\260\027\000\377\321\023!\n\000\000#\200\276\200\002 ~\377&\"(\000\000\001\000\371 \224}\023\000\004\006\001\000\200\277\021'.\000~\000\376\207\220(  \377\000\200\276\000\000\377\377\377.\"&\000\000\377\377\371,\"(\021\006\006\005\020\000\001\322\025\001@\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340V\020\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\030 &\000\000\200\177\000 \232}j \200\276~\000\200\210\020\000\310\321\f!\005\002\377\177\002\260\020\000\377\321\f!\n\000\000#\200\276\200\002 ~\377\030\"(\000\000\001\000\371 \224}\f\000\004\006\001\000\200\277\021\031 \000~\000\376\207\377\000\200\276\000\000\200\177\377\032\030&\000\000\200\177\000\030\232}j \200\276~\000\200\210\f\000\310\321\r!\005\002\377\177\002\260\021\000\377\321\r\031\n\000\000#\200\276\200\002\030~\377\032\"(\000\000\001\000\371\030\224}\r\000\004\006\001\000\200\277\021\033\"\000~\000\376\207\377\000\200\276\000\000\200\177\377\034\030&\000\000\200\177\000\030\232}j \200\276~\000\200\210\f\000\310\321\016!\005\002\377\177\002\260\022\000\377\321\016\031\n\000\000#\200\276\200\002\030~\377\034\032(\000\000\001\000\371\030\224}\016\000\004\006\001\000\200\277\r\035$\000~\000\376\207\377\000\200\276\000\000\200\177\377\036\030&\000\000\200\177\000\030\232}j \200\276~\000\200\210\f\000\310\321\017!\005\002\377\177\002\260\023\000\377\321\017\031\n\000\000#\200\276\200\002\030~\377\036\032(\000\000\001\000\371\030\224}\017\000\004\006\001\000\200\277\r\037&\000~\000\376\207\220 \030 \377\000\200\276\000\000\377\377\377&\032&\000\000\377\377\371$\032(\r\006\006\005\f\000\001\322\021\0010\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340R\f\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\020\030&\000\000\200\177\000\030\232}j \200\276~\000\200\210\f\000\310\321\b!\005\002\377\177\002\260\f\000\377\321\b\031\n\000\000#\200\276\200\002\030~\377\020\032(\000\000\001\000\371\030\224}\b\000\004\006\001\000\200\277\r\021\030\000~\000\376\207\377\000\200\276\000\000\200\177\377\022\020&\000\000\200\177\000\020\232}j \200\276~\000\200\210\b\000\310\321\t!\005\002\377\177\002\260\r\000\377\321\t\021\n\000\000#\200\276\200\002\020~\377\022\032(\000\000\001\000\371\020\224}\t\000\004\006\001\000\200\277\r\023\032\000~\000\376\207\377\000\200\276\000\000\200\177\377\024\020&\000\000\200\177\000\020\232}j \200\276~\000\200\210\b\000\310\321\n!\005\002\377\177\002\260\016\000\377\321\n\021\n\000\000#\200\276\200\002\020~\377\024\022(\000\000\001\000\371\020\224}\n\000\004\006\001\000\200\277\t\025\034\000~\000\376\207\377\000\200\276\000\000\200\177\377\026\020&\000\000\200\177\000\020\232}j \200\276~\000\200\210\b\000\310\321\013!\005\002\377\177\002\260\017\000\377\321\013\021\n\000\000#\200\276\200\002\020~\377\026\022(\000\000\001\000\371\020\224}\013\000\004\006\001\000\200\277\t\027\036\000~\000\376\207\220\030\020 \377\000\200\276\000\000\377\377\377\036\022&\000\000\377\377\371\034\022(\t\006\006\005\b\000\001\322\r\001 \004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340N\b\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\b\020&\000\000\200\177\000\020\232}j \200\276~\000\200\210\b\000\310\321\004!\005\002\377\177\002\260\b\000\377\321\004\021\n\000\000#\200\276\200\002\020~\377\b\022(\000\000\001\000\371\020\224}\004\000\004\006\001\000\200\277\t\t\020\000~\000\376\207\377\000\200\276\000\000\200\177\377\n\b&\000\000\200\177\000\b\232}j \200\276~\000\200\210\004\000\310\321\005!\005\002\377\177\002\260\t\000\377\321\005\t\n\000\000#\200\276\200\002\b~\377\n\022(\000\000\001\000\371\b\224}\005\000\004\006\001\000\200\277\t\013\022\000~\000\376\207\377\000\200\276\000\000\200\177\377\f\b&\000\000\200\177\000\b\232}j \200\276~\000\200\210\004\000\310\321\006!\005\002\377\177\002\260\n\000\377\321\006\t\n\000\000#\200\276\200\002\b~\377\f\n(\000\000\001\000\371\b\224}\006\000\004\006\001\000\200\277\005\r\024\000~\000\376\207\377\000\200\276\000\000\200\177\377\016\b&\000\000\200\177\000\b\232}j \200\276~\000\200\210\004\000\310\321\007!\005\002\377\177\002\260\013\000\377\321\007\t\n\000\000#\200\276\200\002\b~\377\016\n(\000\000\001\000\371\b\224}\007\000\004\006\001\000\200\277\005\017\026\000~\000\376\207\220\020\b \377\000\200\276\000\000\377\377\377\026\n&\000\000\377\377\371\024\n(\005\006\006\005\004\000\001\322\t\001\020\004~\001\202\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340J\004\001\200~\000\376\210\362\377\211\277\002\001\376\276\377\000\200\276\000\000\200\177\377\000\b&\000\000\200\177\000\b\232}j \200\276~\000\200\210\004\000\310\321\000!\005\002\377\177\002\260\004\000\377\321\000\t\n\000\000#\200\276\200\002\b~\377\000\n(\000\000\001\000\371\b\224}\000\000\004\006\001\000\200\277\005\001\b\000~\000\376\207\377\000\200\276\000\000\200\177\377\002\000&\000\000\200\177\000\000\232}j \200\276~\000\200\210\000\000\310\321\001!\005\002\377\177\002\260\005\000\377\321\001\001\n\000\000#\200\276\200\002\000~\377\002\n(\000\000\001\000\371\000\224}\001\000\004\006\001\000\200\277\005\003\n\000~\000\376\207\377\000\200\276\000\000\200\177\377\004\000&\000\000\200\177\000\000\232}j \200\276~\000\200\210\000\000\310\321\002!\005\002\377\177\002\260\006\000\377\321\002\001\n\000\000#\200\276\200\002\000~\377\004\002(\000\000\001\000\371\000\224}\002\000\004\006\001\000\200\277\001\005\f\000~\000\376\207\377\000\200\276\000\000\200\177\377\006\000&\000\000\200\177\000\000\232}j \200\276~\000\200\210\000\000\310\321\003!\005\002\377\177\002\260\007\000\377\321\003\001\n\000\000#\200\276\200\002\000~\377\006\002(\000\000\001\000\371\000\224}\003\000\004\006\001\000\200\277\001\007\016\000~\000\376\207\220\b\000 \377\000\200\276\000\000\377\377\377\016\002&\000\000\377\377\371\f\002(\001\006\006\005\000\000\001\322\005\001\000\004~\001\200\276<\005\b~=\005\n~>\005\f~?\005\016~\004x\324}\000\000\200\277\000\000\352\320\006|\002\000j\000\200\206\000 \200\276\000\020t\340B\000\001\200~\000\376\210\362\377\211\277\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\006\000\000\000\000\000\000\000\030\007\000\000\000\000\000\000\013\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\310\007\000\000\000\000\000\000\n\000\000\000\000\000\000\000V\000\000\000\000\000\000\000\365\376\377o\000\000\000\000x\007\000\000\000\000\000\000\004\000\000\000\000\000\000\000\240\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000Linker: AMD LLD 19.0.0 (/longer_pathname_so_that_rpms_can_support_packaging_the_debug_info_for_all_os_profiles/src/llvm-project/llvm c87081df219c42dc27c5b6d86c0525bc7d01f727)\000AMD clang version 19.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.4.1 25184 c87081df219c42dc27c5b6d86c0525bc7d01f727)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000V\000\000\000\000\002\b\000\300~\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\000\031\000\000\000\000\000\000\264Q\000\000\000\000\000\000\034\000\000\000\021\003\006\000@\b\000\000\000\000\000\000@\000\000\000\000\000\000\000:\000\000\000\021\000\n\0000\217\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000.note\000.dynsym\000.gnu.hash\000.hash\000.dynstr\000.rodata\000.text\000.dynamic\000.relro_padding\000.bss\000.AMDGPU.csdata\000.comment\000.symtab\000.shstrtab\000.strtab\000\000_Z8micro_tk13micro_globals\000_Z8micro_tk13micro_globals.kd\000__hip_cuid_3c031c907996160d\000_DYNAMIC\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\007\000\000\000\002\000\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000\334\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\000\000\013\000\000\000\002\000\000\000\000\000\000\000\030\007\000\000\000\000\000\000\030\007\000\000\000\000\000\000`\000\000\000\000\000\000\000\005\000\000\000\001\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\017\000\000\000\366\377\377o\002\000\000\000\000\000\000\000x\007\000\000\000\000\000\000x\007\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\005\000\000\000\002\000\000\000\000\000\000\000\240\007\000\000\000\000\000\000\240\007\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\037\000\000\000\003\000\000\000\002\000\000\000\000\000\000\000\310\007\000\000\000\000\000\000\310\007\000\000\000\000\000\000V\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000'\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000@\b\000\000\000\000\000\000@\b\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000/\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\t\000\000\000\000\000\000\300U\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\006\000\000\000\003\000\000\000\000\000\000\000\300~\000\000\000\000\000\000\300^\000\000\000\000\000\000p\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000>\000\000\000\b\000\000\000\003\000\000\000\000\000\000\0000\177\000\000\000\000\000\0000_\000\000\000\000\000\000\320\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000M\000\000\000\b\000\000\000\003\000\000\000\000\000\000\0000\217\000\000\000\000\000\0000_\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000R\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000_\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000a\000\000\000\001\000\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000_\000\000\000\000\000\0009\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000j\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p`\000\000\000\000\000\000x\000\000\000\000\000\000\000\017\000\000\000\002\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000r\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\350`\000\000\000\000\000\000\204\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000|\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000la\000\000\000\000\000\000_\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__unnamed_7, 30160

	.type	__hip_fatbin_wrapper,@object    # @__hip_fatbin_wrapper
	.section	.hipFatBinSegment,"a",@progbits
	.p2align	3, 0x0
__hip_fatbin_wrapper:
	.long	1212764230                      # 0x48495046
	.long	1                               # 0x1
	.quad	.L__unnamed_7
	.quad	0
	.size	__hip_fatbin_wrapper, 24

	.type	__hip_gpubin_handle_3c031c907996160d,@object # @__hip_gpubin_handle_3c031c907996160d
	.local	__hip_gpubin_handle_3c031c907996160d
	.comm	__hip_gpubin_handle_3c031c907996160d,8,8
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	__hip_module_ctor
	.type	__hip_cuid_3c031c907996160d,@object # @__hip_cuid_3c031c907996160d
	.bss
	.globl	__hip_cuid_3c031c907996160d
__hip_cuid_3c031c907996160d:
	.byte	0                               # 0x0
	.size	__hip_cuid_3c031c907996160d, 1

	.section	".linker-options","e",@llvm_linker_options
	.ident	"AMD clang version 19.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.4.1 25184 c87081df219c42dc27c5b6d86c0525bc7d01f727)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z23__device_stub__micro_tk13micro_globals
	.addrsig_sym _Z8cpu_gemmPfS_S_iii.omp_outlined
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __hip_module_ctor
	.addrsig_sym __hip_module_dtor
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _Z8micro_tk13micro_globals
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
	.addrsig_sym .L__unnamed_7
	.addrsig_sym __hip_fatbin_wrapper
	.addrsig_sym __hip_cuid_3c031c907996160d
