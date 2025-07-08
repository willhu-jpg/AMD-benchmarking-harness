	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.protected	_Z8micro_tk13micro_globals ; -- Begin function _Z8micro_tk13micro_globals
	.globl	_Z8micro_tk13micro_globals
	.p2align	8
	.type	_Z8micro_tk13micro_globals,@function
_Z8micro_tk13micro_globals:             ; @_Z8micro_tk13micro_globals
; %bb.0:
	s_load_dwordx2 s[16:17], s[0:1], 0x0
	s_load_dwordx2 s[4:5], s[0:1], 0x20
	s_load_dwordx2 s[12:13], s[0:1], 0x30
	s_load_dwordx2 s[6:7], s[0:1], 0x50
	s_cmp_lg_u32 0, -1
	s_load_dwordx2 s[18:19], s[0:1], 0x90
	s_cselect_b32 s8, 0, 0
	s_and_b32 s9, s8, -16
	s_mov_b32 s15, 0
	s_and_b32 s14, s8, 15
	s_add_i32 s9, s9, 16
	s_cmp_eq_u64 s[14:15], 0
	s_cselect_b32 s21, s8, s9
	s_load_dwordx2 s[8:9], s[0:1], 0x60
	s_load_dwordx2 s[10:11], s[0:1], 0x80
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s0, s18, s3
	s_add_i32 s0, s0, s2
	s_ashr_i32 s2, s0, 31
	s_lshr_b32 s2, s2, 29
	s_add_i32 s2, s0, s2
	s_mul_i32 s1, s19, s18
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
	s_min_i32 s3, s3, 16
	s_abs_i32 s18, s3
	v_cvt_f32_u32_e32 v1, s18
	s_sub_i32 s20, 0, s18
	s_add_i32 s22, s21, 0x8000
	s_and_b32 s1, s1, 0xfffffe00
	v_rcp_iflag_f32_e32 v1, v1
	s_and_b32 s19, s22, -16
	s_sub_i32 s0, s0, s1
	s_add_i32 s23, s19, 16
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	s_abs_i32 s19, s0
	s_xor_b32 s1, s0, s3
	s_and_b32 s14, s22, 15
	v_readfirstlane_b32 s24, v1
	s_mul_i32 s20, s20, s24
	s_mul_hi_u32 s20, s24, s20
	s_add_i32 s24, s24, s20
	s_mul_hi_u32 s20, s19, s24
	s_mul_i32 s24, s20, s18
	s_sub_i32 s19, s19, s24
	s_ashr_i32 s1, s1, 31
	s_add_i32 s24, s20, 1
	s_sub_i32 s25, s19, s18
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s20, s24, s20
	s_cselect_b32 s19, s25, s19
	s_add_i32 s24, s20, 1
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s18, s24, s20
	s_xor_b32 s18, s18, s1
	s_sub_i32 s20, s18, s1
	s_mul_i32 s1, s20, s3
	s_sub_i32 s0, s0, s1
	s_add_i32 s2, s2, s0
	s_lshl_b32 s19, s2, 8
	s_ashr_i32 s18, s19, 31
	s_mul_i32 s0, s4, s18
	s_mul_hi_u32 s1, s4, s19
	s_add_i32 s0, s1, s0
	s_mul_i32 s1, s5, s19
	s_add_i32 s1, s0, s1
	s_mul_i32 s0, s4, s19
	s_lshl_b64 s[0:1], s[0:1], 1
	s_add_u32 s0, s16, s0
	s_addc_u32 s1, s17, s1
	s_lshl_b32 s20, s20, 8
	s_ashr_i32 s2, s20, 31
	s_mul_i32 s2, s6, s2
	s_mul_hi_u32 s3, s6, s20
	s_add_i32 s2, s3, s2
	s_mul_i32 s3, s7, s20
	s_add_i32 s3, s2, s3
	s_mul_i32 s2, s6, s20
	s_lshl_b64 s[2:3], s[2:3], 1
	v_lshlrev_b32_e32 v1, 3, v0
	s_add_u32 s16, s12, s2
	v_and_b32_e32 v18, 56, v1
	v_lshrrev_b32_e32 v1, 3, v0
	s_addc_u32 s17, s13, s3
	v_mad_u64_u32 v[20:21], s[2:3], v1, s4, v[18:19]
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshl_add_u64 v[2:3], v[20:21], 1, s[0:1]
	v_or_b32_e32 v19, 64, v1
	v_or_b32_e32 v21, 0xc0, v1
	v_mad_u64_u32 v[22:23], s[2:3], v19, s4, v[18:19]
	v_mad_u64_u32 v[26:27], s[2:3], v21, s4, v[18:19]
	v_ashrrev_i32_e32 v23, 31, v22
	v_lshl_add_u32 v24, s4, 7, v20
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshl_add_u64 v[6:7], v[22:23], 1, s[0:1]
	v_ashrrev_i32_e32 v25, 31, v24
	v_lshl_add_u64 v[14:15], v[26:27], 1, s[0:1]
	v_lshlrev_b32_e32 v23, 4, v0
	v_lshlrev_b32_e32 v27, 1, v18
	v_lshl_add_u64 v[10:11], v[24:25], 1, s[0:1]
	v_and_b32_e32 v25, 0x1f80, v23
	v_add_u32_e32 v28, s21, v27
	;;#ASMSTART
	global_load_dwordx4 v[2:5], v[2:3], off

	;;#ASMEND
	v_add_u32_e32 v30, v28, v25
	;;#ASMSTART
	global_load_dwordx4 v[6:9], v[6:7], off

	;;#ASMEND
	v_or_b32_e32 v34, 8, v27
	v_lshrrev_b32_e32 v31, 4, v30
	;;#ASMSTART
	global_load_dwordx4 v[10:13], v[10:11], off

	;;#ASMEND
	v_add_u32_e32 v29, s21, v34
	v_and_b32_e32 v31, 0x78, v31
	;;#ASMSTART
	global_load_dwordx4 v[14:17], v[14:15], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	v_xor_b32_e32 v30, v31, v30
	;;#ASMSTART
	ds_write_b64 v30, v[2:3]

	;;#ASMEND
	v_add_u32_e32 v2, v29, v25
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_or_b32_e32 v35, 0x2000, v25
	;;#ASMSTART
	ds_write_b64 v2, v[4:5]

	;;#ASMEND
	v_add_u32_e32 v2, v28, v35
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[6:7]

	;;#ASMEND
	v_add_u32_e32 v2, v29, v35
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_or_b32_e32 v36, 0x4000, v25
	;;#ASMSTART
	ds_write_b64 v2, v[8:9]

	;;#ASMEND
	v_add_u32_e32 v2, v28, v36
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[10:11]

	;;#ASMEND
	v_add_u32_e32 v2, v29, v36
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_or_b32_e32 v37, 0x6000, v25
	;;#ASMSTART
	ds_write_b64 v2, v[12:13]

	;;#ASMEND
	v_add_u32_e32 v2, v28, v37
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[14:15]

	;;#ASMEND
	v_add_u32_e32 v2, v29, v37
	v_lshrrev_b32_e32 v3, 4, v2
	s_cmp_eq_u64 s[14:15], 0
	v_and_b32_e32 v3, 0x78, v3
	v_mad_u64_u32 v[28:29], s[2:3], v1, s6, v[18:19]
	v_mad_u64_u32 v[30:31], s[2:3], v19, s6, v[18:19]
	v_mad_u64_u32 v[18:19], s[2:3], v21, s6, v[18:19]
	v_xor_b32_e32 v2, v3, v2
	v_ashrrev_i32_e32 v29, 31, v28
	s_cselect_b32 s2, s22, s23
	;;#ASMSTART
	ds_write_b64 v2, v[16:17]

	;;#ASMEND
	v_lshl_add_u64 v[2:3], v[28:29], 1, s[16:17]
	v_ashrrev_i32_e32 v31, 31, v30
	v_lshl_add_u32 v32, s6, 7, v28
	v_add_u32_e32 v1, s2, v27
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	global_load_dwordx4 v[2:5], v[2:3], off

	;;#ASMEND
	v_lshl_add_u64 v[6:7], v[30:31], 1, s[16:17]
	v_ashrrev_i32_e32 v33, 31, v32
	v_add_u32_e32 v21, v1, v25
	;;#ASMSTART
	global_load_dwordx4 v[6:9], v[6:7], off

	;;#ASMEND
	v_lshl_add_u64 v[10:11], v[32:33], 1, s[16:17]
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshrrev_b32_e32 v27, 4, v21
	;;#ASMSTART
	global_load_dwordx4 v[10:13], v[10:11], off

	;;#ASMEND
	v_lshl_add_u64 v[14:15], v[18:19], 1, s[16:17]
	v_add_u32_e32 v19, s2, v34
	v_and_b32_e32 v27, 0x78, v27
	;;#ASMSTART
	global_load_dwordx4 v[14:17], v[14:15], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	v_xor_b32_e32 v21, v27, v21
	;;#ASMSTART
	ds_write_b64 v21, v[2:3]

	;;#ASMEND
	v_add_u32_e32 v2, v19, v25
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[4:5]

	;;#ASMEND
	v_add_u32_e32 v2, v1, v35
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[6:7]

	;;#ASMEND
	v_add_u32_e32 v2, v19, v35
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[8:9]

	;;#ASMEND
	v_add_u32_e32 v2, v1, v36
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	;;#ASMSTART
	ds_write_b64 v2, v[10:11]

	;;#ASMEND
	v_add_u32_e32 v2, v19, v36
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_add_u32_e32 v1, v1, v37
	;;#ASMSTART
	ds_write_b64 v2, v[12:13]

	;;#ASMEND
	v_lshrrev_b32_e32 v2, 4, v1
	v_and_b32_e32 v2, 0x78, v2
	v_xor_b32_e32 v1, v2, v1
	;;#ASMSTART
	ds_write_b64 v1, v[14:15]

	;;#ASMEND
	v_add_u32_e32 v1, v19, v37
	v_lshrrev_b32_e32 v2, 4, v1
	v_and_b32_e32 v2, 0x78, v2
	v_xor_b32_e32 v1, v2, v1
	v_and_b32_e32 v38, 0xc0, v0
	;;#ASMSTART
	ds_write_b64 v1, v[16:17]

	;;#ASMEND
	v_and_b32_e32 v16, 15, v0
	v_lshrrev_b32_e32 v1, 2, v0
	v_lshlrev_b32_e32 v0, 7, v0
	v_and_b32_e32 v2, 12, v1
	v_and_b32_e32 v0, 0x6780, v0
	scratch_store_dword off, v2, off offset:412 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v2
	v_add_u32_e32 v0, s2, v0
	v_add_u32_e32 v3, v0, v2
	v_lshrrev_b32_e32 v4, 4, v3
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v17, v4, v3
	v_or_b32_e32 v3, 16, v16
	v_or_b32_e32 v4, v38, v3
	v_lshl_add_u32 v4, v4, 7, s2
	v_add_u32_e32 v5, v4, v2
	v_lshrrev_b32_e32 v6, 4, v5
	v_and_b32_e32 v6, 0x78, v6
	v_xor_b32_e32 v19, v6, v5
	v_or_b32_e32 v5, 32, v16
	v_or_b32_e32 v6, v38, v5
	v_lshl_add_u32 v6, v6, 7, s2
	v_add_u32_e32 v7, v6, v2
	v_lshrrev_b32_e32 v8, 4, v7
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v21, v8, v7
	v_or_b32_e32 v7, 48, v16
	v_or_b32_e32 v8, v38, v7
	v_lshl_add_u32 v8, v8, 7, s2
	v_add_u32_e32 v9, v8, v2
	v_and_b32_e32 v14, 64, v1
	v_lshrrev_b32_e32 v10, 4, v9
	v_or_b32_e32 v1, v14, v16
	v_and_b32_e32 v10, 0x78, v10
	v_lshl_add_u32 v1, v1, 7, s21
	v_xor_b32_e32 v27, v10, v9
	v_add_u32_e32 v9, v1, v2
	v_lshrrev_b32_e32 v10, 4, v9
	v_and_b32_e32 v10, 0x78, v10
	v_xor_b32_e32 v29, v10, v9
	v_or_b32_e32 v9, v3, v14
	v_lshl_add_u32 v9, v9, 7, s21
	v_add_u32_e32 v10, v9, v2
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v31, v11, v10
	v_or_b32_e32 v10, v5, v14
	v_lshl_add_u32 v10, v10, 7, s21
	v_add_u32_e32 v11, v10, v2
	v_lshrrev_b32_e32 v12, 4, v11
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v33, v12, v11
	v_or_b32_e32 v11, v7, v14
	v_lshl_add_u32 v11, v11, 7, s21
	v_add_u32_e32 v12, v11, v2
	v_lshrrev_b32_e32 v13, 4, v12
	v_and_b32_e32 v13, 0x78, v13
	v_xor_b32_e32 v34, v13, v12
	v_or_b32_e32 v12, 0x80, v14
	v_or_b32_e32 v13, v12, v16
	scratch_store_dword off, v14, off offset:416 ; 4-byte Folded Spill
	v_mov_b32_e32 v14, v16
	v_lshl_add_u32 v13, v13, 7, s21
	scratch_store_dwordx2 off, v[14:15], off offset:404 ; 8-byte Folded Spill
	v_add_u32_e32 v14, v13, v2
	v_lshrrev_b32_e32 v15, 4, v14
	v_or_b32_e32 v3, v12, v3
	v_and_b32_e32 v15, 0x78, v15
	v_lshl_add_u32 v3, v3, 7, s21
	v_xor_b32_e32 v16, v15, v14
	v_add_u32_e32 v14, v3, v2
	v_lshrrev_b32_e32 v15, 4, v14
	v_or_b32_e32 v5, v12, v5
	v_and_b32_e32 v15, 0x78, v15
	v_lshl_add_u32 v5, v5, 7, s21
	scratch_store_dword off, v38, off offset:400 ; 4-byte Folded Spill
	v_xor_b32_e32 v38, v15, v14
	v_add_u32_e32 v14, v5, v2
	v_or_b32_e32 v7, v12, v7
	v_lshrrev_b32_e32 v15, 4, v14
	v_lshl_add_u32 v7, v7, 7, s21
	v_and_b32_e32 v15, 0x78, v15
	v_add_u32_e32 v12, v7, v2
	v_xor_b32_e32 v39, v15, v14
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v40, v14, v12
	v_or_b32_e32 v12, 32, v2
	v_add_u32_e32 v14, v0, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off       ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v14, 1, v20
	scratch_store_dword off, v14, off offset:304 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v14, 1, v22
	scratch_store_dword off, v14, off offset:308 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v14, 1, v24
	scratch_store_dword off, v14, off offset:312 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v14, 1, v26
	scratch_store_dword off, v14, off offset:316 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v4, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:4 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v6, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:8 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v8, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:12 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v1, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:16 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v9, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:20 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v10, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:24 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v11, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:28 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v13, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:32 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v3, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:36 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v5, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	v_add_u32_e32 v12, v7, v12
	scratch_store_dword off, v14, off offset:40 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:44 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v12, 1, v28
	scratch_store_dword off, v12, off offset:320 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v12, 1, v30
	scratch_store_dword off, v12, off offset:324 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v12, 1, v32
	scratch_store_dword off, v12, off offset:328 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v12, 1, v18
	scratch_store_dword off, v12, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v12, 64, v2
	v_add_u32_e32 v14, v0, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:48 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v4, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:52 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v6, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:56 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v8, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:60 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v1, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:64 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v9, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:68 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v10, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:72 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v11, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:76 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v13, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:80 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v3, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	scratch_store_dword off, v14, off offset:84 ; 4-byte Folded Spill
	v_add_u32_e32 v14, v5, v12
	v_lshrrev_b32_e32 v15, 4, v14
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v14, v15, v14
	v_add_u32_e32 v12, v7, v12
	scratch_store_dword off, v14, off offset:88 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_or_b32_e32 v2, 0x60, v2
	v_xor_b32_e32 v12, v14, v12
	v_add_u32_e32 v0, v0, v2
	scratch_store_dword off, v12, off offset:92 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v12, 4, v0
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v0, v12, v0
	scratch_store_dword off, v0, off offset:96 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v4, v2
	v_lshrrev_b32_e32 v4, 4, v0
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v0, v4, v0
	scratch_store_dword off, v0, off offset:100 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v6, v2
	v_lshrrev_b32_e32 v4, 4, v0
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v0, v4, v0
	scratch_store_dword off, v0, off offset:104 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v8, v2
	v_lshrrev_b32_e32 v4, 4, v0
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v0, v4, v0
	scratch_store_dword off, v0, off offset:108 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v1, v2
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:112 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v9, v2
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:116 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v10, v2
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:120 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v11, v2
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:124 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v13, v2
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:128 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v3, v2
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:132 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v5, v2
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:136 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v7, v2
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:140 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 0x70, v23
	v_add_u32_e32 v1, s21, v0
	v_add_u32_e32 v2, v1, v25
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 8, v0
	v_add_u32_e32 v3, s21, v2
	v_add_u32_e32 v4, v3, v25
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	scratch_store_dword off, v4, off offset:340 ; 4-byte Folded Spill
	v_add_u32_e32 v4, v1, v35
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	scratch_store_dword off, v4, off offset:344 ; 4-byte Folded Spill
	v_add_u32_e32 v4, v3, v35
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	scratch_store_dword off, v4, off offset:348 ; 4-byte Folded Spill
	v_add_u32_e32 v4, v1, v36
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	scratch_store_dword off, v4, off offset:352 ; 4-byte Folded Spill
	v_add_u32_e32 v4, v3, v36
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	v_add_u32_e32 v1, v1, v37
	scratch_store_dword off, v4, off offset:356 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v4, 4, v1
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v1, v4, v1
	scratch_store_dword off, v1, off offset:360 ; 4-byte Folded Spill
	v_add_u32_e32 v1, v3, v37
	v_lshrrev_b32_e32 v3, 4, v1
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v1, v3, v1
	v_add_u32_e32 v0, s2, v0
	scratch_store_dword off, v1, off offset:364 ; 4-byte Folded Spill
	v_add_u32_e32 v1, v0, v25
	v_lshrrev_b32_e32 v3, 4, v1
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v1, v3, v1
	scratch_store_dword off, v1, off offset:368 ; 4-byte Folded Spill
	v_add_u32_e32 v1, s2, v2
	v_add_u32_e32 v2, v1, v25
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:372 ; 4-byte Folded Spill
	v_add_u32_e32 v2, v0, v35
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:376 ; 4-byte Folded Spill
	v_add_u32_e32 v2, v1, v35
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:380 ; 4-byte Folded Spill
	v_add_u32_e32 v2, v0, v36
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:384 ; 4-byte Folded Spill
	v_add_u32_e32 v2, v1, v36
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_add_u32_e32 v0, v0, v37
	scratch_store_dword off, v2, off offset:388 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v2, 0x78, v2
	v_xor_b32_e32 v0, v2, v0
	scratch_store_dword off, v0, off offset:392 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v1, v37
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:396 ; 4-byte Folded Spill
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	scratch_store_dword off, v17, off offset:256 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[226:227], v17

	;;#ASMEND
	scratch_store_dword off, v19, off offset:260 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[228:229], v19

	;;#ASMEND
	scratch_store_dword off, v21, off offset:264 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[230:231], v21

	;;#ASMEND
	scratch_store_dword off, v27, off offset:268 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[232:233], v27

	;;#ASMEND
	scratch_store_dword off, v29, off offset:272 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[234:235], v29

	;;#ASMEND
	scratch_store_dword off, v31, off offset:276 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[236:237], v31

	;;#ASMEND
	scratch_store_dword off, v33, off offset:280 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[238:239], v33

	;;#ASMEND
	scratch_store_dword off, v34, off offset:284 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[240:241], v34

	;;#ASMEND
	scratch_store_dword off, v16, off offset:288 ; 4-byte Folded Spill
	;;#ASMSTART
	ds_read_b64 v[242:243], v16

	;;#ASMEND
	scratch_store_dword off, v38, off offset:292 ; 4-byte Folded Spill
	s_lshl_b32 s2, s4, 9
	s_lshl_b32 s6, s6, 9
	;;#ASMSTART
	ds_read_b64 v[244:245], v38

	;;#ASMEND
	scratch_store_dword off, v39, off offset:296 ; 4-byte Folded Spill
	s_add_u32 s15, s16, 0x80
	;;#ASMSTART
	ds_read_b64 v[246:247], v39

	;;#ASMEND
	scratch_store_dword off, v40, off offset:300 ; 4-byte Folded Spill
	s_addc_u32 s16, s17, 0
	s_mov_b32 s14, 0xffff
	;;#ASMSTART
	ds_read_b64 v[248:249], v40

	;;#ASMEND
	s_add_u32 s17, s0, 0x80
	v_mov_b32_e32 v0, 0
	v_mov_b64_e32 v[142:143], 0
	s_mov_b64 s[12:13], 0
	v_bfi_b32 v226, s14, v226, v226
	v_bfi_b32 v228, s14, v228, v228
	v_bfi_b32 v230, s14, v230, v230
	v_bfi_b32 v232, s14, v232, v232
	v_bfi_b32 v234, s14, v234, v234
	v_bfi_b32 v236, s14, v236, v236
	v_bfi_b32 v238, s14, v238, v238
	v_bfi_b32 v240, s14, v240, v240
	v_bfi_b32 v242, s14, v242, v242
	v_bfi_b32 v244, s14, v244, v244
	v_bfi_b32 v246, s14, v246, v246
	v_bfi_b32 v248, s14, v248, v248
	s_addc_u32 s21, s1, 0
	s_mov_b32 s3, 0x20000
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v33, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v41, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v49, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v57, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
	v_mov_b32_e32 v65, v0
	v_mov_b32_e32 v66, v0
	v_mov_b32_e32 v67, v0
	v_mov_b32_e32 v68, v0
	v_mov_b32_e32 v69, v0
	v_mov_b32_e32 v70, v0
	v_mov_b32_e32 v71, v0
	v_mov_b32_e32 v72, v0
	v_mov_b32_e32 v73, v0
	v_mov_b32_e32 v74, v0
	v_mov_b32_e32 v75, v0
	v_mov_b32_e32 v76, v0
	v_mov_b32_e32 v77, v0
	v_mov_b32_e32 v78, v0
	v_mov_b32_e32 v79, v0
	v_mov_b32_e32 v80, v0
	v_mov_b32_e32 v81, v0
	v_mov_b32_e32 v82, v0
	v_mov_b32_e32 v83, v0
	v_mov_b32_e32 v84, v0
	v_mov_b32_e32 v85, v0
	v_mov_b32_e32 v86, v0
	v_mov_b32_e32 v87, v0
	v_mov_b32_e32 v88, v0
	v_mov_b32_e32 v89, v0
	v_mov_b32_e32 v90, v0
	v_mov_b32_e32 v91, v0
	v_mov_b32_e32 v92, v0
	v_mov_b32_e32 v93, v0
	v_mov_b32_e32 v94, v0
	v_mov_b32_e32 v95, v0
	v_mov_b32_e32 v96, v0
	v_mov_b32_e32 v97, v0
	v_mov_b32_e32 v98, v0
	v_mov_b32_e32 v99, v0
	v_mov_b32_e32 v100, v0
	v_mov_b32_e32 v101, v0
	v_mov_b32_e32 v102, v0
	v_mov_b32_e32 v103, v0
	v_mov_b32_e32 v104, v0
	v_mov_b32_e32 v105, v0
	v_mov_b32_e32 v106, v0
	v_mov_b32_e32 v107, v0
	v_mov_b32_e32 v108, v0
	v_mov_b32_e32 v109, v0
	v_mov_b32_e32 v110, v0
	v_mov_b32_e32 v111, v0
	v_mov_b32_e32 v112, v0
	v_mov_b32_e32 v113, v0
	v_mov_b32_e32 v114, v0
	v_mov_b32_e32 v115, v0
	v_mov_b32_e32 v148, v0
	v_mov_b32_e32 v149, v0
	v_mov_b32_e32 v150, v0
	v_mov_b32_e32 v151, v0
	v_mov_b32_e32 v152, v0
	v_mov_b32_e32 v153, v0
	v_mov_b32_e32 v154, v0
	v_mov_b32_e32 v155, v0
	v_mov_b32_e32 v156, v0
	v_mov_b32_e32 v157, v0
	v_mov_b32_e32 v158, v0
	v_mov_b32_e32 v159, v0
	v_mov_b64_e32 v[116:117], v[142:143]
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	scratch_store_dwordx4 off, v[114:117], off offset:208 ; 16-byte Folded Spill
	scratch_store_dwordx4 off, v[114:117], off offset:176 ; 16-byte Folded Spill
	scratch_store_dwordx4 off, v[114:117], off offset:144 ; 16-byte Folded Spill
	scratch_store_dwordx4 off, v[114:117], off offset:240 ; 16-byte Folded Spill
	scratch_store_dwordx4 off, v[114:117], off offset:224 ; 16-byte Folded Spill
	scratch_store_dwordx4 off, v[114:117], off offset:192 ; 16-byte Folded Spill
	scratch_store_dwordx4 off, v[114:117], off offset:160 ; 16-byte Folded Spill
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	v_bfi_b32 v70, s14, v70, v70
	v_bfi_b32 v68, s14, v68, v68
	v_bfi_b32 v66, s14, v66, v66
	v_bfi_b32 v64, s14, v64, v64
	v_bfi_b32 v224, s14, v224, v224
	v_bfi_b32 v254, s14, v254, v254
	v_bfi_b32 v252, s14, v252, v252
	v_bfi_b32 v250, s14, v250, v250
	v_bfi_b32 v122, s14, v122, v122
	v_bfi_b32 v120, s14, v120, v120
	v_bfi_b32 v118, s14, v118, v118
	v_bfi_b32 v116, s14, v116, v116
	s_setprio 3
	v_mfma_f32_16x16x16_bf16 v[156:159], v[70:71], v[224:225], v[0:3]
	v_mfma_f32_16x16x16_bf16 v[152:155], v[70:71], v[254:255], v[4:7]
	v_mfma_f32_16x16x16_bf16 v[148:151], v[70:71], v[252:253], v[8:11]
	v_mfma_f32_16x16x16_bf16 v[112:115], v[70:71], v[250:251], v[12:15]
	v_mfma_f32_16x16x16_bf16 v[108:111], v[68:69], v[224:225], v[16:19]
	v_mfma_f32_16x16x16_bf16 v[104:107], v[68:69], v[254:255], v[20:23]
	v_mfma_f32_16x16x16_bf16 v[100:103], v[68:69], v[252:253], v[24:27]
	v_mfma_f32_16x16x16_bf16 v[96:99], v[68:69], v[250:251], v[28:31]
	v_mfma_f32_16x16x16_bf16 v[92:95], v[66:67], v[224:225], v[32:35]
	v_mfma_f32_16x16x16_bf16 v[88:91], v[66:67], v[254:255], v[36:39]
	v_mfma_f32_16x16x16_bf16 v[84:87], v[66:67], v[252:253], v[40:43]
	v_mfma_f32_16x16x16_bf16 v[80:83], v[66:67], v[250:251], v[44:47]
	v_mfma_f32_16x16x16_bf16 v[76:79], v[64:65], v[224:225], v[48:51]
	v_mfma_f32_16x16x16_bf16 v[72:75], v[64:65], v[254:255], v[52:55]
	v_mfma_f32_16x16x16_bf16 v[68:71], v[64:65], v[252:253], v[56:59]
	v_mfma_f32_16x16x16_bf16 v[64:67], v[64:65], v[250:251], v[60:63]
	v_mfma_f32_16x16x16_bf16 v[60:63], v[122:123], v[224:225], v[160:163]
	v_mfma_f32_16x16x16_bf16 v[56:59], v[122:123], v[254:255], v[164:167]
	v_mfma_f32_16x16x16_bf16 v[52:55], v[122:123], v[252:253], v[168:171]
	v_mfma_f32_16x16x16_bf16 v[48:51], v[122:123], v[250:251], v[172:175]
	v_mfma_f32_16x16x16_bf16 v[44:47], v[120:121], v[224:225], v[176:179]
	v_mfma_f32_16x16x16_bf16 v[40:43], v[120:121], v[254:255], v[180:183]
	v_mfma_f32_16x16x16_bf16 v[36:39], v[120:121], v[252:253], v[184:187]
	v_mfma_f32_16x16x16_bf16 v[32:35], v[120:121], v[250:251], v[188:191]
	v_mfma_f32_16x16x16_bf16 v[28:31], v[118:119], v[224:225], v[192:195]
	v_mfma_f32_16x16x16_bf16 v[24:27], v[118:119], v[254:255], v[196:199]
	v_mfma_f32_16x16x16_bf16 v[20:23], v[118:119], v[252:253], v[200:203]
	v_mfma_f32_16x16x16_bf16 v[16:19], v[118:119], v[250:251], v[204:207]
	v_mfma_f32_16x16x16_bf16 v[12:15], v[116:117], v[224:225], v[208:211]
	v_mfma_f32_16x16x16_bf16 v[8:11], v[116:117], v[254:255], v[212:215]
	v_mfma_f32_16x16x16_bf16 v[4:7], v[116:117], v[252:253], v[216:219]
	v_mfma_f32_16x16x16_bf16 v[0:3], v[116:117], v[250:251], v[220:223]
	s_setprio 0
	s_add_u32 s12, s12, 0x80
	s_addc_u32 s13, s13, 0
	s_cmpk_eq_i32 s12, 0x4000
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_cbranch_scc1 .LBB0_10
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	s_cmpk_lg_i32 s12, 0x3f80
	s_cselect_b64 s[4:5], -1, 0
	s_cmpk_eq_i32 s12, 0x3f80
	s_cbranch_scc1 .LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	scratch_load_dword v116, off, off offset:304 ; 4-byte Folded Reload
	s_add_u32 s0, s17, s12
	s_addc_u32 s1, s21, s13
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[116:119], v116, s[0:3], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[116:119], off offset:144 ; 16-byte Folded Spill
	scratch_load_dword v116, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[116:119], v116, s[0:3], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[116:119], off offset:176 ; 16-byte Folded Spill
	scratch_load_dword v116, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[116:119], v116, s[0:3], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[116:119], off offset:208 ; 16-byte Folded Spill
	scratch_load_dword v116, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[140:143], v116, s[0:3], 0 offen
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	s_nop 0
	scratch_load_dword v116, off, off       ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[122:123], v116

	;;#ASMEND
	scratch_load_dword v116, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[120:121], v116

	;;#ASMEND
	scratch_load_dword v116, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[118:119], v116

	;;#ASMEND
	scratch_load_dword v116, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[116:117], v116

	;;#ASMEND
	scratch_load_dword v124, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[174:175], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[172:173], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[170:171], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[168:169], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[166:167], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[164:165], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[162:163], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[160:161], v124

	;;#ASMEND
	s_setprio 3
	v_mfma_f32_16x16x16_bf16 v[156:159], v[234:235], v[226:227], v[156:159]
	v_mfma_f32_16x16x16_bf16 v[152:155], v[234:235], v[228:229], v[152:155]
	v_mfma_f32_16x16x16_bf16 v[148:151], v[234:235], v[230:231], v[148:151]
	v_mfma_f32_16x16x16_bf16 v[112:115], v[234:235], v[232:233], v[112:115]
	v_mfma_f32_16x16x16_bf16 v[108:111], v[236:237], v[226:227], v[108:111]
	v_mfma_f32_16x16x16_bf16 v[104:107], v[236:237], v[228:229], v[104:107]
	v_mfma_f32_16x16x16_bf16 v[100:103], v[236:237], v[230:231], v[100:103]
	v_mfma_f32_16x16x16_bf16 v[96:99], v[236:237], v[232:233], v[96:99]
	v_mfma_f32_16x16x16_bf16 v[92:95], v[238:239], v[226:227], v[92:95]
	v_mfma_f32_16x16x16_bf16 v[88:91], v[238:239], v[228:229], v[88:91]
	v_mfma_f32_16x16x16_bf16 v[84:87], v[238:239], v[230:231], v[84:87]
	v_mfma_f32_16x16x16_bf16 v[80:83], v[238:239], v[232:233], v[80:83]
	v_mfma_f32_16x16x16_bf16 v[76:79], v[240:241], v[226:227], v[76:79]
	v_mfma_f32_16x16x16_bf16 v[72:75], v[240:241], v[228:229], v[72:75]
	v_mfma_f32_16x16x16_bf16 v[68:71], v[240:241], v[230:231], v[68:71]
	v_mfma_f32_16x16x16_bf16 v[64:67], v[240:241], v[232:233], v[64:67]
	v_mfma_f32_16x16x16_bf16 v[60:63], v[242:243], v[226:227], v[60:63]
	v_mfma_f32_16x16x16_bf16 v[56:59], v[242:243], v[228:229], v[56:59]
	v_mfma_f32_16x16x16_bf16 v[52:55], v[242:243], v[230:231], v[52:55]
	v_mfma_f32_16x16x16_bf16 v[48:51], v[242:243], v[232:233], v[48:51]
	v_mfma_f32_16x16x16_bf16 v[44:47], v[244:245], v[226:227], v[44:47]
	v_mfma_f32_16x16x16_bf16 v[40:43], v[244:245], v[228:229], v[40:43]
	v_mfma_f32_16x16x16_bf16 v[36:39], v[244:245], v[230:231], v[36:39]
	v_mfma_f32_16x16x16_bf16 v[32:35], v[244:245], v[232:233], v[32:35]
	v_mfma_f32_16x16x16_bf16 v[28:31], v[246:247], v[226:227], v[28:31]
	v_mfma_f32_16x16x16_bf16 v[24:27], v[246:247], v[228:229], v[24:27]
	v_mfma_f32_16x16x16_bf16 v[20:23], v[246:247], v[230:231], v[20:23]
	v_mfma_f32_16x16x16_bf16 v[16:19], v[246:247], v[232:233], v[16:19]
	v_mfma_f32_16x16x16_bf16 v[12:15], v[248:249], v[226:227], v[12:15]
	v_mfma_f32_16x16x16_bf16 v[8:11], v[248:249], v[228:229], v[8:11]
	v_mfma_f32_16x16x16_bf16 v[4:7], v[248:249], v[230:231], v[4:7]
	v_mfma_f32_16x16x16_bf16 v[0:3], v[248:249], v[232:233], v[0:3]
	s_setprio 0
	v_cndmask_b32_e64 v124, 0, 1, s[4:5]
	v_cmp_ne_u32_e64 s[0:1], 1, v124
	s_andn2_b64 vcc, exec, s[4:5]
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	scratch_load_dword v124, off, off offset:320 ; 4-byte Folded Reload
	s_add_u32 s4, s15, s12
	s_addc_u32 s5, s16, s13
	s_mov_b32 s7, s3
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[124:127], v124, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[124:127], off offset:160 ; 16-byte Folded Spill
	scratch_load_dword v124, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[124:127], v124, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[124:127], off offset:192 ; 16-byte Folded Spill
	scratch_load_dword v124, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[124:127], v124, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[124:127], off offset:224 ; 16-byte Folded Spill
	scratch_load_dword v124, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[124:127], v124, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_dwordx4 off, v[124:127], off offset:240 ; 16-byte Folded Spill
