	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.protected	_Z8micro_tk13micro_globals ; -- Begin function _Z8micro_tk13micro_globals
	.globl	_Z8micro_tk13micro_globals
	.p2align	8
	.type	_Z8micro_tk13micro_globals,@function
_Z8micro_tk13micro_globals:             ; @_Z8micro_tk13micro_globals
; %bb.0:
	s_load_dwordx8 s[12:19], s[0:1], 0x0
	s_load_dwordx2 s[26:27], s[0:1], 0x20
	s_load_dwordx8 s[4:11], s[0:1], 0x30
	s_load_dwordx2 s[28:29], s[0:1], 0x50
	s_load_dwordx2 s[20:21], s[0:1], 0x60
	s_load_dwordx2 s[22:23], s[0:1], 0x80
	s_load_dwordx2 s[34:35], s[0:1], 0x90
	s_cmp_lg_u32 0, -1
	s_waitcnt lgkmcnt(0)
	s_cselect_b32 s7, 0, 0
	s_and_b32 s9, s7, -16
	s_mov_b32 s31, 0
	s_and_b32 s30, s7, 15
	s_add_i32 s9, s9, 16
	s_cmp_eq_u64 s[30:31], 0
	s_mul_i32 s0, s34, s3
	s_cselect_b32 s7, s7, s9
	s_add_i32 s0, s0, s2
	s_ashr_i32 s2, s0, 31
	s_lshr_b32 s2, s2, 29
	s_add_i32 s2, s0, s2
	s_mul_i32 s1, s35, s34
	s_ashr_i32 s3, s2, 3
	s_and_b32 s2, s2, -8
	s_sub_i32 s0, s0, s2
	s_ashr_i32 s2, s1, 31
	s_lshr_b32 s2, s2, 29
	s_add_i32 s1, s1, s2
	s_ashr_i32 s1, s1, 3
	s_mul_i32 s0, s0, s1
	s_add_i32 s0, s0, s3
	s_ashr_i32 s1, s0, 31
	s_lshr_b32 s1, s1, 23
	s_add_i32 s1, s0, s1
	s_ashr_i32 s2, s1, 9
	s_lshl_b32 s2, s2, 4
	s_sub_i32 s3, 32, s2
	s_min_i32 s11, s3, 16
	s_abs_i32 s15, s11
	v_mov_b32_e32 v29, v0
	v_cvt_f32_u32_e32 v0, s15
	s_sub_i32 s19, 0, s15
	s_and_b32 s1, s1, 0xfffffe00
	s_sub_i32 s0, s0, s1
	v_rcp_iflag_f32_e32 v0, v0
	s_abs_i32 s17, s0
	s_add_i32 s9, s7, 0x8000
	s_and_b32 s3, s9, -16
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	s_xor_b32 s1, s0, s11
	s_and_b32 s30, s9, 15
	s_add_i32 s3, s3, 16
	v_readfirstlane_b32 s33, v0
	s_mul_i32 s19, s19, s33
	s_mul_hi_u32 s19, s33, s19
	s_add_i32 s33, s33, s19
	s_mul_hi_u32 s19, s17, s33
	s_mul_i32 s33, s19, s15
	s_sub_i32 s17, s17, s33
	s_ashr_i32 s1, s1, 31
	s_add_i32 s33, s19, 1
	s_sub_i32 s34, s17, s15
	s_cmp_ge_u32 s17, s15
	s_cselect_b32 s19, s33, s19
	s_cselect_b32 s17, s34, s17
	s_add_i32 s33, s19, 1
	s_cmp_ge_u32 s17, s15
	s_cselect_b32 s15, s33, s19
	s_xor_b32 s15, s15, s1
	s_sub_i32 s19, s15, s1
	s_mul_i32 s1, s19, s11
	s_sub_i32 s0, s0, s1
	s_add_i32 s2, s2, s0
	s_lshl_b32 s17, s2, 8
	s_ashr_i32 s15, s17, 31
	s_mul_i32 s0, s26, s15
	s_mul_hi_u32 s1, s26, s17
	s_add_i32 s0, s1, s0
	s_mul_i32 s1, s27, s17
	s_add_i32 s1, s0, s1
	s_mul_i32 s0, s26, s17
	s_lshl_b64 s[0:1], s[0:1], 1
	s_add_u32 s34, s12, s0
	s_addc_u32 s35, s13, s1
	s_lshl_b32 s2, s19, 8
	s_ashr_i32 s0, s2, 31
	s_mul_i32 s0, s28, s0
	s_mul_hi_u32 s1, s28, s2
	s_add_i32 s0, s1, s0
	s_mul_i32 s1, s29, s2
	s_add_i32 s1, s0, s1
	s_mul_i32 s0, s28, s2
	s_lshl_b64 s[0:1], s[0:1], 1
	s_add_u32 s0, s4, s0
	v_lshlrev_b32_e32 v0, 3, v29
	s_addc_u32 s1, s5, s1
	v_and_b32_e32 v20, 56, v0
	v_lshrrev_b32_e32 v6, 3, v29
	s_cmp_eq_u64 s[30:31], 0
	v_mad_u64_u32 v[12:13], s[30:31], v6, s26, v[20:21]
	v_or_b32_e32 v0, 64, v6
	v_or_b32_e32 v1, 0xc0, v6
	v_ashrrev_i32_e32 v13, 31, v12
	v_mad_u64_u32 v[8:9], s[30:31], v0, s26, v[20:21]
	v_mad_u64_u32 v[16:17], s[30:31], v1, s26, v[20:21]
	v_lshlrev_b32_e32 v21, 4, v29
	v_lshlrev_b32_e32 v22, 1, v20
	v_lshl_add_u64 v[2:3], v[12:13], 1, s[34:35]
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshl_add_u32 v12, s26, 7, v12
	v_and_b32_e32 v21, 0x1f80, v21
	v_add_u32_e32 v23, s7, v22
	;;#ASMSTART
	global_load_dwordx4 v[2:5], v[2:3], off

	;;#ASMEND
	v_lshl_add_u64 v[8:9], v[8:9], 1, s[34:35]
	v_ashrrev_i32_e32 v13, 31, v12
	v_add_u32_e32 v26, v23, v21
	;;#ASMSTART
	global_load_dwordx4 v[8:11], v[8:9], off

	;;#ASMEND
	v_lshl_add_u64 v[12:13], v[12:13], 1, s[34:35]
	v_ashrrev_i32_e32 v17, 31, v16
	v_or_b32_e32 v24, 8, v22
	v_lshrrev_b32_e32 v27, 4, v26
	;;#ASMSTART
	global_load_dwordx4 v[12:15], v[12:13], off

	;;#ASMEND
	v_lshl_add_u64 v[16:17], v[16:17], 1, s[34:35]
	v_add_u32_e32 v25, s7, v24
	v_and_b32_e32 v27, 0x78, v27
	;;#ASMSTART
	global_load_dwordx4 v[16:19], v[16:17], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	v_xor_b32_e32 v26, v27, v26
	;;#ASMSTART
	ds_write_b64 v26, v[2:3]

	;;#ASMEND
	v_add_u32_e32 v2, v25, v21
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_or_b32_e32 v26, 0x2000, v21
	;;#ASMSTART
	ds_write_b64 v2, v[4:5]

	;;#ASMEND
	v_add_u32_e32 v2, v23, v26
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[8:9]

	;;#ASMEND
	v_add_u32_e32 v2, v25, v26
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_or_b32_e32 v27, 0x4000, v21
	;;#ASMSTART
	ds_write_b64 v2, v[10:11]

	;;#ASMEND
	v_add_u32_e32 v2, v23, v27
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[12:13]

	;;#ASMEND
	v_add_u32_e32 v2, v25, v27
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_or_b32_e32 v28, 0x6000, v21
	;;#ASMSTART
	ds_write_b64 v2, v[14:15]

	;;#ASMEND
	v_add_u32_e32 v2, v23, v28
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[16:17]

	;;#ASMEND
	v_add_u32_e32 v2, v25, v28
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_mad_u64_u32 v[12:13], s[30:31], v6, s28, v[20:21]
	v_xor_b32_e32 v2, v3, v2
	v_ashrrev_i32_e32 v13, 31, v12
	v_mad_u64_u32 v[8:9], s[30:31], v0, s28, v[20:21]
	s_cselect_b32 s3, s9, s3
	;;#ASMSTART
	ds_write_b64 v2, v[18:19]

	;;#ASMEND
	v_lshl_add_u64 v[2:3], v[12:13], 1, s[0:1]
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshl_add_u32 v12, s28, 7, v12
	v_add_u32_e32 v0, s3, v22
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	global_load_dwordx4 v[2:5], v[2:3], off

	;;#ASMEND
	v_lshl_add_u64 v[8:9], v[8:9], 1, s[0:1]
	v_ashrrev_i32_e32 v13, 31, v12
	v_mad_u64_u32 v[16:17], s[30:31], v1, s28, v[20:21]
	v_add_u32_e32 v20, v0, v21
	;;#ASMSTART
	global_load_dwordx4 v[8:11], v[8:9], off

	;;#ASMEND
	v_lshl_add_u64 v[12:13], v[12:13], 1, s[0:1]
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshrrev_b32_e32 v22, 4, v20
	;;#ASMSTART
	global_load_dwordx4 v[12:15], v[12:13], off

	;;#ASMEND
	v_lshl_add_u64 v[16:17], v[16:17], 1, s[0:1]
	v_add_u32_e32 v1, s3, v24
	v_and_b32_e32 v22, 0x78, v22
	;;#ASMSTART
	global_load_dwordx4 v[16:19], v[16:17], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	v_xor_b32_e32 v20, v22, v20
	;;#ASMSTART
	ds_write_b64 v20, v[2:3]

	;;#ASMEND
	v_add_u32_e32 v2, v1, v21
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[4:5]

	;;#ASMEND
	v_add_u32_e32 v2, v0, v26
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[8:9]

	;;#ASMEND
	v_add_u32_e32 v2, v1, v26
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[10:11]

	;;#ASMEND
	v_add_u32_e32 v2, v0, v27
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[12:13]

	;;#ASMEND
	v_add_u32_e32 v2, v1, v27
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_add_u32_e32 v0, v0, v28
	;;#ASMSTART
	ds_write_b64 v2, v[14:15]

	;;#ASMEND
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v2, 0x78, v2
	v_xor_b32_e32 v0, v2, v0
	;;#ASMSTART
	ds_write_b64 v0, v[16:17]

	;;#ASMEND
	v_add_u32_e32 v0, v1, v28
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	;;#ASMSTART
	ds_write_b64 v0, v[18:19]

	;;#ASMEND
	v_lshrrev_b32_e32 v7, 8, v29
	s_mov_b64 s[24:25], 0
	v_cmp_eq_u32_e32 vcc, 1, v7
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_2
; %bb.1:
	s_barrier
