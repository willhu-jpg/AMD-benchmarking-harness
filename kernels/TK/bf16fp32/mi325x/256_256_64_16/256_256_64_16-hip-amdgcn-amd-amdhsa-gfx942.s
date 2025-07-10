	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.protected	_Z8micro_tk13micro_globals ; -- Begin function _Z8micro_tk13micro_globals
	.globl	_Z8micro_tk13micro_globals
	.p2align	8
	.type	_Z8micro_tk13micro_globals,@function
_Z8micro_tk13micro_globals:             ; @_Z8micro_tk13micro_globals
; %bb.0:
	s_load_dwordx2 s[12:13], s[0:1], 0x0
	s_load_dwordx2 s[6:7], s[0:1], 0x20
	s_load_dwordx2 s[14:15], s[0:1], 0x30
	s_load_dwordx2 s[4:5], s[0:1], 0x50
	s_load_dwordx2 s[8:9], s[0:1], 0x60
	s_load_dwordx2 s[10:11], s[0:1], 0x80
	s_load_dwordx2 s[18:19], s[0:1], 0x90
	s_cmp_lg_u32 0, -1
	s_cselect_b32 s20, 0, 0
	s_and_b32 s21, s20, -16
	s_mov_b32 s17, 0
	s_and_b32 s16, s20, 15
	s_add_i32 s21, s21, 16
	s_cmp_eq_u64 s[16:17], 0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s18, s3
	s_cselect_b32 s21, s20, s21
	s_add_i32 s1, s1, s2
	s_ashr_i32 s3, s1, 31
	s_lshr_b32 s3, s3, 29
	s_add_i32 s3, s1, s3
	s_mul_i32 s2, s19, s18
	s_ashr_i32 s16, s3, 3
	s_and_b32 s3, s3, -8
	s_sub_i32 s1, s1, s3
	s_ashr_i32 s3, s2, 31
	s_lshr_b32 s3, s3, 29
	s_add_i32 s2, s2, s3
	s_ashr_i32 s2, s2, 3
	s_mul_i32 s1, s1, s2
	s_add_i32 s2, s1, s16
	s_ashr_i32 s1, s2, 31
	s_lshr_b32 s1, s1, 23
	s_add_i32 s3, s2, s1
	s_ashr_i32 s1, s3, 9
	s_lshl_b32 s18, s1, 4
	s_sub_i32 s1, 32, s18
	s_min_i32 s19, s1, 16
	s_abs_i32 s20, s19
	v_cvt_f32_u32_e32 v1, s20
	s_sub_i32 s23, 0, s20
	s_and_b32 s3, s3, 0xfffffe00
	s_sub_i32 s2, s2, s3
	v_rcp_iflag_f32_e32 v1, v1
	s_abs_i32 s22, s2
	s_add_i32 s0, s21, 0x8000
	s_and_b32 s1, s0, -16
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	s_xor_b32 s3, s2, s19
	s_and_b32 s16, s0, 15
	s_add_i32 s1, s1, 16
	v_readfirstlane_b32 s24, v1
	s_mul_i32 s23, s23, s24
	s_mul_hi_u32 s23, s24, s23
	s_add_i32 s24, s24, s23
	s_mul_hi_u32 s23, s22, s24
	s_mul_i32 s24, s23, s20
	s_sub_i32 s22, s22, s24
	s_ashr_i32 s3, s3, 31
	s_add_i32 s24, s23, 1
	s_sub_i32 s25, s22, s20
	s_cmp_ge_u32 s22, s20
	s_cselect_b32 s23, s24, s23
	s_cselect_b32 s22, s25, s22
	s_add_i32 s24, s23, 1
	s_cmp_ge_u32 s22, s20
	s_cselect_b32 s20, s24, s23
	s_xor_b32 s20, s20, s3
	s_sub_i32 s20, s20, s3
	s_mul_i32 s3, s20, s19
	s_sub_i32 s2, s2, s3
	s_add_i32 s18, s18, s2
	s_lshl_b32 s19, s18, 8
	s_ashr_i32 s18, s19, 31
	s_mul_i32 s2, s6, s18
	s_mul_hi_u32 s3, s6, s19
	s_add_i32 s2, s3, s2
	s_mul_i32 s3, s7, s19
	s_add_i32 s3, s2, s3
	s_mul_i32 s2, s6, s19
	s_lshl_b64 s[2:3], s[2:3], 1
	s_add_u32 s12, s12, s2
	s_addc_u32 s13, s13, s3
	s_lshl_b32 s20, s20, 8
	s_ashr_i32 s2, s20, 31
	s_mul_i32 s2, s4, s2
	s_mul_hi_u32 s3, s4, s20
	s_add_i32 s2, s3, s2
	s_mul_i32 s3, s5, s20
	s_add_i32 s3, s2, s3
	s_mul_i32 s2, s4, s20
	s_lshl_b64 s[2:3], s[2:3], 1
	v_lshlrev_b32_e32 v2, 3, v0
	s_add_u32 s14, s14, s2
	v_and_b32_e32 v32, 56, v2
	v_lshrrev_b32_e32 v28, 3, v0
	s_addc_u32 s15, s15, s3
	v_mad_u64_u32 v[2:3], s[2:3], v28, s6, v[32:33]
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshl_add_u64 v[4:5], v[2:3], 1, s[12:13]
	v_or_b32_e32 v29, 64, v28
	;;#ASMSTART
	global_load_dwordx4 v[10:13], v[4:5], off

	;;#ASMEND
	v_mad_u64_u32 v[4:5], s[2:3], v29, s6, v[32:33]
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshl_add_u64 v[6:7], v[4:5], 1, s[12:13]
	;;#ASMSTART
	global_load_dwordx4 v[14:17], v[6:7], off

	;;#ASMEND
	v_lshl_add_u32 v6, s6, 7, v2
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshl_add_u64 v[8:9], v[6:7], 1, s[12:13]
	v_or_b32_e32 v33, 0xc0, v28
	;;#ASMSTART
	global_load_dwordx4 v[20:23], v[8:9], off

	;;#ASMEND
	v_mad_u64_u32 v[8:9], s[2:3], v33, s6, v[32:33]
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshl_add_u64 v[18:19], v[8:9], 1, s[12:13]
	;;#ASMSTART
	global_load_dwordx4 v[24:27], v[18:19], off

	;;#ASMEND
	v_lshlrev_b32_e32 v18, 4, v0
	v_lshlrev_b32_e32 v19, 1, v32
	v_and_b32_e32 v3, 0x1f80, v18
	v_add_u32_e32 v30, s21, v19
	v_add_u32_e32 v5, v30, v3
	v_lshrrev_b32_e32 v7, 4, v5
	v_or_b32_e32 v36, 8, v19
	v_and_b32_e32 v7, 0x78, v7
	v_add_u32_e32 v31, s21, v36
	v_xor_b32_e32 v5, v7, v5
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v5, v[10:11]

	;;#ASMEND
	v_add_u32_e32 v5, v31, v3
	v_lshrrev_b32_e32 v7, 4, v5
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v5, v7, v5
	;;#ASMSTART
	ds_write_b64 v5, v[12:13]

	;;#ASMEND
	v_or_b32_e32 v5, 0x2000, v3
	v_add_u32_e32 v7, v30, v5
	v_lshrrev_b32_e32 v9, 4, v7
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v7, v9, v7
	;;#ASMSTART
	ds_write_b64 v7, v[14:15]

	;;#ASMEND
	v_add_u32_e32 v7, v31, v5
	v_lshrrev_b32_e32 v9, 4, v7
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v7, v9, v7
	;;#ASMSTART
	ds_write_b64 v7, v[16:17]

	;;#ASMEND
	v_or_b32_e32 v7, 0x4000, v3
	v_add_u32_e32 v9, v30, v7
	v_lshrrev_b32_e32 v10, 4, v9
	v_and_b32_e32 v10, 0x78, v10
	v_xor_b32_e32 v9, v10, v9
	;;#ASMSTART
	ds_write_b64 v9, v[20:21]

	;;#ASMEND
	v_add_u32_e32 v9, v31, v7
	v_lshrrev_b32_e32 v10, 4, v9
	v_and_b32_e32 v10, 0x78, v10
	v_xor_b32_e32 v9, v10, v9
	;;#ASMSTART
	ds_write_b64 v9, v[22:23]

	;;#ASMEND
	v_or_b32_e32 v9, 0x6000, v3
	v_add_u32_e32 v10, v30, v9
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v10, v11, v10
	;;#ASMSTART
	ds_write_b64 v10, v[24:25]

	;;#ASMEND
	v_add_u32_e32 v10, v31, v9
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v10, v11, v10
	;;#ASMSTART
	ds_write_b64 v10, v[26:27]

	;;#ASMEND
	v_mad_u64_u32 v[10:11], s[2:3], v28, s4, v[32:33]
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshl_add_u64 v[12:13], v[10:11], 1, s[14:15]
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	global_load_dwordx4 v[20:23], v[12:13], off

	;;#ASMEND
	v_mad_u64_u32 v[12:13], s[2:3], v29, s4, v[32:33]
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshl_add_u64 v[14:15], v[12:13], 1, s[14:15]
	;;#ASMSTART
	global_load_dwordx4 v[24:27], v[14:15], off

	;;#ASMEND
	v_lshl_add_u32 v14, s4, 7, v10
	v_ashrrev_i32_e32 v15, 31, v14
	v_lshl_add_u64 v[16:17], v[14:15], 1, s[14:15]
	s_cmp_eq_u64 s[16:17], 0
	;;#ASMSTART
	global_load_dwordx4 v[28:31], v[16:17], off

	;;#ASMEND
	v_mad_u64_u32 v[16:17], s[2:3], v33, s4, v[32:33]
	s_cselect_b32 s3, s0, s1
	s_nop 0
	v_add_u32_e32 v11, s3, v19
	v_ashrrev_i32_e32 v17, 31, v16
	v_add_u32_e32 v15, v11, v3
	v_lshl_add_u64 v[32:33], v[16:17], 1, s[14:15]
	v_lshrrev_b32_e32 v17, 4, v15
	v_and_b32_e32 v17, 0x78, v17
	v_add_u32_e32 v13, s3, v36
	v_xor_b32_e32 v15, v17, v15
	;;#ASMSTART
	global_load_dwordx4 v[32:35], v[32:33], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v15, v[20:21]

	;;#ASMEND
	v_add_u32_e32 v15, v13, v3
	v_lshrrev_b32_e32 v17, 4, v15
	v_and_b32_e32 v17, 0x78, v17
	v_xor_b32_e32 v15, v17, v15
	;;#ASMSTART
	ds_write_b64 v15, v[22:23]

	;;#ASMEND
	v_add_u32_e32 v15, v11, v5
	v_lshrrev_b32_e32 v17, 4, v15
	v_and_b32_e32 v17, 0x78, v17
	v_xor_b32_e32 v15, v17, v15
	;;#ASMSTART
	ds_write_b64 v15, v[24:25]

	;;#ASMEND
	v_add_u32_e32 v15, v13, v5
	v_lshrrev_b32_e32 v17, 4, v15
	v_and_b32_e32 v17, 0x78, v17
	v_xor_b32_e32 v15, v17, v15
	;;#ASMSTART
	ds_write_b64 v15, v[26:27]

	;;#ASMEND
	v_add_u32_e32 v15, v11, v7
	v_lshrrev_b32_e32 v17, 4, v15
	v_and_b32_e32 v17, 0x78, v17
	v_xor_b32_e32 v15, v17, v15
	;;#ASMSTART
	ds_write_b64 v15, v[28:29]

	;;#ASMEND
	v_add_u32_e32 v15, v13, v7
	v_lshrrev_b32_e32 v17, 4, v15
	v_and_b32_e32 v17, 0x78, v17
	v_xor_b32_e32 v15, v17, v15
	v_add_u32_e32 v11, v11, v9
	;;#ASMSTART
	ds_write_b64 v15, v[30:31]

	;;#ASMEND
	v_lshrrev_b32_e32 v15, 4, v11
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v11, v15, v11
	;;#ASMSTART
	ds_write_b64 v11, v[32:33]

	;;#ASMEND
	v_add_u32_e32 v11, v13, v9
	v_lshrrev_b32_e32 v13, 4, v11
	v_and_b32_e32 v13, 0x78, v13
	v_xor_b32_e32 v11, v13, v11
	;;#ASMSTART
	ds_write_b64 v11, v[34:35]

	;;#ASMEND
	v_lshrrev_b32_e32 v1, 8, v0
	v_cmp_eq_u32_e32 vcc, 1, v1
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
	v_lshlrev_b32_e32 v161, 1, v2
	v_and_b32_e32 v146, 15, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_bfe_u32 v148, v0, 6, 2
	v_and_b32_e32 v147, 12, v2
	v_lshlrev_b32_e32 v2, 7, v146
	v_lshlrev_b32_e32 v162, 1, v4
	v_lshl_or_b32 v4, v148, 13, v2
	v_lshlrev_b32_e32 v163, 1, v6
	v_lshlrev_b32_e32 v6, 1, v147
	v_add_u32_e32 v4, s3, v4
	v_lshlrev_b32_e32 v164, 1, v8
	v_add_u32_e32 v8, v4, v6
	v_lshrrev_b32_e32 v11, 4, v8
	v_lshl_or_b32 v2, v1, 13, v2
	v_and_b32_e32 v11, 0x78, v11
	v_add_u32_e32 v2, s21, v2
	v_lshlrev_b32_e32 v149, 6, v1
	v_xor_b32_e32 v160, v11, v8
	v_add_u32_e32 v8, v2, v6
	v_or_b32_e32 v1, v149, v146
	v_lshrrev_b32_e32 v11, 4, v8
	v_lshl_add_u32 v1, v1, 7, s21
	v_and_b32_e32 v11, 0x78, v11
	v_add_u32_e32 v1, 0x4000, v1
	v_xor_b32_e32 v159, v11, v8
	v_add_u32_e32 v8, v1, v6
	v_lshrrev_b32_e32 v11, 4, v8
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v158, v11, v8
	v_or_b32_e32 v8, 32, v6
	v_lshlrev_b32_e32 v165, 1, v10
	v_add_u32_e32 v10, v4, v8
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v157, v11, v10
	v_add_u32_e32 v10, v2, v8
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_add_u32_e32 v8, v1, v8
	v_xor_b32_e32 v156, v11, v10
	v_lshrrev_b32_e32 v10, 4, v8
	v_and_b32_e32 v10, 0x78, v10
	v_xor_b32_e32 v155, v10, v8
	v_or_b32_e32 v8, 64, v6
	v_add_u32_e32 v10, v4, v8
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v154, v11, v10
	v_add_u32_e32 v10, v2, v8
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_add_u32_e32 v8, v1, v8
	v_xor_b32_e32 v153, v11, v10
	v_lshrrev_b32_e32 v10, 4, v8
	v_or_b32_e32 v6, 0x60, v6
	v_and_b32_e32 v10, 0x78, v10
	v_add_u32_e32 v4, v4, v6
	v_xor_b32_e32 v152, v10, v8
	v_lshrrev_b32_e32 v8, 4, v4
	v_and_b32_e32 v8, 0x78, v8
	v_add_u32_e32 v2, v2, v6
	v_xor_b32_e32 v151, v8, v4
	v_lshrrev_b32_e32 v4, 4, v2
	v_and_b32_e32 v4, 0x78, v4
	v_add_u32_e32 v1, v1, v6
	v_xor_b32_e32 v150, v4, v2
	v_lshrrev_b32_e32 v2, 4, v1
	v_and_b32_e32 v2, 0x78, v2
	v_xor_b32_e32 v1, v2, v1
	v_and_b32_e32 v2, 0x70, v18
	v_add_u32_e32 v4, s21, v2
	v_add_u32_e32 v10, v4, v3
	v_or_b32_e32 v6, 8, v2
	v_lshrrev_b32_e32 v11, 4, v10
	v_add_u32_e32 v8, s21, v6
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v169, v11, v10
	v_add_u32_e32 v10, v8, v3
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v170, v11, v10
	v_add_u32_e32 v10, v4, v5
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v171, v11, v10
	v_add_u32_e32 v10, v8, v5
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v172, v11, v10
	v_add_u32_e32 v10, v4, v7
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v173, v11, v10
	v_add_u32_e32 v10, v8, v7
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_add_u32_e32 v4, v4, v9
	v_xor_b32_e32 v174, v11, v10
	v_lshrrev_b32_e32 v10, 4, v4
	v_and_b32_e32 v10, 0x78, v10
	v_xor_b32_e32 v175, v10, v4
	v_add_u32_e32 v4, v8, v9
	v_lshrrev_b32_e32 v8, 4, v4
	v_and_b32_e32 v8, 0x78, v8
	v_add_u32_e32 v2, s3, v2
	v_xor_b32_e32 v176, v8, v4
	v_add_u32_e32 v4, s3, v6
	v_add_u32_e32 v6, v2, v3
	v_lshrrev_b32_e32 v8, 4, v6
	v_and_b32_e32 v8, 0x78, v8
	v_add_u32_e32 v3, v4, v3
	v_xor_b32_e32 v177, v8, v6
	v_lshrrev_b32_e32 v6, 4, v3
	v_and_b32_e32 v6, 0x78, v6
	v_xor_b32_e32 v178, v6, v3
	v_add_u32_e32 v3, v2, v5
	v_lshrrev_b32_e32 v6, 4, v3
	v_and_b32_e32 v6, 0x78, v6
	v_xor_b32_e32 v179, v6, v3
	v_add_u32_e32 v3, v4, v5
	v_lshrrev_b32_e32 v5, 4, v3
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v180, v5, v3
	v_add_u32_e32 v3, v2, v7
	v_lshrrev_b32_e32 v5, 4, v3
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v181, v5, v3
	v_add_u32_e32 v3, v4, v7
	v_lshrrev_b32_e32 v5, 4, v3
	v_and_b32_e32 v5, 0x78, v5
	v_add_u32_e32 v2, v2, v9
	v_xor_b32_e32 v182, v5, v3
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v183, v3, v2
	v_add_u32_e32 v2, v4, v9
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v184, v3, v2
	v_mov_b32_e32 v2, 0
	s_lshl_b32 s2, s6, 9
	s_lshl_b32 s6, s4, 9
	v_lshlrev_b32_e32 v166, 1, v12
	v_lshlrev_b32_e32 v167, 1, v14
	v_lshlrev_b32_e32 v168, 1, v16
	s_mov_b64 s[16:17], 0x80
	s_mov_b32 s3, 0x110000
	s_mov_b32 s21, 0xffff
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v5, v2
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v7, v2
	v_mov_b32_e32 v8, v2
	v_mov_b32_e32 v9, v2
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v11, v2
	v_mov_b32_e32 v12, v2
	v_mov_b32_e32 v13, v2
	v_mov_b32_e32 v14, v2
	v_mov_b32_e32 v15, v2
	v_mov_b32_e32 v16, v2
	v_mov_b32_e32 v17, v2
	v_mov_b32_e32 v18, v2
	v_mov_b32_e32 v19, v2
	v_mov_b32_e32 v20, v2
	v_mov_b32_e32 v21, v2
	v_mov_b32_e32 v22, v2
	v_mov_b32_e32 v23, v2
	v_mov_b32_e32 v24, v2
	v_mov_b32_e32 v25, v2
	v_mov_b32_e32 v26, v2
	v_mov_b32_e32 v27, v2
	v_mov_b32_e32 v28, v2
	v_mov_b32_e32 v29, v2
	v_mov_b32_e32 v30, v2
	v_mov_b32_e32 v31, v2
	v_mov_b32_e32 v32, v2
	v_mov_b32_e32 v33, v2
	v_mov_b32_e32 v34, v2
	v_mov_b32_e32 v35, v2
	v_mov_b32_e32 v36, v2
	v_mov_b32_e32 v37, v2
	v_mov_b32_e32 v38, v2
	v_mov_b32_e32 v39, v2
	v_mov_b32_e32 v40, v2
	v_mov_b32_e32 v41, v2
	v_mov_b32_e32 v42, v2
	v_mov_b32_e32 v43, v2
	v_mov_b32_e32 v44, v2
	v_mov_b32_e32 v45, v2
	v_mov_b32_e32 v46, v2
	v_mov_b32_e32 v47, v2
	v_mov_b32_e32 v48, v2
	v_mov_b32_e32 v49, v2
	v_mov_b32_e32 v50, v2
	v_mov_b32_e32 v51, v2
	v_mov_b32_e32 v52, v2
	v_mov_b32_e32 v53, v2
	v_mov_b32_e32 v54, v2
	v_mov_b32_e32 v55, v2
	v_mov_b32_e32 v56, v2
	v_mov_b32_e32 v57, v2
	v_mov_b32_e32 v58, v2
	v_mov_b32_e32 v59, v2
	v_mov_b32_e32 v60, v2
	v_mov_b32_e32 v61, v2
	v_mov_b32_e32 v62, v2
	v_mov_b32_e32 v63, v2
	v_mov_b32_e32 v64, v2
	v_mov_b32_e32 v65, v2
	v_mov_b32_e32 v66, v2
	v_mov_b32_e32 v67, v2
	v_mov_b32_e32 v68, v2
	v_mov_b32_e32 v69, v2
	v_mov_b32_e32 v70, v2
	v_mov_b32_e32 v71, v2
	v_mov_b32_e32 v72, v2
	v_mov_b32_e32 v73, v2
	v_mov_b32_e32 v74, v2
	v_mov_b32_e32 v75, v2
	v_mov_b32_e32 v76, v2
	v_mov_b32_e32 v77, v2
	v_mov_b32_e32 v78, v2
	v_mov_b32_e32 v79, v2
	v_mov_b32_e32 v80, v2
	v_mov_b32_e32 v81, v2
	v_mov_b32_e32 v82, v2
	v_mov_b32_e32 v83, v2
	v_mov_b32_e32 v84, v2
	v_mov_b32_e32 v85, v2
	v_mov_b32_e32 v86, v2
	v_mov_b32_e32 v87, v2
	v_mov_b32_e32 v88, v2
	v_mov_b32_e32 v89, v2
	v_mov_b32_e32 v90, v2
	v_mov_b32_e32 v91, v2
	v_mov_b32_e32 v92, v2
	v_mov_b32_e32 v93, v2
	v_mov_b32_e32 v94, v2
	v_mov_b32_e32 v95, v2
	v_mov_b32_e32 v96, v2
	v_mov_b32_e32 v97, v2
	v_mov_b32_e32 v98, v2
	v_mov_b32_e32 v99, v2
	v_mov_b32_e32 v100, v2
	v_mov_b32_e32 v101, v2
	v_mov_b32_e32 v102, v2
	v_mov_b32_e32 v103, v2
	v_mov_b32_e32 v104, v2
	v_mov_b32_e32 v105, v2
	v_mov_b32_e32 v106, v2
	v_mov_b32_e32 v107, v2
	v_mov_b32_e32 v108, v2
	v_mov_b32_e32 v109, v2
	v_mov_b32_e32 v110, v2
	v_mov_b32_e32 v111, v2
	v_mov_b32_e32 v112, v2
	v_mov_b32_e32 v113, v2
	v_mov_b32_e32 v114, v2
	v_mov_b32_e32 v115, v2
	v_mov_b32_e32 v116, v2
	v_mov_b32_e32 v117, v2
	v_mov_b32_e32 v118, v2
	v_mov_b32_e32 v119, v2
	v_mov_b32_e32 v120, v2
	v_mov_b32_e32 v121, v2
	v_mov_b32_e32 v122, v2
	v_mov_b32_e32 v123, v2
	v_mov_b32_e32 v124, v2
	v_mov_b32_e32 v125, v2
	v_mov_b32_e32 v126, v2
	v_mov_b32_e32 v127, v2
	v_mov_b32_e32 v128, v2
	v_mov_b32_e32 v129, v2
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	s_add_u32 s0, s12, s16
	s_addc_u32 s1, s13, s17
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	buffer_load_dwordx4 v[130:133], v161, s[0:3], 0 offen
	buffer_load_dwordx4 v[134:137], v162, s[0:3], 0 offen
	buffer_load_dwordx4 v[138:141], v163, s[0:3], 0 offen
	buffer_load_dwordx4 v[142:145], v164, s[0:3], 0 offen
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[186:187], v160 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[190:191], v160 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[194:195], v160 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[198:199], v160 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[188:189], v159 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[192:193], v159 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[196:197], v159 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[200:201], v159 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[202:203], v158 offset:0

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[204:205], v158 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[206:207], v158 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[208:209], v158 offset:0x1800

	;;#ASMEND
	s_nop 0
	v_bfi_b32 v186, s21, v186, v186
	v_bfi_b32 v190, s21, v190, v190
	v_bfi_b32 v194, s21, v194, v194
	v_bfi_b32 v198, s21, v198, v198
	v_bfi_b32 v188, s21, v188, v188
	v_bfi_b32 v192, s21, v192, v192
	v_bfi_b32 v196, s21, v196, v196
	v_bfi_b32 v200, s21, v200, v200
	v_bfi_b32 v202, s21, v202, v202
	v_bfi_b32 v204, s21, v204, v204
	v_bfi_b32 v206, s21, v206, v206
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	v_bfi_b32 v208, s21, v208, v208
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[188:189], v[186:187], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[188:189], v[190:191], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[188:189], v[194:195], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[188:189], v[198:199], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[192:193], v[186:187], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[192:193], v[190:191], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[192:193], v[194:195], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[192:193], v[198:199], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[196:197], v[186:187], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[196:197], v[190:191], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[196:197], v[194:195], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[196:197], v[198:199], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[200:201], v[186:187], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[200:201], v[190:191], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[200:201], v[194:195], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[200:201], v[198:199], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[202:203], v[186:187], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[202:203], v[190:191], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[202:203], v[194:195], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[202:203], v[198:199], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[204:205], v[186:187], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[204:205], v[190:191], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[204:205], v[194:195], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[204:205], v[198:199], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[206:207], v[186:187], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[206:207], v[190:191], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[206:207], v[194:195], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[206:207], v[198:199], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[186:189], v[208:209], v[186:187], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[190:193], v[208:209], v[190:191], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[194:197], v[208:209], v[194:195], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[198:201], v[208:209], v[198:199], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_add_u32 s4, s14, s16
	s_addc_u32 s5, s15, s17
	s_mov_b32 s7, s3
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	buffer_load_dwordx4 v[2:5], v165, s[4:7], 0 offen
	buffer_load_dwordx4 v[6:9], v166, s[4:7], 0 offen
	buffer_load_dwordx4 v[10:13], v167, s[4:7], 0 offen
	buffer_load_dwordx4 v[14:17], v168, s[4:7], 0 offen
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[202:203], v157 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[204:205], v157 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[206:207], v157 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[208:209], v157 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[210:211], v156 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[212:213], v156 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[214:215], v156 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[216:217], v156 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[218:219], v155 offset:0

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[220:221], v155 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[222:223], v155 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[224:225], v155 offset:0x1800

	;;#ASMEND
	s_nop 0
	v_bfi_b32 v202, s21, v202, v202
	v_bfi_b32 v204, s21, v204, v204
	v_bfi_b32 v206, s21, v206, v206
	v_bfi_b32 v208, s21, v208, v208
	v_bfi_b32 v210, s21, v210, v210
	v_bfi_b32 v212, s21, v212, v212
	v_bfi_b32 v214, s21, v214, v214
	v_bfi_b32 v216, s21, v216, v216
	v_bfi_b32 v218, s21, v218, v218
	v_bfi_b32 v220, s21, v220, v220
	v_bfi_b32 v222, s21, v222, v222
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	v_bfi_b32 v224, s21, v224, v224
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[210:211], v[202:203], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[210:211], v[204:205], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[210:211], v[206:207], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[210:211], v[208:209], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[212:213], v[202:203], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[212:213], v[204:205], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[212:213], v[206:207], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[212:213], v[208:209], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[214:215], v[202:203], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[214:215], v[204:205], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[214:215], v[206:207], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[214:215], v[208:209], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[216:217], v[202:203], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[216:217], v[204:205], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[216:217], v[206:207], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[216:217], v[208:209], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[218:219], v[202:203], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[218:219], v[204:205], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[218:219], v[206:207], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[218:219], v[208:209], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[220:221], v[202:203], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[220:221], v[204:205], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[220:221], v[206:207], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[220:221], v[208:209], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[222:223], v[202:203], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[222:223], v[204:205], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[222:223], v[206:207], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[222:223], v[208:209], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[186:189], v[224:225], v[202:203], v[186:189]
	v_mfma_f32_16x16x16_bf16 v[190:193], v[224:225], v[204:205], v[190:193]
	v_mfma_f32_16x16x16_bf16 v[194:197], v[224:225], v[206:207], v[194:197]
	v_mfma_f32_16x16x16_bf16 v[198:201], v[224:225], v[208:209], v[198:201]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[202:203], v154 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[204:205], v154 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[206:207], v154 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[208:209], v154 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[210:211], v153 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[212:213], v153 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[214:215], v153 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[216:217], v153 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[218:219], v152 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[220:221], v152 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[222:223], v152 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[224:225], v152 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[226:227], v151 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[228:229], v151 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[230:231], v151 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[232:233], v151 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[234:235], v150 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[236:237], v150 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[238:239], v150 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[240:241], v150 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[242:243], v1 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[244:245], v1 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[246:247], v1 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[248:249], v1 offset:0x1800

	;;#ASMEND
	s_nop 0
	v_bfi_b32 v202, s21, v202, v202
	v_bfi_b32 v204, s21, v204, v204
	v_bfi_b32 v206, s21, v206, v206
	v_bfi_b32 v208, s21, v208, v208
	v_bfi_b32 v210, s21, v210, v210
	v_bfi_b32 v212, s21, v212, v212
	v_bfi_b32 v214, s21, v214, v214
	v_bfi_b32 v216, s21, v216, v216
	v_bfi_b32 v218, s21, v218, v218
	v_bfi_b32 v220, s21, v220, v220
	v_bfi_b32 v222, s21, v222, v222
	v_bfi_b32 v224, s21, v224, v224
	v_bfi_b32 v226, s21, v226, v226
	v_bfi_b32 v228, s21, v228, v228
	v_bfi_b32 v230, s21, v230, v230
	v_bfi_b32 v232, s21, v232, v232
	v_bfi_b32 v234, s21, v234, v234
	v_bfi_b32 v236, s21, v236, v236
	v_bfi_b32 v238, s21, v238, v238
	v_bfi_b32 v240, s21, v240, v240
	v_bfi_b32 v242, s21, v242, v242
	v_bfi_b32 v244, s21, v244, v244
	v_bfi_b32 v246, s21, v246, v246
	v_bfi_b32 v248, s21, v248, v248
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[210:211], v[202:203], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[210:211], v[204:205], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[210:211], v[206:207], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[210:211], v[208:209], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[212:213], v[202:203], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[212:213], v[204:205], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[212:213], v[206:207], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[212:213], v[208:209], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[214:215], v[202:203], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[214:215], v[204:205], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[214:215], v[206:207], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[214:215], v[208:209], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[216:217], v[202:203], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[216:217], v[204:205], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[216:217], v[206:207], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[216:217], v[208:209], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[218:219], v[202:203], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[218:219], v[204:205], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[218:219], v[206:207], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[218:219], v[208:209], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[220:221], v[202:203], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[220:221], v[204:205], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[220:221], v[206:207], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[220:221], v[208:209], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[222:223], v[202:203], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[222:223], v[204:205], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[222:223], v[206:207], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[222:223], v[208:209], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[186:189], v[224:225], v[202:203], v[186:189]
	v_mfma_f32_16x16x16_bf16 v[190:193], v[224:225], v[204:205], v[190:193]
	v_mfma_f32_16x16x16_bf16 v[194:197], v[224:225], v[206:207], v[194:197]
	v_mfma_f32_16x16x16_bf16 v[198:201], v[224:225], v[208:209], v[198:201]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_waitcnt vmcnt(7)
	;;#ASMSTART
	ds_write_b64 v169, v[130:131]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v170, v[132:133]

	;;#ASMEND
	s_waitcnt vmcnt(6)
	;;#ASMSTART
	ds_write_b64 v171, v[134:135]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v172, v[136:137]

	;;#ASMEND
	s_waitcnt vmcnt(5)
	;;#ASMSTART
	ds_write_b64 v173, v[138:139]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v174, v[140:141]

	;;#ASMEND
	s_waitcnt vmcnt(4)
	;;#ASMSTART
	ds_write_b64 v175, v[142:143]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v176, v[144:145]

	;;#ASMEND
	s_waitcnt vmcnt(3)
	;;#ASMSTART
	ds_write_b64 v177, v[2:3]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v178, v[4:5]

	;;#ASMEND
	s_waitcnt vmcnt(2)
	;;#ASMSTART
	ds_write_b64 v179, v[6:7]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v180, v[8:9]

	;;#ASMEND
	s_waitcnt vmcnt(1)
	;;#ASMSTART
	ds_write_b64 v181, v[10:11]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v182, v[12:13]

	;;#ASMEND
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v183, v[14:15]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v184, v[16:17]

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[234:235], v[226:227], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[234:235], v[228:229], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[234:235], v[230:231], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[234:235], v[232:233], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[236:237], v[226:227], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[236:237], v[228:229], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[236:237], v[230:231], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[236:237], v[232:233], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[238:239], v[226:227], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[238:239], v[228:229], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[238:239], v[230:231], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[238:239], v[232:233], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[240:241], v[226:227], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[240:241], v[228:229], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[240:241], v[230:231], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[240:241], v[232:233], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[242:243], v[226:227], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[242:243], v[228:229], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[242:243], v[230:231], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[242:243], v[232:233], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[244:245], v[226:227], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[244:245], v[228:229], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[244:245], v[230:231], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[244:245], v[232:233], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[246:247], v[226:227], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[246:247], v[228:229], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[246:247], v[230:231], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[246:247], v[232:233], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[248:249], v[226:227], v[186:189]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[248:249], v[228:229], v[190:193]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[248:249], v[230:231], v[194:197]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[248:249], v[232:233], v[198:201]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_add_u32 s16, s16, 0x80
	s_addc_u32 s17, s17, 0
	s_cmpk_eq_i32 s16, 0x4000
	s_cbranch_scc0 .LBB0_3