.LBB0_6:                                ;   in Loop: Header=BB0_2 Depth=1
	scratch_load_dword v124, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[226:227], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[228:229], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[230:231], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[232:233], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[234:235], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[236:237], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[238:239], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[240:241], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[242:243], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[244:245], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[246:247], v124

	;;#ASMEND
	scratch_load_dword v124, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[248:249], v124

	;;#ASMEND
	v_bfi_b32 v122, s14, v122, v122
	v_bfi_b32 v120, s14, v120, v120
	v_bfi_b32 v118, s14, v118, v118
	v_bfi_b32 v116, s14, v116, v116
	v_bfi_b32 v174, s14, v174, v174
	v_bfi_b32 v172, s14, v172, v172
	v_bfi_b32 v170, s14, v170, v170
	v_bfi_b32 v168, s14, v168, v168
	v_bfi_b32 v166, s14, v166, v166
	v_bfi_b32 v164, s14, v164, v164
	v_bfi_b32 v162, s14, v162, v162
	v_bfi_b32 v160, s14, v160, v160
	v_bfi_b32 v226, s14, v226, v226
	v_bfi_b32 v228, s14, v228, v228
	v_bfi_b32 v230, s14, v230, v230
	v_bfi_b32 v232, s14, v232, v232
	v_bfi_b32 v234, s14, v234, v234
	v_bfi_b32 v236, s14, v236, v236
	v_bfi_b32 v238, s14, v238, v238
	v_bfi_b32 v240, s14, v240, v240
	v_bfi_b32 v242, s14, v242, v242
	v_bfi_b32 v244, s14, v244, v244
	v_bfi_b32 v246, s14, v246, v246
	v_bfi_b32 v248, s14, v248, v248
	s_setprio 3
	v_mfma_f32_16x16x16_bf16 v[156:159], v[174:175], v[122:123], v[156:159]
	v_mfma_f32_16x16x16_bf16 v[152:155], v[174:175], v[120:121], v[152:155]
	v_mfma_f32_16x16x16_bf16 v[148:151], v[174:175], v[118:119], v[148:151]
	v_mfma_f32_16x16x16_bf16 v[112:115], v[174:175], v[116:117], v[112:115]
	v_mfma_f32_16x16x16_bf16 v[108:111], v[172:173], v[122:123], v[108:111]
	v_mfma_f32_16x16x16_bf16 v[104:107], v[172:173], v[120:121], v[104:107]
	v_mfma_f32_16x16x16_bf16 v[100:103], v[172:173], v[118:119], v[100:103]
	v_mfma_f32_16x16x16_bf16 v[96:99], v[172:173], v[116:117], v[96:99]
	v_mfma_f32_16x16x16_bf16 v[92:95], v[170:171], v[122:123], v[92:95]
	v_mfma_f32_16x16x16_bf16 v[88:91], v[170:171], v[120:121], v[88:91]
	v_mfma_f32_16x16x16_bf16 v[84:87], v[170:171], v[118:119], v[84:87]
	v_mfma_f32_16x16x16_bf16 v[80:83], v[170:171], v[116:117], v[80:83]
	v_mfma_f32_16x16x16_bf16 v[170:173], v[168:169], v[118:119], v[68:71]
	v_mfma_f32_16x16x16_bf16 v[174:177], v[168:169], v[116:117], v[64:67]
	v_mfma_f32_16x16x16_bf16 v[178:181], v[166:167], v[122:123], v[60:63]
	v_mfma_f32_16x16x16_bf16 v[182:185], v[166:167], v[120:121], v[56:59]
	v_mfma_f32_16x16x16_bf16 v[186:189], v[166:167], v[118:119], v[52:55]
	v_mfma_f32_16x16x16_bf16 v[190:193], v[166:167], v[116:117], v[48:51]
	v_mfma_f32_16x16x16_bf16 v[194:197], v[164:165], v[122:123], v[44:47]
	v_mfma_f32_16x16x16_bf16 v[198:201], v[164:165], v[120:121], v[40:43]
	v_mfma_f32_16x16x16_bf16 v[202:205], v[164:165], v[118:119], v[36:39]
	v_mfma_f32_16x16x16_bf16 v[206:209], v[164:165], v[116:117], v[32:35]
	v_mfma_f32_16x16x16_bf16 v[210:213], v[162:163], v[122:123], v[28:31]
	v_mfma_f32_16x16x16_bf16 v[214:217], v[162:163], v[120:121], v[24:27]
	v_mfma_f32_16x16x16_bf16 v[218:221], v[162:163], v[118:119], v[20:23]
	v_mfma_f32_16x16x16_bf16 v[76:79], v[168:169], v[122:123], v[76:79]
	v_mfma_f32_16x16x16_bf16 v[72:75], v[168:169], v[120:121], v[72:75]
	v_mfma_f32_16x16x16_bf16 v[124:127], v[162:163], v[116:117], v[16:19]
	v_mfma_f32_16x16x16_bf16 v[128:131], v[160:161], v[122:123], v[12:15]
	v_mfma_f32_16x16x16_bf16 v[132:135], v[160:161], v[120:121], v[8:11]
	v_mfma_f32_16x16x16_bf16 v[136:139], v[160:161], v[118:119], v[4:7]
	v_mfma_f32_16x16x16_bf16 v[144:147], v[160:161], v[116:117], v[0:3]
	s_setprio 0
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_nop 1
	scratch_load_dword v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[224:225], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[254:255], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[252:253], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[250:251], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[70:71], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[68:69], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[66:67], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[64:65], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[122:123], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[120:121], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[118:119], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[116:117], v0

	;;#ASMEND
	s_setprio 3
	v_mfma_f32_16x16x16_bf16 v[0:3], v[234:235], v[226:227], v[156:159]
	v_mfma_f32_16x16x16_bf16 v[4:7], v[234:235], v[228:229], v[152:155]
	v_mfma_f32_16x16x16_bf16 v[8:11], v[234:235], v[230:231], v[148:151]
	v_mfma_f32_16x16x16_bf16 v[12:15], v[234:235], v[232:233], v[112:115]
	v_mfma_f32_16x16x16_bf16 v[16:19], v[236:237], v[226:227], v[108:111]
	v_mfma_f32_16x16x16_bf16 v[20:23], v[236:237], v[228:229], v[104:107]
	v_mfma_f32_16x16x16_bf16 v[24:27], v[236:237], v[230:231], v[100:103]
	v_mfma_f32_16x16x16_bf16 v[28:31], v[236:237], v[232:233], v[96:99]
	v_mfma_f32_16x16x16_bf16 v[32:35], v[238:239], v[226:227], v[92:95]
	v_mfma_f32_16x16x16_bf16 v[36:39], v[238:239], v[228:229], v[88:91]
	v_mfma_f32_16x16x16_bf16 v[40:43], v[238:239], v[230:231], v[84:87]
	v_mfma_f32_16x16x16_bf16 v[44:47], v[238:239], v[232:233], v[80:83]
	v_mfma_f32_16x16x16_bf16 v[48:51], v[240:241], v[226:227], v[76:79]
	v_mfma_f32_16x16x16_bf16 v[52:55], v[240:241], v[228:229], v[72:75]
	v_mfma_f32_16x16x16_bf16 v[56:59], v[240:241], v[230:231], v[170:173]
	v_mfma_f32_16x16x16_bf16 v[60:63], v[240:241], v[232:233], v[174:177]
	v_mfma_f32_16x16x16_bf16 v[160:163], v[242:243], v[226:227], v[178:181]
	v_mfma_f32_16x16x16_bf16 v[164:167], v[242:243], v[228:229], v[182:185]
	v_mfma_f32_16x16x16_bf16 v[168:171], v[242:243], v[230:231], v[186:189]
	v_mfma_f32_16x16x16_bf16 v[172:175], v[242:243], v[232:233], v[190:193]
	v_mfma_f32_16x16x16_bf16 v[176:179], v[244:245], v[226:227], v[194:197]
	v_mfma_f32_16x16x16_bf16 v[180:183], v[244:245], v[228:229], v[198:201]
	v_mfma_f32_16x16x16_bf16 v[184:187], v[244:245], v[230:231], v[202:205]
	v_mfma_f32_16x16x16_bf16 v[188:191], v[244:245], v[232:233], v[206:209]
	v_mfma_f32_16x16x16_bf16 v[192:195], v[246:247], v[226:227], v[210:213]
	v_mfma_f32_16x16x16_bf16 v[196:199], v[246:247], v[228:229], v[214:217]
	v_mfma_f32_16x16x16_bf16 v[200:203], v[246:247], v[230:231], v[218:221]
	v_mfma_f32_16x16x16_bf16 v[204:207], v[246:247], v[232:233], v[124:127]
	v_mfma_f32_16x16x16_bf16 v[208:211], v[248:249], v[226:227], v[128:131]
	v_mfma_f32_16x16x16_bf16 v[212:215], v[248:249], v[228:229], v[132:135]
	v_mfma_f32_16x16x16_bf16 v[216:219], v[248:249], v[230:231], v[136:139]
	v_mfma_f32_16x16x16_bf16 v[220:223], v[248:249], v[232:233], v[144:147]
	s_setprio 0
	s_and_b64 vcc, exec, s[0:1]
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	scratch_load_dword v72, off, off offset:336 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[74:77], off, off offset:144 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[74:75]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[76:77]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:344 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[74:77], off, off offset:176 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[74:75]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[76:77]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:352 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[74:77], off, off offset:208 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[74:75]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[76:77]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[140:141]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[142:143]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:368 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[74:77], off, off offset:160 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[74:75]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[76:77]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:376 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[74:77], off, off offset:192 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[74:75]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[76:77]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:384 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[74:77], off, off offset:224 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[74:75]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[76:77]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:392 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[74:77], off, off offset:240 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[74:75]

	;;#ASMEND
	scratch_load_dword v72, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v72, v[76:77]

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
.LBB0_8:                                ;   in Loop: Header=BB0_2 Depth=1
	s_and_b64 vcc, exec, s[0:1]
	s_barrier
	s_cbranch_vccnz .LBB0_1