.LBB0_2:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v0, 0xc0, v29
	v_or_b32_e32 v2, s17, v0
	v_mul_lo_u32 v4, s27, v2
	s_mul_i32 s9, s26, s15
	v_mad_u64_u32 v[2:3], s[0:1], s26, v2, 0
	v_add3_u32 v3, v3, s9, v4
	v_lshrrev_b32_e32 v4, 2, v29
	v_and_b32_e32 v28, 15, v29
	v_and_b32_e32 v18, 12, v4
	v_mad_u64_u32 v[4:5], s[0:1], v28, s26, v[18:19]
	s_lshl_b32 s0, s26, 4
	v_lshlrev_b32_e32 v212, 1, v4
	v_add_u32_e32 v11, s0, v4
	v_or_b32_e32 v4, s2, v0
	v_ashrrev_i32_e32 v5, 31, v4
	v_mul_lo_u32 v8, s28, v5
	v_mul_lo_u32 v9, s29, v4
	scratch_store_dwordx2 off, v[4:5], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], s[30:31], s28, v4, 0
	v_add3_u32 v5, v5, v8, v9
	v_mad_u64_u32 v[8:9], s[30:31], v28, s28, v[18:19]
	s_lshl_b32 s1, s28, 4
	v_lshlrev_b32_e32 v214, 1, v8
	v_add_u32_e32 v14, s1, v8
	v_lshlrev_b32_e32 v8, 7, v29
	v_and_b32_e32 v8, 0x6780, v8
	v_mov_b32_e32 v16, v18
	v_lshlrev_b32_e32 v9, 1, v18
	v_add_u32_e32 v15, s3, v8
	scratch_store_dwordx2 off, v[16:17], off offset:132 ; 8-byte Folded Spill
	v_add_u32_e32 v16, v15, v9
	v_lshrrev_b32_e32 v17, 4, v16
	v_or_b32_e32 v10, 16, v28
	v_and_b32_e32 v17, 0x78, v17
	v_xor_b32_e32 v213, v17, v16
	v_or_b32_e32 v16, v0, v10
	v_lshlrev_b32_e32 v16, 7, v16
	v_add_u32_e32 v17, s3, v16
	v_add_u32_e32 v18, v17, v9
	v_lshrrev_b32_e32 v19, 4, v18
	v_or_b32_e32 v12, 32, v28
	v_and_b32_e32 v19, 0x78, v19
	v_xor_b32_e32 v215, v19, v18
	v_or_b32_e32 v18, v0, v12
	v_lshlrev_b32_e32 v18, 7, v18
	v_add_u32_e32 v19, s3, v18
	v_or_b32_e32 v13, 48, v28
	v_add_u32_e32 v20, v19, v9
	v_lshrrev_b32_e32 v21, 4, v20
	v_or_b32_e32 v0, v0, v13
	v_and_b32_e32 v21, 0x78, v21
	v_lshlrev_b32_e32 v0, 7, v0
	v_xor_b32_e32 v216, v21, v20
	v_add_u32_e32 v20, s3, v0
	v_add_u32_e32 v21, v20, v9
	v_lshrrev_b32_e32 v22, 4, v21
	v_and_b32_e32 v22, 0x78, v22
	v_lshlrev_b32_e32 v26, 6, v7
	v_xor_b32_e32 v217, v22, v21
	v_or_b32_e32 v21, v26, v28
	v_lshl_add_u32 v21, v21, 7, s7
	v_add_u32_e32 v22, v21, v9
	v_lshrrev_b32_e32 v23, 4, v22
	v_and_b32_e32 v23, 0x78, v23
	v_xor_b32_e32 v218, v23, v22
	v_or_b32_e32 v22, v10, v26
	v_lshl_add_u32 v22, v22, 7, s7
	v_add_u32_e32 v23, v22, v9
	v_lshrrev_b32_e32 v24, 4, v23
	v_and_b32_e32 v24, 0x78, v24
	v_xor_b32_e32 v219, v24, v23
	v_or_b32_e32 v23, v12, v26
	v_lshl_add_u32 v23, v23, 7, s7
	v_add_u32_e32 v24, v23, v9
	v_lshrrev_b32_e32 v25, 4, v24
	v_and_b32_e32 v25, 0x78, v25
	v_xor_b32_e32 v220, v25, v24
	v_or_b32_e32 v24, v13, v26
	v_lshl_add_u32 v24, v24, 7, s7
	v_add_u32_e32 v25, v24, v9
	scratch_store_dword off, v26, off offset:156 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v26, 4, v25
	v_or_b32_e32 v1, 2, v7
	v_and_b32_e32 v26, 0x78, v26
	v_xor_b32_e32 v221, v26, v25
	v_lshlrev_b32_e32 v25, 6, v1
	v_mov_b32_e32 v26, v28
	scratch_store_dwordx2 off, v[26:27], off offset:148 ; 8-byte Folded Spill
	v_or_b32_e32 v26, v25, v28
	v_lshl_add_u32 v26, v26, 7, s7
	v_add_u32_e32 v27, v26, v9
	v_lshrrev_b32_e32 v28, 4, v27
	v_or_b32_e32 v10, v25, v10
	v_and_b32_e32 v28, 0x78, v28
	v_lshl_add_u32 v10, v10, 7, s7
	v_xor_b32_e32 v222, v28, v27
	v_add_u32_e32 v27, v10, v9
	v_lshrrev_b32_e32 v28, 4, v27
	v_or_b32_e32 v12, v25, v12
	v_and_b32_e32 v28, 0x78, v28
	v_lshl_add_u32 v12, v12, 7, s7
	v_xor_b32_e32 v223, v28, v27
	v_add_u32_e32 v27, v12, v9
	v_or_b32_e32 v13, v25, v13
	v_lshrrev_b32_e32 v28, 4, v27
	v_lshl_add_u32 v13, v13, 7, s7
	v_and_b32_e32 v28, 0x78, v28
	v_add_u32_e32 v25, v13, v9
	v_xor_b32_e32 v224, v28, v27
	v_lshrrev_b32_e32 v27, 4, v25
	v_and_b32_e32 v27, 0x78, v27
	v_xor_b32_e32 v225, v27, v25
	v_or_b32_e32 v25, 32, v9
	v_add_u32_e32 v27, v15, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v211, v28, v27
	v_add_u32_e32 v27, v17, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v210, v28, v27
	v_add_u32_e32 v27, v19, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v209, v28, v27
	v_add_u32_e32 v27, v20, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v208, v28, v27
	v_add_u32_e32 v27, v21, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v207, v28, v27
	v_add_u32_e32 v27, v22, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v206, v28, v27
	v_add_u32_e32 v27, v23, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:128 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v24, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:124 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v26, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:120 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v10, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:116 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v12, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	v_add_u32_e32 v25, v13, v25
	scratch_store_dword off, v27, off offset:112 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v27, 4, v25
	v_and_b32_e32 v27, 0x78, v27
	v_xor_b32_e32 v25, v27, v25
	scratch_store_dword off, v25, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v25, 64, v9
	v_add_u32_e32 v27, v15, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:92 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v17, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:88 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v19, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:84 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v20, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:80 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v21, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:76 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v22, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:72 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v23, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:68 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v24, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:64 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v26, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:60 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v10, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:56 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v12, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	v_add_u32_e32 v25, v13, v25
	scratch_store_dword off, v27, off offset:52 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v27, 4, v25
	v_and_b32_e32 v27, 0x78, v27
	v_xor_b32_e32 v25, v27, v25
	scratch_store_dword off, v25, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v25, 0x60, v9
	v_add_u32_e32 v27, v15, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:48 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v17, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:40 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v19, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	scratch_store_dword off, v27, off offset:36 ; 4-byte Folded Spill
	v_add_u32_e32 v27, v20, v25
	v_lshrrev_b32_e32 v28, 4, v27
	v_and_b32_e32 v28, 0x78, v28
	v_xor_b32_e32 v27, v28, v27
	v_add_u32_e32 v21, v21, v25
	scratch_store_dword off, v27, off offset:32 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v27, 4, v21
	v_and_b32_e32 v27, 0x78, v27
	v_xor_b32_e32 v21, v27, v21
	scratch_store_dword off, v21, off offset:28 ; 4-byte Folded Spill
	v_add_u32_e32 v21, v22, v25
	v_lshrrev_b32_e32 v22, 4, v21
	v_and_b32_e32 v22, 0x78, v22
	v_xor_b32_e32 v21, v22, v21
	scratch_store_dword off, v21, off offset:24 ; 4-byte Folded Spill
	v_add_u32_e32 v21, v23, v25
	v_lshrrev_b32_e32 v22, 4, v21
	v_and_b32_e32 v22, 0x78, v22
	v_xor_b32_e32 v21, v22, v21
	scratch_store_dword off, v21, off offset:20 ; 4-byte Folded Spill
	v_add_u32_e32 v21, v24, v25
	v_lshrrev_b32_e32 v22, 4, v21
	v_and_b32_e32 v22, 0x78, v22
	v_xor_b32_e32 v21, v22, v21
	scratch_store_dword off, v21, off offset:16 ; 4-byte Folded Spill
	v_add_u32_e32 v21, v26, v25
	v_lshrrev_b32_e32 v22, 4, v21
	v_and_b32_e32 v22, 0x78, v22
	v_xor_b32_e32 v21, v22, v21
	v_add_u32_e32 v10, v10, v25
	scratch_store_dword off, v21, off offset:12 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v21, 4, v10
	v_and_b32_e32 v21, 0x78, v21
	v_xor_b32_e32 v10, v21, v10
	scratch_store_dword off, v10, off offset:8 ; 4-byte Folded Spill
	v_add_u32_e32 v10, v12, v25
	v_lshrrev_b32_e32 v12, 4, v10
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v10, v12, v10
	scratch_store_dword off, v10, off offset:4 ; 4-byte Folded Spill
	v_add_u32_e32 v10, v13, v25
	v_lshrrev_b32_e32 v12, 4, v10
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v10, v12, v10
	v_lshl_or_b32 v7, v7, 5, v9
	v_add_u32_e32 v8, s7, v8
	scratch_store_dword off, v10, off       ; 4-byte Folded Spill
	v_add_u32_e32 v10, v8, v7
	v_lshrrev_b32_e32 v12, 4, v10
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v226, v12, v10
	v_add_u32_e32 v10, s7, v16
	v_add_u32_e32 v12, v10, v7
	v_lshrrev_b32_e32 v13, 4, v12
	v_and_b32_e32 v13, 0x78, v13
	v_xor_b32_e32 v227, v13, v12
	v_add_u32_e32 v12, s7, v18
	v_add_u32_e32 v13, v12, v7
	v_lshrrev_b32_e32 v16, 4, v13
	v_and_b32_e32 v16, 0x78, v16
	v_add_u32_e32 v0, s7, v0
	v_xor_b32_e32 v228, v16, v13
	v_add_u32_e32 v13, v0, v7
	v_lshrrev_b32_e32 v16, 4, v13
	v_and_b32_e32 v16, 0x78, v16
	v_xor_b32_e32 v229, v16, v13
	v_add_u32_e32 v13, v15, v7
	v_lshrrev_b32_e32 v16, 4, v13
	v_and_b32_e32 v16, 0x78, v16
	v_xor_b32_e32 v230, v16, v13
	v_add_u32_e32 v13, v17, v7
	v_lshrrev_b32_e32 v16, 4, v13
	v_and_b32_e32 v16, 0x78, v16
	v_xor_b32_e32 v231, v16, v13
	v_add_u32_e32 v13, v19, v7
	v_lshrrev_b32_e32 v16, 4, v13
	v_and_b32_e32 v16, 0x78, v16
	v_add_u32_e32 v7, v20, v7
	v_xor_b32_e32 v232, v16, v13
	v_lshrrev_b32_e32 v13, 4, v7
	v_and_b32_e32 v13, 0x78, v13
	v_lshl_or_b32 v1, v1, 5, v9
	v_xor_b32_e32 v233, v13, v7
	v_add_u32_e32 v7, v8, v1
	v_lshrrev_b32_e32 v8, 4, v7
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v234, v8, v7
	v_add_u32_e32 v7, v10, v1
	v_lshrrev_b32_e32 v8, 4, v7
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v235, v8, v7
	v_add_u32_e32 v7, v12, v1
	v_lshrrev_b32_e32 v8, 4, v7
	v_and_b32_e32 v8, 0x78, v8
	v_add_u32_e32 v0, v0, v1
	v_xor_b32_e32 v236, v8, v7
	v_lshrrev_b32_e32 v7, 4, v0
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v237, v7, v0
	v_add_u32_e32 v0, v15, v1
	v_lshrrev_b32_e32 v7, 4, v0
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v238, v7, v0
	v_add_u32_e32 v0, v17, v1
	v_lshrrev_b32_e32 v7, 4, v0
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v239, v7, v0
	v_add_u32_e32 v0, v19, v1
	v_lshrrev_b32_e32 v7, 4, v0
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v240, v7, v0
	v_add_u32_e32 v0, v20, v1
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v241, v1, v0
	v_add_u32_e32 v0, s0, v11
	s_mul_i32 s2, s16, s14
	v_add_lshl_u32 v244, v0, s0, 1
	s_mul_i32 s0, s8, s6
	s_mul_i32 s2, s2, s18
	s_mul_i32 s0, s0, s10
	v_lshl_add_u64 v[8:9], v[2:3], 1, s[12:13]
	s_mul_i32 s2, s2, s26
	v_lshlrev_b32_e32 v243, 1, v0
	v_lshl_add_u64 v[4:5], v[4:5], 1, s[4:5]
	s_mul_i32 s0, s0, s28
	v_add_u32_e32 v0, s1, v14
	v_and_b32_e32 v2, 32, v6
	v_mov_b32_e32 v3, 0
	scratch_store_dword off, v29, off offset:160 ; 4-byte Folded Spill
	s_lshl_b32 s12, s2, 1
	v_lshlrev_b32_e32 v242, 1, v11
	s_lshl_b32 s13, s0, 1
	v_lshlrev_b32_e32 v245, 1, v14
	v_lshlrev_b32_e32 v246, 1, v0
	v_add_lshl_u32 v247, v0, s1, 1
	v_lshl_add_u64 v[140:141], v[8:9], 0, v[2:3]
	v_lshl_add_u64 v[142:143], v[4:5], 0, v[2:3]
	s_mov_b64 s[2:3], 0x80
	s_mov_b32 s14, 0xffff
	s_mov_b64 s[8:9], 0xc0
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v4, v3
	v_mov_b32_e32 v5, v3
	v_mov_b32_e32 v6, v3
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v8, v3
	v_mov_b32_e32 v9, v3
	v_mov_b32_e32 v10, v3
	v_mov_b32_e32 v11, v3
	v_mov_b32_e32 v12, v3
	v_mov_b32_e32 v13, v3
	v_mov_b32_e32 v14, v3
	v_mov_b32_e32 v15, v3
	v_mov_b32_e32 v16, v3
	v_mov_b32_e32 v17, v3
	v_mov_b32_e32 v18, v3
	v_mov_b32_e32 v19, v3
	v_mov_b32_e32 v20, v3
	v_mov_b32_e32 v21, v3
	v_mov_b32_e32 v22, v3
	v_mov_b32_e32 v23, v3
	v_mov_b32_e32 v24, v3
	v_mov_b32_e32 v25, v3
	v_mov_b32_e32 v26, v3
	v_mov_b32_e32 v27, v3
	v_mov_b32_e32 v28, v3
	v_mov_b32_e32 v29, v3
	v_mov_b32_e32 v30, v3
	v_mov_b32_e32 v31, v3
	v_mov_b32_e32 v32, v3
	v_mov_b32_e32 v33, v3
	v_mov_b32_e32 v34, v3
	v_mov_b32_e32 v35, v3
	v_mov_b32_e32 v36, v3
	v_mov_b32_e32 v37, v3
	v_mov_b32_e32 v38, v3
	v_mov_b32_e32 v39, v3
	v_mov_b32_e32 v40, v3
	v_mov_b32_e32 v41, v3
	v_mov_b32_e32 v42, v3
	v_mov_b32_e32 v43, v3
	v_mov_b32_e32 v44, v3
	v_mov_b32_e32 v45, v3
	v_mov_b32_e32 v46, v3
	v_mov_b32_e32 v47, v3
	v_mov_b32_e32 v48, v3
	v_mov_b32_e32 v49, v3
	v_mov_b32_e32 v50, v3
	v_mov_b32_e32 v51, v3
	v_mov_b32_e32 v52, v3
	v_mov_b32_e32 v53, v3
	v_mov_b32_e32 v54, v3
	v_mov_b32_e32 v55, v3
	v_mov_b32_e32 v56, v3
	v_mov_b32_e32 v57, v3
	v_mov_b32_e32 v58, v3
	v_mov_b32_e32 v59, v3
	v_mov_b32_e32 v60, v3
	v_mov_b32_e32 v61, v3
	v_mov_b32_e32 v62, v3
	v_mov_b32_e32 v63, v3
	v_mov_b32_e32 v64, v3
	v_mov_b32_e32 v65, v3
	v_mov_b32_e32 v66, v3
	v_mov_b32_e32 v67, v3
	v_mov_b32_e32 v68, v3
	v_mov_b32_e32 v69, v3
	v_mov_b32_e32 v70, v3
	v_mov_b32_e32 v71, v3
	v_mov_b32_e32 v72, v3
	v_mov_b32_e32 v73, v3
	v_mov_b32_e32 v74, v3
	v_mov_b32_e32 v75, v3
	v_mov_b32_e32 v76, v3
	v_mov_b32_e32 v77, v3
	v_mov_b32_e32 v78, v3
	v_mov_b32_e32 v79, v3
	v_mov_b32_e32 v80, v3
	v_mov_b32_e32 v81, v3
	v_mov_b32_e32 v82, v3
	v_mov_b32_e32 v83, v3
	v_mov_b32_e32 v84, v3
	v_mov_b32_e32 v85, v3
	v_mov_b32_e32 v86, v3
	v_mov_b32_e32 v87, v3
	v_mov_b32_e32 v88, v3
	v_mov_b32_e32 v89, v3
	v_mov_b32_e32 v90, v3
	v_mov_b32_e32 v91, v3
	v_mov_b32_e32 v92, v3
	v_mov_b32_e32 v93, v3
	v_mov_b32_e32 v94, v3
	v_mov_b32_e32 v95, v3
	v_mov_b32_e32 v96, v3
	v_mov_b32_e32 v97, v3
	v_mov_b32_e32 v98, v3
	v_mov_b32_e32 v99, v3
	v_mov_b32_e32 v100, v3
	v_mov_b32_e32 v101, v3
	v_mov_b32_e32 v102, v3
	v_mov_b32_e32 v103, v3
	v_mov_b32_e32 v104, v3
	v_mov_b32_e32 v105, v3
	v_mov_b32_e32 v106, v3
	v_mov_b32_e32 v107, v3
	v_mov_b32_e32 v108, v3
	v_mov_b32_e32 v109, v3
	v_mov_b32_e32 v110, v3
	v_mov_b32_e32 v111, v3
	v_mov_b32_e32 v112, v3
	v_mov_b32_e32 v113, v3
	v_mov_b32_e32 v114, v3
	v_mov_b32_e32 v115, v3
	v_mov_b32_e32 v116, v3
	v_mov_b32_e32 v117, v3
	v_mov_b32_e32 v118, v3
	v_mov_b32_e32 v119, v3
	v_mov_b32_e32 v120, v3
	v_mov_b32_e32 v121, v3
	v_mov_b32_e32 v122, v3
	v_mov_b32_e32 v123, v3
	v_mov_b32_e32 v124, v3
	v_mov_b32_e32 v125, v3
	v_mov_b32_e32 v126, v3
	v_mov_b32_e32 v127, v3
	v_mov_b32_e32 v128, v3
	v_mov_b32_e32 v129, v3
	v_mov_b32_e32 v145, 0x20000
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_16 Depth 2
                                        ;     Child Loop BB0_18 Depth 2
                                        ;     Child Loop BB0_20 Depth 2
                                        ;     Child Loop BB0_22 Depth 2
                                        ;     Child Loop BB0_24 Depth 2
                                        ;     Child Loop BB0_26 Depth 2
                                        ;     Child Loop BB0_28 Depth 2
                                        ;     Child Loop BB0_30 Depth 2
                                        ;     Child Loop BB0_32 Depth 2
                                        ;     Child Loop BB0_34 Depth 2
	v_lshl_add_u64 v[162:163], v[140:141], 0, s[24:25]
	v_lshl_add_u64 v[130:131], v[162:163], 0, s[2:3]
	v_mov_b32_e32 v144, s12
	s_mov_b64 s[10:11], exec