; %bb.4:
	s_movk_i32 s0, 0x100
	v_cmp_gt_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_6
; %bb.5:
	s_barrier
.LBB0_6:
	s_or_b64 exec, exec, s[0:1]
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[130:131], v160 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[132:133], v160 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[134:135], v160 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[136:137], v160 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[138:139], v159 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[140:141], v159 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[142:143], v159 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[144:145], v159 offset:0x1800

	;;#ASMEND
	s_mov_b32 s0, 0xffff
	;;#ASMSTART
	ds_read_b64 v[160:161], v158 offset:0

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[162:163], v158 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[164:165], v158 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[158:159], v158 offset:0x1800

	;;#ASMEND
	v_bfi_b32 v130, s0, v130, v130
	v_bfi_b32 v132, s0, v132, v132
	v_bfi_b32 v134, s0, v134, v134
	v_bfi_b32 v136, s0, v136, v136
	v_bfi_b32 v138, s0, v138, v138
	v_bfi_b32 v140, s0, v140, v140
	v_bfi_b32 v142, s0, v142, v142
	v_bfi_b32 v144, s0, v144, v144
	v_bfi_b32 v160, s0, v160, v160
	v_bfi_b32 v162, s0, v162, v162
	v_bfi_b32 v164, s0, v164, v164
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	v_bfi_b32 v158, s0, v158, v158
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[138:139], v[130:131], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[138:139], v[132:133], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[138:139], v[134:135], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[138:139], v[136:137], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[140:141], v[130:131], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[140:141], v[132:133], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[140:141], v[134:135], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[140:141], v[136:137], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[142:143], v[130:131], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[142:143], v[132:133], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[142:143], v[134:135], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[142:143], v[136:137], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[144:145], v[130:131], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[144:145], v[132:133], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[144:145], v[134:135], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[144:145], v[136:137], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[160:161], v[130:131], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[160:161], v[132:133], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[160:161], v[134:135], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[160:161], v[136:137], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[162:163], v[130:131], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[162:163], v[132:133], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[162:163], v[134:135], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[162:163], v[136:137], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[164:165], v[130:131], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[164:165], v[132:133], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[164:165], v[134:135], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[164:165], v[136:137], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[158:159], v[130:131], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[158:159], v[132:133], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[158:159], v[134:135], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[158:159], v[136:137], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[130:131], v157 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[132:133], v157 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[134:135], v157 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[136:137], v157 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[138:139], v156 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[140:141], v156 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[142:143], v156 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[144:145], v156 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[156:157], v155 offset:0

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[158:159], v155 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[160:161], v155 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[162:163], v155 offset:0x1800

	;;#ASMEND
	s_nop 0
	v_bfi_b32 v130, s0, v130, v130
	v_bfi_b32 v132, s0, v132, v132
	v_bfi_b32 v134, s0, v134, v134
	v_bfi_b32 v136, s0, v136, v136
	v_bfi_b32 v138, s0, v138, v138
	v_bfi_b32 v140, s0, v140, v140
	v_bfi_b32 v142, s0, v142, v142
	v_bfi_b32 v144, s0, v144, v144
	v_bfi_b32 v156, s0, v156, v156
	v_bfi_b32 v158, s0, v158, v158
	v_bfi_b32 v160, s0, v160, v160
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	v_bfi_b32 v162, s0, v162, v162
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[138:139], v[130:131], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[138:139], v[132:133], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[138:139], v[134:135], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[138:139], v[136:137], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[140:141], v[130:131], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[140:141], v[132:133], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[140:141], v[134:135], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[140:141], v[136:137], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[142:143], v[130:131], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[142:143], v[132:133], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[142:143], v[134:135], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[142:143], v[136:137], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[144:145], v[130:131], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[144:145], v[132:133], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[144:145], v[134:135], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[144:145], v[136:137], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[156:157], v[130:131], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[156:157], v[132:133], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[156:157], v[134:135], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[156:157], v[136:137], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[158:159], v[130:131], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[158:159], v[132:133], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[158:159], v[134:135], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[158:159], v[136:137], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[160:161], v[130:131], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[160:161], v[132:133], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[160:161], v[134:135], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[160:161], v[136:137], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[162:163], v[130:131], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[162:163], v[132:133], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[162:163], v[134:135], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[162:163], v[136:137], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[130:131], v154 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[134:135], v154 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[138:139], v154 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[142:143], v154 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[132:133], v153 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[136:137], v153 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[140:141], v153 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[144:145], v153 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[154:155], v152 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[156:157], v152 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[158:159], v152 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[152:153], v152 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[160:161], v151 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[162:163], v151 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[164:165], v151 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[166:167], v151 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[168:169], v150 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[170:171], v150 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[172:173], v150 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[150:151], v150 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[174:175], v1 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[176:177], v1 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[178:179], v1 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[180:181], v1 offset:0x1800

	;;#ASMEND
	s_nop 0
	v_bfi_b32 v130, s0, v130, v130
	v_bfi_b32 v134, s0, v134, v134
	v_bfi_b32 v138, s0, v138, v138
	v_bfi_b32 v142, s0, v142, v142
	v_bfi_b32 v132, s0, v132, v132
	v_bfi_b32 v136, s0, v136, v136
	v_bfi_b32 v140, s0, v140, v140
	v_bfi_b32 v144, s0, v144, v144
	v_bfi_b32 v154, s0, v154, v154
	v_bfi_b32 v156, s0, v156, v156
	v_bfi_b32 v158, s0, v158, v158
	v_bfi_b32 v152, s0, v152, v152
	v_bfi_b32 v160, s0, v160, v160
	v_bfi_b32 v162, s0, v162, v162
	v_bfi_b32 v164, s0, v164, v164
	v_bfi_b32 v166, s0, v166, v166
	v_bfi_b32 v168, s0, v168, v168
	v_bfi_b32 v170, s0, v170, v170
	v_bfi_b32 v172, s0, v172, v172
	v_bfi_b32 v150, s0, v150, v150
	v_bfi_b32 v174, s0, v174, v174
	v_bfi_b32 v176, s0, v176, v176
	v_bfi_b32 v178, s0, v178, v178
	v_bfi_b32 v180, s0, v180, v180
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[132:133], v[130:131], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[132:133], v[134:135], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[132:133], v[138:139], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[132:133], v[142:143], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[136:137], v[130:131], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[136:137], v[134:135], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[136:137], v[138:139], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[136:137], v[142:143], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[140:141], v[130:131], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[140:141], v[134:135], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[140:141], v[138:139], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[140:141], v[142:143], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[144:145], v[130:131], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[144:145], v[134:135], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[144:145], v[138:139], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[144:145], v[142:143], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[154:155], v[130:131], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[154:155], v[134:135], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[154:155], v[138:139], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[154:155], v[142:143], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[156:157], v[130:131], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[156:157], v[134:135], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[156:157], v[138:139], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[156:157], v[142:143], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[158:159], v[130:131], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[158:159], v[134:135], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[158:159], v[138:139], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[158:159], v[142:143], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[130:133], v[152:153], v[130:131], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[134:137], v[152:153], v[134:135], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[138:141], v[152:153], v[138:139], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[0:3], v[152:153], v[142:143], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[168:169], v[160:161], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[168:169], v[162:163], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[168:169], v[164:165], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[168:169], v[166:167], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[170:171], v[160:161], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[170:171], v[162:163], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[170:171], v[164:165], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[170:171], v[166:167], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[172:173], v[160:161], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[172:173], v[162:163], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[172:173], v[164:165], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[172:173], v[166:167], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[150:151], v[160:161], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[150:151], v[162:163], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[150:151], v[164:165], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[150:151], v[166:167], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[174:175], v[160:161], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[174:175], v[162:163], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[174:175], v[164:165], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[174:175], v[166:167], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[176:177], v[160:161], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[176:177], v[162:163], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[176:177], v[164:165], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[176:177], v[166:167], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[178:179], v[160:161], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[178:179], v[162:163], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[178:179], v[164:165], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[16:19], v[178:179], v[166:167], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[12:15], v[180:181], v[160:161], v[130:133]
	v_mfma_f32_16x16x16_bf16 v[8:11], v[180:181], v[162:163], v[134:137]
	v_mfma_f32_16x16x16_bf16 v[4:7], v[180:181], v[164:165], v[138:141]
	v_mfma_f32_16x16x16_bf16 v[0:3], v[180:181], v[166:167], v[0:3]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	v_or_b32_e32 v149, s19, v149
	v_lshl_or_b32 v20, v148, 6, s20
	v_mul_lo_u32 v21, s11, v149
	s_mul_i32 s2, s10, s18
	v_mad_u64_u32 v[130:131], s[0:1], s10, v149, 0
	v_mad_u64_u32 v[132:133], s[0:1], v147, s10, v[146:147]
	v_add3_u32 v131, v131, s2, v21
	v_ashrrev_i32_e32 v21, 31, v20
	v_ashrrev_i32_e32 v133, 31, v132
	v_lshl_add_u64 v[130:131], v[130:131], 1, s[8:9]
	v_lshlrev_b64 v[20:21], 1, v[20:21]
	v_lshlrev_b64 v[134:135], 1, v[132:133]
	v_add_u32_e32 v132, s10, v132
	v_lshl_add_u64 v[130:131], v[130:131], 0, v[20:21]
	v_ashrrev_i32_e32 v133, 31, v132
	v_lshl_add_u64 v[136:137], v[130:131], 0, v[134:135]
	v_lshlrev_b64 v[138:139], 1, v[132:133]
	global_store_short_d16_hi v[136:137], v126, off
	v_lshl_add_u64 v[140:141], v[130:131], 0, v[138:139]
	v_add_u32_e32 v126, s10, v132
	global_store_short_d16_hi v[140:141], v127, off
	v_ashrrev_i32_e32 v127, 31, v126
	v_lshlrev_b64 v[132:133], 1, v[126:127]
	v_add_u32_e32 v126, s10, v126
	v_ashrrev_i32_e32 v127, 31, v126
	v_lshlrev_b64 v[126:127], 1, v[126:127]
	v_lshl_add_u64 v[142:143], v[130:131], 0, v[132:133]
	v_lshl_add_u64 v[144:145], v[130:131], 0, v[126:127]
	global_store_short_d16_hi v[142:143], v128, off
	global_store_short_d16_hi v[144:145], v129, off
	global_store_short_d16_hi v[136:137], v122, off offset:32
	global_store_short_d16_hi v[140:141], v123, off offset:32
	global_store_short_d16_hi v[142:143], v124, off offset:32
	global_store_short_d16_hi v[144:145], v125, off offset:32
	global_store_short_d16_hi v[136:137], v118, off offset:64
	global_store_short_d16_hi v[140:141], v119, off offset:64
	global_store_short_d16_hi v[142:143], v120, off offset:64
	global_store_short_d16_hi v[144:145], v121, off offset:64
	global_store_short_d16_hi v[136:137], v114, off offset:96
	global_store_short_d16_hi v[140:141], v115, off offset:96
	global_store_short_d16_hi v[142:143], v116, off offset:96
	global_store_short_d16_hi v[144:145], v117, off offset:96
	v_or_b32_e32 v114, 16, v147
	v_mad_u64_u32 v[114:115], s[0:1], v114, s10, v[146:147]
	v_ashrrev_i32_e32 v115, 31, v114
	v_lshlrev_b64 v[116:117], 1, v[114:115]
	v_add_u32_e32 v114, s10, v114
	v_ashrrev_i32_e32 v115, 31, v114
	v_lshl_add_u64 v[118:119], v[130:131], 0, v[116:117]
	v_lshlrev_b64 v[120:121], 1, v[114:115]
	global_store_short_d16_hi v[118:119], v110, off
	v_lshl_add_u64 v[122:123], v[130:131], 0, v[120:121]
	v_add_u32_e32 v110, s10, v114
	global_store_short_d16_hi v[122:123], v111, off
	v_ashrrev_i32_e32 v111, 31, v110
	v_lshlrev_b64 v[114:115], 1, v[110:111]
	v_add_u32_e32 v110, s10, v110
	v_ashrrev_i32_e32 v111, 31, v110
	v_lshlrev_b64 v[110:111], 1, v[110:111]
	v_lshl_add_u64 v[124:125], v[130:131], 0, v[114:115]
	v_lshl_add_u64 v[128:129], v[130:131], 0, v[110:111]
	global_store_short_d16_hi v[124:125], v112, off
	global_store_short_d16_hi v[128:129], v113, off
	global_store_short_d16_hi v[118:119], v106, off offset:32
	global_store_short_d16_hi v[122:123], v107, off offset:32
	global_store_short_d16_hi v[124:125], v108, off offset:32
	global_store_short_d16_hi v[128:129], v109, off offset:32
	global_store_short_d16_hi v[118:119], v102, off offset:64
	global_store_short_d16_hi v[122:123], v103, off offset:64
	global_store_short_d16_hi v[124:125], v104, off offset:64
	global_store_short_d16_hi v[128:129], v105, off offset:64
	global_store_short_d16_hi v[118:119], v98, off offset:96
	global_store_short_d16_hi v[122:123], v99, off offset:96
	global_store_short_d16_hi v[124:125], v100, off offset:96
	global_store_short_d16_hi v[128:129], v101, off offset:96
	v_or_b32_e32 v98, 32, v147
	v_mad_u64_u32 v[98:99], s[0:1], v98, s10, v[146:147]
	v_ashrrev_i32_e32 v99, 31, v98
	v_lshlrev_b64 v[100:101], 1, v[98:99]
	v_add_u32_e32 v98, s10, v98
	v_ashrrev_i32_e32 v99, 31, v98
	v_lshl_add_u64 v[102:103], v[130:131], 0, v[100:101]
	v_lshlrev_b64 v[104:105], 1, v[98:99]
	global_store_short_d16_hi v[102:103], v94, off
	v_lshl_add_u64 v[106:107], v[130:131], 0, v[104:105]
	v_add_u32_e32 v94, s10, v98
	global_store_short_d16_hi v[106:107], v95, off
	v_ashrrev_i32_e32 v95, 31, v94
	v_lshlrev_b64 v[98:99], 1, v[94:95]
	v_add_u32_e32 v94, s10, v94
	v_ashrrev_i32_e32 v95, 31, v94
	v_lshlrev_b64 v[94:95], 1, v[94:95]
	v_lshl_add_u64 v[108:109], v[130:131], 0, v[98:99]
	v_lshl_add_u64 v[112:113], v[130:131], 0, v[94:95]
	global_store_short_d16_hi v[108:109], v96, off
	global_store_short_d16_hi v[112:113], v97, off
	global_store_short_d16_hi v[102:103], v90, off offset:32
	global_store_short_d16_hi v[106:107], v91, off offset:32
	global_store_short_d16_hi v[108:109], v92, off offset:32
	global_store_short_d16_hi v[112:113], v93, off offset:32
	global_store_short_d16_hi v[102:103], v86, off offset:64
	global_store_short_d16_hi v[106:107], v87, off offset:64
	global_store_short_d16_hi v[108:109], v88, off offset:64
	global_store_short_d16_hi v[112:113], v89, off offset:64
	global_store_short_d16_hi v[102:103], v82, off offset:96
	global_store_short_d16_hi v[106:107], v83, off offset:96
	global_store_short_d16_hi v[108:109], v84, off offset:96
	global_store_short_d16_hi v[112:113], v85, off offset:96
	v_or_b32_e32 v82, 48, v147
	v_mad_u64_u32 v[82:83], s[0:1], v82, s10, v[146:147]
	v_ashrrev_i32_e32 v83, 31, v82
	v_lshlrev_b64 v[84:85], 1, v[82:83]
	v_add_u32_e32 v82, s10, v82
	v_ashrrev_i32_e32 v83, 31, v82
	v_lshl_add_u64 v[86:87], v[130:131], 0, v[84:85]
	v_lshlrev_b64 v[88:89], 1, v[82:83]
	global_store_short_d16_hi v[86:87], v78, off
	v_lshl_add_u64 v[90:91], v[130:131], 0, v[88:89]
	v_add_u32_e32 v78, s10, v82
	global_store_short_d16_hi v[90:91], v79, off
	v_ashrrev_i32_e32 v79, 31, v78
	v_lshlrev_b64 v[82:83], 1, v[78:79]
	v_add_u32_e32 v78, s10, v78
	v_ashrrev_i32_e32 v79, 31, v78
	v_lshlrev_b64 v[78:79], 1, v[78:79]
	v_lshl_add_u64 v[92:93], v[130:131], 0, v[82:83]
	v_lshl_add_u64 v[96:97], v[130:131], 0, v[78:79]
	global_store_short_d16_hi v[92:93], v80, off
	global_store_short_d16_hi v[96:97], v81, off
	global_store_short_d16_hi v[86:87], v74, off offset:32
	global_store_short_d16_hi v[90:91], v75, off offset:32
	global_store_short_d16_hi v[92:93], v76, off offset:32
	global_store_short_d16_hi v[96:97], v77, off offset:32
	global_store_short_d16_hi v[86:87], v70, off offset:64
	global_store_short_d16_hi v[90:91], v71, off offset:64
	global_store_short_d16_hi v[92:93], v72, off offset:64
	global_store_short_d16_hi v[96:97], v73, off offset:64
	global_store_short_d16_hi v[86:87], v66, off offset:96
	global_store_short_d16_hi v[90:91], v67, off offset:96
	global_store_short_d16_hi v[92:93], v68, off offset:96
	global_store_short_d16_hi v[96:97], v69, off offset:96
	v_add_u32_e32 v66, 0x80, v149
	v_ashrrev_i32_e32 v67, 31, v66
	v_mul_lo_u32 v68, s10, v67
	v_mul_lo_u32 v69, s11, v66
	v_mad_u64_u32 v[66:67], s[0:1], s10, v66, 0
	v_add3_u32 v67, v67, v68, v69
	v_lshl_add_u64 v[66:67], v[66:67], 1, s[8:9]
	v_lshl_add_u64 v[20:21], v[66:67], 0, v[20:21]
	v_lshl_add_u64 v[66:67], v[20:21], 0, v[134:135]
	v_lshl_add_u64 v[68:69], v[20:21], 0, v[138:139]
	global_store_short_d16_hi v[66:67], v62, off
	global_store_short_d16_hi v[68:69], v63, off
	v_lshl_add_u64 v[62:63], v[20:21], 0, v[132:133]
	v_lshl_add_u64 v[70:71], v[20:21], 0, v[126:127]
	global_store_short_d16_hi v[62:63], v64, off
	global_store_short_d16_hi v[70:71], v65, off
	global_store_short_d16_hi v[66:67], v58, off offset:32
	global_store_short_d16_hi v[68:69], v59, off offset:32
	global_store_short_d16_hi v[62:63], v60, off offset:32
	global_store_short_d16_hi v[70:71], v61, off offset:32
	global_store_short_d16_hi v[66:67], v54, off offset:64
	global_store_short_d16_hi v[68:69], v55, off offset:64
	global_store_short_d16_hi v[62:63], v56, off offset:64
	global_store_short_d16_hi v[70:71], v57, off offset:64
	global_store_short_d16_hi v[66:67], v50, off offset:96
	global_store_short_d16_hi v[68:69], v51, off offset:96
	global_store_short_d16_hi v[62:63], v52, off offset:96
	global_store_short_d16_hi v[70:71], v53, off offset:96
	v_lshl_add_u64 v[50:51], v[20:21], 0, v[116:117]
	v_lshl_add_u64 v[52:53], v[20:21], 0, v[120:121]
	global_store_short_d16_hi v[50:51], v46, off
	global_store_short_d16_hi v[52:53], v47, off
	v_lshl_add_u64 v[46:47], v[20:21], 0, v[114:115]
	v_lshl_add_u64 v[54:55], v[20:21], 0, v[110:111]
	global_store_short_d16_hi v[46:47], v48, off
	global_store_short_d16_hi v[54:55], v49, off
	global_store_short_d16_hi v[50:51], v42, off offset:32
	global_store_short_d16_hi v[52:53], v43, off offset:32
	global_store_short_d16_hi v[46:47], v44, off offset:32
	global_store_short_d16_hi v[54:55], v45, off offset:32
	global_store_short_d16_hi v[50:51], v38, off offset:64
	global_store_short_d16_hi v[52:53], v39, off offset:64
	global_store_short_d16_hi v[46:47], v40, off offset:64
	global_store_short_d16_hi v[54:55], v41, off offset:64
	global_store_short_d16_hi v[50:51], v34, off offset:96
	global_store_short_d16_hi v[52:53], v35, off offset:96
	global_store_short_d16_hi v[46:47], v36, off offset:96
	global_store_short_d16_hi v[54:55], v37, off offset:96
	v_lshl_add_u64 v[34:35], v[20:21], 0, v[100:101]
	v_lshl_add_u64 v[36:37], v[20:21], 0, v[104:105]
	global_store_short_d16_hi v[34:35], v30, off
	global_store_short_d16_hi v[36:37], v31, off
	v_lshl_add_u64 v[30:31], v[20:21], 0, v[98:99]
	v_lshl_add_u64 v[38:39], v[20:21], 0, v[94:95]
	global_store_short_d16_hi v[30:31], v32, off
	global_store_short_d16_hi v[38:39], v33, off
	global_store_short_d16_hi v[34:35], v26, off offset:32
	global_store_short_d16_hi v[36:37], v27, off offset:32
	global_store_short_d16_hi v[30:31], v28, off offset:32
	global_store_short_d16_hi v[38:39], v29, off offset:32
	global_store_short_d16_hi v[34:35], v22, off offset:64
	global_store_short_d16_hi v[36:37], v23, off offset:64
	global_store_short_d16_hi v[30:31], v24, off offset:64
	global_store_short_d16_hi v[38:39], v25, off offset:64
	global_store_short_d16_hi v[34:35], v16, off offset:96
	global_store_short_d16_hi v[36:37], v17, off offset:96
	global_store_short_d16_hi v[30:31], v18, off offset:96
	global_store_short_d16_hi v[38:39], v19, off offset:96
	v_lshl_add_u64 v[16:17], v[20:21], 0, v[84:85]
	v_lshl_add_u64 v[18:19], v[20:21], 0, v[88:89]
	global_store_short_d16_hi v[16:17], v12, off
	global_store_short_d16_hi v[18:19], v13, off
	v_lshl_add_u64 v[12:13], v[20:21], 0, v[82:83]
	v_lshl_add_u64 v[20:21], v[20:21], 0, v[78:79]
	global_store_short_d16_hi v[12:13], v14, off
	global_store_short_d16_hi v[20:21], v15, off
	global_store_short_d16_hi v[16:17], v8, off offset:32
	global_store_short_d16_hi v[18:19], v9, off offset:32
	global_store_short_d16_hi v[12:13], v10, off offset:32
	global_store_short_d16_hi v[20:21], v11, off offset:32
	global_store_short_d16_hi v[16:17], v4, off offset:64
	global_store_short_d16_hi v[18:19], v5, off offset:64
	global_store_short_d16_hi v[12:13], v6, off offset:64
	global_store_short_d16_hi v[20:21], v7, off offset:64
	global_store_short_d16_hi v[16:17], v0, off offset:96
	global_store_short_d16_hi v[18:19], v1, off offset:96
	global_store_short_d16_hi v[12:13], v2, off offset:96
	global_store_short_d16_hi v[20:21], v3, off offset:96
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z8micro_tk13micro_globals
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
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
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 250
		.amdhsa_next_free_sgpr 26
		.amdhsa_accum_offset 252
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
; codeLenInByte = 8472
; NumSgprs: 32
; NumVgprs: 250
; NumAgprs: 0
; TotalNumVgprs: 250
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 250
; AccumOffset: 252
; Occupancy: 2
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 62
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
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         _Z8micro_tk13micro_globals.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     250
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