; %bb.9:                                ;   in Loop: Header=BB0_2 Depth=1
	scratch_load_dword v72, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[226:227], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[228:229], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[230:231], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[232:233], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[234:235], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[236:237], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[238:239], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[240:241], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[242:243], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[244:245], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[246:247], v72

	;;#ASMEND
	scratch_load_dword v72, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[248:249], v72

	;;#ASMEND
	v_bfi_b32 v226, s14, v226, v226
	v_bfi_b32 v228, s14, v228, v228
	v_bfi_b32 v230, s14, v230, v230
	v_bfi_b32 v232, s14, v232, v232
	v_bfi_b32 v234, s14, v234, v234
	v_bfi_b32 v236, s14, v236, v236
	v_bfi_b32 v238, s14, v238, v238
	v_bfi_b32 v240, s14, v240, v240
	v_bfi_b32 v242, s14, v242, v242
	v_bfi_b32 v244, s14, v244, v244
	v_bfi_b32 v246, s14, v246, v246
	v_bfi_b32 v248, s14, v248, v248
	s_branch .LBB0_1
.LBB0_10:
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v116, 0x7f800000, v156
	v_cmp_ne_u32_e32 vcc, s0, v116
                                        ; implicit-def: $vgpr116
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.11:
	v_bfe_u32 v116, v156, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v116, v156, v116, s2
; %bb.12:                               ; %Flow3362
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.13:
	v_mov_b32_e32 v116, 0
	v_or_b32_e32 v117, 0x10000, v156
	v_cmp_eq_u32_sdwa vcc, v156, v116 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v116, v117, v156, vcc
; %bb.14:                               ; %_ZL16__float2bfloat16f.exit.i.i.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v117, 0x7f800000, v157
	v_cmp_ne_u32_e32 vcc, s0, v117
                                        ; implicit-def: $vgpr117
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.15:
	v_bfe_u32 v117, v157, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v117, v157, v117, s2
; %bb.16:                               ; %Flow3361
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.17:
	v_mov_b32_e32 v117, 0
	v_or_b32_e32 v118, 0x10000, v157
	v_cmp_eq_u32_sdwa vcc, v157, v117 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v117, v118, v157, vcc
; %bb.18:                               ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v118, 0x7f800000, v158
	v_cmp_ne_u32_e32 vcc, s0, v118
                                        ; implicit-def: $vgpr118
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.19:
	v_bfe_u32 v118, v158, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v118, v158, v118, s2
; %bb.20:                               ; %Flow3360
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.21:
	v_mov_b32_e32 v118, 0
	v_or_b32_e32 v119, 0x10000, v158
	v_cmp_eq_u32_sdwa vcc, v158, v118 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v118, v119, v158, vcc
; %bb.22:                               ; %_ZL16__float2bfloat16f.exit.i.i.1.i.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v119, 0x7f800000, v159
	v_cmp_ne_u32_e32 vcc, s0, v119
                                        ; implicit-def: $vgpr119
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.23:
	v_bfe_u32 v119, v159, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v119, v159, v119, s2
; %bb.24:                               ; %Flow3359
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.25:
	v_mov_b32_e32 v119, 0
	v_or_b32_e32 v120, 0x10000, v159
	v_cmp_eq_u32_sdwa vcc, v159, v119 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v119, v120, v159, vcc