.LBB0_4:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[146:147], v212, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_4
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_mov_b64 s[10:11], exec
.LBB0_6:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[148:149], v242, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_mov_b64 s[10:11], exec
.LBB0_8:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[150:151], v243, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_mov_b64 s[10:11], exec
.LBB0_10:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[152:153], v244, s[4:7], 0 offen
                                        ; implicit-def: $vgpr130_vgpr131_vgpr132_vgpr133
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	v_lshl_add_u64 v[170:171], v[142:143], 0, s[24:25]
	v_lshl_add_u64 v[130:131], v[170:171], 0, s[2:3]
	v_mov_b32_e32 v144, s13
	s_mov_b64 s[10:11], exec
.LBB0_12:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[154:155], v214, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_mov_b64 s[10:11], exec
.LBB0_14:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[156:157], v245, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_mov_b64 s[10:11], exec
.LBB0_16:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[158:159], v246, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_mov_b64 s[10:11], exec
.LBB0_18:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[160:161], v247, s[4:7], 0 offen
                                        ; implicit-def: $vgpr130_vgpr131_vgpr132_vgpr133
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[130:131], v213

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[132:133], v215

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[164:165], v216

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[166:167], v217

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[168:169], v218

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[172:173], v219

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[174:175], v220

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[176:177], v221

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[248:249], v222
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[250:251], v223
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[252:253], v224
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	s_nop 0
	v_bfi_b32 v130, s14, v130, v130
	;;#ASMSTART
	ds_read_b64 v[254:255], v225
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	v_bfi_b32 v132, s14, v132, v132
	v_bfi_b32 v164, s14, v164, v164
	v_bfi_b32 v166, s14, v166, v166
	v_bfi_b32 v168, s14, v168, v168
	v_bfi_b32 v172, s14, v172, v172
	v_bfi_b32 v174, s14, v174, v174
	v_bfi_b32 v176, s14, v176, v176
	v_bfi_b32 v248, s14, v248, v248
	v_bfi_b32 v250, s14, v250, v250
	v_bfi_b32 v252, s14, v252, v252
	v_bfi_b32 v254, s14, v254, v254
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[168:169], v[130:131], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[168:169], v[132:133], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[168:169], v[164:165], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[168:169], v[166:167], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[172:173], v[130:131], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[172:173], v[132:133], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[172:173], v[164:165], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[172:173], v[166:167], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[174:175], v[130:131], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[174:175], v[132:133], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[174:175], v[164:165], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[174:175], v[166:167], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[176:177], v[130:131], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[176:177], v[132:133], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[176:177], v[164:165], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[176:177], v[166:167], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[248:249], v[130:131], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[248:249], v[132:133], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[248:249], v[164:165], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[248:249], v[166:167], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[250:251], v[130:131], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[250:251], v[132:133], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[250:251], v[164:165], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[250:251], v[166:167], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[252:253], v[130:131], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[252:253], v[132:133], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[252:253], v[164:165], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[252:253], v[166:167], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[254:255], v[130:131], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[254:255], v[132:133], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[254:255], v[164:165], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[254:255], v[166:167], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	v_lshl_add_u64 v[130:131], v[162:163], 0, s[8:9]
	v_mov_b32_e32 v144, s12
	s_mov_b64 s[10:11], exec
.LBB0_20:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[162:163], v212, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_bfi_b32 v162, s14, v162, v162
	s_mov_b64 s[10:11], exec
.LBB0_22:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[164:165], v242, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_bfi_b32 v164, s14, v164, v164
	s_mov_b64 s[10:11], exec
.LBB0_24:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[166:167], v243, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_bfi_b32 v166, s14, v166, v166
	s_mov_b64 s[10:11], exec
.LBB0_26:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[168:169], v244, s[4:7], 0 offen
                                        ; implicit-def: $vgpr130_vgpr131_vgpr132_vgpr133
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_bfi_b32 v168, s14, v168, v168
	v_lshl_add_u64 v[130:131], v[170:171], 0, s[8:9]
	v_mov_b32_e32 v144, s13
	s_mov_b64 s[10:11], exec
.LBB0_28:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[170:171], v214, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_bfi_b32 v170, s14, v170, v170
	s_mov_b64 s[10:11], exec
.LBB0_30:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[172:173], v245, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_bfi_b32 v172, s14, v172, v172
	s_mov_b64 s[10:11], exec
.LBB0_32:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[174:175], v246, s[4:7], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_bfi_b32 v174, s14, v174, v174
	s_mov_b64 s[10:11], exec
.LBB0_34:                               ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s4, v130
	v_readfirstlane_b32 s5, v131
	v_readfirstlane_b32 s6, v144
	v_readfirstlane_b32 s7, v145
	v_cmp_eq_u64_e32 vcc, s[4:5], v[130:131]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[6:7], v[144:145]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx2 v[176:177], v247, s[4:7], 0 offen
                                        ; implicit-def: $vgpr130_vgpr131_vgpr132_vgpr133
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ;   in Loop: Header=BB0_3 Depth=1
	s_mov_b64 exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_bfi_b32 v176, s14, v176, v176
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[130:131], v211

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[132:133], v210

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[248:249], v209

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[250:251], v208

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[252:253], v207

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[254:255], v206

	;;#ASMEND
	scratch_load_dword v0, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[134:135], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[136:137], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[138:139], v0
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	scratch_load_dword v0, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[0:1], v0
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	scratch_load_dword v144, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[178:179], v144
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	scratch_load_dword v144, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[180:181], v144
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	v_bfi_b32 v130, s14, v130, v130
	v_bfi_b32 v132, s14, v132, v132
	v_bfi_b32 v248, s14, v248, v248
	v_bfi_b32 v250, s14, v250, v250
	v_bfi_b32 v252, s14, v252, v252
	v_bfi_b32 v254, s14, v254, v254
	v_bfi_b32 v134, s14, v134, v134
	v_bfi_b32 v136, s14, v136, v136
	v_bfi_b32 v138, s14, v138, v138
	v_bfi_b32 v0, s14, v0, v0
	v_bfi_b32 v178, s14, v178, v178
	v_bfi_b32 v180, s14, v180, v180
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[252:253], v[130:131], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[252:253], v[132:133], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[252:253], v[248:249], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[252:253], v[250:251], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[254:255], v[130:131], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[254:255], v[132:133], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[254:255], v[248:249], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[254:255], v[250:251], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[134:135], v[130:131], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[134:135], v[132:133], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[134:135], v[248:249], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[134:135], v[250:251], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[136:137], v[130:131], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[136:137], v[132:133], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[136:137], v[248:249], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[136:137], v[250:251], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[138:139], v[130:131], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[138:139], v[132:133], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[138:139], v[248:249], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[138:139], v[250:251], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[0:1], v[130:131], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[0:1], v[132:133], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[0:1], v[248:249], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[0:1], v[250:251], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[178:179], v[130:131], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[178:179], v[132:133], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[178:179], v[248:249], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[178:179], v[250:251], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[180:181], v[130:131], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[180:181], v[132:133], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[180:181], v[248:249], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[180:181], v[250:251], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	scratch_load_dword v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[0:1], v0

	;;#ASMEND
	scratch_load_dword v130, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[130:131], v130

	;;#ASMEND
	scratch_load_dword v132, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[132:133], v132

	;;#ASMEND
	scratch_load_dword v134, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[134:135], v134

	;;#ASMEND
	scratch_load_dword v136, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[136:137], v136

	;;#ASMEND
	scratch_load_dword v138, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[138:139], v138

	;;#ASMEND
	scratch_load_dword v144, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[178:179], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[180:181], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[248:249], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[250:251], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[252:253], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[254:255], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[182:183], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[184:185], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[186:187], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[188:189], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[190:191], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[192:193], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[194:195], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[196:197], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[198:199], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[200:201], v144

	;;#ASMEND
	scratch_load_dword v144, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[202:203], v144

	;;#ASMEND
	scratch_load_dword v144, off, off       ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[204:205], v144

	;;#ASMEND
	v_bfi_b32 v0, s14, v0, v0
	v_bfi_b32 v130, s14, v130, v130
	v_bfi_b32 v132, s14, v132, v132
	v_bfi_b32 v134, s14, v134, v134
	v_bfi_b32 v136, s14, v136, v136
	v_bfi_b32 v138, s14, v138, v138
	v_bfi_b32 v178, s14, v178, v178
	v_bfi_b32 v180, s14, v180, v180
	v_bfi_b32 v248, s14, v248, v248
	v_bfi_b32 v250, s14, v250, v250
	v_bfi_b32 v252, s14, v252, v252
	v_bfi_b32 v254, s14, v254, v254
	v_bfi_b32 v182, s14, v182, v182
	v_bfi_b32 v184, s14, v184, v184
	v_bfi_b32 v186, s14, v186, v186
	v_bfi_b32 v188, s14, v188, v188
	v_bfi_b32 v190, s14, v190, v190
	v_bfi_b32 v192, s14, v192, v192
	v_bfi_b32 v194, s14, v194, v194
	v_bfi_b32 v196, s14, v196, v196
	v_bfi_b32 v198, s14, v198, v198
	v_bfi_b32 v200, s14, v200, v200
	v_bfi_b32 v202, s14, v202, v202
	v_bfi_b32 v204, s14, v204, v204
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[136:137], v[0:1], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[136:137], v[130:131], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[136:137], v[132:133], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[136:137], v[134:135], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[138:139], v[0:1], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[138:139], v[130:131], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[138:139], v[132:133], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[138:139], v[134:135], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[178:179], v[0:1], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[178:179], v[130:131], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[178:179], v[132:133], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[178:179], v[134:135], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[180:181], v[0:1], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[180:181], v[130:131], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[180:181], v[132:133], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[180:181], v[134:135], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[248:249], v[0:1], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[248:249], v[130:131], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[248:249], v[132:133], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[248:249], v[134:135], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[250:251], v[0:1], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[250:251], v[130:131], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[250:251], v[132:133], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[250:251], v[134:135], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[252:253], v[0:1], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[252:253], v[130:131], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[252:253], v[132:133], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[252:253], v[134:135], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[254:255], v[0:1], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[254:255], v[130:131], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[254:255], v[132:133], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[254:255], v[134:135], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v226, v[146:147]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v227, v[148:149]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v228, v[150:151]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v229, v[152:153]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v230, v[154:155]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v231, v[156:157]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v232, v[158:159]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v233, v[160:161]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v234, v[162:163]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v235, v[164:165]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v236, v[166:167]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v237, v[168:169]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v238, v[170:171]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v239, v[172:173]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v240, v[174:175]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v241, v[176:177]

	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[190:191], v[182:183], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[190:191], v[184:185], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[190:191], v[186:187], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[190:191], v[188:189], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[192:193], v[182:183], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[192:193], v[184:185], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[192:193], v[186:187], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[192:193], v[188:189], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[194:195], v[182:183], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[194:195], v[184:185], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[194:195], v[186:187], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[194:195], v[188:189], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[196:197], v[182:183], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[196:197], v[184:185], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[196:197], v[186:187], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[196:197], v[188:189], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[198:199], v[182:183], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[198:199], v[184:185], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[198:199], v[186:187], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[198:199], v[188:189], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[200:201], v[182:183], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[200:201], v[184:185], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[200:201], v[186:187], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[200:201], v[188:189], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[202:203], v[182:183], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[202:203], v[184:185], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[202:203], v[186:187], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[202:203], v[188:189], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[204:205], v[182:183], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[204:205], v[184:185], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[204:205], v[186:187], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[204:205], v[188:189], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_add_u32 s24, s24, 0x80
	s_addc_u32 s25, s25, 0
	s_cmpk_eq_i32 s24, 0x3f80
	s_cbranch_scc0 .LBB0_3
; %bb.36:
	scratch_load_dword v0, off, off offset:160 ; 4-byte Folded Reload
	s_movk_i32 s0, 0x100
	s_waitcnt vmcnt(0)
	v_cmp_gt_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_38
; %bb.37:
	s_barrier
