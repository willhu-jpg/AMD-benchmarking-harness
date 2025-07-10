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
	s_lshr_b32 s1, s1, 25
	s_add_i32 s3, s2, s1
	s_ashr_i32 s1, s3, 7
	s_lshl_b32 s18, s1, 2
	s_sub_i32 s1, 32, s18
	s_min_i32 s19, s1, 4
	s_abs_i32 s20, s19
	v_cvt_f32_u32_e32 v1, s20
	s_sub_i32 s23, 0, s20
	s_and_b32 s3, s3, 0xffffff80
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
	v_lshlrev_b32_e32 v1, 3, v0
	s_add_u32 s14, s14, s2
	v_and_b32_e32 v32, 56, v1
	v_lshrrev_b32_e32 v1, 3, v0
	s_addc_u32 s15, s15, s3
	v_mad_u64_u32 v[2:3], s[2:3], v1, s6, v[32:33]
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshl_add_u64 v[4:5], v[2:3], 1, s[12:13]
	v_or_b32_e32 v28, 64, v1
	;;#ASMSTART
	global_load_dwordx4 v[10:13], v[4:5], off

	;;#ASMEND
	v_mad_u64_u32 v[4:5], s[2:3], v28, s6, v[32:33]
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshl_add_u64 v[6:7], v[4:5], 1, s[12:13]
	;;#ASMSTART
	global_load_dwordx4 v[14:17], v[6:7], off

	;;#ASMEND
	v_lshl_add_u32 v6, s6, 7, v2
	v_lshlrev_b32_e32 v19, 4, v0
	v_lshlrev_b32_e32 v36, 1, v32
	v_ashrrev_i32_e32 v7, 31, v6
	v_and_b32_e32 v3, 0x1f80, v19
	v_add_u32_e32 v29, s21, v36
	v_lshl_add_u64 v[8:9], v[6:7], 1, s[12:13]
	v_or_b32_e32 v33, 0xc0, v1
	v_add_u32_e32 v5, v29, v3
	;;#ASMSTART
	global_load_dwordx4 v[20:23], v[8:9], off

	;;#ASMEND
	v_mad_u64_u32 v[8:9], s[2:3], v33, s6, v[32:33]
	v_lshrrev_b32_e32 v7, 4, v5
	v_ashrrev_i32_e32 v9, 31, v8
	v_or_b32_e32 v37, 8, v36
	v_and_b32_e32 v7, 0x78, v7
	v_lshl_add_u64 v[24:25], v[8:9], 1, s[12:13]
	v_add_u32_e32 v30, s21, v37
	v_xor_b32_e32 v5, v7, v5
	;;#ASMSTART
	global_load_dwordx4 v[24:27], v[24:25], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v5, v[10:11]

	;;#ASMEND
	v_add_u32_e32 v5, v30, v3
	v_lshrrev_b32_e32 v7, 4, v5
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v5, v7, v5
	;;#ASMSTART
	ds_write_b64 v5, v[12:13]

	;;#ASMEND
	v_or_b32_e32 v5, 0x2000, v3
	v_add_u32_e32 v7, v29, v5
	v_lshrrev_b32_e32 v9, 4, v7
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v7, v9, v7
	;;#ASMSTART
	ds_write_b64 v7, v[14:15]

	;;#ASMEND
	v_add_u32_e32 v7, v30, v5
	v_lshrrev_b32_e32 v9, 4, v7
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v7, v9, v7
	;;#ASMSTART
	ds_write_b64 v7, v[16:17]

	;;#ASMEND
	v_or_b32_e32 v7, 0x4000, v3
	v_add_u32_e32 v9, v29, v7
	v_lshrrev_b32_e32 v10, 4, v9
	v_and_b32_e32 v10, 0x78, v10
	v_xor_b32_e32 v9, v10, v9
	;;#ASMSTART
	ds_write_b64 v9, v[20:21]

	;;#ASMEND
	v_add_u32_e32 v9, v30, v7
	v_lshrrev_b32_e32 v10, 4, v9
	v_and_b32_e32 v10, 0x78, v10
	v_xor_b32_e32 v9, v10, v9
	;;#ASMSTART
	ds_write_b64 v9, v[22:23]

	;;#ASMEND
	v_or_b32_e32 v9, 0x6000, v3
	v_add_u32_e32 v10, v29, v9
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v10, v11, v10
	;;#ASMSTART
	ds_write_b64 v10, v[24:25]

	;;#ASMEND
	v_add_u32_e32 v10, v30, v9
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v10, v11, v10
	;;#ASMSTART
	ds_write_b64 v10, v[26:27]

	;;#ASMEND
	v_mad_u64_u32 v[10:11], s[2:3], v1, s4, v[32:33]
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshl_add_u64 v[12:13], v[10:11], 1, s[14:15]
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	global_load_dwordx4 v[20:23], v[12:13], off

	;;#ASMEND
	v_mad_u64_u32 v[12:13], s[2:3], v28, s4, v[32:33]
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
	v_add_u32_e32 v1, s3, v36
	v_add_u32_e32 v13, v1, v3
	v_lshrrev_b32_e32 v15, 4, v13
	v_ashrrev_i32_e32 v17, 31, v16
	v_and_b32_e32 v15, 0x78, v15
	v_lshl_add_u64 v[32:33], v[16:17], 1, s[14:15]
	v_add_u32_e32 v11, s3, v37
	v_xor_b32_e32 v13, v15, v13
	;;#ASMSTART
	global_load_dwordx4 v[32:35], v[32:33], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v13, v[20:21]

	;;#ASMEND
	v_add_u32_e32 v13, v11, v3
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v13, v15, v13
	;;#ASMSTART
	ds_write_b64 v13, v[22:23]

	;;#ASMEND
	v_add_u32_e32 v13, v1, v5
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v13, v15, v13
	;;#ASMSTART
	ds_write_b64 v13, v[24:25]

	;;#ASMEND
	v_add_u32_e32 v13, v11, v5
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v13, v15, v13
	;;#ASMSTART
	ds_write_b64 v13, v[26:27]

	;;#ASMEND
	v_add_u32_e32 v13, v1, v7
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v13, v15, v13
	;;#ASMSTART
	ds_write_b64 v13, v[28:29]

	;;#ASMEND
	v_add_u32_e32 v13, v11, v7
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v13, v15, v13
	v_add_u32_e32 v1, v1, v9
	;;#ASMSTART
	ds_write_b64 v13, v[30:31]

	;;#ASMEND
	v_lshrrev_b32_e32 v13, 4, v1
	v_and_b32_e32 v13, 0x78, v13
	v_xor_b32_e32 v1, v13, v1
	;;#ASMSTART
	ds_write_b64 v1, v[32:33]

	;;#ASMEND
	v_add_u32_e32 v1, v11, v9
	v_lshrrev_b32_e32 v11, 4, v1
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v1, v11, v1
	;;#ASMSTART
	ds_write_b64 v1, v[34:35]

	;;#ASMEND
	v_lshrrev_b32_e32 v18, 8, v0
	v_cmp_eq_u32_e32 vcc, 1, v18
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
	v_and_b32_e32 v130, 15, v0
	v_bfe_u32 v131, v0, 6, 2
	v_lshlrev_b32_e32 v142, 1, v2
	v_lshrrev_b32_e32 v1, 2, v0
	v_lshlrev_b32_e32 v2, 7, v130
	v_lshlrev_b32_e32 v143, 1, v4
	v_and_b32_e32 v1, 12, v1
	v_lshl_or_b32 v4, v131, 13, v2
	v_lshlrev_b32_e32 v144, 1, v6
	v_lshlrev_b32_e32 v6, 1, v1
	v_add_u32_e32 v4, s3, v4
	v_lshlrev_b32_e32 v145, 1, v8
	v_add_u32_e32 v8, v4, v6
	v_lshrrev_b32_e32 v11, 4, v8
	v_lshl_or_b32 v2, v18, 13, v2
	v_and_b32_e32 v11, 0x78, v11
	v_add_u32_e32 v2, s21, v2
	v_xor_b32_e32 v146, v11, v8
	v_add_u32_e32 v8, v2, v6
	v_lshrrev_b32_e32 v11, 4, v8
	v_and_b32_e32 v11, 0x78, v11
	v_lshlrev_b32_e32 v132, 6, v18
	v_xor_b32_e32 v147, v11, v8
	v_or_b32_e32 v8, v132, v130
	v_lshl_add_u32 v8, v8, 7, s21
	v_add_u32_e32 v8, 0x4000, v8
	v_add_u32_e32 v11, v8, v6
	v_lshrrev_b32_e32 v13, 4, v11
	v_and_b32_e32 v13, 0x78, v13
	v_xor_b32_e32 v148, v13, v11
	v_or_b32_e32 v11, 32, v6
	v_add_u32_e32 v13, v4, v11
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v141, v15, v13
	v_add_u32_e32 v13, v2, v11
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_add_u32_e32 v11, v8, v11
	v_xor_b32_e32 v140, v15, v13
	v_lshrrev_b32_e32 v13, 4, v11
	v_and_b32_e32 v13, 0x78, v13
	v_xor_b32_e32 v139, v13, v11
	v_or_b32_e32 v11, 64, v6
	v_add_u32_e32 v13, v4, v11
	v_or_b32_e32 v6, 0x60, v6
	v_lshrrev_b32_e32 v15, 4, v13
	v_add_u32_e32 v4, v4, v6
	v_and_b32_e32 v15, 0x78, v15
	v_lshlrev_b32_e32 v149, 1, v10
	v_lshrrev_b32_e32 v10, 4, v4
	v_xor_b32_e32 v135, v15, v13
	v_add_u32_e32 v13, v2, v11
	v_and_b32_e32 v10, 0x78, v10
	v_add_u32_e32 v2, v2, v6
	v_xor_b32_e32 v138, v10, v4
	v_lshrrev_b32_e32 v4, 4, v2
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v137, v4, v2
	v_add_u32_e32 v2, v8, v6
	v_lshrrev_b32_e32 v4, 4, v2
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v4, 0x78, v4
	v_and_b32_e32 v15, 0x78, v15
	v_add_u32_e32 v11, v8, v11
	v_xor_b32_e32 v136, v4, v2
	v_and_b32_e32 v2, 0x70, v19
	v_xor_b32_e32 v134, v15, v13
	v_lshrrev_b32_e32 v13, 4, v11
	v_add_u32_e32 v4, s21, v2
	v_and_b32_e32 v13, 0x78, v13
	v_add_u32_e32 v10, v4, v3
	v_xor_b32_e32 v133, v13, v11
	v_or_b32_e32 v6, 8, v2
	v_lshrrev_b32_e32 v11, 4, v10
	v_add_u32_e32 v8, s21, v6
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v153, v11, v10
	v_add_u32_e32 v10, v8, v3
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v154, v11, v10
	v_add_u32_e32 v10, v4, v5
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v155, v11, v10
	v_add_u32_e32 v10, v8, v5
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v156, v11, v10
	v_add_u32_e32 v10, v4, v7
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v157, v11, v10
	v_add_u32_e32 v10, v8, v7
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_add_u32_e32 v4, v4, v9
	v_xor_b32_e32 v158, v11, v10
	v_lshrrev_b32_e32 v10, 4, v4
	v_and_b32_e32 v10, 0x78, v10
	v_xor_b32_e32 v159, v10, v4
	v_add_u32_e32 v4, v8, v9
	v_lshrrev_b32_e32 v8, 4, v4
	v_and_b32_e32 v8, 0x78, v8
	v_add_u32_e32 v2, s3, v2
	v_xor_b32_e32 v160, v8, v4
	v_add_u32_e32 v4, s3, v6
	v_add_u32_e32 v6, v2, v3
	v_lshrrev_b32_e32 v8, 4, v6
	v_and_b32_e32 v8, 0x78, v8
	v_add_u32_e32 v3, v4, v3
	v_xor_b32_e32 v161, v8, v6
	v_lshrrev_b32_e32 v6, 4, v3
	v_and_b32_e32 v6, 0x78, v6
	v_xor_b32_e32 v162, v6, v3
	v_add_u32_e32 v3, v2, v5
	v_lshrrev_b32_e32 v6, 4, v3
	v_and_b32_e32 v6, 0x78, v6
	v_xor_b32_e32 v163, v6, v3
	v_add_u32_e32 v3, v4, v5
	v_lshrrev_b32_e32 v5, 4, v3
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v164, v5, v3
	v_add_u32_e32 v3, v2, v7
	v_lshrrev_b32_e32 v5, 4, v3
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v165, v5, v3
	v_add_u32_e32 v3, v4, v7
	v_lshrrev_b32_e32 v5, 4, v3
	v_and_b32_e32 v5, 0x78, v5
	v_add_u32_e32 v2, v2, v9
	v_xor_b32_e32 v166, v5, v3
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v167, v3, v2
	v_add_u32_e32 v2, v4, v9
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v168, v3, v2
	v_mov_b32_e32 v2, 0
	s_lshl_b32 s2, s6, 9
	s_lshl_b32 s6, s4, 9
	v_lshlrev_b32_e32 v150, 1, v12
	v_lshlrev_b32_e32 v151, 1, v14
	v_lshlrev_b32_e32 v152, 1, v16
	s_mov_b64 s[16:17], 0x80
	s_mov_b32 s3, 0x110000
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
	buffer_load_dwordx4 v[170:173], v142, s[0:3], 0 offen
	buffer_load_dwordx4 v[174:177], v143, s[0:3], 0 offen
	buffer_load_dwordx4 v[178:181], v144, s[0:3], 0 offen
	buffer_load_dwordx4 v[182:185], v145, s[0:3], 0 offen
	;;#ASMSTART
	ds_read_b64 v[186:187], v146 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[188:189], v146 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[190:191], v146 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[192:193], v146 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[194:195], v147 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[196:197], v147 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[198:199], v147 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[200:201], v147 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[202:203], v148 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[204:205], v148 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[206:207], v148 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[208:209], v148 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[194:195], v[186:187], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[194:195], v[188:189], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[194:195], v[190:191], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[194:195], v[192:193], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[196:197], v[186:187], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[196:197], v[188:189], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[196:197], v[190:191], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[196:197], v[192:193], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[198:199], v[186:187], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[198:199], v[188:189], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[198:199], v[190:191], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[198:199], v[192:193], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[200:201], v[186:187], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[200:201], v[188:189], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[200:201], v[190:191], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[200:201], v[192:193], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[202:203], v[186:187], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[202:203], v[188:189], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[202:203], v[190:191], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[202:203], v[192:193], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[204:205], v[186:187], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[204:205], v[188:189], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[204:205], v[190:191], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[204:205], v[192:193], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[206:207], v[186:187], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[206:207], v[188:189], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[206:207], v[190:191], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[206:207], v[192:193], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[208:209], v[186:187], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[208:209], v[188:189], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[208:209], v[190:191], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[208:209], v[192:193], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[186:187], v141 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[188:189], v141 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[190:191], v141 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[192:193], v141 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[194:195], v140 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[196:197], v140 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[198:199], v140 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[200:201], v140 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[202:203], v139 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[204:205], v139 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[206:207], v139 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[208:209], v139 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[210:211], v135 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[212:213], v135 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[214:215], v135 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[216:217], v135 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[218:219], v134 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[220:221], v134 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[222:223], v134 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[224:225], v134 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[226:227], v133 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[228:229], v133 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[230:231], v133 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[232:233], v133 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[194:195], v[186:187], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[194:195], v[188:189], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[194:195], v[190:191], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[194:195], v[192:193], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[196:197], v[186:187], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[196:197], v[188:189], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[196:197], v[190:191], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[196:197], v[192:193], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[198:199], v[186:187], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[198:199], v[188:189], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[198:199], v[190:191], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[198:199], v[192:193], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[200:201], v[186:187], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[200:201], v[188:189], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[200:201], v[190:191], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[200:201], v[192:193], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[202:203], v[186:187], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[202:203], v[188:189], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[202:203], v[190:191], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[202:203], v[192:193], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[204:205], v[186:187], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[204:205], v[188:189], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[204:205], v[190:191], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[204:205], v[192:193], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[206:207], v[186:187], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[206:207], v[188:189], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[206:207], v[190:191], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[206:207], v[192:193], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[208:209], v[186:187], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[208:209], v[188:189], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[208:209], v[190:191], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[208:209], v[192:193], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_add_u32 s4, s14, s16
	s_addc_u32 s5, s15, s17
	s_mov_b32 s7, s3
	buffer_load_dwordx4 v[186:189], v149, s[4:7], 0 offen
	buffer_load_dwordx4 v[190:193], v150, s[4:7], 0 offen
	buffer_load_dwordx4 v[194:197], v151, s[4:7], 0 offen
	buffer_load_dwordx4 v[198:201], v152, s[4:7], 0 offen
	;;#ASMSTART
	ds_read_b64 v[202:203], v138 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[204:205], v138 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[206:207], v138 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[208:209], v138 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[234:235], v137 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[236:237], v137 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[238:239], v137 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[240:241], v137 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[242:243], v136 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[244:245], v136 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[246:247], v136 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[248:249], v136 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[218:219], v[210:211], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[218:219], v[212:213], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[218:219], v[214:215], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[218:219], v[216:217], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[220:221], v[210:211], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[220:221], v[212:213], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[220:221], v[214:215], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[220:221], v[216:217], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[222:223], v[210:211], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[222:223], v[212:213], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[222:223], v[214:215], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[222:223], v[216:217], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[224:225], v[210:211], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[224:225], v[212:213], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[224:225], v[214:215], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[224:225], v[216:217], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[226:227], v[210:211], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[226:227], v[212:213], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[226:227], v[214:215], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[226:227], v[216:217], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[228:229], v[210:211], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[228:229], v[212:213], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[228:229], v[214:215], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[228:229], v[216:217], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[230:231], v[210:211], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[230:231], v[212:213], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[230:231], v[214:215], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[230:231], v[216:217], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[232:233], v[210:211], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[232:233], v[212:213], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[232:233], v[214:215], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[232:233], v[216:217], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_waitcnt vmcnt(7)
	;;#ASMSTART
	ds_write_b64 v153, v[170:171]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v154, v[172:173]

	;;#ASMEND
	s_waitcnt vmcnt(6)
	;;#ASMSTART
	ds_write_b64 v155, v[174:175]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v156, v[176:177]

	;;#ASMEND
	s_waitcnt vmcnt(5)
	;;#ASMSTART
	ds_write_b64 v157, v[178:179]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v158, v[180:181]

	;;#ASMEND
	s_waitcnt vmcnt(4)
	;;#ASMSTART
	ds_write_b64 v159, v[182:183]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v160, v[184:185]

	;;#ASMEND
	s_waitcnt vmcnt(3)
	;;#ASMSTART
	ds_write_b64 v161, v[186:187]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v162, v[188:189]

	;;#ASMEND
	s_waitcnt vmcnt(2)
	;;#ASMSTART
	ds_write_b64 v163, v[190:191]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v164, v[192:193]

	;;#ASMEND
	s_waitcnt vmcnt(1)
	;;#ASMSTART
	ds_write_b64 v165, v[194:195]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v166, v[196:197]

	;;#ASMEND
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v167, v[198:199]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v168, v[200:201]

	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[234:235], v[202:203], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[234:235], v[204:205], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[234:235], v[206:207], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[234:235], v[208:209], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[236:237], v[202:203], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[236:237], v[204:205], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[236:237], v[206:207], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[236:237], v[208:209], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[238:239], v[202:203], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[238:239], v[204:205], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[238:239], v[206:207], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[238:239], v[208:209], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[240:241], v[202:203], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[240:241], v[204:205], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[240:241], v[206:207], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[240:241], v[208:209], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[242:243], v[202:203], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[242:243], v[204:205], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[242:243], v[206:207], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[242:243], v[208:209], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[244:245], v[202:203], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[244:245], v[204:205], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[244:245], v[206:207], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[244:245], v[208:209], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[246:247], v[202:203], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[246:247], v[204:205], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[246:247], v[206:207], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[246:247], v[208:209], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[248:249], v[202:203], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[248:249], v[204:205], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[248:249], v[206:207], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[248:249], v[208:209], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_add_u32 s16, s16, 0x80
	s_addc_u32 s17, s17, 0
	s_cmpk_eq_i32 s16, 0x4000
	s_cbranch_scc0 .LBB0_3