; %bb.26:                               ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v120, 0x7f800000, v152
	v_cmp_ne_u32_e32 vcc, s0, v120
                                        ; implicit-def: $vgpr120
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.27:
	v_bfe_u32 v120, v152, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v120, v152, v120, s2
; %bb.28:                               ; %Flow3358
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.29:
	v_mov_b32_e32 v120, 0
	v_or_b32_e32 v121, 0x10000, v152
	v_cmp_eq_u32_sdwa vcc, v152, v120 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v120, v121, v152, vcc
; %bb.30:                               ; %_ZL16__float2bfloat16f.exit.i.i.i.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v121, 0x7f800000, v153
	v_cmp_ne_u32_e32 vcc, s0, v121
                                        ; implicit-def: $vgpr121
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.31:
	v_bfe_u32 v121, v153, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v121, v153, v121, s2
; %bb.32:                               ; %Flow3357
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.33:
	v_mov_b32_e32 v121, 0
	v_or_b32_e32 v122, 0x10000, v153
	v_cmp_eq_u32_sdwa vcc, v153, v121 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v121, v122, v153, vcc
; %bb.34:                               ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v122, 0x7f800000, v154
	v_cmp_ne_u32_e32 vcc, s0, v122
                                        ; implicit-def: $vgpr122
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.35:
	v_bfe_u32 v122, v154, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v122, v154, v122, s2
; %bb.36:                               ; %Flow3356
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.37:
	v_mov_b32_e32 v122, 0
	v_or_b32_e32 v123, 0x10000, v154
	v_cmp_eq_u32_sdwa vcc, v154, v122 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v122, v123, v154, vcc
; %bb.38:                               ; %_ZL16__float2bfloat16f.exit.i.i.1.i.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v123, 0x7f800000, v155
	v_cmp_ne_u32_e32 vcc, s0, v123
                                        ; implicit-def: $vgpr123
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.39:
	v_bfe_u32 v123, v155, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v123, v155, v123, s2
; %bb.40:                               ; %Flow3355
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.41:
	v_mov_b32_e32 v123, 0
	v_or_b32_e32 v124, 0x10000, v155
	v_cmp_eq_u32_sdwa vcc, v155, v123 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v123, v124, v155, vcc
; %bb.42:                               ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v124, 0x7f800000, v148
	v_cmp_ne_u32_e32 vcc, s0, v124
                                        ; implicit-def: $vgpr124
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.43:
	v_bfe_u32 v124, v148, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v124, v148, v124, s2
; %bb.44:                               ; %Flow3354
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.45:
	v_mov_b32_e32 v124, 0
	v_or_b32_e32 v125, 0x10000, v148
	v_cmp_eq_u32_sdwa vcc, v148, v124 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v124, v125, v148, vcc
; %bb.46:                               ; %_ZL16__float2bfloat16f.exit.i.i.i.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v125, 0x7f800000, v149
	v_cmp_ne_u32_e32 vcc, s0, v125
                                        ; implicit-def: $vgpr125
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.47:
	v_bfe_u32 v125, v149, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v125, v149, v125, s2
; %bb.48:                               ; %Flow3353
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.49:
	v_mov_b32_e32 v125, 0
	v_or_b32_e32 v126, 0x10000, v149
	v_cmp_eq_u32_sdwa vcc, v149, v125 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v125, v126, v149, vcc
; %bb.50:                               ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v126, 0x7f800000, v150
	v_cmp_ne_u32_e32 vcc, s0, v126
                                        ; implicit-def: $vgpr126
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.51:
	v_bfe_u32 v126, v150, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v126, v150, v126, s2
; %bb.52:                               ; %Flow3352
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.53:
	v_mov_b32_e32 v126, 0
	v_or_b32_e32 v127, 0x10000, v150
	v_cmp_eq_u32_sdwa vcc, v150, v126 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v126, v127, v150, vcc
; %bb.54:                               ; %_ZL16__float2bfloat16f.exit.i.i.1.i.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v127, 0x7f800000, v151
	v_cmp_ne_u32_e32 vcc, s0, v127
                                        ; implicit-def: $vgpr127
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.55:
	v_bfe_u32 v127, v151, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v127, v151, v127, s2
; %bb.56:                               ; %Flow3351
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.57:
	v_mov_b32_e32 v127, 0
	v_or_b32_e32 v128, 0x10000, v151
	v_cmp_eq_u32_sdwa vcc, v151, v127 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v127, v128, v151, vcc
; %bb.58:                               ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v128, 0x7f800000, v112
	v_cmp_ne_u32_e32 vcc, s0, v128
                                        ; implicit-def: $vgpr128
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.59:
	v_bfe_u32 v128, v112, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v128, v112, v128, s2
; %bb.60:                               ; %Flow3350
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.61:
	v_mov_b32_e32 v128, 0
	v_or_b32_e32 v129, 0x10000, v112
	v_cmp_eq_u32_sdwa vcc, v112, v128 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v128, v129, v112, vcc
; %bb.62:                               ; %_ZL16__float2bfloat16f.exit.i.i.i.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v112, 0x7f800000, v113
	v_cmp_ne_u32_e32 vcc, s0, v112
                                        ; implicit-def: $vgpr112
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.63:
	v_bfe_u32 v112, v113, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v112, v113, v112, s2
; %bb.64:                               ; %Flow3349
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.65:
	v_mov_b32_e32 v112, 0
	v_or_b32_e32 v129, 0x10000, v113
	v_cmp_eq_u32_sdwa vcc, v113, v112 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v112, v129, v113, vcc
; %bb.66:                               ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v113, 0x7f800000, v114
	v_cmp_ne_u32_e32 vcc, s0, v113
                                        ; implicit-def: $vgpr113
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.67:
	v_bfe_u32 v113, v114, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v113, v114, v113, s2
; %bb.68:                               ; %Flow3348
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.69:
	v_mov_b32_e32 v113, 0
	v_or_b32_e32 v129, 0x10000, v114
	v_cmp_eq_u32_sdwa vcc, v114, v113 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v113, v129, v114, vcc
; %bb.70:                               ; %_ZL16__float2bfloat16f.exit.i.i.1.i.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v114, 0x7f800000, v115
	v_cmp_ne_u32_e32 vcc, s0, v114
                                        ; implicit-def: $vgpr114
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.71:
	v_bfe_u32 v114, v115, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v114, v115, v114, s2
; %bb.72:                               ; %Flow3347
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.73:
	v_mov_b32_e32 v114, 0
	v_or_b32_e32 v129, 0x10000, v115
	v_cmp_eq_u32_sdwa vcc, v115, v114 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v114, v129, v115, vcc
; %bb.74:                               ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v115, 0x7f800000, v108
	v_cmp_ne_u32_e32 vcc, s0, v115
                                        ; implicit-def: $vgpr115
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.75:
	v_bfe_u32 v115, v108, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v115, v108, v115, s2
; %bb.76:                               ; %Flow3346
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.77:
	v_mov_b32_e32 v115, 0
	v_or_b32_e32 v129, 0x10000, v108
	v_cmp_eq_u32_sdwa vcc, v108, v115 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v115, v129, v108, vcc
; %bb.78:                               ; %_ZL16__float2bfloat16f.exit.i.i.i.120.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v108, 0x7f800000, v109
	v_cmp_ne_u32_e32 vcc, s0, v108
                                        ; implicit-def: $vgpr108
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.79:
	v_bfe_u32 v108, v109, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v108, v109, v108, s2
; %bb.80:                               ; %Flow3345
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.81:
	v_mov_b32_e32 v108, 0
	v_or_b32_e32 v129, 0x10000, v109
	v_cmp_eq_u32_sdwa vcc, v109, v108 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v108, v129, v109, vcc
; %bb.82:                               ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.126.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v109, 0x7f800000, v110
	v_cmp_ne_u32_e32 vcc, s0, v109
                                        ; implicit-def: $vgpr109
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.83:
	v_bfe_u32 v109, v110, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v109, v110, v109, s2
; %bb.84:                               ; %Flow3344
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.85:
	v_mov_b32_e32 v109, 0
	v_or_b32_e32 v129, 0x10000, v110
	v_cmp_eq_u32_sdwa vcc, v110, v109 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v109, v129, v110, vcc
; %bb.86:                               ; %_ZL16__float2bfloat16f.exit.i.i.1.i.130.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v110, 0x7f800000, v111
	v_cmp_ne_u32_e32 vcc, s0, v110
                                        ; implicit-def: $vgpr110
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.87:
	v_bfe_u32 v110, v111, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v110, v111, v110, s2
; %bb.88:                               ; %Flow3343
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.89:
	v_mov_b32_e32 v110, 0
	v_or_b32_e32 v129, 0x10000, v111
	v_cmp_eq_u32_sdwa vcc, v111, v110 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v110, v129, v111, vcc
; %bb.90:                               ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.133.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v111, 0x7f800000, v104
	v_cmp_ne_u32_e32 vcc, s0, v111
                                        ; implicit-def: $vgpr111
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.91:
	v_bfe_u32 v111, v104, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v111, v104, v111, s2
; %bb.92:                               ; %Flow3342
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.93:
	v_mov_b32_e32 v111, 0
	v_or_b32_e32 v129, 0x10000, v104
	v_cmp_eq_u32_sdwa vcc, v104, v111 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v111, v129, v104, vcc
; %bb.94:                               ; %_ZL16__float2bfloat16f.exit.i.i.i.1.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v104, 0x7f800000, v105
	v_cmp_ne_u32_e32 vcc, s0, v104
                                        ; implicit-def: $vgpr104
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.95:
	v_bfe_u32 v104, v105, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v104, v105, v104, s2
; %bb.96:                               ; %Flow3341
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.97:
	v_mov_b32_e32 v104, 0
	v_or_b32_e32 v129, 0x10000, v105
	v_cmp_eq_u32_sdwa vcc, v105, v104 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v104, v129, v105, vcc
; %bb.98:                               ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.1.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v105, 0x7f800000, v106
	v_cmp_ne_u32_e32 vcc, s0, v105
                                        ; implicit-def: $vgpr105
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.99:
	v_bfe_u32 v105, v106, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v105, v106, v105, s2
; %bb.100:                              ; %Flow3340
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.101:
	v_mov_b32_e32 v105, 0
	v_or_b32_e32 v129, 0x10000, v106
	v_cmp_eq_u32_sdwa vcc, v106, v105 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v105, v129, v106, vcc
; %bb.102:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.1.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v106, 0x7f800000, v107
	v_cmp_ne_u32_e32 vcc, s0, v106
                                        ; implicit-def: $vgpr106
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.103:
	v_bfe_u32 v106, v107, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v106, v107, v106, s2
; %bb.104:                              ; %Flow3339
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.105:
	v_mov_b32_e32 v106, 0
	v_or_b32_e32 v129, 0x10000, v107
	v_cmp_eq_u32_sdwa vcc, v107, v106 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v106, v129, v107, vcc
; %bb.106:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.1.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v107, 0x7f800000, v100
	v_cmp_ne_u32_e32 vcc, s0, v107
                                        ; implicit-def: $vgpr107
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.107:
	v_bfe_u32 v107, v100, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v107, v100, v107, s2
; %bb.108:                              ; %Flow3338
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.109:
	v_mov_b32_e32 v107, 0
	v_or_b32_e32 v129, 0x10000, v100
	v_cmp_eq_u32_sdwa vcc, v100, v107 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v107, v129, v100, vcc
; %bb.110:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.2.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v100, 0x7f800000, v101
	v_cmp_ne_u32_e32 vcc, s0, v100
                                        ; implicit-def: $vgpr100
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.111:
	v_bfe_u32 v100, v101, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v100, v101, v100, s2
; %bb.112:                              ; %Flow3337
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.113:
	v_mov_b32_e32 v100, 0
	v_or_b32_e32 v129, 0x10000, v101
	v_cmp_eq_u32_sdwa vcc, v101, v100 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v100, v129, v101, vcc
; %bb.114:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.2.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v101, 0x7f800000, v102
	v_cmp_ne_u32_e32 vcc, s0, v101
                                        ; implicit-def: $vgpr101
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.115:
	v_bfe_u32 v101, v102, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v101, v102, v101, s2
; %bb.116:                              ; %Flow3336
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.117:
	v_mov_b32_e32 v101, 0
	v_or_b32_e32 v129, 0x10000, v102
	v_cmp_eq_u32_sdwa vcc, v102, v101 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v101, v129, v102, vcc
; %bb.118:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.2.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v102, 0x7f800000, v103
	v_cmp_ne_u32_e32 vcc, s0, v102
                                        ; implicit-def: $vgpr102
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.119:
	v_bfe_u32 v102, v103, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v102, v103, v102, s2
; %bb.120:                              ; %Flow3335
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.121:
	v_mov_b32_e32 v102, 0
	v_or_b32_e32 v129, 0x10000, v103
	v_cmp_eq_u32_sdwa vcc, v103, v102 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v102, v129, v103, vcc
; %bb.122:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.2.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v103, 0x7f800000, v96
	v_cmp_ne_u32_e32 vcc, s0, v103
                                        ; implicit-def: $vgpr103
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.123:
	v_bfe_u32 v103, v96, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v103, v96, v103, s2
; %bb.124:                              ; %Flow3334
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.125:
	v_mov_b32_e32 v103, 0
	v_or_b32_e32 v129, 0x10000, v96
	v_cmp_eq_u32_sdwa vcc, v96, v103 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v103, v129, v96, vcc
; %bb.126:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.3.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v96, 0x7f800000, v97
	v_cmp_ne_u32_e32 vcc, s0, v96
                                        ; implicit-def: $vgpr96
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.127:
	v_bfe_u32 v96, v97, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v96, v97, v96, s2
; %bb.128:                              ; %Flow3333
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.129:
	v_mov_b32_e32 v96, 0
	v_or_b32_e32 v129, 0x10000, v97
	v_cmp_eq_u32_sdwa vcc, v97, v96 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v96, v129, v97, vcc
; %bb.130:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.3.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v97, 0x7f800000, v98
	v_cmp_ne_u32_e32 vcc, s0, v97
                                        ; implicit-def: $vgpr97
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.131:
	v_bfe_u32 v97, v98, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v97, v98, v97, s2
; %bb.132:                              ; %Flow3332
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.133:
	v_mov_b32_e32 v97, 0
	v_or_b32_e32 v129, 0x10000, v98
	v_cmp_eq_u32_sdwa vcc, v98, v97 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v97, v129, v98, vcc
; %bb.134:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.3.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v98, 0x7f800000, v99
	v_cmp_ne_u32_e32 vcc, s0, v98
                                        ; implicit-def: $vgpr129
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.135:
	v_bfe_u32 v98, v99, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v129, v99, v98, s2
; %bb.136:                              ; %Flow3331
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.137:
	v_mov_b32_e32 v98, 0
	v_or_b32_e32 v129, 0x10000, v99
	v_cmp_eq_u32_sdwa vcc, v99, v98 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v129, v129, v99, vcc
; %bb.138:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.3.1.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v98, 0x7f800000, v92
	v_cmp_ne_u32_e32 vcc, s0, v98
                                        ; implicit-def: $vgpr99
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.139:
	v_bfe_u32 v98, v92, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v99, v92, v98, s2
; %bb.140:                              ; %Flow3330
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.141:
	v_mov_b32_e32 v98, 0
	v_or_b32_e32 v99, 0x10000, v92
	v_cmp_eq_u32_sdwa vcc, v92, v98 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v99, v99, v92, vcc
; %bb.142:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.240.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v92, 0x7f800000, v93
	v_cmp_ne_u32_e32 vcc, s0, v92
                                        ; implicit-def: $vgpr92
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.143:
	v_bfe_u32 v92, v93, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v92, v93, v92, s2
; %bb.144:                              ; %Flow3329
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.145:
	v_mov_b32_e32 v92, 0
	v_or_b32_e32 v98, 0x10000, v93
	v_cmp_eq_u32_sdwa vcc, v93, v92 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v92, v98, v93, vcc
; %bb.146:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.246.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v93, 0x7f800000, v94
	v_cmp_ne_u32_e32 vcc, s0, v93
                                        ; implicit-def: $vgpr93
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.147:
	v_bfe_u32 v93, v94, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v93, v94, v93, s2