.LBB0_38:
	s_or_b64 exec, exec, s[0:1]
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[0:1], v213

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[130:131], v215

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[132:133], v216

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[134:135], v217

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[136:137], v218

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[138:139], v219

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[140:141], v220

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[142:143], v221

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[144:145], v222
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[146:147], v223
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[148:149], v224
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	s_mov_b32 s0, 0xffff
	;;#ASMSTART
	ds_read_b64 v[150:151], v225
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	v_bfi_b32 v0, s0, v0, v0
	v_bfi_b32 v130, s0, v130, v130
	v_bfi_b32 v148, s0, v148, v148
	v_bfi_b32 v150, s0, v150, v150
	v_bfi_b32 v132, s0, v132, v132
	v_bfi_b32 v134, s0, v134, v134
	v_bfi_b32 v136, s0, v136, v136
	v_bfi_b32 v138, s0, v138, v138
	v_bfi_b32 v140, s0, v140, v140
	v_bfi_b32 v142, s0, v142, v142
	v_bfi_b32 v144, s0, v144, v144
	v_bfi_b32 v146, s0, v146, v146
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[136:137], v[0:1], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[136:137], v[130:131], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[136:137], v[132:133], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[136:137], v[134:135], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[138:139], v[0:1], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[138:139], v[130:131], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[138:139], v[132:133], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[138:139], v[134:135], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[140:141], v[0:1], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[140:141], v[130:131], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[140:141], v[132:133], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[140:141], v[134:135], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[142:143], v[0:1], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[142:143], v[130:131], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[142:143], v[132:133], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[142:143], v[134:135], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[144:145], v[0:1], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[144:145], v[130:131], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[144:145], v[132:133], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[144:145], v[134:135], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[146:147], v[0:1], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[146:147], v[130:131], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[146:147], v[132:133], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[146:147], v[134:135], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[148:149], v[0:1], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[148:149], v[130:131], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[148:149], v[132:133], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[148:149], v[134:135], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[150:151], v[0:1], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[150:151], v[130:131], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[150:151], v[132:133], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[150:151], v[134:135], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[0:1], v211

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[130:131], v210

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[132:133], v209

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[134:135], v208

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[136:137], v207

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[138:139], v206

	;;#ASMEND
	scratch_load_dword v140, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[140:141], v140

	;;#ASMEND
	scratch_load_dword v142, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[142:143], v142

	;;#ASMEND
	scratch_load_dword v144, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[144:145], v144
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	scratch_load_dword v146, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[146:147], v146
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	scratch_load_dword v148, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[148:149], v148
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	scratch_load_dword v150, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[150:151], v150
s_waitcnt lgkmcnt(0)

	;;#ASMEND
	v_bfi_b32 v0, s0, v0, v0
	v_bfi_b32 v130, s0, v130, v130
	v_bfi_b32 v148, s0, v148, v148
	v_bfi_b32 v150, s0, v150, v150
	v_bfi_b32 v132, s0, v132, v132
	v_bfi_b32 v134, s0, v134, v134
	v_bfi_b32 v136, s0, v136, v136
	v_bfi_b32 v138, s0, v138, v138
	v_bfi_b32 v140, s0, v140, v140
	v_bfi_b32 v142, s0, v142, v142
	v_bfi_b32 v144, s0, v144, v144
	v_bfi_b32 v146, s0, v146, v146
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[136:137], v[0:1], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[136:137], v[130:131], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[136:137], v[132:133], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[136:137], v[134:135], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[138:139], v[0:1], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[138:139], v[130:131], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[138:139], v[132:133], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[138:139], v[134:135], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[140:141], v[0:1], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[140:141], v[130:131], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[140:141], v[132:133], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[140:141], v[134:135], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[142:143], v[0:1], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[142:143], v[130:131], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[142:143], v[132:133], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[142:143], v[134:135], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[144:145], v[0:1], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[144:145], v[130:131], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[144:145], v[132:133], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[144:145], v[134:135], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[146:147], v[0:1], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[146:147], v[130:131], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[146:147], v[132:133], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[146:147], v[134:135], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[228:231], v[148:149], v[0:1], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[148:149], v[134:135], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[244:247], v[150:151], v[0:1], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[0:3], v[150:151], v[134:135], v[2:5]
	v_mfma_f32_16x16x16_bf16 v[232:235], v[148:149], v[130:131], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[236:239], v[148:149], v[132:133], v[22:25]
	s_nop 4
	scratch_store_dwordx4 off, v[0:3], off offset:96 ; 16-byte Folded Spill
	v_mfma_f32_16x16x16_bf16 v[248:251], v[150:151], v[130:131], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[252:255], v[150:151], v[132:133], v[6:9]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	scratch_load_dword v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[0:1], v0

	;;#ASMEND
	scratch_load_dword v2, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[134:135], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[136:137], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[138:139], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[144:145], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[160:161], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[176:177], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[192:193], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[208:209], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[224:225], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[240:241], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[2:3], v2

	;;#ASMEND
	scratch_load_dword v4, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[4:5], v4

	;;#ASMEND
	scratch_load_dword v6, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[6:7], v6

	;;#ASMEND
	scratch_load_dword v8, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[8:9], v8

	;;#ASMEND
	scratch_load_dword v10, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[10:11], v10

	;;#ASMEND
	scratch_load_dword v12, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[12:13], v12

	;;#ASMEND
	scratch_load_dword v14, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[14:15], v14

	;;#ASMEND
	scratch_load_dword v16, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[16:17], v16

	;;#ASMEND
	scratch_load_dword v22, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[22:23], v22

	;;#ASMEND
	scratch_load_dword v24, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[24:25], v24

	;;#ASMEND
	scratch_load_dword v26, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[26:27], v26

	;;#ASMEND
	scratch_load_dword v28, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[28:29], v28

	;;#ASMEND
	scratch_load_dword v30, off, off        ; 4-byte Folded Reload
	v_bfi_b32 v0, s0, v0, v0
	v_bfi_b32 v2, s0, v2, v2
	v_bfi_b32 v4, s0, v4, v4
	v_bfi_b32 v6, s0, v6, v6
	v_bfi_b32 v12, s0, v12, v12
	v_bfi_b32 v14, s0, v14, v14
	v_bfi_b32 v16, s0, v16, v16
	v_bfi_b32 v22, s0, v22, v22
	v_bfi_b32 v24, s0, v24, v24
	v_bfi_b32 v26, s0, v26, v26
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[30:31], v30

	;;#ASMEND
	v_bfi_b32 v134, s0, v134, v134
	v_bfi_b32 v136, s0, v136, v136
	v_bfi_b32 v138, s0, v138, v138
	v_bfi_b32 v144, s0, v144, v144
	v_bfi_b32 v160, s0, v160, v160
	v_bfi_b32 v176, s0, v176, v176
	v_bfi_b32 v192, s0, v192, v192
	v_bfi_b32 v208, s0, v208, v208
	v_bfi_b32 v224, s0, v224, v224
	v_bfi_b32 v240, s0, v240, v240
	v_bfi_b32 v8, s0, v8, v8
	v_bfi_b32 v10, s0, v10, v10
	v_bfi_b32 v28, s0, v28, v28
	v_bfi_b32 v30, s0, v30, v30
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[228:231], v[240:241], v[0:1], v[228:231]
	v_mfma_f32_16x16x16_bf16 v[232:235], v[240:241], v[134:135], v[232:235]
	v_mfma_f32_16x16x16_bf16 v[236:239], v[240:241], v[136:137], v[236:239]
	v_mfma_f32_16x16x16_bf16 v[240:243], v[240:241], v[138:139], v[18:21]
	s_nop 2
	scratch_load_dwordx4 v[18:21], off, off offset:96 ; 16-byte Folded Reload
	v_mfma_f32_16x16x16_bf16 v[126:129], v[144:145], v[0:1], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[130:133], v[144:145], v[134:135], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[148:151], v[160:161], v[0:1], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[152:155], v[160:161], v[134:135], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[164:167], v[176:177], v[0:1], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[180:183], v[192:193], v[0:1], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[196:199], v[208:209], v[0:1], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[212:215], v[224:225], v[0:1], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[244:247], v[2:3], v[0:1], v[244:247]
	v_mfma_f32_16x16x16_bf16 v[248:251], v[2:3], v[134:135], v[248:251]
	v_mfma_f32_16x16x16_bf16 v[252:255], v[2:3], v[136:137], v[252:255]
	v_mfma_f32_16x16x16_bf16 v[140:143], v[144:145], v[136:137], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[144:147], v[144:145], v[138:139], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[156:159], v[160:161], v[136:137], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[160:163], v[160:161], v[138:139], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[168:171], v[176:177], v[134:135], v[90:93]
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x16_bf16 v[0:3], v[2:3], v[138:139], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[172:175], v[176:177], v[136:137], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[176:179], v[176:177], v[138:139], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[184:187], v[192:193], v[134:135], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[188:191], v[192:193], v[136:137], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[192:195], v[192:193], v[138:139], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[200:203], v[208:209], v[134:135], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[204:207], v[208:209], v[136:137], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[208:211], v[208:209], v[138:139], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[216:219], v[224:225], v[134:135], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[220:223], v[224:225], v[136:137], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[224:227], v[224:225], v[138:139], v[34:37]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[124:127], v[12:13], v[4:5], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[120:123], v[12:13], v[6:7], v[130:133]
	v_mfma_f32_16x16x16_bf16 v[116:119], v[12:13], v[8:9], v[140:143]
	v_mfma_f32_16x16x16_bf16 v[112:115], v[12:13], v[10:11], v[144:147]
	v_mfma_f32_16x16x16_bf16 v[108:111], v[14:15], v[4:5], v[148:151]
	v_mfma_f32_16x16x16_bf16 v[104:107], v[14:15], v[6:7], v[152:155]
	v_mfma_f32_16x16x16_bf16 v[100:103], v[14:15], v[8:9], v[156:159]
	v_mfma_f32_16x16x16_bf16 v[96:99], v[14:15], v[10:11], v[160:163]
	v_mfma_f32_16x16x16_bf16 v[92:95], v[16:17], v[4:5], v[164:167]
	v_mfma_f32_16x16x16_bf16 v[88:91], v[16:17], v[6:7], v[168:171]
	v_mfma_f32_16x16x16_bf16 v[84:87], v[16:17], v[8:9], v[172:175]
	v_mfma_f32_16x16x16_bf16 v[80:83], v[16:17], v[10:11], v[176:179]
	v_mfma_f32_16x16x16_bf16 v[76:79], v[22:23], v[4:5], v[180:183]
	v_mfma_f32_16x16x16_bf16 v[72:75], v[22:23], v[6:7], v[184:187]
	v_mfma_f32_16x16x16_bf16 v[68:71], v[22:23], v[8:9], v[188:191]
	v_mfma_f32_16x16x16_bf16 v[64:67], v[22:23], v[10:11], v[192:195]
	v_mfma_f32_16x16x16_bf16 v[60:63], v[24:25], v[4:5], v[196:199]
	v_mfma_f32_16x16x16_bf16 v[56:59], v[24:25], v[6:7], v[200:203]
	v_mfma_f32_16x16x16_bf16 v[52:55], v[24:25], v[8:9], v[204:207]
	v_mfma_f32_16x16x16_bf16 v[48:51], v[24:25], v[10:11], v[208:211]
	v_mfma_f32_16x16x16_bf16 v[44:47], v[26:27], v[4:5], v[212:215]
	v_mfma_f32_16x16x16_bf16 v[40:43], v[26:27], v[6:7], v[216:219]
	v_mfma_f32_16x16x16_bf16 v[36:39], v[26:27], v[8:9], v[220:223]
	v_mfma_f32_16x16x16_bf16 v[32:35], v[26:27], v[10:11], v[224:227]
	v_mfma_f32_16x16x16_bf16 v[152:155], v[28:29], v[4:5], v[228:231]
	v_mfma_f32_16x16x16_bf16 v[24:27], v[28:29], v[6:7], v[232:235]
	v_mfma_f32_16x16x16_bf16 v[20:23], v[28:29], v[8:9], v[236:239]
	v_mfma_f32_16x16x16_bf16 v[16:19], v[28:29], v[10:11], v[240:243]
	v_mfma_f32_16x16x16_bf16 v[12:15], v[30:31], v[4:5], v[244:247]
	v_mfma_f32_16x16x16_bf16 v[148:151], v[30:31], v[6:7], v[248:251]
	v_mfma_f32_16x16x16_bf16 v[4:7], v[30:31], v[8:9], v[252:255]
	v_mfma_f32_16x16x16_bf16 v[0:3], v[30:31], v[10:11], v[0:3]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v124
	v_cmp_ne_u32_e32 vcc, s0, v8
                                        ; implicit-def: $vgpr130
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.39:
	v_bfe_u32 v8, v124, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v130, v124, v8, s2
; %bb.40:                               ; %Flow4982
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.41:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v124
	v_cmp_eq_u32_sdwa vcc, v124, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v130, v9, v124, vcc
; %bb.42:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.i.i
	s_or_b64 exec, exec, s[0:1]
	scratch_load_dword v8, off, off offset:156 ; 4-byte Folded Reload
	s_mul_i32 s2, s22, s15
                                        ; implicit-def: $vgpr124
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v137, s17, v8
	v_mul_lo_u32 v10, s23, v137
	v_mad_u64_u32 v[8:9], s[0:1], s22, v137, 0
	v_add3_u32 v9, v9, s2, v10
	scratch_load_dwordx2 v[10:11], off, off offset:140 ; 8-byte Folded Reload
	v_lshl_add_u64 v[8:9], v[8:9], 1, s[20:21]
	s_waitcnt vmcnt(0)
	v_lshl_add_u64 v[140:141], v[10:11], 1, v[8:9]
	scratch_load_dwordx2 v[10:11], off, off offset:148 ; 8-byte Folded Reload
	scratch_load_dwordx2 v[8:9], off, off offset:132 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[128:129], s[0:1], v8, s22, v[10:11]
	v_ashrrev_i32_e32 v129, 31, v128
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v125
	v_lshl_add_u64 v[142:143], v[128:129], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[142:143], v130, off
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.43:
	v_bfe_u32 v8, v125, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v124, v125, v8, s2
; %bb.44:                               ; %Flow4981
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.45:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v125
	v_cmp_eq_u32_sdwa vcc, v125, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v124, v9, v125, vcc