; %bb.4:
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[142:143], v146 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[144:145], v146 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[150:151], v146 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[152:153], v146 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[154:155], v147 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[156:157], v147 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[158:159], v147 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[146:147], v147 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[160:161], v148 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[162:163], v148 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[164:165], v148 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[148:149], v148 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[154:155], v[142:143], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[154:155], v[144:145], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[154:155], v[150:151], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[154:155], v[152:153], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[156:157], v[142:143], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[156:157], v[144:145], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[156:157], v[150:151], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[156:157], v[152:153], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[158:159], v[142:143], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[158:159], v[144:145], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[158:159], v[150:151], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[158:159], v[152:153], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[146:147], v[142:143], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[146:147], v[144:145], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[146:147], v[150:151], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[146:147], v[152:153], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[160:161], v[142:143], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[160:161], v[144:145], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[160:161], v[150:151], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[160:161], v[152:153], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[162:163], v[142:143], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[162:163], v[144:145], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[162:163], v[150:151], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[162:163], v[152:153], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[164:165], v[142:143], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[164:165], v[144:145], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[164:165], v[150:151], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[164:165], v[152:153], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[148:149], v[142:143], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[148:149], v[144:145], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[148:149], v[150:151], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[148:149], v[152:153], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[142:143], v141 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[144:145], v141 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[146:147], v141 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[148:149], v141 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[150:151], v140 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[152:153], v140 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[154:155], v140 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[140:141], v140 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[156:157], v139 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[158:159], v139 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[160:161], v139 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[162:163], v139 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[150:151], v[142:143], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[150:151], v[144:145], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[150:151], v[146:147], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[150:151], v[148:149], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[152:153], v[142:143], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[152:153], v[144:145], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[152:153], v[146:147], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[152:153], v[148:149], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[154:155], v[142:143], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[154:155], v[144:145], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[154:155], v[146:147], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[154:155], v[148:149], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[140:141], v[142:143], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[140:141], v[144:145], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[140:141], v[146:147], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[140:141], v[148:149], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[156:157], v[142:143], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[156:157], v[144:145], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[156:157], v[146:147], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[156:157], v[148:149], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[158:159], v[142:143], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[158:159], v[144:145], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[158:159], v[146:147], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[158:159], v[148:149], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[160:161], v[142:143], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[160:161], v[144:145], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[160:161], v[146:147], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[160:161], v[148:149], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[162:163], v[142:143], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[162:163], v[144:145], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[162:163], v[146:147], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[162:163], v[148:149], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	ds_read_b64 v[140:141], v135 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[142:143], v135 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[144:145], v135 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[146:147], v135 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[148:149], v134 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[150:151], v134 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[152:153], v134 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[134:135], v134 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[154:155], v133 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[156:157], v133 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[158:159], v133 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[160:161], v133 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[162:163], v138 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[164:165], v138 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[166:167], v138 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[138:139], v138 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[168:169], v137 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[170:171], v137 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[172:173], v137 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[174:175], v137 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[176:177], v136 offset:0

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[178:179], v136 offset:0x800

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[180:181], v136 offset:0x1000

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[136:137], v136 offset:0x1800

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[148:149], v[140:141], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[148:149], v[142:143], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[148:149], v[144:145], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[148:149], v[146:147], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[150:151], v[140:141], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[150:151], v[142:143], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[150:151], v[144:145], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[150:151], v[146:147], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[152:153], v[140:141], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[152:153], v[142:143], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[152:153], v[144:145], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[152:153], v[146:147], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[134:135], v[140:141], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[134:135], v[142:143], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[134:135], v[144:145], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[134:135], v[146:147], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[154:155], v[140:141], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[154:155], v[142:143], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[154:155], v[144:145], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[154:155], v[146:147], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[156:157], v[140:141], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[156:157], v[142:143], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[156:157], v[144:145], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[156:157], v[146:147], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[158:159], v[140:141], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[158:159], v[142:143], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[158:159], v[144:145], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[158:159], v[146:147], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[160:161], v[140:141], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[160:161], v[142:143], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[160:161], v[144:145], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[160:161], v[146:147], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[126:129], v[168:169], v[162:163], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[168:169], v[164:165], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[168:169], v[166:167], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[168:169], v[138:139], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[170:171], v[162:163], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[170:171], v[164:165], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[170:171], v[166:167], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[170:171], v[138:139], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[172:173], v[162:163], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[172:173], v[164:165], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[172:173], v[166:167], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[172:173], v[138:139], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[174:175], v[162:163], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[174:175], v[164:165], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[174:175], v[166:167], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[174:175], v[138:139], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[176:177], v[162:163], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[176:177], v[164:165], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[176:177], v[166:167], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[176:177], v[138:139], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[178:179], v[162:163], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[178:179], v[164:165], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[178:179], v[166:167], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[178:179], v[138:139], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[180:181], v[162:163], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[180:181], v[164:165], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[180:181], v[166:167], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[180:181], v[138:139], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[136:137], v[162:163], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[136:137], v[164:165], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[136:137], v[166:167], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[136:137], v[138:139], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_movk_i32 s0, 0x100
	v_cmp_gt_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_6