; %bb.148:                              ; %Flow3328
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.149:
	v_mov_b32_e32 v93, 0
	v_or_b32_e32 v98, 0x10000, v94
	v_cmp_eq_u32_sdwa vcc, v94, v93 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v93, v98, v94, vcc
; %bb.150:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.250.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v94, 0x7f800000, v95
	v_cmp_ne_u32_e32 vcc, s0, v94
                                        ; implicit-def: $vgpr94
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.151:
	v_bfe_u32 v94, v95, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v94, v95, v94, s2
; %bb.152:                              ; %Flow3327
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.153:
	v_mov_b32_e32 v94, 0
	v_or_b32_e32 v98, 0x10000, v95
	v_cmp_eq_u32_sdwa vcc, v95, v94 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v94, v98, v95, vcc
; %bb.154:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.253.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v95, 0x7f800000, v88
	v_cmp_ne_u32_e32 vcc, s0, v95
                                        ; implicit-def: $vgpr95
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.155:
	v_bfe_u32 v95, v88, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v95, v88, v95, s2
; %bb.156:                              ; %Flow3326
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.157:
	v_mov_b32_e32 v95, 0
	v_or_b32_e32 v98, 0x10000, v88
	v_cmp_eq_u32_sdwa vcc, v88, v95 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v95, v98, v88, vcc
; %bb.158:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.1.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v88, 0x7f800000, v89
	v_cmp_ne_u32_e32 vcc, s0, v88
                                        ; implicit-def: $vgpr130
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.159:
	v_bfe_u32 v88, v89, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v130, v89, v88, s2
; %bb.160:                              ; %Flow3325
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.161:
	v_mov_b32_e32 v88, 0
	v_or_b32_e32 v98, 0x10000, v89
	v_cmp_eq_u32_sdwa vcc, v89, v88 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v130, v98, v89, vcc
; %bb.162:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.1.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v88, 0x7f800000, v90
	v_cmp_ne_u32_e32 vcc, s0, v88
                                        ; implicit-def: $vgpr131
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.163:
	v_bfe_u32 v88, v90, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v131, v90, v88, s2
; %bb.164:                              ; %Flow3324
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.165:
	v_mov_b32_e32 v88, 0
	v_or_b32_e32 v89, 0x10000, v90
	v_cmp_eq_u32_sdwa vcc, v90, v88 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v131, v89, v90, vcc
; %bb.166:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.1.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v88, 0x7f800000, v91
	v_cmp_ne_u32_e32 vcc, s0, v88
                                        ; implicit-def: $vgpr90
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.167:
	v_bfe_u32 v88, v91, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v90, v91, v88, s2
; %bb.168:                              ; %Flow3323
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.169:
	v_mov_b32_e32 v88, 0
	v_or_b32_e32 v89, 0x10000, v91
	v_cmp_eq_u32_sdwa vcc, v91, v88 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v90, v89, v91, vcc
; %bb.170:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.1.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v88, 0x7f800000, v84
	v_cmp_ne_u32_e32 vcc, s0, v88
                                        ; implicit-def: $vgpr91
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.171:
	v_bfe_u32 v88, v84, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v91, v84, v88, s2
; %bb.172:                              ; %Flow3322
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.173:
	v_mov_b32_e32 v88, 0
	v_or_b32_e32 v89, 0x10000, v84
	v_cmp_eq_u32_sdwa vcc, v84, v88 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v91, v89, v84, vcc
; %bb.174:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.2.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v84, 0x7f800000, v85
	v_cmp_ne_u32_e32 vcc, s0, v84
                                        ; implicit-def: $vgpr132
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.175:
	v_bfe_u32 v84, v85, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v132, v85, v84, s2
; %bb.176:                              ; %Flow3321
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.177:
	v_mov_b32_e32 v84, 0
	v_or_b32_e32 v88, 0x10000, v85
	v_cmp_eq_u32_sdwa vcc, v85, v84 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v132, v88, v85, vcc
; %bb.178:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.2.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v84, 0x7f800000, v86
	v_cmp_ne_u32_e32 vcc, s0, v84
                                        ; implicit-def: $vgpr133
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.179:
	v_bfe_u32 v84, v86, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v133, v86, v84, s2
; %bb.180:                              ; %Flow3320
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.181:
	v_mov_b32_e32 v84, 0
	v_or_b32_e32 v85, 0x10000, v86
	v_cmp_eq_u32_sdwa vcc, v86, v84 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v133, v85, v86, vcc
; %bb.182:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.2.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v84, 0x7f800000, v87
	v_cmp_ne_u32_e32 vcc, s0, v84
                                        ; implicit-def: $vgpr134
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.183:
	v_bfe_u32 v84, v87, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v134, v87, v84, s2
; %bb.184:                              ; %Flow3319
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.185:
	v_mov_b32_e32 v84, 0
	v_or_b32_e32 v85, 0x10000, v87
	v_cmp_eq_u32_sdwa vcc, v87, v84 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v134, v85, v87, vcc
; %bb.186:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.2.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v84, 0x7f800000, v80
	v_cmp_ne_u32_e32 vcc, s0, v84
                                        ; implicit-def: $vgpr135
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.187:
	v_bfe_u32 v84, v80, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v135, v80, v84, s2
; %bb.188:                              ; %Flow3318
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.189:
	v_mov_b32_e32 v84, 0
	v_or_b32_e32 v85, 0x10000, v80
	v_cmp_eq_u32_sdwa vcc, v80, v84 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v135, v85, v80, vcc
; %bb.190:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.3.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v80, 0x7f800000, v81
	v_cmp_ne_u32_e32 vcc, s0, v80
                                        ; implicit-def: $vgpr136
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.191:
	v_bfe_u32 v80, v81, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v136, v81, v80, s2
; %bb.192:                              ; %Flow3317
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.193:
	v_mov_b32_e32 v80, 0
	v_or_b32_e32 v84, 0x10000, v81
	v_cmp_eq_u32_sdwa vcc, v81, v80 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v136, v84, v81, vcc
; %bb.194:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.3.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v80, 0x7f800000, v82
	v_cmp_ne_u32_e32 vcc, s0, v80
                                        ; implicit-def: $vgpr137
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.195:
	v_bfe_u32 v80, v82, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v137, v82, v80, s2
; %bb.196:                              ; %Flow3316
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.197:
	v_mov_b32_e32 v80, 0
	v_or_b32_e32 v81, 0x10000, v82
	v_cmp_eq_u32_sdwa vcc, v82, v80 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v137, v81, v82, vcc
; %bb.198:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.3.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v80, 0x7f800000, v83
	v_cmp_ne_u32_e32 vcc, s0, v80
                                        ; implicit-def: $vgpr138
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.199:
	v_bfe_u32 v80, v83, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v138, v83, v80, s2
; %bb.200:                              ; %Flow3315
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.201:
	v_mov_b32_e32 v80, 0
	v_or_b32_e32 v81, 0x10000, v83
	v_cmp_eq_u32_sdwa vcc, v83, v80 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v138, v81, v83, vcc
; %bb.202:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.3.2.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v80, 0x7f800000, v76
	v_cmp_ne_u32_e32 vcc, s0, v80
                                        ; implicit-def: $vgpr139
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.203:
	v_bfe_u32 v80, v76, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v139, v76, v80, s2
; %bb.204:                              ; %Flow3314
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.205:
	v_mov_b32_e32 v80, 0
	v_or_b32_e32 v81, 0x10000, v76
	v_cmp_eq_u32_sdwa vcc, v76, v80 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v139, v81, v76, vcc
; %bb.206:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.360.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v76, 0x7f800000, v77
	v_cmp_ne_u32_e32 vcc, s0, v76
                                        ; implicit-def: $vgpr140
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.207:
	v_bfe_u32 v76, v77, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v140, v77, v76, s2
; %bb.208:                              ; %Flow3313
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.209:
	v_mov_b32_e32 v76, 0
	v_or_b32_e32 v80, 0x10000, v77
	v_cmp_eq_u32_sdwa vcc, v77, v76 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v140, v80, v77, vcc
; %bb.210:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.366.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v76, 0x7f800000, v78
	v_cmp_ne_u32_e32 vcc, s0, v76
                                        ; implicit-def: $vgpr141
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.211:
	v_bfe_u32 v76, v78, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v141, v78, v76, s2
; %bb.212:                              ; %Flow3312
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.213:
	v_mov_b32_e32 v76, 0
	v_or_b32_e32 v77, 0x10000, v78
	v_cmp_eq_u32_sdwa vcc, v78, v76 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v141, v77, v78, vcc
; %bb.214:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.370.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v76, 0x7f800000, v79
	v_cmp_ne_u32_e32 vcc, s0, v76
                                        ; implicit-def: $vgpr142
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.215:
	v_bfe_u32 v76, v79, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v142, v79, v76, s2
; %bb.216:                              ; %Flow3311
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.217:
	v_mov_b32_e32 v76, 0
	v_or_b32_e32 v77, 0x10000, v79
	v_cmp_eq_u32_sdwa vcc, v79, v76 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v142, v77, v79, vcc
; %bb.218:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.373.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v76, 0x7f800000, v72
	v_cmp_ne_u32_e32 vcc, s0, v76
                                        ; implicit-def: $vgpr143
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.219:
	v_bfe_u32 v76, v72, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v143, v72, v76, s2
; %bb.220:                              ; %Flow3310
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.221:
	v_mov_b32_e32 v76, 0
	v_or_b32_e32 v77, 0x10000, v72
	v_cmp_eq_u32_sdwa vcc, v72, v76 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v143, v77, v72, vcc
; %bb.222:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.1.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v72, 0x7f800000, v73
	v_cmp_ne_u32_e32 vcc, s0, v72
                                        ; implicit-def: $vgpr144
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.223:
	v_bfe_u32 v72, v73, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v144, v73, v72, s2
; %bb.224:                              ; %Flow3309
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.225:
	v_mov_b32_e32 v72, 0
	v_or_b32_e32 v76, 0x10000, v73
	v_cmp_eq_u32_sdwa vcc, v73, v72 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v144, v76, v73, vcc
; %bb.226:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.1.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v72, 0x7f800000, v74
	v_cmp_ne_u32_e32 vcc, s0, v72
                                        ; implicit-def: $vgpr145
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.227:
	v_bfe_u32 v72, v74, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v145, v74, v72, s2
; %bb.228:                              ; %Flow3308
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.229:
	v_mov_b32_e32 v72, 0
	v_or_b32_e32 v73, 0x10000, v74
	v_cmp_eq_u32_sdwa vcc, v74, v72 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v145, v73, v74, vcc
; %bb.230:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.1.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v72, 0x7f800000, v75
	v_cmp_ne_u32_e32 vcc, s0, v72
                                        ; implicit-def: $vgpr146
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.231:
	v_bfe_u32 v72, v75, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v146, v75, v72, s2
; %bb.232:                              ; %Flow3307
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.233:
	v_mov_b32_e32 v72, 0
	v_or_b32_e32 v73, 0x10000, v75
	v_cmp_eq_u32_sdwa vcc, v75, v72 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v146, v73, v75, vcc
; %bb.234:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.1.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v72, 0x7f800000, v68
	v_cmp_ne_u32_e32 vcc, s0, v72
                                        ; implicit-def: $vgpr147
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.235:
	v_bfe_u32 v72, v68, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v147, v68, v72, s2
; %bb.236:                              ; %Flow3306
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.237:
	v_mov_b32_e32 v72, 0
	v_or_b32_e32 v73, 0x10000, v68
	v_cmp_eq_u32_sdwa vcc, v68, v72 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v147, v73, v68, vcc
; %bb.238:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.2.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v68, 0x7f800000, v69
	v_cmp_ne_u32_e32 vcc, s0, v68
                                        ; implicit-def: $vgpr148
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.239:
	v_bfe_u32 v68, v69, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v148, v69, v68, s2
; %bb.240:                              ; %Flow3305
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.241:
	v_mov_b32_e32 v68, 0
	v_or_b32_e32 v72, 0x10000, v69
	v_cmp_eq_u32_sdwa vcc, v69, v68 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v148, v72, v69, vcc
; %bb.242:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.2.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v68, 0x7f800000, v70
	v_cmp_ne_u32_e32 vcc, s0, v68
                                        ; implicit-def: $vgpr149
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.243:
	v_bfe_u32 v68, v70, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v149, v70, v68, s2
; %bb.244:                              ; %Flow3304
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.245:
	v_mov_b32_e32 v68, 0
	v_or_b32_e32 v69, 0x10000, v70
	v_cmp_eq_u32_sdwa vcc, v70, v68 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v149, v69, v70, vcc
; %bb.246:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.2.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v68, 0x7f800000, v71
	v_cmp_ne_u32_e32 vcc, s0, v68
                                        ; implicit-def: $vgpr150
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.247:
	v_bfe_u32 v68, v71, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v150, v71, v68, s2
; %bb.248:                              ; %Flow3303
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.249:
	v_mov_b32_e32 v68, 0
	v_or_b32_e32 v69, 0x10000, v71
	v_cmp_eq_u32_sdwa vcc, v71, v68 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v150, v69, v71, vcc
; %bb.250:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.2.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v68, 0x7f800000, v64
	v_cmp_ne_u32_e32 vcc, s0, v68
                                        ; implicit-def: $vgpr151
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.251:
	v_bfe_u32 v68, v64, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v151, v64, v68, s2
; %bb.252:                              ; %Flow3302
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.253:
	v_mov_b32_e32 v68, 0
	v_or_b32_e32 v69, 0x10000, v64
	v_cmp_eq_u32_sdwa vcc, v64, v68 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v151, v69, v64, vcc
; %bb.254:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.3.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v64, 0x7f800000, v65
	v_cmp_ne_u32_e32 vcc, s0, v64
                                        ; implicit-def: $vgpr152
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.255:
	v_bfe_u32 v64, v65, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v152, v65, v64, s2
; %bb.256:                              ; %Flow3301
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.257:
	v_mov_b32_e32 v64, 0
	v_or_b32_e32 v68, 0x10000, v65
	v_cmp_eq_u32_sdwa vcc, v65, v64 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v152, v68, v65, vcc
; %bb.258:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.3.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v64, 0x7f800000, v66
	v_cmp_ne_u32_e32 vcc, s0, v64
                                        ; implicit-def: $vgpr153
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.259:
	v_bfe_u32 v64, v66, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v153, v66, v64, s2
; %bb.260:                              ; %Flow3300
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.261:
	v_mov_b32_e32 v64, 0
	v_or_b32_e32 v65, 0x10000, v66
	v_cmp_eq_u32_sdwa vcc, v66, v64 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v153, v65, v66, vcc
; %bb.262:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.3.3.i
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v64, 0x7f800000, v67
	v_cmp_ne_u32_e32 vcc, s0, v64
                                        ; implicit-def: $vgpr154
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.263:
	v_bfe_u32 v64, v67, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v154, v67, v64, s2
; %bb.264:                              ; %Flow3299
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.265:
	v_mov_b32_e32 v64, 0
	v_or_b32_e32 v65, 0x10000, v67
	v_cmp_eq_u32_sdwa vcc, v67, v64 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v154, v65, v67, vcc