; %bb.46:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v130, s22, v128
	v_ashrrev_i32_e32 v131, 31, v130
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v126
	v_lshl_add_u64 v[144:145], v[130:131], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[144:145], v124, off
                                        ; implicit-def: $vgpr124
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.47:
	v_bfe_u32 v8, v126, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v124, v126, v8, s2
; %bb.48:                               ; %Flow4980
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.49:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v126
	v_cmp_eq_u32_sdwa vcc, v126, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v124, v9, v126, vcc
; %bb.50:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v132, s22, v130
	v_ashrrev_i32_e32 v133, 31, v132
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v127
	v_lshl_add_u64 v[146:147], v[132:133], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[146:147], v124, off
                                        ; implicit-def: $vgpr139
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.51:
	v_bfe_u32 v8, v127, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v139, v127, v8, s2
                                        ; implicit-def: $vgpr124_vgpr125_vgpr126_vgpr127
; %bb.52:                               ; %Flow4979
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.53:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v127
	v_cmp_eq_u32_sdwa vcc, v127, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v139, v9, v127, vcc
; %bb.54:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v124, s22, v132
	v_ashrrev_i32_e32 v125, 31, v124
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v120
	v_lshl_add_u64 v[126:127], v[124:125], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[126:127], v139, off
                                        ; implicit-def: $vgpr139
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.55:
	v_bfe_u32 v8, v120, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v139, v120, v8, s2
; %bb.56:                               ; %Flow4978
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.57:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v120
	v_cmp_eq_u32_sdwa vcc, v120, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v139, v9, v120, vcc
; %bb.58:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v121
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[142:143], v139, off offset:32
                                        ; implicit-def: $vgpr120
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.59:
	v_bfe_u32 v8, v121, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v120, v121, v8, s2
; %bb.60:                               ; %Flow4977
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.61:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v121
	v_cmp_eq_u32_sdwa vcc, v121, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v120, v9, v121, vcc
; %bb.62:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v122
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[144:145], v120, off offset:32
                                        ; implicit-def: $vgpr120
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.63:
	v_bfe_u32 v8, v122, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v120, v122, v8, s2
; %bb.64:                               ; %Flow4976
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.65:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v122
	v_cmp_eq_u32_sdwa vcc, v122, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v120, v9, v122, vcc
; %bb.66:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v123
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[146:147], v120, off offset:32
                                        ; implicit-def: $vgpr139
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.67:
	v_bfe_u32 v8, v123, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v139, v123, v8, s2
                                        ; implicit-def: $vgpr120_vgpr121_vgpr122_vgpr123
; %bb.68:                               ; %Flow4975
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.69:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v123
	v_cmp_eq_u32_sdwa vcc, v123, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v139, v9, v123, vcc
; %bb.70:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v116
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[126:127], v139, off offset:32
                                        ; implicit-def: $vgpr120
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.71:
	v_bfe_u32 v8, v116, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v120, v116, v8, s2
; %bb.72:                               ; %Flow4974
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.73:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v116
	v_cmp_eq_u32_sdwa vcc, v116, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v120, v9, v116, vcc
; %bb.74:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v117
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[142:143], v120, off offset:64
                                        ; implicit-def: $vgpr116
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.75:
	v_bfe_u32 v8, v117, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v116, v117, v8, s2
; %bb.76:                               ; %Flow4973
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.77:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v117
	v_cmp_eq_u32_sdwa vcc, v117, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v116, v9, v117, vcc
; %bb.78:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v118
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[144:145], v116, off offset:64
                                        ; implicit-def: $vgpr116
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.79:
	v_bfe_u32 v8, v118, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v116, v118, v8, s2
; %bb.80:                               ; %Flow4972
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.81:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v118
	v_cmp_eq_u32_sdwa vcc, v118, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v116, v9, v118, vcc
; %bb.82:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v119
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[146:147], v116, off offset:64
                                        ; implicit-def: $vgpr120
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.83:
	v_bfe_u32 v8, v119, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v120, v119, v8, s2
                                        ; implicit-def: $vgpr116_vgpr117_vgpr118_vgpr119
; %bb.84:                               ; %Flow4971
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.85:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v119
	v_cmp_eq_u32_sdwa vcc, v119, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v120, v9, v119, vcc
; %bb.86:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v112
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[126:127], v120, off offset:64
                                        ; implicit-def: $vgpr116
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.87:
	v_bfe_u32 v8, v112, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v116, v112, v8, s2
; %bb.88:                               ; %Flow4970
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.89:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v112
	v_cmp_eq_u32_sdwa vcc, v112, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v116, v9, v112, vcc
; %bb.90:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v113
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[142:143], v116, off offset:96
                                        ; implicit-def: $vgpr112
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.91:
	v_bfe_u32 v8, v113, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v112, v113, v8, s2
; %bb.92:                               ; %Flow4969
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.93:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v113
	v_cmp_eq_u32_sdwa vcc, v113, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v112, v9, v113, vcc
; %bb.94:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v114
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[144:145], v112, off offset:96
                                        ; implicit-def: $vgpr112
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.95:
	v_bfe_u32 v8, v114, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v112, v114, v8, s2
; %bb.96:                               ; %Flow4968
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.97:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v114
	v_cmp_eq_u32_sdwa vcc, v114, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v112, v9, v114, vcc
; %bb.98:                               ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v115
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[146:147], v112, off offset:96
                                        ; implicit-def: $vgpr116
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.99:
	v_bfe_u32 v8, v115, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v116, v115, v8, s2
                                        ; implicit-def: $vgpr112_vgpr113_vgpr114_vgpr115
; %bb.100:                              ; %Flow4967
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.101:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v115
	v_cmp_eq_u32_sdwa vcc, v115, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v116, v9, v115, vcc
; %bb.102:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v108
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[126:127], v116, off offset:96
                                        ; implicit-def: $vgpr114
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.103:
	v_bfe_u32 v8, v108, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v114, v108, v8, s2
; %bb.104:                              ; %Flow4966
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.105:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v108
	v_cmp_eq_u32_sdwa vcc, v108, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v114, v9, v108, vcc
; %bb.106:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.190.i.i
	s_or_b64 exec, exec, s[0:1]
	scratch_load_dwordx2 v[8:9], off, off offset:132 ; 8-byte Folded Reload
                                        ; implicit-def: $vgpr108
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v8, 16, v8
	v_mad_u64_u32 v[112:113], s[0:1], v8, s22, v[10:11]
	v_ashrrev_i32_e32 v113, 31, v112
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v109
	v_lshl_add_u64 v[118:119], v[112:113], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[118:119], v114, off
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.107:
	v_bfe_u32 v8, v109, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v108, v109, v8, s2
; %bb.108:                              ; %Flow4965
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.109:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v109
	v_cmp_eq_u32_sdwa vcc, v109, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v108, v9, v109, vcc
; %bb.110:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.195.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v114, s22, v112
	v_ashrrev_i32_e32 v115, 31, v114
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v110
	v_lshl_add_u64 v[120:121], v[114:115], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[120:121], v108, off
                                        ; implicit-def: $vgpr108
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.111:
	v_bfe_u32 v8, v110, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v108, v110, v8, s2
; %bb.112:                              ; %Flow4964
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.113:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v110
	v_cmp_eq_u32_sdwa vcc, v110, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v108, v9, v110, vcc
; %bb.114:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1100.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v116, s22, v114
	v_ashrrev_i32_e32 v117, 31, v116
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v111
	v_lshl_add_u64 v[122:123], v[116:117], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[122:123], v108, off
                                        ; implicit-def: $vgpr126
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.115:
	v_bfe_u32 v8, v111, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v126, v111, v8, s2
                                        ; implicit-def: $vgpr108_vgpr109_vgpr110_vgpr111
; %bb.116:                              ; %Flow4963
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.117:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v111
	v_cmp_eq_u32_sdwa vcc, v111, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v126, v9, v111, vcc
; %bb.118:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1103.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v108, s22, v116
	v_ashrrev_i32_e32 v109, 31, v108
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v104
	v_lshl_add_u64 v[110:111], v[108:109], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[110:111], v126, off
                                        ; implicit-def: $vgpr126
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.119:
	v_bfe_u32 v8, v104, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v126, v104, v8, s2
; %bb.120:                              ; %Flow4962
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.121:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v104
	v_cmp_eq_u32_sdwa vcc, v104, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v126, v9, v104, vcc
; %bb.122:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.1.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v105
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[118:119], v126, off offset:32
                                        ; implicit-def: $vgpr104
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.123:
	v_bfe_u32 v8, v105, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v104, v105, v8, s2
; %bb.124:                              ; %Flow4961
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.125:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v105
	v_cmp_eq_u32_sdwa vcc, v105, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v104, v9, v105, vcc
; %bb.126:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.1.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v106
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[120:121], v104, off offset:32
                                        ; implicit-def: $vgpr104
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.127:
	v_bfe_u32 v8, v106, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v104, v106, v8, s2
; %bb.128:                              ; %Flow4960
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.129:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v106
	v_cmp_eq_u32_sdwa vcc, v106, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v104, v9, v106, vcc
; %bb.130:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v107
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[122:123], v104, off offset:32
                                        ; implicit-def: $vgpr126
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.131:
	v_bfe_u32 v8, v107, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v126, v107, v8, s2
                                        ; implicit-def: $vgpr104_vgpr105_vgpr106_vgpr107
; %bb.132:                              ; %Flow4959
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.133:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v107
	v_cmp_eq_u32_sdwa vcc, v107, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v126, v9, v107, vcc
; %bb.134:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v100
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[110:111], v126, off offset:32
                                        ; implicit-def: $vgpr104
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.135:
	v_bfe_u32 v8, v100, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v104, v100, v8, s2
; %bb.136:                              ; %Flow4958
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.137:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v100
	v_cmp_eq_u32_sdwa vcc, v100, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v104, v9, v100, vcc
; %bb.138:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v101
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[118:119], v104, off offset:64
                                        ; implicit-def: $vgpr100
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.139:
	v_bfe_u32 v8, v101, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v100, v101, v8, s2
; %bb.140:                              ; %Flow4957
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.141:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v101
	v_cmp_eq_u32_sdwa vcc, v101, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v100, v9, v101, vcc
; %bb.142:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v102
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[120:121], v100, off offset:64
                                        ; implicit-def: $vgpr100
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.143:
	v_bfe_u32 v8, v102, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v100, v102, v8, s2
; %bb.144:                              ; %Flow4956
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.145:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v102
	v_cmp_eq_u32_sdwa vcc, v102, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v100, v9, v102, vcc
; %bb.146:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v103
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[122:123], v100, off offset:64
                                        ; implicit-def: $vgpr104
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.147:
	v_bfe_u32 v8, v103, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v104, v103, v8, s2
                                        ; implicit-def: $vgpr100_vgpr101_vgpr102_vgpr103
; %bb.148:                              ; %Flow4955
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.149:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v103
	v_cmp_eq_u32_sdwa vcc, v103, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v104, v9, v103, vcc
; %bb.150:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v96
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[110:111], v104, off offset:64
                                        ; implicit-def: $vgpr100
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.151:
	v_bfe_u32 v8, v96, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v100, v96, v8, s2
; %bb.152:                              ; %Flow4954
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.153:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v96
	v_cmp_eq_u32_sdwa vcc, v96, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v100, v9, v96, vcc
; %bb.154:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v97
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[118:119], v100, off offset:96
                                        ; implicit-def: $vgpr96
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.155:
	v_bfe_u32 v8, v97, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v96, v97, v8, s2
; %bb.156:                              ; %Flow4953
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.157:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v97
	v_cmp_eq_u32_sdwa vcc, v97, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v96, v9, v97, vcc
; %bb.158:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v98
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[120:121], v96, off offset:96
                                        ; implicit-def: $vgpr96
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.159:
	v_bfe_u32 v8, v98, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v96, v98, v8, s2
; %bb.160:                              ; %Flow4952
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.161:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v98
	v_cmp_eq_u32_sdwa vcc, v98, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v96, v9, v98, vcc
; %bb.162:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v99
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[122:123], v96, off offset:96
                                        ; implicit-def: $vgpr100
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.163:
	v_bfe_u32 v8, v99, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v100, v99, v8, s2
                                        ; implicit-def: $vgpr96_vgpr97_vgpr98_vgpr99
; %bb.164:                              ; %Flow4951
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.165:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v99
	v_cmp_eq_u32_sdwa vcc, v99, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v100, v9, v99, vcc
; %bb.166:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.3.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v92
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[110:111], v100, off offset:96
                                        ; implicit-def: $vgpr98
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.167:
	v_bfe_u32 v8, v92, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v98, v92, v8, s2
; %bb.168:                              ; %Flow4950
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.169:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v92
	v_cmp_eq_u32_sdwa vcc, v92, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v98, v9, v92, vcc
; %bb.170:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2110.i.i
	s_or_b64 exec, exec, s[0:1]
	scratch_load_dwordx2 v[8:9], off, off offset:132 ; 8-byte Folded Reload
                                        ; implicit-def: $vgpr92
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v8, 32, v8
	v_mad_u64_u32 v[96:97], s[0:1], v8, s22, v[10:11]
	v_ashrrev_i32_e32 v97, 31, v96
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v93
	v_lshl_add_u64 v[102:103], v[96:97], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[102:103], v98, off
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.171:
	v_bfe_u32 v8, v93, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v92, v93, v8, s2
; %bb.172:                              ; %Flow4949
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.173:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v93
	v_cmp_eq_u32_sdwa vcc, v93, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v92, v9, v93, vcc
; %bb.174:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2115.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v98, s22, v96
	v_ashrrev_i32_e32 v99, 31, v98
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v94
	v_lshl_add_u64 v[104:105], v[98:99], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[104:105], v92, off
                                        ; implicit-def: $vgpr92
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.175:
	v_bfe_u32 v8, v94, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v92, v94, v8, s2
; %bb.176:                              ; %Flow4948
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.177:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v94
	v_cmp_eq_u32_sdwa vcc, v94, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v92, v9, v94, vcc
; %bb.178:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2120.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v100, s22, v98
	v_ashrrev_i32_e32 v101, 31, v100
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v95
	v_lshl_add_u64 v[106:107], v[100:101], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[106:107], v92, off
                                        ; implicit-def: $vgpr110
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.179:
	v_bfe_u32 v8, v95, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v110, v95, v8, s2
                                        ; implicit-def: $vgpr92_vgpr93_vgpr94_vgpr95
; %bb.180:                              ; %Flow4947
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.181:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v95
	v_cmp_eq_u32_sdwa vcc, v95, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v110, v9, v95, vcc