; %bb.5:
	s_barrier
.LBB0_6:
	s_or_b64 exec, exec, s[0:1]
	v_or_b32_e32 v150, s19, v132
	v_lshl_or_b32 v132, v131, 6, s20
	v_mul_lo_u32 v0, s11, v150
	s_mul_i32 s2, s10, s18
	v_mad_u64_u32 v[134:135], s[0:1], s10, v150, 0
	v_mad_u64_u32 v[136:137], s[0:1], v1, s10, v[130:131]
	v_add3_u32 v135, v135, s2, v0
	v_ashrrev_i32_e32 v133, 31, v132
	v_ashrrev_i32_e32 v137, 31, v136
	v_lshl_add_u64 v[134:135], v[134:135], 1, s[8:9]
	v_lshlrev_b64 v[132:133], 1, v[132:133]
	v_lshlrev_b64 v[138:139], 1, v[136:137]
	v_add_u32_e32 v136, s10, v136
	v_lshl_add_u64 v[134:135], v[134:135], 0, v[132:133]
	v_ashrrev_i32_e32 v137, 31, v136
	v_lshl_add_u64 v[140:141], v[134:135], 0, v[138:139]
	v_lshlrev_b64 v[142:143], 1, v[136:137]
	global_store_short_d16_hi v[140:141], v126, off
	v_lshl_add_u64 v[144:145], v[134:135], 0, v[142:143]
	v_add_u32_e32 v126, s10, v136
	global_store_short_d16_hi v[144:145], v127, off
	v_ashrrev_i32_e32 v127, 31, v126
	v_lshlrev_b64 v[136:137], 1, v[126:127]
	v_add_u32_e32 v126, s10, v126
	v_ashrrev_i32_e32 v127, 31, v126
	v_lshlrev_b64 v[126:127], 1, v[126:127]
	v_lshl_add_u64 v[146:147], v[134:135], 0, v[136:137]
	v_lshl_add_u64 v[148:149], v[134:135], 0, v[126:127]
	v_or_b32_e32 v0, 16, v1
	global_store_short_d16_hi v[146:147], v128, off
	global_store_short_d16_hi v[148:149], v129, off
	global_store_short_d16_hi v[140:141], v122, off offset:32
	global_store_short_d16_hi v[144:145], v123, off offset:32
	global_store_short_d16_hi v[146:147], v124, off offset:32
	global_store_short_d16_hi v[148:149], v125, off offset:32
	global_store_short_d16_hi v[140:141], v118, off offset:64
	global_store_short_d16_hi v[144:145], v119, off offset:64
	global_store_short_d16_hi v[146:147], v120, off offset:64
	global_store_short_d16_hi v[148:149], v121, off offset:64
	global_store_short_d16_hi v[140:141], v114, off offset:96
	global_store_short_d16_hi v[144:145], v115, off offset:96
	global_store_short_d16_hi v[146:147], v116, off offset:96
	global_store_short_d16_hi v[148:149], v117, off offset:96
	v_mad_u64_u32 v[114:115], s[0:1], v0, s10, v[130:131]
	v_ashrrev_i32_e32 v115, 31, v114
	v_lshlrev_b64 v[116:117], 1, v[114:115]
	v_add_u32_e32 v114, s10, v114
	v_ashrrev_i32_e32 v115, 31, v114
	v_lshl_add_u64 v[118:119], v[134:135], 0, v[116:117]
	v_lshlrev_b64 v[120:121], 1, v[114:115]
	global_store_short_d16_hi v[118:119], v110, off
	v_lshl_add_u64 v[122:123], v[134:135], 0, v[120:121]
	v_add_u32_e32 v110, s10, v114
	global_store_short_d16_hi v[122:123], v111, off
	v_ashrrev_i32_e32 v111, 31, v110
	v_lshlrev_b64 v[114:115], 1, v[110:111]
	v_add_u32_e32 v110, s10, v110
	v_ashrrev_i32_e32 v111, 31, v110
	v_lshlrev_b64 v[110:111], 1, v[110:111]
	v_lshl_add_u64 v[124:125], v[134:135], 0, v[114:115]
	v_lshl_add_u64 v[128:129], v[134:135], 0, v[110:111]
	v_or_b32_e32 v0, 32, v1
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
	v_mad_u64_u32 v[98:99], s[0:1], v0, s10, v[130:131]
	v_ashrrev_i32_e32 v99, 31, v98
	v_lshlrev_b64 v[100:101], 1, v[98:99]
	v_add_u32_e32 v98, s10, v98
	v_ashrrev_i32_e32 v99, 31, v98
	v_lshl_add_u64 v[102:103], v[134:135], 0, v[100:101]
	v_lshlrev_b64 v[104:105], 1, v[98:99]
	global_store_short_d16_hi v[102:103], v94, off
	v_lshl_add_u64 v[106:107], v[134:135], 0, v[104:105]
	v_add_u32_e32 v94, s10, v98
	global_store_short_d16_hi v[106:107], v95, off
	v_ashrrev_i32_e32 v95, 31, v94
	v_lshlrev_b64 v[98:99], 1, v[94:95]
	v_add_u32_e32 v94, s10, v94
	v_ashrrev_i32_e32 v95, 31, v94
	v_or_b32_e32 v0, 48, v1
	v_lshlrev_b64 v[94:95], 1, v[94:95]
	v_mad_u64_u32 v[0:1], s[0:1], v0, s10, v[130:131]
	v_lshl_add_u64 v[108:109], v[134:135], 0, v[98:99]
	v_lshl_add_u64 v[112:113], v[134:135], 0, v[94:95]
	v_ashrrev_i32_e32 v1, 31, v0
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
	v_lshlrev_b64 v[82:83], 1, v[0:1]
	v_add_u32_e32 v0, s10, v0
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[86:87], 1, v[0:1]
	v_add_u32_e32 v0, s10, v0
	v_lshl_add_u64 v[84:85], v[134:135], 0, v[82:83]
	v_lshl_add_u64 v[88:89], v[134:135], 0, v[86:87]
	v_ashrrev_i32_e32 v1, 31, v0
	global_store_short_d16_hi v[84:85], v78, off
	global_store_short_d16_hi v[88:89], v79, off
	v_lshlrev_b64 v[78:79], 1, v[0:1]
	v_add_u32_e32 v0, s10, v0
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_lshl_add_u64 v[90:91], v[134:135], 0, v[78:79]
	v_lshl_add_u64 v[92:93], v[134:135], 0, v[0:1]
	global_store_short_d16_hi v[90:91], v80, off
	global_store_short_d16_hi v[92:93], v81, off
	global_store_short_d16_hi v[84:85], v74, off offset:32
	global_store_short_d16_hi v[88:89], v75, off offset:32
	global_store_short_d16_hi v[90:91], v76, off offset:32
	global_store_short_d16_hi v[92:93], v77, off offset:32
	global_store_short_d16_hi v[84:85], v70, off offset:64
	global_store_short_d16_hi v[88:89], v71, off offset:64
	global_store_short_d16_hi v[90:91], v72, off offset:64
	global_store_short_d16_hi v[92:93], v73, off offset:64
	global_store_short_d16_hi v[84:85], v66, off offset:96
	global_store_short_d16_hi v[88:89], v67, off offset:96
	global_store_short_d16_hi v[90:91], v68, off offset:96
	global_store_short_d16_hi v[92:93], v69, off offset:96
	v_add_u32_e32 v66, 0x80, v150
	v_ashrrev_i32_e32 v67, 31, v66
	v_mul_lo_u32 v68, s10, v67
	v_mul_lo_u32 v69, s11, v66
	v_mad_u64_u32 v[66:67], s[0:1], s10, v66, 0
	v_add3_u32 v67, v67, v68, v69
	v_lshl_add_u64 v[66:67], v[66:67], 1, s[8:9]
	v_lshl_add_u64 v[66:67], v[66:67], 0, v[132:133]
	v_lshl_add_u64 v[68:69], v[66:67], 0, v[138:139]
	v_lshl_add_u64 v[70:71], v[66:67], 0, v[142:143]
	global_store_short_d16_hi v[68:69], v62, off
	global_store_short_d16_hi v[70:71], v63, off
	v_lshl_add_u64 v[62:63], v[66:67], 0, v[136:137]
	v_lshl_add_u64 v[72:73], v[66:67], 0, v[126:127]
	global_store_short_d16_hi v[62:63], v64, off
	global_store_short_d16_hi v[72:73], v65, off
	global_store_short_d16_hi v[68:69], v58, off offset:32
	global_store_short_d16_hi v[70:71], v59, off offset:32
	global_store_short_d16_hi v[62:63], v60, off offset:32
	global_store_short_d16_hi v[72:73], v61, off offset:32
	global_store_short_d16_hi v[68:69], v54, off offset:64
	global_store_short_d16_hi v[70:71], v55, off offset:64
	global_store_short_d16_hi v[62:63], v56, off offset:64
	global_store_short_d16_hi v[72:73], v57, off offset:64
	global_store_short_d16_hi v[68:69], v50, off offset:96
	global_store_short_d16_hi v[70:71], v51, off offset:96
	global_store_short_d16_hi v[62:63], v52, off offset:96
	global_store_short_d16_hi v[72:73], v53, off offset:96
	v_lshl_add_u64 v[50:51], v[66:67], 0, v[116:117]
	v_lshl_add_u64 v[52:53], v[66:67], 0, v[120:121]
	global_store_short_d16_hi v[50:51], v46, off
	global_store_short_d16_hi v[52:53], v47, off
	v_lshl_add_u64 v[46:47], v[66:67], 0, v[114:115]
	v_lshl_add_u64 v[54:55], v[66:67], 0, v[110:111]
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
	v_lshl_add_u64 v[34:35], v[66:67], 0, v[100:101]
	v_lshl_add_u64 v[36:37], v[66:67], 0, v[104:105]
	global_store_short_d16_hi v[34:35], v30, off
	global_store_short_d16_hi v[36:37], v31, off
	v_lshl_add_u64 v[30:31], v[66:67], 0, v[98:99]
	v_lshl_add_u64 v[38:39], v[66:67], 0, v[94:95]
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
	global_store_short_d16_hi v[34:35], v18, off offset:96
	global_store_short_d16_hi v[36:37], v19, off offset:96
	global_store_short_d16_hi v[30:31], v20, off offset:96
	global_store_short_d16_hi v[38:39], v21, off offset:96
	v_lshl_add_u64 v[18:19], v[66:67], 0, v[82:83]
	v_lshl_add_u64 v[20:21], v[66:67], 0, v[86:87]
	global_store_short_d16_hi v[18:19], v14, off
	global_store_short_d16_hi v[20:21], v15, off
	v_lshl_add_u64 v[14:15], v[66:67], 0, v[78:79]
	v_lshl_add_u64 v[0:1], v[66:67], 0, v[0:1]
	global_store_short_d16_hi v[14:15], v16, off
	global_store_short_d16_hi v[0:1], v17, off
	global_store_short_d16_hi v[18:19], v10, off offset:32
	global_store_short_d16_hi v[20:21], v11, off offset:32
	global_store_short_d16_hi v[14:15], v12, off offset:32
	global_store_short_d16_hi v[0:1], v13, off offset:32
	global_store_short_d16_hi v[18:19], v6, off offset:64
	global_store_short_d16_hi v[20:21], v7, off offset:64
	global_store_short_d16_hi v[14:15], v8, off offset:64
	global_store_short_d16_hi v[0:1], v9, off offset:64
	global_store_short_d16_hi v[18:19], v2, off offset:96
	global_store_short_d16_hi v[20:21], v3, off offset:96
	global_store_short_d16_hi v[14:15], v4, off offset:96
	global_store_short_d16_hi v[0:1], v5, off offset:96
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
; codeLenInByte = 7468
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