; %bb.266:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fLi64ELi64ETkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_2rtIT_XT1_EXT2_ET3_EERKNS5_IT0_XT1_EXT2_ES7_EE.exit
	s_or_b64 exec, exec, s[0:1]
	scratch_load_dword v64, off, off offset:416 ; 4-byte Folded Reload
	s_mul_i32 s2, s10, s18
	scratch_load_dword v155, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v98, s19, v64
	scratch_load_dword v64, off, off offset:400 ; 4-byte Folded Reload
	v_mul_lo_u32 v65, s11, v98
	v_mad_u64_u32 v[66:67], s[0:1], s10, v98, 0
	v_add3_u32 v67, v67, s2, v65
	v_lshl_add_u64 v[66:67], v[66:67], 1, s[8:9]
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v64, s20, v64
	v_ashrrev_i32_e32 v65, 31, v64
	v_lshl_add_u64 v[156:157], v[64:65], 1, v[66:67]
	scratch_load_dwordx2 v[66:67], off, off offset:404 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v158, v66
	v_mad_u64_u32 v[66:67], s[0:1], v155, s10, v[158:159]
	v_add_u32_e32 v68, s10, v66
	v_add_u32_e32 v70, s10, v68
	v_add_u32_e32 v72, s10, v70
	v_ashrrev_i32_e32 v67, 31, v66
	v_ashrrev_i32_e32 v69, 31, v68
	v_ashrrev_i32_e32 v71, 31, v70
	v_ashrrev_i32_e32 v73, 31, v72
	v_lshl_add_u64 v[74:75], v[66:67], 1, v[156:157]
	v_lshl_add_u64 v[76:77], v[68:69], 1, v[156:157]
	v_lshl_add_u64 v[78:79], v[70:71], 1, v[156:157]
	v_lshl_add_u64 v[80:81], v[72:73], 1, v[156:157]
	global_store_short_d16_hi v[74:75], v116, off
	global_store_short_d16_hi v[76:77], v117, off
	global_store_short_d16_hi v[78:79], v118, off
	global_store_short_d16_hi v[80:81], v119, off
	global_store_short_d16_hi v[74:75], v120, off offset:32
	global_store_short_d16_hi v[76:77], v121, off offset:32
	global_store_short_d16_hi v[78:79], v122, off offset:32
	global_store_short_d16_hi v[80:81], v123, off offset:32
	global_store_short_d16_hi v[74:75], v124, off offset:64
	global_store_short_d16_hi v[76:77], v125, off offset:64
	global_store_short_d16_hi v[78:79], v126, off offset:64
	global_store_short_d16_hi v[80:81], v127, off offset:64
	global_store_short_d16_hi v[74:75], v128, off offset:96
	global_store_short_d16_hi v[76:77], v112, off offset:96
	global_store_short_d16_hi v[78:79], v113, off offset:96
	global_store_short_d16_hi v[80:81], v114, off offset:96
	v_or_b32_e32 v74, 16, v155
	v_mad_u64_u32 v[74:75], s[0:1], v74, s10, v[158:159]
	v_add_u32_e32 v76, s10, v74
	v_add_u32_e32 v78, s10, v76
	v_add_u32_e32 v80, s10, v78
	v_ashrrev_i32_e32 v75, 31, v74
	v_ashrrev_i32_e32 v77, 31, v76
	v_ashrrev_i32_e32 v79, 31, v78
	v_ashrrev_i32_e32 v81, 31, v80
	v_lshl_add_u64 v[82:83], v[74:75], 1, v[156:157]
	v_lshl_add_u64 v[84:85], v[76:77], 1, v[156:157]
	v_lshl_add_u64 v[86:87], v[78:79], 1, v[156:157]
	v_lshl_add_u64 v[88:89], v[80:81], 1, v[156:157]
	global_store_short_d16_hi v[82:83], v115, off
	global_store_short_d16_hi v[84:85], v108, off
	global_store_short_d16_hi v[86:87], v109, off
	global_store_short_d16_hi v[88:89], v110, off
	global_store_short_d16_hi v[82:83], v111, off offset:32
	global_store_short_d16_hi v[84:85], v104, off offset:32
	global_store_short_d16_hi v[86:87], v105, off offset:32
	global_store_short_d16_hi v[88:89], v106, off offset:32
	global_store_short_d16_hi v[82:83], v107, off offset:64
	global_store_short_d16_hi v[84:85], v100, off offset:64
	global_store_short_d16_hi v[86:87], v101, off offset:64
	global_store_short_d16_hi v[88:89], v102, off offset:64
	global_store_short_d16_hi v[82:83], v103, off offset:96
	global_store_short_d16_hi v[84:85], v96, off offset:96
	global_store_short_d16_hi v[86:87], v97, off offset:96
	global_store_short_d16_hi v[88:89], v129, off offset:96
	v_or_b32_e32 v82, 32, v155
	v_mad_u64_u32 v[82:83], s[0:1], v82, s10, v[158:159]
	v_add_u32_e32 v84, s10, v82
	v_add_u32_e32 v86, s10, v84
	v_ashrrev_i32_e32 v83, 31, v82
	v_ashrrev_i32_e32 v85, 31, v84
	v_ashrrev_i32_e32 v87, 31, v86
	v_add_u32_e32 v88, s10, v86
	v_lshl_add_u64 v[96:97], v[82:83], 1, v[156:157]
	v_lshl_add_u64 v[100:101], v[84:85], 1, v[156:157]
	v_lshl_add_u64 v[102:103], v[86:87], 1, v[156:157]
	v_ashrrev_i32_e32 v89, 31, v88
	global_store_short_d16_hi v[96:97], v99, off
	global_store_short_d16_hi v[100:101], v92, off
	global_store_short_d16_hi v[102:103], v93, off
	v_lshl_add_u64 v[92:93], v[88:89], 1, v[156:157]
	global_store_short_d16_hi v[92:93], v94, off
	global_store_short_d16_hi v[96:97], v95, off offset:32
	global_store_short_d16_hi v[100:101], v130, off offset:32
	global_store_short_d16_hi v[102:103], v131, off offset:32
	global_store_short_d16_hi v[92:93], v90, off offset:32
	global_store_short_d16_hi v[96:97], v91, off offset:64
	global_store_short_d16_hi v[100:101], v132, off offset:64
	global_store_short_d16_hi v[102:103], v133, off offset:64
	global_store_short_d16_hi v[92:93], v134, off offset:64
	global_store_short_d16_hi v[96:97], v135, off offset:96
	global_store_short_d16_hi v[100:101], v136, off offset:96
	global_store_short_d16_hi v[102:103], v137, off offset:96
	global_store_short_d16_hi v[92:93], v138, off offset:96
	v_or_b32_e32 v90, 48, v155
	v_mad_u64_u32 v[90:91], s[0:1], v90, s10, v[158:159]
	v_add_u32_e32 v92, s10, v90
	v_add_u32_e32 v94, s10, v92
	v_add_u32_e32 v96, s10, v94
	v_ashrrev_i32_e32 v91, 31, v90
	v_ashrrev_i32_e32 v93, 31, v92
	v_ashrrev_i32_e32 v95, 31, v94
	v_ashrrev_i32_e32 v97, 31, v96
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v99, 0x7f800000, v60
	v_lshl_add_u64 v[100:101], v[90:91], 1, v[156:157]
	v_lshl_add_u64 v[102:103], v[92:93], 1, v[156:157]
	v_lshl_add_u64 v[104:105], v[94:95], 1, v[156:157]
	v_lshl_add_u64 v[106:107], v[96:97], 1, v[156:157]
	v_cmp_ne_u32_e32 vcc, s0, v99
	global_store_short_d16_hi v[100:101], v139, off
	global_store_short_d16_hi v[102:103], v140, off
	global_store_short_d16_hi v[104:105], v141, off
	global_store_short_d16_hi v[106:107], v142, off
	global_store_short_d16_hi v[100:101], v143, off offset:32
	global_store_short_d16_hi v[102:103], v144, off offset:32
	global_store_short_d16_hi v[104:105], v145, off offset:32
	global_store_short_d16_hi v[106:107], v146, off offset:32
	global_store_short_d16_hi v[100:101], v147, off offset:64
	global_store_short_d16_hi v[102:103], v148, off offset:64
	global_store_short_d16_hi v[104:105], v149, off offset:64
	global_store_short_d16_hi v[106:107], v150, off offset:64
	global_store_short_d16_hi v[100:101], v151, off offset:96
	global_store_short_d16_hi v[102:103], v152, off offset:96
	global_store_short_d16_hi v[104:105], v153, off offset:96
	global_store_short_d16_hi v[106:107], v154, off offset:96
                                        ; implicit-def: $vgpr99
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.267:
	v_bfe_u32 v99, v60, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v99, v60, v99, s2
; %bb.268:                              ; %Flow3298
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.269:
	v_mov_b32_e32 v99, 0
	v_or_b32_e32 v100, 0x10000, v60
	v_cmp_eq_u32_sdwa vcc, v60, v99 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v99, v100, v60, vcc
; %bb.270:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.i271
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v60, 0x7f800000, v61
	v_cmp_ne_u32_e32 vcc, s0, v60
                                        ; implicit-def: $vgpr60
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.271:
	v_bfe_u32 v60, v61, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v60, v61, v60, s2
; %bb.272:                              ; %Flow3297
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.273:
	v_mov_b32_e32 v60, 0
	v_or_b32_e32 v100, 0x10000, v61
	v_cmp_eq_u32_sdwa vcc, v61, v60 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v60, v100, v61, vcc
; %bb.274:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.i274
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v61, 0x7f800000, v62
	v_cmp_ne_u32_e32 vcc, s0, v61
                                        ; implicit-def: $vgpr61
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.275:
	v_bfe_u32 v61, v62, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v61, v62, v61, s2
; %bb.276:                              ; %Flow3296
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.277:
	v_mov_b32_e32 v61, 0
	v_or_b32_e32 v100, 0x10000, v62
	v_cmp_eq_u32_sdwa vcc, v62, v61 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v61, v100, v62, vcc
; %bb.278:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.i279
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v62, 0x7f800000, v63
	v_cmp_ne_u32_e32 vcc, s0, v62
                                        ; implicit-def: $vgpr62
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.279:
	v_bfe_u32 v62, v63, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v62, v63, v62, s2
; %bb.280:                              ; %Flow3295
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.281:
	v_mov_b32_e32 v62, 0
	v_or_b32_e32 v100, 0x10000, v63
	v_cmp_eq_u32_sdwa vcc, v63, v62 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v62, v100, v63, vcc
; %bb.282:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.i282
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v63, 0x7f800000, v56
	v_cmp_ne_u32_e32 vcc, s0, v63
                                        ; implicit-def: $vgpr63
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.283:
	v_bfe_u32 v63, v56, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v63, v56, v63, s2
; %bb.284:                              ; %Flow3294
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.285:
	v_mov_b32_e32 v63, 0
	v_or_b32_e32 v100, 0x10000, v56
	v_cmp_eq_u32_sdwa vcc, v56, v63 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v63, v100, v56, vcc
; %bb.286:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.1.i287
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v56, 0x7f800000, v57
	v_cmp_ne_u32_e32 vcc, s0, v56
                                        ; implicit-def: $vgpr56
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.287:
	v_bfe_u32 v56, v57, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v56, v57, v56, s2
; %bb.288:                              ; %Flow3293
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.289:
	v_mov_b32_e32 v56, 0
	v_or_b32_e32 v100, 0x10000, v57
	v_cmp_eq_u32_sdwa vcc, v57, v56 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v56, v100, v57, vcc
; %bb.290:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.1.i290
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v57, 0x7f800000, v58
	v_cmp_ne_u32_e32 vcc, s0, v57
                                        ; implicit-def: $vgpr57
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.291:
	v_bfe_u32 v57, v58, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v57, v58, v57, s2
; %bb.292:                              ; %Flow3292
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.293:
	v_mov_b32_e32 v57, 0
	v_or_b32_e32 v100, 0x10000, v58
	v_cmp_eq_u32_sdwa vcc, v58, v57 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v57, v100, v58, vcc
; %bb.294:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.1.i295
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v58, 0x7f800000, v59
	v_cmp_ne_u32_e32 vcc, s0, v58
                                        ; implicit-def: $vgpr58
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.295:
	v_bfe_u32 v58, v59, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v58, v59, v58, s2
; %bb.296:                              ; %Flow3291
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.297:
	v_mov_b32_e32 v58, 0
	v_or_b32_e32 v100, 0x10000, v59
	v_cmp_eq_u32_sdwa vcc, v59, v58 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v58, v100, v59, vcc
; %bb.298:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.1.i298
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v59, 0x7f800000, v52
	v_cmp_ne_u32_e32 vcc, s0, v59
                                        ; implicit-def: $vgpr59
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.299:
	v_bfe_u32 v59, v52, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v59, v52, v59, s2
; %bb.300:                              ; %Flow3290
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.301:
	v_mov_b32_e32 v59, 0
	v_or_b32_e32 v100, 0x10000, v52
	v_cmp_eq_u32_sdwa vcc, v52, v59 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v59, v100, v52, vcc
; %bb.302:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.2.i303
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v52, 0x7f800000, v53
	v_cmp_ne_u32_e32 vcc, s0, v52
                                        ; implicit-def: $vgpr52
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.303:
	v_bfe_u32 v52, v53, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v52, v53, v52, s2
; %bb.304:                              ; %Flow3289
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.305:
	v_mov_b32_e32 v52, 0
	v_or_b32_e32 v100, 0x10000, v53
	v_cmp_eq_u32_sdwa vcc, v53, v52 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v52, v100, v53, vcc
; %bb.306:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.2.i306
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v53, 0x7f800000, v54
	v_cmp_ne_u32_e32 vcc, s0, v53
                                        ; implicit-def: $vgpr53
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.307:
	v_bfe_u32 v53, v54, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v53, v54, v53, s2
; %bb.308:                              ; %Flow3288
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.309:
	v_mov_b32_e32 v53, 0
	v_or_b32_e32 v100, 0x10000, v54
	v_cmp_eq_u32_sdwa vcc, v54, v53 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v53, v100, v54, vcc
; %bb.310:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.2.i311
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v54, 0x7f800000, v55
	v_cmp_ne_u32_e32 vcc, s0, v54
                                        ; implicit-def: $vgpr54
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.311:
	v_bfe_u32 v54, v55, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v54, v55, v54, s2
; %bb.312:                              ; %Flow3287
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.313:
	v_mov_b32_e32 v54, 0
	v_or_b32_e32 v100, 0x10000, v55
	v_cmp_eq_u32_sdwa vcc, v55, v54 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v54, v100, v55, vcc
; %bb.314:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.2.i314
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v55, 0x7f800000, v48
	v_cmp_ne_u32_e32 vcc, s0, v55
                                        ; implicit-def: $vgpr55
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.315:
	v_bfe_u32 v55, v48, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v55, v48, v55, s2
; %bb.316:                              ; %Flow3286
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.317:
	v_mov_b32_e32 v55, 0
	v_or_b32_e32 v100, 0x10000, v48
	v_cmp_eq_u32_sdwa vcc, v48, v55 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v55, v100, v48, vcc
; %bb.318:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.3.i319
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v48, 0x7f800000, v49
	v_cmp_ne_u32_e32 vcc, s0, v48
                                        ; implicit-def: $vgpr48
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.319:
	v_bfe_u32 v48, v49, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v48, v49, v48, s2
; %bb.320:                              ; %Flow3285
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.321:
	v_mov_b32_e32 v48, 0
	v_or_b32_e32 v100, 0x10000, v49
	v_cmp_eq_u32_sdwa vcc, v49, v48 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v48, v100, v49, vcc
; %bb.322:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.3.i322
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v49, 0x7f800000, v50
	v_cmp_ne_u32_e32 vcc, s0, v49
                                        ; implicit-def: $vgpr49
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.323:
	v_bfe_u32 v49, v50, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v49, v50, v49, s2
; %bb.324:                              ; %Flow3284
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.325:
	v_mov_b32_e32 v49, 0
	v_or_b32_e32 v100, 0x10000, v50
	v_cmp_eq_u32_sdwa vcc, v50, v49 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v49, v100, v50, vcc
; %bb.326:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.3.i327
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v50, 0x7f800000, v51
	v_cmp_ne_u32_e32 vcc, s0, v50
                                        ; implicit-def: $vgpr50
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.327:
	v_bfe_u32 v50, v51, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v50, v51, v50, s2
; %bb.328:                              ; %Flow3283
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.329:
	v_mov_b32_e32 v50, 0
	v_or_b32_e32 v100, 0x10000, v51
	v_cmp_eq_u32_sdwa vcc, v51, v50 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v50, v100, v51, vcc
; %bb.330:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.3.i330
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v51, 0x7f800000, v44
	v_cmp_ne_u32_e32 vcc, s0, v51
                                        ; implicit-def: $vgpr51
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.331:
	v_bfe_u32 v51, v44, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v51, v44, v51, s2
; %bb.332:                              ; %Flow3282
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.333:
	v_mov_b32_e32 v51, 0
	v_or_b32_e32 v100, 0x10000, v44
	v_cmp_eq_u32_sdwa vcc, v44, v51 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v51, v100, v44, vcc
; %bb.334:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.120.i335
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v44, 0x7f800000, v45
	v_cmp_ne_u32_e32 vcc, s0, v44
                                        ; implicit-def: $vgpr44
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.335:
	v_bfe_u32 v44, v45, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v44, v45, v44, s2