; %bb.182:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2123.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v92, s22, v100
	v_ashrrev_i32_e32 v93, 31, v92
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v88
	v_lshl_add_u64 v[94:95], v[92:93], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[94:95], v110, off
                                        ; implicit-def: $vgpr110
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.183:
	v_bfe_u32 v8, v88, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v110, v88, v8, s2
; %bb.184:                              ; %Flow4946
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.185:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v88
	v_cmp_eq_u32_sdwa vcc, v88, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v110, v9, v88, vcc
; %bb.186:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.1.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v89
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[102:103], v110, off offset:32
                                        ; implicit-def: $vgpr88
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.187:
	v_bfe_u32 v8, v89, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v88, v89, v8, s2
; %bb.188:                              ; %Flow4945
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.189:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v89
	v_cmp_eq_u32_sdwa vcc, v89, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v88, v9, v89, vcc
; %bb.190:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.1.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v90
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[104:105], v88, off offset:32
                                        ; implicit-def: $vgpr88
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.191:
	v_bfe_u32 v8, v90, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v88, v90, v8, s2
; %bb.192:                              ; %Flow4944
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.193:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v90
	v_cmp_eq_u32_sdwa vcc, v90, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v88, v9, v90, vcc
; %bb.194:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v91
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[106:107], v88, off offset:32
                                        ; implicit-def: $vgpr110
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.195:
	v_bfe_u32 v8, v91, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v110, v91, v8, s2
                                        ; implicit-def: $vgpr88_vgpr89_vgpr90_vgpr91
; %bb.196:                              ; %Flow4943
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.197:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v91
	v_cmp_eq_u32_sdwa vcc, v91, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v110, v9, v91, vcc
; %bb.198:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v84
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[94:95], v110, off offset:32
                                        ; implicit-def: $vgpr88
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.199:
	v_bfe_u32 v8, v84, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v88, v84, v8, s2
; %bb.200:                              ; %Flow4942
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.201:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v84
	v_cmp_eq_u32_sdwa vcc, v84, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v88, v9, v84, vcc
; %bb.202:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v85
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[102:103], v88, off offset:64
                                        ; implicit-def: $vgpr84
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.203:
	v_bfe_u32 v8, v85, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v84, v85, v8, s2
; %bb.204:                              ; %Flow4941
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.205:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v85
	v_cmp_eq_u32_sdwa vcc, v85, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v84, v9, v85, vcc
; %bb.206:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v86
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[104:105], v84, off offset:64
                                        ; implicit-def: $vgpr84
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.207:
	v_bfe_u32 v8, v86, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v84, v86, v8, s2
; %bb.208:                              ; %Flow4940
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.209:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v86
	v_cmp_eq_u32_sdwa vcc, v86, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v84, v9, v86, vcc
; %bb.210:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v87
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[106:107], v84, off offset:64
                                        ; implicit-def: $vgpr88
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.211:
	v_bfe_u32 v8, v87, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v88, v87, v8, s2
                                        ; implicit-def: $vgpr84_vgpr85_vgpr86_vgpr87
; %bb.212:                              ; %Flow4939
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.213:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v87
	v_cmp_eq_u32_sdwa vcc, v87, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v88, v9, v87, vcc
; %bb.214:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v80
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[94:95], v88, off offset:64
                                        ; implicit-def: $vgpr84
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.215:
	v_bfe_u32 v8, v80, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v84, v80, v8, s2
; %bb.216:                              ; %Flow4938
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.217:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v80
	v_cmp_eq_u32_sdwa vcc, v80, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v84, v9, v80, vcc
; %bb.218:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v81
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[102:103], v84, off offset:96
                                        ; implicit-def: $vgpr80
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.219:
	v_bfe_u32 v8, v81, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v80, v81, v8, s2
; %bb.220:                              ; %Flow4937
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.221:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v81
	v_cmp_eq_u32_sdwa vcc, v81, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v80, v9, v81, vcc
; %bb.222:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v82
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[104:105], v80, off offset:96
                                        ; implicit-def: $vgpr80
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.223:
	v_bfe_u32 v8, v82, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v80, v82, v8, s2
; %bb.224:                              ; %Flow4936
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.225:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v82
	v_cmp_eq_u32_sdwa vcc, v82, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v80, v9, v82, vcc
; %bb.226:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v83
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[106:107], v80, off offset:96
                                        ; implicit-def: $vgpr84
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.227:
	v_bfe_u32 v8, v83, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v84, v83, v8, s2
                                        ; implicit-def: $vgpr80_vgpr81_vgpr82_vgpr83
; %bb.228:                              ; %Flow4935
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.229:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v83
	v_cmp_eq_u32_sdwa vcc, v83, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v84, v9, v83, vcc
; %bb.230:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.3.2.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v76
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[94:95], v84, off offset:96
                                        ; implicit-def: $vgpr82
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.231:
	v_bfe_u32 v8, v76, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v82, v76, v8, s2
; %bb.232:                              ; %Flow4934
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.233:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v76
	v_cmp_eq_u32_sdwa vcc, v76, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v82, v9, v76, vcc
; %bb.234:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3130.i.i
	s_or_b64 exec, exec, s[0:1]
	scratch_load_dwordx2 v[8:9], off, off offset:132 ; 8-byte Folded Reload
                                        ; implicit-def: $vgpr76
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v8, 48, v8
	v_mad_u64_u32 v[80:81], s[0:1], v8, s22, v[10:11]
	v_ashrrev_i32_e32 v81, 31, v80
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v77
	v_lshl_add_u64 v[86:87], v[80:81], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[86:87], v82, off
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.235:
	v_bfe_u32 v8, v77, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v76, v77, v8, s2
; %bb.236:                              ; %Flow4933
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.237:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v77
	v_cmp_eq_u32_sdwa vcc, v77, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v76, v9, v77, vcc
; %bb.238:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3135.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v82, s22, v80
	v_ashrrev_i32_e32 v83, 31, v82
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v78
	v_lshl_add_u64 v[88:89], v[82:83], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[88:89], v76, off
                                        ; implicit-def: $vgpr76
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.239:
	v_bfe_u32 v8, v78, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v76, v78, v8, s2
; %bb.240:                              ; %Flow4932
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.241:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v78
	v_cmp_eq_u32_sdwa vcc, v78, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v76, v9, v78, vcc
; %bb.242:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3140.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v84, s22, v82
	v_ashrrev_i32_e32 v85, 31, v84
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v79
	v_lshl_add_u64 v[90:91], v[84:85], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[90:91], v76, off
                                        ; implicit-def: $vgpr94
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.243:
	v_bfe_u32 v8, v79, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v94, v79, v8, s2
                                        ; implicit-def: $vgpr76_vgpr77_vgpr78_vgpr79
; %bb.244:                              ; %Flow4931
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.245:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v79
	v_cmp_eq_u32_sdwa vcc, v79, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v94, v9, v79, vcc
; %bb.246:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.3143.i.i
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v76, s22, v84
	v_ashrrev_i32_e32 v77, 31, v76
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v72
	v_lshl_add_u64 v[78:79], v[76:77], 1, v[140:141]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[78:79], v94, off
                                        ; implicit-def: $vgpr94
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.247:
	v_bfe_u32 v8, v72, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v94, v72, v8, s2
; %bb.248:                              ; %Flow4930
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.249:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v72
	v_cmp_eq_u32_sdwa vcc, v72, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v94, v9, v72, vcc
; %bb.250:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.1.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v73
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[86:87], v94, off offset:32
                                        ; implicit-def: $vgpr72
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.251:
	v_bfe_u32 v8, v73, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v72, v73, v8, s2
; %bb.252:                              ; %Flow4929
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.253:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v73
	v_cmp_eq_u32_sdwa vcc, v73, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v72, v9, v73, vcc
; %bb.254:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.1.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v74
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[88:89], v72, off offset:32
                                        ; implicit-def: $vgpr72
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.255:
	v_bfe_u32 v8, v74, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v72, v74, v8, s2
; %bb.256:                              ; %Flow4928
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.257:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v74
	v_cmp_eq_u32_sdwa vcc, v74, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v72, v9, v74, vcc
; %bb.258:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v75
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[90:91], v72, off offset:32
                                        ; implicit-def: $vgpr94
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.259:
	v_bfe_u32 v8, v75, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v94, v75, v8, s2
                                        ; implicit-def: $vgpr72_vgpr73_vgpr74_vgpr75
; %bb.260:                              ; %Flow4927
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.261:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v75
	v_cmp_eq_u32_sdwa vcc, v75, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v94, v9, v75, vcc
; %bb.262:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v68
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[78:79], v94, off offset:32
                                        ; implicit-def: $vgpr72
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.263:
	v_bfe_u32 v8, v68, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v72, v68, v8, s2
; %bb.264:                              ; %Flow4926
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.265:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v68
	v_cmp_eq_u32_sdwa vcc, v68, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v72, v9, v68, vcc
; %bb.266:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v69
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[86:87], v72, off offset:64
                                        ; implicit-def: $vgpr68
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.267:
	v_bfe_u32 v8, v69, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v68, v69, v8, s2
; %bb.268:                              ; %Flow4925
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.269:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v69
	v_cmp_eq_u32_sdwa vcc, v69, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v68, v9, v69, vcc
; %bb.270:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v70
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[88:89], v68, off offset:64
                                        ; implicit-def: $vgpr68
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.271:
	v_bfe_u32 v8, v70, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v68, v70, v8, s2
; %bb.272:                              ; %Flow4924
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.273:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v70
	v_cmp_eq_u32_sdwa vcc, v70, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v68, v9, v70, vcc
; %bb.274:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v71
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[90:91], v68, off offset:64
                                        ; implicit-def: $vgpr72
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.275:
	v_bfe_u32 v8, v71, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v72, v71, v8, s2
                                        ; implicit-def: $vgpr68_vgpr69_vgpr70_vgpr71
; %bb.276:                              ; %Flow4923
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.277:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v71
	v_cmp_eq_u32_sdwa vcc, v71, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v72, v9, v71, vcc
; %bb.278:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v64
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[78:79], v72, off offset:64
                                        ; implicit-def: $vgpr68
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.279:
	v_bfe_u32 v8, v64, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v68, v64, v8, s2
; %bb.280:                              ; %Flow4922
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.281:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v64
	v_cmp_eq_u32_sdwa vcc, v64, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v68, v9, v64, vcc
; %bb.282:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v65
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[86:87], v68, off offset:96
                                        ; implicit-def: $vgpr64
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.283:
	v_bfe_u32 v8, v65, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v64, v65, v8, s2
; %bb.284:                              ; %Flow4921
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.285:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v65
	v_cmp_eq_u32_sdwa vcc, v65, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v64, v9, v65, vcc
; %bb.286:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v66
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[88:89], v64, off offset:96
                                        ; implicit-def: $vgpr64
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.287:
	v_bfe_u32 v8, v66, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v64, v66, v8, s2
; %bb.288:                              ; %Flow4920
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.289:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v66
	v_cmp_eq_u32_sdwa vcc, v66, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v64, v9, v66, vcc
; %bb.290:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3.3.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v67
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[90:91], v64, off offset:96
                                        ; implicit-def: $vgpr68
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.291:
	v_bfe_u32 v8, v67, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v68, v67, v8, s2
                                        ; implicit-def: $vgpr64_vgpr65_vgpr66_vgpr67
; %bb.292:                              ; %Flow4919
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.293:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v67
	v_cmp_eq_u32_sdwa vcc, v67, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v68, v9, v67, vcc
; %bb.294:                              ; %_ZN7kittensL5storeITkNS_5ducks2rt3allENS_2rtIfLi64ELi64ENS1_9rt_layout3colEEETkNS1_2gl3allENS_2glI14__hip_bfloat16Lin1ELin1ELin1ELin1EJEEETkNS1_5coord4tileENS_5coordIS6_EEEEvRKT0_RKT_RKT1_.exit
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v60
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[78:79], v68, off offset:96
                                        ; implicit-def: $vgpr68
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.295:
	v_bfe_u32 v8, v60, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v68, v60, v8, s2
; %bb.296:                              ; %Flow4918
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.297:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v60
	v_cmp_eq_u32_sdwa vcc, v60, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v68, v9, v60, vcc
; %bb.298:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.i.i2084
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v8, 0x80, v137
	v_ashrrev_i32_e32 v9, 31, v8
	v_mul_lo_u32 v10, s22, v9
	v_mul_lo_u32 v11, s23, v8
	v_mad_u64_u32 v[8:9], s[0:1], s22, v8, 0
	v_add3_u32 v9, v9, v10, v11
	scratch_load_dwordx2 v[10:11], off, off offset:140 ; 8-byte Folded Reload
	v_lshl_add_u64 v[8:9], v[8:9], 1, s[20:21]
	s_mov_b32 s0, 0x7f800000
                                        ; implicit-def: $vgpr60
	s_waitcnt vmcnt(0)
	v_lshl_add_u64 v[64:65], v[10:11], 1, v[8:9]
	v_and_b32_e32 v8, 0x7f800000, v61
	v_lshl_add_u64 v[66:67], v[128:129], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[66:67], v68, off
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.299:
	v_bfe_u32 v8, v61, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v60, v61, v8, s2
; %bb.300:                              ; %Flow4917
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.301:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v61
	v_cmp_eq_u32_sdwa vcc, v61, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v60, v9, v61, vcc
; %bb.302:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.i.i2088
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v62
	v_lshl_add_u64 v[68:69], v[130:131], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[68:69], v60, off
                                        ; implicit-def: $vgpr60
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.303:
	v_bfe_u32 v8, v62, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v60, v62, v8, s2
; %bb.304:                              ; %Flow4916
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.305:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v62
	v_cmp_eq_u32_sdwa vcc, v62, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v60, v9, v62, vcc
; %bb.306:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.i.i2092
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v63
	v_lshl_add_u64 v[70:71], v[132:133], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[70:71], v60, off
                                        ; implicit-def: $vgpr72
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.307:
	v_bfe_u32 v8, v63, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v72, v63, v8, s2
                                        ; implicit-def: $vgpr60_vgpr61_vgpr62_vgpr63
; %bb.308:                              ; %Flow4915
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.309:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v63
	v_cmp_eq_u32_sdwa vcc, v63, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v72, v9, v63, vcc
; %bb.310:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.i.i2096
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v56
	v_lshl_add_u64 v[60:61], v[124:125], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[60:61], v72, off
                                        ; implicit-def: $vgpr62
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.311:
	v_bfe_u32 v8, v56, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v62, v56, v8, s2
; %bb.312:                              ; %Flow4914
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.313:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v56
	v_cmp_eq_u32_sdwa vcc, v56, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v62, v9, v56, vcc
; %bb.314:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.1.i.i2100
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v57
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[66:67], v62, off offset:32
                                        ; implicit-def: $vgpr56
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.315:
	v_bfe_u32 v8, v57, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v56, v57, v8, s2
; %bb.316:                              ; %Flow4913
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.317:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v57
	v_cmp_eq_u32_sdwa vcc, v57, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v56, v9, v57, vcc
; %bb.318:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.1.i.i2104
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v58
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[68:69], v56, off offset:32
                                        ; implicit-def: $vgpr56
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.319:
	v_bfe_u32 v8, v58, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v56, v58, v8, s2
; %bb.320:                              ; %Flow4912
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.321:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v58
	v_cmp_eq_u32_sdwa vcc, v58, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v56, v9, v58, vcc
; %bb.322:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1.i.i2108
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v59
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[70:71], v56, off offset:32
                                        ; implicit-def: $vgpr62
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.323:
	v_bfe_u32 v8, v59, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v62, v59, v8, s2
                                        ; implicit-def: $vgpr56_vgpr57_vgpr58_vgpr59
; %bb.324:                              ; %Flow4911
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.325:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v59
	v_cmp_eq_u32_sdwa vcc, v59, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v62, v9, v59, vcc
; %bb.326:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1.i.i2112
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v52
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[60:61], v62, off offset:32
                                        ; implicit-def: $vgpr56
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.327:
	v_bfe_u32 v8, v52, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v56, v52, v8, s2
; %bb.328:                              ; %Flow4910
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.329:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v52
	v_cmp_eq_u32_sdwa vcc, v52, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v56, v9, v52, vcc
; %bb.330:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2.i.i2116
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v53
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[66:67], v56, off offset:64
                                        ; implicit-def: $vgpr52
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.331:
	v_bfe_u32 v8, v53, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v52, v53, v8, s2
; %bb.332:                              ; %Flow4909
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.333:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v53
	v_cmp_eq_u32_sdwa vcc, v53, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v52, v9, v53, vcc
; %bb.334:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2.i.i2120
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v54
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[68:69], v52, off offset:64
                                        ; implicit-def: $vgpr52
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.335:
	v_bfe_u32 v8, v54, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v52, v54, v8, s2
; %bb.336:                              ; %Flow4908
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.337:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v54
	v_cmp_eq_u32_sdwa vcc, v54, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v52, v9, v54, vcc
; %bb.338:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2.i.i2124
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v55
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[70:71], v52, off offset:64
                                        ; implicit-def: $vgpr56
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.339:
	v_bfe_u32 v8, v55, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v56, v55, v8, s2
                                        ; implicit-def: $vgpr52_vgpr53_vgpr54_vgpr55
; %bb.340:                              ; %Flow4907
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.341:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v55
	v_cmp_eq_u32_sdwa vcc, v55, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v56, v9, v55, vcc
; %bb.342:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2.i.i2128
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v48
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[60:61], v56, off offset:64
                                        ; implicit-def: $vgpr52
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.343:
	v_bfe_u32 v8, v48, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v52, v48, v8, s2
; %bb.344:                              ; %Flow4906
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.345:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v48
	v_cmp_eq_u32_sdwa vcc, v48, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v52, v9, v48, vcc
; %bb.346:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3.i.i2132
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v49
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[66:67], v52, off offset:96
                                        ; implicit-def: $vgpr48
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.347:
	v_bfe_u32 v8, v49, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v48, v49, v8, s2
; %bb.348:                              ; %Flow4905
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.349:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v49
	v_cmp_eq_u32_sdwa vcc, v49, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v48, v9, v49, vcc
; %bb.350:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3.i.i2136
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v50
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[68:69], v48, off offset:96
                                        ; implicit-def: $vgpr48
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.351:
	v_bfe_u32 v8, v50, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v48, v50, v8, s2
; %bb.352:                              ; %Flow4904
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.353:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v50
	v_cmp_eq_u32_sdwa vcc, v50, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v48, v9, v50, vcc
; %bb.354:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3.i.i2140
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v51
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[70:71], v48, off offset:96
                                        ; implicit-def: $vgpr52
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.355:
	v_bfe_u32 v8, v51, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v52, v51, v8, s2
                                        ; implicit-def: $vgpr48_vgpr49_vgpr50_vgpr51
; %bb.356:                              ; %Flow4903
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.357:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v51
	v_cmp_eq_u32_sdwa vcc, v51, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v52, v9, v51, vcc
; %bb.358:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.3.i.i2144
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v44
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[60:61], v52, off offset:96
                                        ; implicit-def: $vgpr50
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.359:
	v_bfe_u32 v8, v44, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v50, v44, v8, s2
; %bb.360:                              ; %Flow4902
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.361:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v44
	v_cmp_eq_u32_sdwa vcc, v44, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v50, v9, v44, vcc
; %bb.362:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.190.i.i2148
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v45
	v_lshl_add_u64 v[48:49], v[112:113], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[48:49], v50, off
                                        ; implicit-def: $vgpr44
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.363:
	v_bfe_u32 v8, v45, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v44, v45, v8, s2
; %bb.364:                              ; %Flow4901
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.365:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v45
	v_cmp_eq_u32_sdwa vcc, v45, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v44, v9, v45, vcc
; %bb.366:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.195.i.i2152
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v46
	v_lshl_add_u64 v[50:51], v[114:115], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[50:51], v44, off
                                        ; implicit-def: $vgpr44
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.367:
	v_bfe_u32 v8, v46, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v44, v46, v8, s2
; %bb.368:                              ; %Flow4900
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.369:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v46
	v_cmp_eq_u32_sdwa vcc, v46, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v44, v9, v46, vcc
; %bb.370:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1100.i.i2156
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v47
	v_lshl_add_u64 v[52:53], v[116:117], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[52:53], v44, off
                                        ; implicit-def: $vgpr54
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.371:
	v_bfe_u32 v8, v47, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v54, v47, v8, s2
                                        ; implicit-def: $vgpr44_vgpr45_vgpr46_vgpr47
; %bb.372:                              ; %Flow4899
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.373:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v47
	v_cmp_eq_u32_sdwa vcc, v47, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v54, v9, v47, vcc
; %bb.374:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1103.i.i2160
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v40
	v_lshl_add_u64 v[44:45], v[108:109], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[44:45], v54, off
                                        ; implicit-def: $vgpr46
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.375:
	v_bfe_u32 v8, v40, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v46, v40, v8, s2
; %bb.376:                              ; %Flow4898
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.377:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v40
	v_cmp_eq_u32_sdwa vcc, v40, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v46, v9, v40, vcc
; %bb.378:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.1.1.i.i2164
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v41
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[48:49], v46, off offset:32
                                        ; implicit-def: $vgpr40
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.379:
	v_bfe_u32 v8, v41, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v40, v41, v8, s2
; %bb.380:                              ; %Flow4897
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.381:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v41
	v_cmp_eq_u32_sdwa vcc, v41, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v40, v9, v41, vcc
; %bb.382:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.1.1.i.i2168
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v42
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[50:51], v40, off offset:32
                                        ; implicit-def: $vgpr40
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.383:
	v_bfe_u32 v8, v42, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v40, v42, v8, s2
; %bb.384:                              ; %Flow4896
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.385:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v42
	v_cmp_eq_u32_sdwa vcc, v42, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v40, v9, v42, vcc
; %bb.386:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1.1.i.i2172
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v43
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[52:53], v40, off offset:32
                                        ; implicit-def: $vgpr46
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.387:
	v_bfe_u32 v8, v43, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v46, v43, v8, s2
                                        ; implicit-def: $vgpr40_vgpr41_vgpr42_vgpr43
; %bb.388:                              ; %Flow4895
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.389:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v43
	v_cmp_eq_u32_sdwa vcc, v43, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v46, v9, v43, vcc
; %bb.390:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1.1.i.i2176
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v36
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[44:45], v46, off offset:32
                                        ; implicit-def: $vgpr40
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.391:
	v_bfe_u32 v8, v36, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v40, v36, v8, s2
; %bb.392:                              ; %Flow4894
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.393:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v36
	v_cmp_eq_u32_sdwa vcc, v36, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v40, v9, v36, vcc
; %bb.394:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2.1.i.i2180
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v37
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[48:49], v40, off offset:64
                                        ; implicit-def: $vgpr36
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.395:
	v_bfe_u32 v8, v37, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v36, v37, v8, s2
; %bb.396:                              ; %Flow4893
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.397:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v37
	v_cmp_eq_u32_sdwa vcc, v37, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v36, v9, v37, vcc
; %bb.398:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2.1.i.i2184
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v38
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[50:51], v36, off offset:64
                                        ; implicit-def: $vgpr36
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.399:
	v_bfe_u32 v8, v38, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v36, v38, v8, s2
; %bb.400:                              ; %Flow4892
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.401:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v38
	v_cmp_eq_u32_sdwa vcc, v38, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v36, v9, v38, vcc
; %bb.402:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2.1.i.i2188
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v39
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[52:53], v36, off offset:64
                                        ; implicit-def: $vgpr40
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.403:
	v_bfe_u32 v8, v39, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v40, v39, v8, s2
                                        ; implicit-def: $vgpr36_vgpr37_vgpr38_vgpr39
; %bb.404:                              ; %Flow4891
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.405:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v39
	v_cmp_eq_u32_sdwa vcc, v39, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v40, v9, v39, vcc
; %bb.406:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2.1.i.i2192
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v32
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[44:45], v40, off offset:64
                                        ; implicit-def: $vgpr36
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.407:
	v_bfe_u32 v8, v32, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v36, v32, v8, s2
; %bb.408:                              ; %Flow4890
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.409:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v32
	v_cmp_eq_u32_sdwa vcc, v32, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v36, v9, v32, vcc
; %bb.410:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3.1.i.i2196
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v33
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[48:49], v36, off offset:96
                                        ; implicit-def: $vgpr32
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.411:
	v_bfe_u32 v8, v33, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v32, v33, v8, s2
; %bb.412:                              ; %Flow4889
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.413:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v33
	v_cmp_eq_u32_sdwa vcc, v33, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v32, v9, v33, vcc
; %bb.414:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3.1.i.i2200
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v34
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[50:51], v32, off offset:96
                                        ; implicit-def: $vgpr32
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.415:
	v_bfe_u32 v8, v34, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v32, v34, v8, s2
; %bb.416:                              ; %Flow4888
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.417:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v34
	v_cmp_eq_u32_sdwa vcc, v34, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v32, v9, v34, vcc
; %bb.418:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3.1.i.i2204
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v35
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[52:53], v32, off offset:96
                                        ; implicit-def: $vgpr36
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.419:
	v_bfe_u32 v8, v35, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v36, v35, v8, s2
                                        ; implicit-def: $vgpr32_vgpr33_vgpr34_vgpr35
; %bb.420:                              ; %Flow4887
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.421:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v35
	v_cmp_eq_u32_sdwa vcc, v35, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v36, v9, v35, vcc
; %bb.422:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.3.1.i.i2208
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v152
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[44:45], v36, off offset:96
                                        ; implicit-def: $vgpr34
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.423:
	v_bfe_u32 v8, v152, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v34, v152, v8, s2
; %bb.424:                              ; %Flow4886
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.425:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v152
	v_cmp_eq_u32_sdwa vcc, v152, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v34, v9, v152, vcc
; %bb.426:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2110.i.i2212
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v153
	v_lshl_add_u64 v[32:33], v[96:97], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[32:33], v34, off
                                        ; implicit-def: $vgpr28
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.427:
	v_bfe_u32 v8, v153, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v28, v153, v8, s2
; %bb.428:                              ; %Flow4885
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.429:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v153
	v_cmp_eq_u32_sdwa vcc, v153, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v28, v9, v153, vcc
; %bb.430:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2115.i.i2216
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v154
	v_lshl_add_u64 v[34:35], v[98:99], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[34:35], v28, off
                                        ; implicit-def: $vgpr28
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.431:
	v_bfe_u32 v8, v154, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v28, v154, v8, s2
; %bb.432:                              ; %Flow4884
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.433:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v154
	v_cmp_eq_u32_sdwa vcc, v154, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v28, v9, v154, vcc
; %bb.434:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2120.i.i2220
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v155
	v_lshl_add_u64 v[36:37], v[100:101], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[36:37], v28, off
                                        ; implicit-def: $vgpr38
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.435:
	v_bfe_u32 v8, v155, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v38, v155, v8, s2
                                        ; implicit-def: $vgpr152_vgpr153_vgpr154_vgpr155
; %bb.436:                              ; %Flow4883
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.437:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v155
	v_cmp_eq_u32_sdwa vcc, v155, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v38, v9, v155, vcc
; %bb.438:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2123.i.i2224
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v24
	v_lshl_add_u64 v[28:29], v[92:93], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[28:29], v38, off
                                        ; implicit-def: $vgpr30
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.439:
	v_bfe_u32 v8, v24, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v30, v24, v8, s2
; %bb.440:                              ; %Flow4882
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.441:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v24
	v_cmp_eq_u32_sdwa vcc, v24, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v30, v9, v24, vcc
; %bb.442:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.1.2.i.i2228
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v25
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[32:33], v30, off offset:32
                                        ; implicit-def: $vgpr24
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.443:
	v_bfe_u32 v8, v25, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v24, v25, v8, s2
; %bb.444:                              ; %Flow4881
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.445:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v25
	v_cmp_eq_u32_sdwa vcc, v25, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v24, v9, v25, vcc
; %bb.446:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.1.2.i.i2232
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v26
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[34:35], v24, off offset:32
                                        ; implicit-def: $vgpr24
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.447:
	v_bfe_u32 v8, v26, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v24, v26, v8, s2
; %bb.448:                              ; %Flow4880
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.449:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v26
	v_cmp_eq_u32_sdwa vcc, v26, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v24, v9, v26, vcc
; %bb.450:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1.2.i.i2236
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v27
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[36:37], v24, off offset:32
                                        ; implicit-def: $vgpr30
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.451:
	v_bfe_u32 v8, v27, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v30, v27, v8, s2
                                        ; implicit-def: $vgpr24_vgpr25_vgpr26_vgpr27
; %bb.452:                              ; %Flow4879
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.453:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v27
	v_cmp_eq_u32_sdwa vcc, v27, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v30, v9, v27, vcc
; %bb.454:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1.2.i.i2240
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v20
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[28:29], v30, off offset:32
                                        ; implicit-def: $vgpr24
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.455:
	v_bfe_u32 v8, v20, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v24, v20, v8, s2