; %bb.336:                              ; %Flow3281
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.337:
	v_mov_b32_e32 v44, 0
	v_or_b32_e32 v100, 0x10000, v45
	v_cmp_eq_u32_sdwa vcc, v45, v44 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v44, v100, v45, vcc
; %bb.338:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.126.i338
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v45, 0x7f800000, v46
	v_cmp_ne_u32_e32 vcc, s0, v45
                                        ; implicit-def: $vgpr45
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.339:
	v_bfe_u32 v45, v46, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v45, v46, v45, s2
; %bb.340:                              ; %Flow3280
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.341:
	v_mov_b32_e32 v45, 0
	v_or_b32_e32 v100, 0x10000, v46
	v_cmp_eq_u32_sdwa vcc, v46, v45 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v45, v100, v46, vcc
; %bb.342:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.130.i343
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v46, 0x7f800000, v47
	v_cmp_ne_u32_e32 vcc, s0, v46
                                        ; implicit-def: $vgpr46
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.343:
	v_bfe_u32 v46, v47, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v46, v47, v46, s2
; %bb.344:                              ; %Flow3279
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.345:
	v_mov_b32_e32 v46, 0
	v_or_b32_e32 v100, 0x10000, v47
	v_cmp_eq_u32_sdwa vcc, v47, v46 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v46, v100, v47, vcc
; %bb.346:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.133.i346
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v47, 0x7f800000, v40
	v_cmp_ne_u32_e32 vcc, s0, v47
                                        ; implicit-def: $vgpr47
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.347:
	v_bfe_u32 v47, v40, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v47, v40, v47, s2
; %bb.348:                              ; %Flow3278
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.349:
	v_mov_b32_e32 v47, 0
	v_or_b32_e32 v100, 0x10000, v40
	v_cmp_eq_u32_sdwa vcc, v40, v47 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v47, v100, v40, vcc
; %bb.350:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.1.1.i351
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v40, 0x7f800000, v41
	v_cmp_ne_u32_e32 vcc, s0, v40
                                        ; implicit-def: $vgpr40
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.351:
	v_bfe_u32 v40, v41, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v40, v41, v40, s2
; %bb.352:                              ; %Flow3277
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.353:
	v_mov_b32_e32 v40, 0
	v_or_b32_e32 v100, 0x10000, v41
	v_cmp_eq_u32_sdwa vcc, v41, v40 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v40, v100, v41, vcc
; %bb.354:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.1.1.i354
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v41, 0x7f800000, v42
	v_cmp_ne_u32_e32 vcc, s0, v41
                                        ; implicit-def: $vgpr41
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.355:
	v_bfe_u32 v41, v42, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v41, v42, v41, s2
; %bb.356:                              ; %Flow3276
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.357:
	v_mov_b32_e32 v41, 0
	v_or_b32_e32 v100, 0x10000, v42
	v_cmp_eq_u32_sdwa vcc, v42, v41 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v41, v100, v42, vcc
; %bb.358:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.1.1.i359
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v42, 0x7f800000, v43
	v_cmp_ne_u32_e32 vcc, s0, v42
                                        ; implicit-def: $vgpr42
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.359:
	v_bfe_u32 v42, v43, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v42, v43, v42, s2
; %bb.360:                              ; %Flow3275
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.361:
	v_mov_b32_e32 v42, 0
	v_or_b32_e32 v100, 0x10000, v43
	v_cmp_eq_u32_sdwa vcc, v43, v42 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v42, v100, v43, vcc
; %bb.362:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.1.1.i362
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v43, 0x7f800000, v36
	v_cmp_ne_u32_e32 vcc, s0, v43
                                        ; implicit-def: $vgpr43
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.363:
	v_bfe_u32 v43, v36, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v43, v36, v43, s2
; %bb.364:                              ; %Flow3274
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.365:
	v_mov_b32_e32 v43, 0
	v_or_b32_e32 v100, 0x10000, v36
	v_cmp_eq_u32_sdwa vcc, v36, v43 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v43, v100, v36, vcc
; %bb.366:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.2.1.i367
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v36, 0x7f800000, v37
	v_cmp_ne_u32_e32 vcc, s0, v36
                                        ; implicit-def: $vgpr36
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.367:
	v_bfe_u32 v36, v37, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v36, v37, v36, s2
; %bb.368:                              ; %Flow3273
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.369:
	v_mov_b32_e32 v36, 0
	v_or_b32_e32 v100, 0x10000, v37
	v_cmp_eq_u32_sdwa vcc, v37, v36 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v36, v100, v37, vcc
; %bb.370:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.2.1.i370
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v37, 0x7f800000, v38
	v_cmp_ne_u32_e32 vcc, s0, v37
                                        ; implicit-def: $vgpr37
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.371:
	v_bfe_u32 v37, v38, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v37, v38, v37, s2
; %bb.372:                              ; %Flow3272
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.373:
	v_mov_b32_e32 v37, 0
	v_or_b32_e32 v100, 0x10000, v38
	v_cmp_eq_u32_sdwa vcc, v38, v37 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v37, v100, v38, vcc
; %bb.374:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.2.1.i375
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v38, 0x7f800000, v39
	v_cmp_ne_u32_e32 vcc, s0, v38
                                        ; implicit-def: $vgpr38
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.375:
	v_bfe_u32 v38, v39, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v38, v39, v38, s2
; %bb.376:                              ; %Flow3271
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.377:
	v_mov_b32_e32 v38, 0
	v_or_b32_e32 v100, 0x10000, v39
	v_cmp_eq_u32_sdwa vcc, v39, v38 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v38, v100, v39, vcc
; %bb.378:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.2.1.i378
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v39, 0x7f800000, v32
	v_cmp_ne_u32_e32 vcc, s0, v39
                                        ; implicit-def: $vgpr39
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.379:
	v_bfe_u32 v39, v32, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v39, v32, v39, s2
; %bb.380:                              ; %Flow3270
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.381:
	v_mov_b32_e32 v39, 0
	v_or_b32_e32 v100, 0x10000, v32
	v_cmp_eq_u32_sdwa vcc, v32, v39 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v39, v100, v32, vcc
; %bb.382:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.3.1.i383
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v32, 0x7f800000, v33
	v_cmp_ne_u32_e32 vcc, s0, v32
                                        ; implicit-def: $vgpr32
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.383:
	v_bfe_u32 v32, v33, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v32, v33, v32, s2
; %bb.384:                              ; %Flow3269
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.385:
	v_mov_b32_e32 v32, 0
	v_or_b32_e32 v100, 0x10000, v33
	v_cmp_eq_u32_sdwa vcc, v33, v32 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v32, v100, v33, vcc
; %bb.386:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.3.1.i386
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v33, 0x7f800000, v34
	v_cmp_ne_u32_e32 vcc, s0, v33
                                        ; implicit-def: $vgpr33
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.387:
	v_bfe_u32 v33, v34, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v33, v34, v33, s2
; %bb.388:                              ; %Flow3268
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.389:
	v_mov_b32_e32 v33, 0
	v_or_b32_e32 v100, 0x10000, v34
	v_cmp_eq_u32_sdwa vcc, v34, v33 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v33, v100, v34, vcc
; %bb.390:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.3.1.i391
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v34, 0x7f800000, v35
	v_cmp_ne_u32_e32 vcc, s0, v34
                                        ; implicit-def: $vgpr34
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.391:
	v_bfe_u32 v34, v35, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v34, v35, v34, s2
; %bb.392:                              ; %Flow3267
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.393:
	v_mov_b32_e32 v34, 0
	v_or_b32_e32 v100, 0x10000, v35
	v_cmp_eq_u32_sdwa vcc, v35, v34 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v34, v100, v35, vcc
; %bb.394:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.3.1.i394
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v35, 0x7f800000, v28
	v_cmp_ne_u32_e32 vcc, s0, v35
                                        ; implicit-def: $vgpr35
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.395:
	v_bfe_u32 v35, v28, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v35, v28, v35, s2
; %bb.396:                              ; %Flow3266
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.397:
	v_mov_b32_e32 v35, 0
	v_or_b32_e32 v100, 0x10000, v28
	v_cmp_eq_u32_sdwa vcc, v28, v35 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v35, v100, v28, vcc
; %bb.398:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.240.i399
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v28, 0x7f800000, v29
	v_cmp_ne_u32_e32 vcc, s0, v28
                                        ; implicit-def: $vgpr28
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.399:
	v_bfe_u32 v28, v29, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v28, v29, v28, s2
; %bb.400:                              ; %Flow3265
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.401:
	v_mov_b32_e32 v28, 0
	v_or_b32_e32 v100, 0x10000, v29
	v_cmp_eq_u32_sdwa vcc, v29, v28 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v28, v100, v29, vcc
; %bb.402:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.246.i402
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v29, 0x7f800000, v30
	v_cmp_ne_u32_e32 vcc, s0, v29
                                        ; implicit-def: $vgpr29
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.403:
	v_bfe_u32 v29, v30, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v29, v30, v29, s2
; %bb.404:                              ; %Flow3264
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.405:
	v_mov_b32_e32 v29, 0
	v_or_b32_e32 v100, 0x10000, v30
	v_cmp_eq_u32_sdwa vcc, v30, v29 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v29, v100, v30, vcc
; %bb.406:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.250.i407
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v30, 0x7f800000, v31
	v_cmp_ne_u32_e32 vcc, s0, v30
                                        ; implicit-def: $vgpr30
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.407:
	v_bfe_u32 v30, v31, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v30, v31, v30, s2
; %bb.408:                              ; %Flow3263
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.409:
	v_mov_b32_e32 v30, 0
	v_or_b32_e32 v100, 0x10000, v31
	v_cmp_eq_u32_sdwa vcc, v31, v30 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v30, v100, v31, vcc
; %bb.410:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.253.i410
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v31, 0x7f800000, v24
	v_cmp_ne_u32_e32 vcc, s0, v31
                                        ; implicit-def: $vgpr31
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.411:
	v_bfe_u32 v31, v24, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v31, v24, v31, s2
; %bb.412:                              ; %Flow3262
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.413:
	v_mov_b32_e32 v31, 0
	v_or_b32_e32 v100, 0x10000, v24
	v_cmp_eq_u32_sdwa vcc, v24, v31 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v31, v100, v24, vcc
; %bb.414:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.1.2.i415
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v24, 0x7f800000, v25
	v_cmp_ne_u32_e32 vcc, s0, v24
                                        ; implicit-def: $vgpr24
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.415:
	v_bfe_u32 v24, v25, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v24, v25, v24, s2
; %bb.416:                              ; %Flow3261
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.417:
	v_mov_b32_e32 v24, 0
	v_or_b32_e32 v100, 0x10000, v25
	v_cmp_eq_u32_sdwa vcc, v25, v24 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v24, v100, v25, vcc
; %bb.418:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.1.2.i418
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v25, 0x7f800000, v26
	v_cmp_ne_u32_e32 vcc, s0, v25
                                        ; implicit-def: $vgpr25
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.419:
	v_bfe_u32 v25, v26, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v25, v26, v25, s2
; %bb.420:                              ; %Flow3260
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.421:
	v_mov_b32_e32 v25, 0
	v_or_b32_e32 v100, 0x10000, v26
	v_cmp_eq_u32_sdwa vcc, v26, v25 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v25, v100, v26, vcc
; %bb.422:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.1.2.i423
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v26, 0x7f800000, v27
	v_cmp_ne_u32_e32 vcc, s0, v26
                                        ; implicit-def: $vgpr26
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.423:
	v_bfe_u32 v26, v27, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v26, v27, v26, s2
; %bb.424:                              ; %Flow3259
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.425:
	v_mov_b32_e32 v26, 0
	v_or_b32_e32 v100, 0x10000, v27
	v_cmp_eq_u32_sdwa vcc, v27, v26 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v26, v100, v27, vcc
; %bb.426:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.1.2.i426
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v27, 0x7f800000, v20
	v_cmp_ne_u32_e32 vcc, s0, v27
                                        ; implicit-def: $vgpr27
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.427:
	v_bfe_u32 v27, v20, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v27, v20, v27, s2
; %bb.428:                              ; %Flow3258
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.429:
	v_mov_b32_e32 v27, 0
	v_or_b32_e32 v100, 0x10000, v20
	v_cmp_eq_u32_sdwa vcc, v20, v27 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v27, v100, v20, vcc
; %bb.430:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.2.2.i431
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v20, 0x7f800000, v21
	v_cmp_ne_u32_e32 vcc, s0, v20
                                        ; implicit-def: $vgpr20
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.431:
	v_bfe_u32 v20, v21, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v20, v21, v20, s2
; %bb.432:                              ; %Flow3257
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.433:
	v_mov_b32_e32 v20, 0
	v_or_b32_e32 v100, 0x10000, v21
	v_cmp_eq_u32_sdwa vcc, v21, v20 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v20, v100, v21, vcc
; %bb.434:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.2.2.i434
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v21, 0x7f800000, v22
	v_cmp_ne_u32_e32 vcc, s0, v21
                                        ; implicit-def: $vgpr21
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.435:
	v_bfe_u32 v21, v22, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v21, v22, v21, s2
; %bb.436:                              ; %Flow3256
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.437:
	v_mov_b32_e32 v21, 0
	v_or_b32_e32 v100, 0x10000, v22
	v_cmp_eq_u32_sdwa vcc, v22, v21 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v21, v100, v22, vcc
; %bb.438:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.2.2.i439
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v22, 0x7f800000, v23
	v_cmp_ne_u32_e32 vcc, s0, v22
                                        ; implicit-def: $vgpr22
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.439:
	v_bfe_u32 v22, v23, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v22, v23, v22, s2
; %bb.440:                              ; %Flow3255
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.441:
	v_mov_b32_e32 v22, 0
	v_or_b32_e32 v100, 0x10000, v23
	v_cmp_eq_u32_sdwa vcc, v23, v22 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v22, v100, v23, vcc
; %bb.442:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.2.2.i442
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v23, 0x7f800000, v16
	v_cmp_ne_u32_e32 vcc, s0, v23
                                        ; implicit-def: $vgpr23
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.443:
	v_bfe_u32 v23, v16, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v23, v16, v23, s2
; %bb.444:                              ; %Flow3254
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.445:
	v_mov_b32_e32 v23, 0
	v_or_b32_e32 v100, 0x10000, v16
	v_cmp_eq_u32_sdwa vcc, v16, v23 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v23, v100, v16, vcc
; %bb.446:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.3.2.i447
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v16, 0x7f800000, v17
	v_cmp_ne_u32_e32 vcc, s0, v16
                                        ; implicit-def: $vgpr16
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.447:
	v_bfe_u32 v16, v17, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v16, v17, v16, s2
; %bb.448:                              ; %Flow3253
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.449:
	v_mov_b32_e32 v16, 0
	v_or_b32_e32 v100, 0x10000, v17
	v_cmp_eq_u32_sdwa vcc, v17, v16 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v16, v100, v17, vcc
; %bb.450:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.3.2.i450
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v17, 0x7f800000, v18
	v_cmp_ne_u32_e32 vcc, s0, v17
                                        ; implicit-def: $vgpr17
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.451:
	v_bfe_u32 v17, v18, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v17, v18, v17, s2
; %bb.452:                              ; %Flow3252
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.453:
	v_mov_b32_e32 v17, 0
	v_or_b32_e32 v100, 0x10000, v18
	v_cmp_eq_u32_sdwa vcc, v18, v17 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v17, v100, v18, vcc
; %bb.454:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.3.2.i455
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v18, 0x7f800000, v19
	v_cmp_ne_u32_e32 vcc, s0, v18
                                        ; implicit-def: $vgpr18
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.455:
	v_bfe_u32 v18, v19, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v18, v19, v18, s2
; %bb.456:                              ; %Flow3251
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.457:
	v_mov_b32_e32 v18, 0
	v_or_b32_e32 v100, 0x10000, v19
	v_cmp_eq_u32_sdwa vcc, v19, v18 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v18, v100, v19, vcc
; %bb.458:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.3.2.i458
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v19, 0x7f800000, v12
	v_cmp_ne_u32_e32 vcc, s0, v19
                                        ; implicit-def: $vgpr19
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.459:
	v_bfe_u32 v19, v12, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v19, v12, v19, s2