; %bb.456:                              ; %Flow4878
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.457:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v20
	v_cmp_eq_u32_sdwa vcc, v20, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v24, v9, v20, vcc
; %bb.458:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2.2.i.i2244
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v21
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[32:33], v24, off offset:64
                                        ; implicit-def: $vgpr20
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.459:
	v_bfe_u32 v8, v21, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v20, v21, v8, s2
; %bb.460:                              ; %Flow4877
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.461:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v21
	v_cmp_eq_u32_sdwa vcc, v21, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v20, v9, v21, vcc
; %bb.462:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2.2.i.i2248
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v22
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[34:35], v20, off offset:64
                                        ; implicit-def: $vgpr20
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.463:
	v_bfe_u32 v8, v22, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v20, v22, v8, s2
; %bb.464:                              ; %Flow4876
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.465:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v22
	v_cmp_eq_u32_sdwa vcc, v22, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v20, v9, v22, vcc
; %bb.466:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2.2.i.i2252
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v23
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[36:37], v20, off offset:64
                                        ; implicit-def: $vgpr24
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.467:
	v_bfe_u32 v8, v23, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v24, v23, v8, s2
                                        ; implicit-def: $vgpr20_vgpr21_vgpr22_vgpr23
; %bb.468:                              ; %Flow4875
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.469:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v23
	v_cmp_eq_u32_sdwa vcc, v23, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v24, v9, v23, vcc
; %bb.470:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2.2.i.i2256
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v16
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[28:29], v24, off offset:64
                                        ; implicit-def: $vgpr20
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.471:
	v_bfe_u32 v8, v16, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v20, v16, v8, s2
; %bb.472:                              ; %Flow4874
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.473:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v16
	v_cmp_eq_u32_sdwa vcc, v16, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v20, v9, v16, vcc
; %bb.474:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3.2.i.i2260
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v17
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[32:33], v20, off offset:96
                                        ; implicit-def: $vgpr16
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.475:
	v_bfe_u32 v8, v17, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v16, v17, v8, s2
; %bb.476:                              ; %Flow4873
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.477:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v17
	v_cmp_eq_u32_sdwa vcc, v17, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v16, v9, v17, vcc
; %bb.478:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3.2.i.i2264
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v18
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[34:35], v16, off offset:96
                                        ; implicit-def: $vgpr16
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.479:
	v_bfe_u32 v8, v18, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v16, v18, v8, s2
; %bb.480:                              ; %Flow4872
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.481:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v18
	v_cmp_eq_u32_sdwa vcc, v18, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v16, v9, v18, vcc
; %bb.482:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3.2.i.i2268
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v19
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[36:37], v16, off offset:96
                                        ; implicit-def: $vgpr20
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.483:
	v_bfe_u32 v8, v19, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v20, v19, v8, s2
                                        ; implicit-def: $vgpr16_vgpr17_vgpr18_vgpr19
; %bb.484:                              ; %Flow4871
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.485:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v19
	v_cmp_eq_u32_sdwa vcc, v19, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v20, v9, v19, vcc
; %bb.486:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.3.2.i.i2272
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v12
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[28:29], v20, off offset:96
                                        ; implicit-def: $vgpr18
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.487:
	v_bfe_u32 v8, v12, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v18, v12, v8, s2
; %bb.488:                              ; %Flow4870
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.489:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v12
	v_cmp_eq_u32_sdwa vcc, v12, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v18, v9, v12, vcc
; %bb.490:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3130.i.i2276
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v13
	v_lshl_add_u64 v[16:17], v[80:81], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[16:17], v18, off
                                        ; implicit-def: $vgpr12
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.491:
	v_bfe_u32 v8, v13, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v12, v13, v8, s2
; %bb.492:                              ; %Flow4869
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.493:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v13
	v_cmp_eq_u32_sdwa vcc, v13, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v12, v9, v13, vcc
; %bb.494:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3135.i.i2280
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v14
	v_lshl_add_u64 v[18:19], v[82:83], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[18:19], v12, off
                                        ; implicit-def: $vgpr12
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.495:
	v_bfe_u32 v8, v14, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v12, v14, v8, s2
; %bb.496:                              ; %Flow4868
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.497:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v14
	v_cmp_eq_u32_sdwa vcc, v14, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v12, v9, v14, vcc
; %bb.498:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3140.i.i2284
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v15
	v_lshl_add_u64 v[20:21], v[84:85], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[20:21], v12, off
                                        ; implicit-def: $vgpr22
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.499:
	v_bfe_u32 v8, v15, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v22, v15, v8, s2
                                        ; implicit-def: $vgpr12_vgpr13_vgpr14_vgpr15
; %bb.500:                              ; %Flow4867
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.501:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v15
	v_cmp_eq_u32_sdwa vcc, v15, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v22, v9, v15, vcc
; %bb.502:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.3143.i.i2288
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v148
	v_lshl_add_u64 v[12:13], v[76:77], 1, v[64:65]
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[12:13], v22, off
                                        ; implicit-def: $vgpr14
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.503:
	v_bfe_u32 v8, v148, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v14, v148, v8, s2
; %bb.504:                              ; %Flow4866
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.505:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v148
	v_cmp_eq_u32_sdwa vcc, v148, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v14, v9, v148, vcc
; %bb.506:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.1.3.i.i2292
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v149
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[16:17], v14, off offset:32
                                        ; implicit-def: $vgpr8
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.507:
	v_bfe_u32 v8, v149, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v8, v149, v8, s2
; %bb.508:                              ; %Flow4865
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.509:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v149
	v_cmp_eq_u32_sdwa vcc, v149, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v8, v9, v149, vcc
; %bb.510:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.1.3.i.i2296
	s_or_b64 exec, exec, s[0:1]
	global_store_short_d16_hi v[18:19], v8, off offset:32
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v150
	v_cmp_ne_u32_e32 vcc, s0, v8
                                        ; implicit-def: $vgpr8
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.511:
	v_bfe_u32 v8, v150, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v8, v150, v8, s2
; %bb.512:                              ; %Flow4864
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.513:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v150
	v_cmp_eq_u32_sdwa vcc, v150, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v8, v9, v150, vcc
; %bb.514:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.1.3.i.i2300
	s_or_b64 exec, exec, s[0:1]
	global_store_short_d16_hi v[20:21], v8, off offset:32
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v151
	v_cmp_ne_u32_e32 vcc, s0, v8
                                        ; implicit-def: $vgpr14
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.515:
	v_bfe_u32 v8, v151, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v14, v151, v8, s2
                                        ; implicit-def: $vgpr148_vgpr149_vgpr150_vgpr151
; %bb.516:                              ; %Flow4863
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.517:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v151
	v_cmp_eq_u32_sdwa vcc, v151, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v14, v9, v151, vcc
; %bb.518:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.1.3.i.i2304
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v4
	v_cmp_ne_u32_e32 vcc, s0, v8
	global_store_short_d16_hi v[12:13], v14, off offset:32
                                        ; implicit-def: $vgpr8
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.519:
	v_bfe_u32 v8, v4, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v8, v4, v8, s2
; %bb.520:                              ; %Flow4862
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.521:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, 0x10000, v4
	v_cmp_eq_u32_sdwa vcc, v4, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v8, v9, v4, vcc
; %bb.522:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.2.3.i.i2308
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v4, 0x7f800000, v5
	v_cmp_ne_u32_e32 vcc, s0, v4
	global_store_short_d16_hi v[16:17], v8, off offset:64
                                        ; implicit-def: $vgpr4
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.523:
	v_bfe_u32 v4, v5, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v4, v5, v4, s2
; %bb.524:                              ; %Flow4861
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.525:
	v_mov_b32_e32 v4, 0
	v_or_b32_e32 v8, 0x10000, v5
	v_cmp_eq_u32_sdwa vcc, v5, v4 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v4, v8, v5, vcc
; %bb.526:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.2.3.i.i2312
	s_or_b64 exec, exec, s[0:1]
	global_store_short_d16_hi v[18:19], v4, off offset:64
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v4, 0x7f800000, v6
	v_cmp_ne_u32_e32 vcc, s0, v4
                                        ; implicit-def: $vgpr4
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.527:
	v_bfe_u32 v4, v6, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v4, v6, v4, s2
; %bb.528:                              ; %Flow4860
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.529:
	v_mov_b32_e32 v4, 0
	v_or_b32_e32 v5, 0x10000, v6
	v_cmp_eq_u32_sdwa vcc, v6, v4 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v4, v5, v6, vcc
; %bb.530:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.2.3.i.i2316
	s_or_b64 exec, exec, s[0:1]
	global_store_short_d16_hi v[20:21], v4, off offset:64
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v4, 0x7f800000, v7
	v_cmp_ne_u32_e32 vcc, s0, v4
                                        ; implicit-def: $vgpr8
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.531:
	v_bfe_u32 v4, v7, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v8, v7, v4, s2
                                        ; implicit-def: $vgpr4_vgpr5_vgpr6_vgpr7
; %bb.532:                              ; %Flow4859
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.533:
	v_mov_b32_e32 v4, 0
	v_or_b32_e32 v5, 0x10000, v7
	v_cmp_eq_u32_sdwa vcc, v7, v4 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v8, v5, v7, vcc
; %bb.534:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit77.2.3.i.i2320
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v4, 0x7f800000, v0
	v_cmp_ne_u32_e32 vcc, s0, v4
	global_store_short_d16_hi v[12:13], v8, off offset:64
                                        ; implicit-def: $vgpr4
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.535:
	v_bfe_u32 v4, v0, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v4, v0, v4, s2
; %bb.536:                              ; %Flow4858
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.537:
	v_mov_b32_e32 v4, 0
	v_or_b32_e32 v5, 0x10000, v0
	v_cmp_eq_u32_sdwa vcc, v0, v4 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v4, v5, v0, vcc
; %bb.538:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit.3.3.i.i2324
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v0, 0x7f800000, v1
	v_cmp_ne_u32_e32 vcc, s0, v0
	global_store_short_d16_hi v[16:17], v4, off offset:96
                                        ; implicit-def: $vgpr0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.539:
	v_bfe_u32 v0, v1, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v0, v1, v0, s2
; %bb.540:                              ; %Flow4857
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.541:
	v_mov_b32_e32 v0, 0
	v_or_b32_e32 v4, 0x10000, v1
	v_cmp_eq_u32_sdwa vcc, v1, v0 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v0, v4, v1, vcc
; %bb.542:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit69.3.3.i.i2328
	s_or_b64 exec, exec, s[0:1]
	global_store_short_d16_hi v[18:19], v0, off offset:96
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v0, 0x7f800000, v2
	v_cmp_ne_u32_e32 vcc, s0, v0
                                        ; implicit-def: $vgpr0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.543:
	v_bfe_u32 v0, v2, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v0, v2, v0, s2
; %bb.544:                              ; %Flow4856
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.545:
	v_mov_b32_e32 v0, 0
	v_or_b32_e32 v1, 0x10000, v2
	v_cmp_eq_u32_sdwa vcc, v2, v0 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v0, v1, v2, vcc
; %bb.546:                              ; %_ZN7kittens10base_types9convertorI14__hip_bfloat16fE7convertERKf.exit73.3.3.i.i2332
	s_or_b64 exec, exec, s[0:1]
	global_store_short_d16_hi v[20:21], v0, off offset:96
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v0, 0x7f800000, v3
	v_cmp_ne_u32_e32 vcc, s0, v0
                                        ; implicit-def: $vgpr4
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
	s_cbranch_execnz .LBB0_549
; %bb.547:                              ; %Flow
	s_andn2_saveexec_b64 s[0:1], s[0:1]
	s_cbranch_execnz .LBB0_550
.LBB0_548:                              ; %_ZN7kittensL5storeITkNS_5ducks2rt3allENS_2rtIfLi64ELi64ENS1_9rt_layout3colEEETkNS1_2gl3allENS_2glI14__hip_bfloat16Lin1ELin1ELin1ELin1EJEEETkNS1_5coord4tileENS_5coordIS6_EEEEvRKT0_RKT_RKT1_.exit2401
	s_or_b64 exec, exec, s[0:1]
	global_store_short_d16_hi v[12:13], v4, off offset:96
	s_endpgm
.LBB0_549:
	v_bfe_u32 v0, v3, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v4, v3, v0, s2
                                        ; implicit-def: $vgpr0_vgpr1_vgpr2_vgpr3
	s_andn2_saveexec_b64 s[0:1], s[0:1]
	s_cbranch_execz .LBB0_548
.LBB0_550:
	v_mov_b32_e32 v0, 0
	v_or_b32_e32 v1, 0x10000, v3
	v_cmp_eq_u32_sdwa vcc, v3, v0 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v4, v1, v3, vcc
	s_or_b64 exec, exec, s[0:1]
	global_store_short_d16_hi v[12:13], v4, off offset:96
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z8micro_tk13micro_globals
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 168
		.amdhsa_kernarg_size 400
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 36
		.amdhsa_accum_offset 256
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_Z8micro_tk13micro_globals, .Lfunc_end0-_Z8micro_tk13micro_globals
                                        ; -- End function
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22336
; NumSgprs: 42
; NumVgprs: 256
; NumAgprs: 0
; TotalNumVgprs: 256
; ScratchSize: 168
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 256
; AccumOffset: 256
; Occupancy: 2
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 63
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.p2alignl 6, 3212836864
	.fill 256, 4, 3212836864
	.type	__hip_cuid_a387003902ba631b,@object ; @__hip_cuid_a387003902ba631b
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_a387003902ba631b
__hip_cuid_a387003902ba631b:
	.byte	0                               ; 0x0
	.size	__hip_cuid_a387003902ba631b, 1

	.ident	"AMD clang version 19.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.4.1 25184 c87081df219c42dc27c5b6d86c0525bc7d01f727)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __shm
	.addrsig_sym __hip_cuid_a387003902ba631b
	.amdgpu_metadata
---
amdhsa.kernels:
  - .agpr_count:     0
    .args:
      - .offset:         0
        .size:           144
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         148
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         152
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         156
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         158
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         160
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         162
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         164
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         166
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         184
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         192
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         200
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         208
        .size:           2
        .value_kind:     hidden_grid_dims
      - .offset:         264
        .size:           4
        .value_kind:     hidden_dynamic_lds_size
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 400
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 512
    .name:           _Z8micro_tk13micro_globals
    .private_segment_fixed_size: 168
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         _Z8micro_tk13micro_globals.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 42
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