; %bb.460:                              ; %Flow3250
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.461:
	v_mov_b32_e32 v19, 0
	v_or_b32_e32 v100, 0x10000, v12
	v_cmp_eq_u32_sdwa vcc, v12, v19 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v19, v100, v12, vcc
; %bb.462:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.360.i463
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v12, 0x7f800000, v13
	v_cmp_ne_u32_e32 vcc, s0, v12
                                        ; implicit-def: $vgpr12
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.463:
	v_bfe_u32 v12, v13, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v12, v13, v12, s2
; %bb.464:                              ; %Flow3249
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.465:
	v_mov_b32_e32 v12, 0
	v_or_b32_e32 v100, 0x10000, v13
	v_cmp_eq_u32_sdwa vcc, v13, v12 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v12, v100, v13, vcc
; %bb.466:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.366.i466
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v13, 0x7f800000, v14
	v_cmp_ne_u32_e32 vcc, s0, v13
                                        ; implicit-def: $vgpr13
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.467:
	v_bfe_u32 v13, v14, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v13, v14, v13, s2
; %bb.468:                              ; %Flow3248
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.469:
	v_mov_b32_e32 v13, 0
	v_or_b32_e32 v100, 0x10000, v14
	v_cmp_eq_u32_sdwa vcc, v14, v13 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v13, v100, v14, vcc
; %bb.470:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.370.i471
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v14, 0x7f800000, v15
	v_cmp_ne_u32_e32 vcc, s0, v14
                                        ; implicit-def: $vgpr14
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.471:
	v_bfe_u32 v14, v15, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v14, v15, v14, s2
; %bb.472:                              ; %Flow3247
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.473:
	v_mov_b32_e32 v14, 0
	v_or_b32_e32 v100, 0x10000, v15
	v_cmp_eq_u32_sdwa vcc, v15, v14 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v14, v100, v15, vcc
; %bb.474:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.373.i474
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v15, 0x7f800000, v8
	v_cmp_ne_u32_e32 vcc, s0, v15
                                        ; implicit-def: $vgpr15
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.475:
	v_bfe_u32 v15, v8, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v15, v8, v15, s2
; %bb.476:                              ; %Flow3246
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.477:
	v_mov_b32_e32 v15, 0
	v_or_b32_e32 v100, 0x10000, v8
	v_cmp_eq_u32_sdwa vcc, v8, v15 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v15, v100, v8, vcc
; %bb.478:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.1.3.i479
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v8, 0x7f800000, v9
	v_cmp_ne_u32_e32 vcc, s0, v8
                                        ; implicit-def: $vgpr8
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.479:
	v_bfe_u32 v8, v9, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v8, v9, v8, s2
; %bb.480:                              ; %Flow3245
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.481:
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v100, 0x10000, v9
	v_cmp_eq_u32_sdwa vcc, v9, v8 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v8, v100, v9, vcc
; %bb.482:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.1.3.i482
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v9, 0x7f800000, v10
	v_cmp_ne_u32_e32 vcc, s0, v9
                                        ; implicit-def: $vgpr9
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.483:
	v_bfe_u32 v9, v10, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v9, v10, v9, s2
; %bb.484:                              ; %Flow3244
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.485:
	v_mov_b32_e32 v9, 0
	v_or_b32_e32 v100, 0x10000, v10
	v_cmp_eq_u32_sdwa vcc, v10, v9 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v9, v100, v10, vcc
; %bb.486:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.1.3.i487
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v10, 0x7f800000, v11
	v_cmp_ne_u32_e32 vcc, s0, v10
                                        ; implicit-def: $vgpr10
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.487:
	v_bfe_u32 v10, v11, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v10, v11, v10, s2
; %bb.488:                              ; %Flow3243
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.489:
	v_mov_b32_e32 v10, 0
	v_or_b32_e32 v100, 0x10000, v11
	v_cmp_eq_u32_sdwa vcc, v11, v10 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v10, v100, v11, vcc
; %bb.490:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.1.3.i490
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v11, 0x7f800000, v4
	v_cmp_ne_u32_e32 vcc, s0, v11
                                        ; implicit-def: $vgpr11
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.491:
	v_bfe_u32 v11, v4, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v11, v4, v11, s2
; %bb.492:                              ; %Flow3242
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.493:
	v_mov_b32_e32 v11, 0
	v_or_b32_e32 v100, 0x10000, v4
	v_cmp_eq_u32_sdwa vcc, v4, v11 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v11, v100, v4, vcc
; %bb.494:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.2.3.i495
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v4, 0x7f800000, v5
	v_cmp_ne_u32_e32 vcc, s0, v4
                                        ; implicit-def: $vgpr4
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.495:
	v_bfe_u32 v4, v5, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v4, v5, v4, s2
; %bb.496:                              ; %Flow3241
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.497:
	v_mov_b32_e32 v4, 0
	v_or_b32_e32 v100, 0x10000, v5
	v_cmp_eq_u32_sdwa vcc, v5, v4 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v4, v100, v5, vcc
; %bb.498:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.2.3.i498
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v5, 0x7f800000, v6
	v_cmp_ne_u32_e32 vcc, s0, v5
                                        ; implicit-def: $vgpr5
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.499:
	v_bfe_u32 v5, v6, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v5, v6, v5, s2
; %bb.500:                              ; %Flow3240
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.501:
	v_mov_b32_e32 v5, 0
	v_or_b32_e32 v100, 0x10000, v6
	v_cmp_eq_u32_sdwa vcc, v6, v5 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v5, v100, v6, vcc
; %bb.502:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.2.3.i503
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v6, 0x7f800000, v7
	v_cmp_ne_u32_e32 vcc, s0, v6
                                        ; implicit-def: $vgpr6
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.503:
	v_bfe_u32 v6, v7, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v6, v7, v6, s2
; %bb.504:                              ; %Flow3239
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.505:
	v_mov_b32_e32 v6, 0
	v_or_b32_e32 v100, 0x10000, v7
	v_cmp_eq_u32_sdwa vcc, v7, v6 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v6, v100, v7, vcc
; %bb.506:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fTkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_7rt_baseIT_T1_EERKNS5_IT0_S7_EE.exit.2.3.i506
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v7, 0x7f800000, v0
	v_cmp_ne_u32_e32 vcc, s0, v7
                                        ; implicit-def: $vgpr7
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.507:
	v_bfe_u32 v7, v0, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v7, v0, v7, s2
; %bb.508:                              ; %Flow3238
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.509:
	v_mov_b32_e32 v7, 0
	v_or_b32_e32 v100, 0x10000, v0
	v_cmp_eq_u32_sdwa vcc, v0, v7 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v7, v100, v0, vcc
; %bb.510:                              ; %_ZL16__float2bfloat16f.exit.i.i.i.3.3.i511
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v0, 0x7f800000, v1
	v_cmp_ne_u32_e32 vcc, s0, v0
                                        ; implicit-def: $vgpr0
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.511:
	v_bfe_u32 v0, v1, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v0, v1, v0, s2
; %bb.512:                              ; %Flow3237
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.513:
	v_mov_b32_e32 v0, 0
	v_or_b32_e32 v100, 0x10000, v1
	v_cmp_eq_u32_sdwa vcc, v1, v0 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v0, v100, v1, vcc
; %bb.514:                              ; %_ZN7kittens10base_types9convertorI15__hip_bfloat16215HIP_vector_typeIfLj2EEE7convertERKS4_.exit.i.3.3.i514
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v1, 0x7f800000, v2
	v_cmp_ne_u32_e32 vcc, s0, v1
                                        ; implicit-def: $vgpr1
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.515:
	v_bfe_u32 v1, v2, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v1, v2, v1, s2
; %bb.516:                              ; %Flow3236
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.517:
	v_mov_b32_e32 v1, 0
	v_or_b32_e32 v100, 0x10000, v2
	v_cmp_eq_u32_sdwa vcc, v2, v1 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v1, v100, v2, vcc
; %bb.518:                              ; %_ZL16__float2bfloat16f.exit.i.i.1.i.3.3.i519
	s_or_b64 exec, exec, s[0:1]
	s_mov_b32 s0, 0x7f800000
	v_and_b32_e32 v2, 0x7f800000, v3
	v_cmp_ne_u32_e32 vcc, s0, v2
                                        ; implicit-def: $vgpr2
	s_and_saveexec_b64 s[0:1], vcc
	s_xor_b64 s[0:1], exec, s[0:1]
; %bb.519:
	v_bfe_u32 v2, v3, 16, 1
	s_movk_i32 s2, 0x7fff
	v_add3_u32 v2, v3, v2, s2
; %bb.520:                              ; %Flow
	s_andn2_saveexec_b64 s[0:1], s[0:1]
; %bb.521:
	v_mov_b32_e32 v2, 0
	v_or_b32_e32 v100, 0x10000, v3
	v_cmp_eq_u32_sdwa vcc, v3, v2 src0_sel:WORD_0 src1_sel:DWORD
	s_nop 1
	v_cndmask_b32_e32 v2, v100, v3, vcc
; %bb.522:                              ; %_ZN7kittensL4copyI14__hip_bfloat16fLi64ELi64ETkNS_5ducks9rt_layout3allENS3_3colEEEvRNS_2rtIT_XT1_EXT2_ET3_EERKNS5_IT0_XT1_EXT2_ES7_EE.exit587
	s_or_b64 exec, exec, s[0:1]
	v_add_u32_e32 v3, 0x80, v98
	v_ashrrev_i32_e32 v98, 31, v3
	v_mul_lo_u32 v98, s10, v98
	v_mul_lo_u32 v102, s11, v3
	v_mad_u64_u32 v[100:101], s[0:1], s10, v3, 0
	v_add3_u32 v101, v101, v98, v102
	v_lshl_add_u64 v[100:101], v[100:101], 1, s[8:9]
	v_lshl_add_u64 v[64:65], v[64:65], 1, v[100:101]
	v_lshl_add_u64 v[66:67], v[66:67], 1, v[64:65]
	v_lshl_add_u64 v[68:69], v[68:69], 1, v[64:65]
	v_lshl_add_u64 v[70:71], v[70:71], 1, v[64:65]
	global_store_short_d16_hi v[66:67], v99, off
	global_store_short_d16_hi v[68:69], v60, off
	global_store_short_d16_hi v[70:71], v61, off
	v_lshl_add_u64 v[60:61], v[72:73], 1, v[64:65]
	global_store_short_d16_hi v[60:61], v62, off
	global_store_short_d16_hi v[66:67], v63, off offset:32
	global_store_short_d16_hi v[68:69], v56, off offset:32
	global_store_short_d16_hi v[70:71], v57, off offset:32
	global_store_short_d16_hi v[60:61], v58, off offset:32
	global_store_short_d16_hi v[66:67], v59, off offset:64
	global_store_short_d16_hi v[68:69], v52, off offset:64
	global_store_short_d16_hi v[70:71], v53, off offset:64
	global_store_short_d16_hi v[60:61], v54, off offset:64
	global_store_short_d16_hi v[66:67], v55, off offset:96
	global_store_short_d16_hi v[68:69], v48, off offset:96
	global_store_short_d16_hi v[70:71], v49, off offset:96
	global_store_short_d16_hi v[60:61], v50, off offset:96
	v_lshl_add_u64 v[48:49], v[74:75], 1, v[64:65]
	global_store_short_d16_hi v[48:49], v51, off
	v_lshl_add_u64 v[50:51], v[76:77], 1, v[64:65]
	v_lshl_add_u64 v[52:53], v[78:79], 1, v[64:65]
	global_store_short_d16_hi v[50:51], v44, off
	global_store_short_d16_hi v[52:53], v45, off
	v_lshl_add_u64 v[44:45], v[80:81], 1, v[64:65]
	global_store_short_d16_hi v[44:45], v46, off
	global_store_short_d16_hi v[48:49], v47, off offset:32
	global_store_short_d16_hi v[50:51], v40, off offset:32
	global_store_short_d16_hi v[52:53], v41, off offset:32
	global_store_short_d16_hi v[44:45], v42, off offset:32
	global_store_short_d16_hi v[48:49], v43, off offset:64
	global_store_short_d16_hi v[50:51], v36, off offset:64
	global_store_short_d16_hi v[52:53], v37, off offset:64
	global_store_short_d16_hi v[44:45], v38, off offset:64
	global_store_short_d16_hi v[48:49], v39, off offset:96
	global_store_short_d16_hi v[50:51], v32, off offset:96
	global_store_short_d16_hi v[52:53], v33, off offset:96
	global_store_short_d16_hi v[44:45], v34, off offset:96
	v_lshl_add_u64 v[32:33], v[82:83], 1, v[64:65]
	global_store_short_d16_hi v[32:33], v35, off
	v_lshl_add_u64 v[34:35], v[84:85], 1, v[64:65]
	v_lshl_add_u64 v[36:37], v[86:87], 1, v[64:65]
	global_store_short_d16_hi v[34:35], v28, off
	global_store_short_d16_hi v[36:37], v29, off
	v_lshl_add_u64 v[28:29], v[88:89], 1, v[64:65]
	global_store_short_d16_hi v[28:29], v30, off
	global_store_short_d16_hi v[32:33], v31, off offset:32
	global_store_short_d16_hi v[34:35], v24, off offset:32
	global_store_short_d16_hi v[36:37], v25, off offset:32
	global_store_short_d16_hi v[28:29], v26, off offset:32
	global_store_short_d16_hi v[32:33], v27, off offset:64
	global_store_short_d16_hi v[34:35], v20, off offset:64
	global_store_short_d16_hi v[36:37], v21, off offset:64
	global_store_short_d16_hi v[28:29], v22, off offset:64
	global_store_short_d16_hi v[32:33], v23, off offset:96
	global_store_short_d16_hi v[34:35], v16, off offset:96
	global_store_short_d16_hi v[36:37], v17, off offset:96
	global_store_short_d16_hi v[28:29], v18, off offset:96
	v_lshl_add_u64 v[16:17], v[90:91], 1, v[64:65]
	global_store_short_d16_hi v[16:17], v19, off
	v_lshl_add_u64 v[18:19], v[92:93], 1, v[64:65]
	v_lshl_add_u64 v[20:21], v[94:95], 1, v[64:65]
	global_store_short_d16_hi v[18:19], v12, off
	global_store_short_d16_hi v[20:21], v13, off
	v_lshl_add_u64 v[12:13], v[96:97], 1, v[64:65]
	global_store_short_d16_hi v[12:13], v14, off
	global_store_short_d16_hi v[16:17], v15, off offset:32
	global_store_short_d16_hi v[18:19], v8, off offset:32
	global_store_short_d16_hi v[20:21], v9, off offset:32
	global_store_short_d16_hi v[12:13], v10, off offset:32
	global_store_short_d16_hi v[16:17], v11, off offset:64
	global_store_short_d16_hi v[18:19], v4, off offset:64
	global_store_short_d16_hi v[20:21], v5, off offset:64
	global_store_short_d16_hi v[12:13], v6, off offset:64
	global_store_short_d16_hi v[16:17], v7, off offset:96
	global_store_short_d16_hi v[18:19], v0, off offset:96
	global_store_short_d16_hi v[20:21], v1, off offset:96
	global_store_short_d16_hi v[12:13], v2, off offset:96
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z8micro_tk13micro_globals
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 424
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
		.amdhsa_next_free_sgpr 26
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
; codeLenInByte = 19756
; NumSgprs: 32
; NumVgprs: 256
; NumAgprs: 0
; TotalNumVgprs: 256
; ScratchSize: 424
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 32
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
	.type	__hip_cuid_d0d904fa6b62238b,@object ; @__hip_cuid_d0d904fa6b62238b
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_d0d904fa6b62238b
__hip_cuid_d0d904fa6b62238b:
	.byte	0                               ; 0x0
	.size	__hip_cuid_d0d904fa6b62238b, 1

	.ident	"AMD clang version 19.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.4.1 25184 c87081df219c42dc27c5b6d86c0525bc7d01f727)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __shm
	.addrsig_sym __hip_cuid_d0d904fa6b62238b
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
    .private_segment_fixed_size: 424
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         _Z8micro_tk13micro_globals.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 133
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
