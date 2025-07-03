	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.protected	_Z8micro_tk13micro_globals ; -- Begin function _Z8micro_tk13micro_globals
	.globl	_Z8micro_tk13micro_globals
	.p2align	8
	.type	_Z8micro_tk13micro_globals,@function
_Z8micro_tk13micro_globals:             ; @_Z8micro_tk13micro_globals
; %bb.0:
	s_cmp_lg_u32 0, -1
	s_load_dwordx2 s[14:15], s[0:1], 0x0
	s_load_dwordx2 s[4:5], s[0:1], 0x20
	s_load_dwordx2 s[22:23], s[0:1], 0x30
	s_load_dwordx2 s[6:7], s[0:1], 0x50
	s_load_dwordx2 s[8:9], s[0:1], 0x60
	s_load_dwordx2 s[10:11], s[0:1], 0x80
	s_cselect_b32 s0, 0, 0
	s_and_b32 s1, s0, -16
	s_mov_b32 s25, 0
	s_and_b32 s24, s0, 15
	s_add_i32 s1, s1, 16
	s_cmp_eq_u64 s[24:25], 0
	s_cselect_b32 s19, s0, s1
	s_add_i32 s20, s19, 0x8000
	s_lshl_b32 s17, s3, 8
	s_and_b32 s0, s20, -16
	s_ashr_i32 s16, s17, 31
	s_add_i32 s21, s0, 16
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s0, s4, s16
	s_mul_hi_u32 s1, s4, s17
	s_add_i32 s0, s1, s0
	s_mul_i32 s1, s5, s17
	s_add_i32 s1, s0, s1
	s_mul_i32 s0, s4, s17
	s_and_b32 s24, s20, 15
	s_lshl_b64 s[0:1], s[0:1], 1
	s_add_u32 s0, s14, s0
	s_addc_u32 s1, s15, s1
	s_lshl_b32 s18, s2, 8
	s_ashr_i32 s2, s18, 31
	s_mul_i32 s2, s6, s2
	s_mul_hi_u32 s3, s6, s18
	s_add_i32 s2, s3, s2
	s_mul_i32 s3, s7, s18
	s_add_i32 s3, s2, s3
	s_mul_i32 s2, s6, s18
	s_lshl_b64 s[2:3], s[2:3], 1
	v_lshlrev_b32_e32 v1, 3, v0
	s_add_u32 s14, s22, s2
	v_and_b32_e32 v16, 56, v1
	v_lshrrev_b32_e32 v1, 3, v0
	s_addc_u32 s15, s23, s3
	v_mad_u64_u32 v[2:3], s[2:3], v1, s4, v[16:17]
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshl_add_u64 v[4:5], v[2:3], 1, s[0:1]
	v_or_b32_e32 v17, 64, v1
	;;#ASMSTART
	global_load_dwordx4 v[12:15], v[4:5], off

	;;#ASMEND
	v_mad_u64_u32 v[4:5], s[2:3], v17, s4, v[16:17]
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshl_add_u64 v[6:7], v[4:5], 1, s[0:1]
	;;#ASMSTART
	global_load_dwordx4 v[20:23], v[6:7], off

	;;#ASMEND
	v_lshl_add_u32 v6, s4, 7, v2
	v_or_b32_e32 v19, 0xc0, v1
	v_ashrrev_i32_e32 v7, 31, v6
	v_mad_u64_u32 v[10:11], s[2:3], v19, s4, v[16:17]
	v_lshl_add_u64 v[8:9], v[6:7], 1, s[0:1]
	v_ashrrev_i32_e32 v11, 31, v10
	;;#ASMSTART
	global_load_dwordx4 v[24:27], v[8:9], off

	;;#ASMEND
	v_lshl_add_u64 v[8:9], v[10:11], 1, s[0:1]
	v_lshlrev_b32_e32 v18, 4, v0
	v_lshlrev_b32_e32 v36, 1, v16
	;;#ASMSTART
	global_load_dwordx4 v[28:31], v[8:9], off

	;;#ASMEND
	v_and_b32_e32 v3, 0x1f80, v18
	v_add_u32_e32 v8, s19, v36
	v_add_u32_e32 v5, v8, v3
	v_lshrrev_b32_e32 v7, 4, v5
	v_or_b32_e32 v37, 8, v36
	v_and_b32_e32 v7, 0x78, v7
	v_add_u32_e32 v9, s19, v37
	v_xor_b32_e32 v5, v7, v5
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v5, v[12:13]

	;;#ASMEND
	v_add_u32_e32 v5, v9, v3
	v_lshrrev_b32_e32 v7, 4, v5
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v5, v7, v5
	;;#ASMSTART
	ds_write_b64 v5, v[14:15]

	;;#ASMEND
	v_or_b32_e32 v5, 0x2000, v3
	v_add_u32_e32 v7, v8, v5
	v_lshrrev_b32_e32 v11, 4, v7
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v7, v11, v7
	;;#ASMSTART
	ds_write_b64 v7, v[20:21]

	;;#ASMEND
	v_add_u32_e32 v7, v9, v5
	v_lshrrev_b32_e32 v11, 4, v7
	v_and_b32_e32 v11, 0x78, v11
	v_xor_b32_e32 v7, v11, v7
	;;#ASMSTART
	ds_write_b64 v7, v[22:23]

	;;#ASMEND
	v_or_b32_e32 v7, 0x4000, v3
	v_add_u32_e32 v11, v8, v7
	v_lshrrev_b32_e32 v12, 4, v11
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v11, v12, v11
	;;#ASMSTART
	ds_write_b64 v11, v[24:25]

	;;#ASMEND
	v_add_u32_e32 v11, v9, v7
	v_lshrrev_b32_e32 v12, 4, v11
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v11, v12, v11
	;;#ASMSTART
	ds_write_b64 v11, v[26:27]

	;;#ASMEND
	v_or_b32_e32 v11, 0x6000, v3
	v_add_u32_e32 v8, v8, v11
	v_lshrrev_b32_e32 v12, 4, v8
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v8, v12, v8
	;;#ASMSTART
	ds_write_b64 v8, v[28:29]

	;;#ASMEND
	v_add_u32_e32 v8, v9, v11
	v_lshrrev_b32_e32 v9, 4, v8
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v8, v9, v8
	;;#ASMSTART
	ds_write_b64 v8, v[30:31]

	;;#ASMEND
	v_mad_u64_u32 v[8:9], s[2:3], v1, s6, v[16:17]
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshl_add_u64 v[12:13], v[8:9], 1, s[14:15]
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	global_load_dwordx4 v[20:23], v[12:13], off

	;;#ASMEND
	v_mad_u64_u32 v[12:13], s[2:3], v17, s6, v[16:17]
	s_cmp_eq_u64 s[24:25], 0
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshl_add_u64 v[14:15], v[12:13], 1, s[14:15]
	s_cselect_b32 s5, s20, s21
	;;#ASMSTART
	global_load_dwordx4 v[24:27], v[14:15], off

	;;#ASMEND
	v_lshl_add_u32 v14, s6, 7, v8
	v_add_u32_e32 v1, s5, v36
	v_ashrrev_i32_e32 v15, 31, v14
	v_add_u32_e32 v13, v1, v3
	v_lshl_add_u64 v[28:29], v[14:15], 1, s[14:15]
	v_mad_u64_u32 v[16:17], s[2:3], v19, s6, v[16:17]
	v_lshrrev_b32_e32 v15, 4, v13
	v_ashrrev_i32_e32 v17, 31, v16
	v_and_b32_e32 v15, 0x78, v15
	;;#ASMSTART
	global_load_dwordx4 v[28:31], v[28:29], off

	;;#ASMEND
	v_lshl_add_u64 v[32:33], v[16:17], 1, s[14:15]
	v_add_u32_e32 v9, s5, v37
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
	v_add_u32_e32 v13, v9, v3
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
	v_add_u32_e32 v13, v9, v5
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
	v_add_u32_e32 v13, v9, v7
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_xor_b32_e32 v13, v15, v13
	v_add_u32_e32 v1, v1, v11
	;;#ASMSTART
	ds_write_b64 v13, v[30:31]

	;;#ASMEND
	v_lshrrev_b32_e32 v13, 4, v1
	v_and_b32_e32 v13, 0x78, v13
	v_xor_b32_e32 v1, v13, v1
	;;#ASMSTART
	ds_write_b64 v1, v[32:33]

	;;#ASMEND
	v_add_u32_e32 v1, v9, v11
	v_lshrrev_b32_e32 v9, 4, v1
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v1, v9, v1
	;;#ASMSTART
	ds_write_b64 v1, v[34:35]

	;;#ASMEND
	v_lshrrev_b32_e32 v38, 8, v0
	s_mov_b64 s[12:13], 0
	v_cmp_eq_u32_e32 vcc, 1, v38
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_2
; %bb.1:
	s_barrier
.LBB0_2:
	s_or_b64 exec, exec, s[2:3]
	v_lshrrev_b32_e32 v1, 2, v0
	v_and_b32_e32 v9, 12, v1
	v_lshlrev_b32_e32 v1, 7, v0
	v_and_b32_e32 v1, 0x6780, v1
	scratch_store_dword off, v9, off offset:332 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v9, 1, v9
	v_add_u32_e32 v1, s5, v1
	v_add_u32_e32 v13, v1, v9
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	v_and_b32_e32 v17, 0xc0, v0
	v_and_b32_e32 v24, 15, v0
	scratch_store_dword off, v0, off offset:320 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, v15, v13
	scratch_store_dword off, v0, off        ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v2
	v_or_b32_e32 v2, 16, v24
	scratch_store_dword off, v0, off offset:224 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v4
	v_or_b32_e32 v4, v17, v2
	v_lshl_add_u32 v4, v4, 7, s5
	scratch_store_dword off, v0, off offset:228 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v6
	v_add_u32_e32 v6, v4, v9
	scratch_store_dword off, v0, off offset:232 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v10
	v_lshrrev_b32_e32 v10, 4, v6
	v_and_b32_e32 v10, 0x78, v10
	scratch_store_dword off, v0, off offset:236 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, v10, v6
	v_or_b32_e32 v6, 32, v24
	v_or_b32_e32 v10, v17, v6
	v_lshl_add_u32 v10, v10, 7, s5
	v_add_u32_e32 v13, v10, v9
	v_lshrrev_b32_e32 v15, 4, v13
	v_and_b32_e32 v15, 0x78, v15
	scratch_store_dword off, v0, off offset:4 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, v15, v13
	v_or_b32_e32 v13, 48, v24
	v_or_b32_e32 v15, v17, v13
	v_lshl_add_u32 v15, v15, 7, s5
	scratch_store_dword off, v17, off offset:336 ; 4-byte Folded Spill
	v_add_u32_e32 v17, v15, v9
	v_lshrrev_b32_e32 v19, 4, v17
	v_and_b32_e32 v19, 0x78, v19
	scratch_store_dword off, v0, off offset:8 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, v19, v17
	v_lshlrev_b32_e32 v23, 6, v38
	scratch_store_dword off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, v23, v24
	v_lshl_add_u32 v0, v0, 7, s19
	v_add_u32_e32 v17, v0, v9
	v_lshrrev_b32_e32 v19, 4, v17
	v_and_b32_e32 v19, 0x78, v19
	v_xor_b32_e32 v17, v19, v17
	scratch_store_dword off, v17, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v17, v2, v23
	v_lshl_add_u32 v17, v17, 7, s19
	v_add_u32_e32 v19, v17, v9
	v_lshrrev_b32_e32 v20, 4, v19
	v_and_b32_e32 v20, 0x78, v20
	v_xor_b32_e32 v19, v20, v19
	scratch_store_dword off, v19, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v19, v6, v23
	v_lshl_add_u32 v19, v19, 7, s19
	v_add_u32_e32 v20, v19, v9
	v_lshrrev_b32_e32 v21, 4, v20
	v_and_b32_e32 v21, 0x78, v21
	v_xor_b32_e32 v20, v21, v20
	scratch_store_dword off, v20, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v20, v13, v23
	v_lshl_add_u32 v20, v20, 7, s19
	v_add_u32_e32 v21, v20, v9
	v_lshrrev_b32_e32 v22, 4, v21
	v_and_b32_e32 v22, 0x78, v22
	v_xor_b32_e32 v21, v22, v21
	v_lshlrev_b32_e32 v8, 1, v8
	scratch_store_dword off, v21, off offset:28 ; 4-byte Folded Spill
	scratch_store_dword off, v23, off offset:340 ; 4-byte Folded Spill
	scratch_store_dword off, v8, off offset:240 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v8, 1, v12
	scratch_store_dword off, v8, off offset:244 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v8, 1, v14
	scratch_store_dword off, v8, off offset:248 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v8, 1, v16
	scratch_store_dword off, v8, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v8, 32, v9
	v_add_u32_e32 v12, v1, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:48 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v4, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:52 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v10, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:56 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v15, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:60 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v0, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:64 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v17, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:68 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v19, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:72 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v20, v8
	v_or_b32_e32 v21, 0x80, v23
	v_mov_b32_e32 v22, v24
	v_lshrrev_b32_e32 v14, 4, v12
	scratch_store_dwordx2 off, v[22:23], off offset:324 ; 8-byte Folded Spill
	v_or_b32_e32 v22, v21, v24
	v_and_b32_e32 v14, 0x78, v14
	v_lshl_add_u32 v22, v22, 7, s19
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:76 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v22, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_or_b32_e32 v2, v21, v2
	v_and_b32_e32 v14, 0x78, v14
	v_lshl_add_u32 v2, v2, 7, s19
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:80 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v2, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_or_b32_e32 v6, v21, v6
	v_and_b32_e32 v14, 0x78, v14
	v_lshl_add_u32 v6, v6, 7, s19
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:84 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v6, v8
	v_or_b32_e32 v13, v21, v13
	v_lshrrev_b32_e32 v14, 4, v12
	v_lshl_add_u32 v13, v13, 7, s19
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	v_add_u32_e32 v8, v13, v8
	scratch_store_dword off, v12, off offset:88 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v12, 4, v8
	v_and_b32_e32 v12, 0x78, v12
	v_xor_b32_e32 v8, v12, v8
	scratch_store_dword off, v8, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v8, 64, v9
	v_add_u32_e32 v12, v1, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:96 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v4, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:100 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v10, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:104 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v15, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:108 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v0, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:112 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v17, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:116 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v19, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:120 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v20, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:124 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v22, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:128 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v2, v8
	v_lshrrev_b32_e32 v14, 4, v12
	v_and_b32_e32 v14, 0x78, v14
	v_xor_b32_e32 v12, v14, v12
	scratch_store_dword off, v12, off offset:132 ; 4-byte Folded Spill
	v_add_u32_e32 v12, v6, v8
	v_add_u32_e32 v23, v22, v9
	v_lshrrev_b32_e32 v14, 4, v12
	v_lshrrev_b32_e32 v24, 4, v23
	v_and_b32_e32 v14, 0x78, v14
	v_and_b32_e32 v24, 0x78, v24
	v_xor_b32_e32 v12, v14, v12
	v_add_u32_e32 v8, v13, v8
	v_xor_b32_e32 v23, v24, v23
	scratch_store_dword off, v12, off offset:136 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v12, 4, v8
	scratch_store_dword off, v23, off offset:32 ; 4-byte Folded Spill
	v_add_u32_e32 v23, v2, v9
	v_and_b32_e32 v12, 0x78, v12
	v_lshrrev_b32_e32 v24, 4, v23
	v_xor_b32_e32 v8, v12, v8
	v_and_b32_e32 v24, 0x78, v24
	scratch_store_dword off, v8, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v8, 0x60, v9
	v_xor_b32_e32 v23, v24, v23
	v_add_u32_e32 v1, v1, v8
	scratch_store_dword off, v23, off offset:36 ; 4-byte Folded Spill
	v_add_u32_e32 v23, v6, v9
	v_add_u32_e32 v21, v13, v9
	v_lshrrev_b32_e32 v9, 4, v1
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v1, v9, v1
	scratch_store_dword off, v1, off offset:144 ; 4-byte Folded Spill
	v_add_u32_e32 v1, v4, v8
	v_lshrrev_b32_e32 v4, 4, v1
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v1, v4, v1
	scratch_store_dword off, v1, off offset:148 ; 4-byte Folded Spill
	v_add_u32_e32 v1, v10, v8
	v_lshrrev_b32_e32 v4, 4, v1
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v1, v4, v1
	scratch_store_dword off, v1, off offset:152 ; 4-byte Folded Spill
	v_add_u32_e32 v1, v15, v8
	v_lshrrev_b32_e32 v4, 4, v1
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v1, v4, v1
	v_add_u32_e32 v0, v0, v8
	scratch_store_dword off, v1, off offset:156 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:160 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v17, v8
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:164 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v19, v8
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:168 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v20, v8
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:172 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v22, v8
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:176 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v2, v8
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:180 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v6, v8
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:184 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v13, v8
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v1, 0x78, v1
	v_xor_b32_e32 v0, v1, v0
	scratch_store_dword off, v0, off offset:188 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 0x70, v18
	v_add_u32_e32 v1, s19, v0
	v_add_u32_e32 v2, v1, v3
	v_lshrrev_b32_e32 v4, 4, v2
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v2, v4, v2
	scratch_store_dword off, v2, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 8, v0
	v_add_u32_e32 v4, s19, v2
	v_add_u32_e32 v6, v4, v3
	v_lshrrev_b32_e32 v8, 4, v6
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v6, v8, v6
	scratch_store_dword off, v6, off offset:260 ; 4-byte Folded Spill
	v_add_u32_e32 v6, v1, v5
	v_lshrrev_b32_e32 v8, 4, v6
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v6, v8, v6
	scratch_store_dword off, v6, off offset:264 ; 4-byte Folded Spill
	v_add_u32_e32 v6, v4, v5
	v_lshrrev_b32_e32 v8, 4, v6
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v6, v8, v6
	scratch_store_dword off, v6, off offset:268 ; 4-byte Folded Spill
	v_add_u32_e32 v6, v1, v7
	v_lshrrev_b32_e32 v8, 4, v6
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v6, v8, v6
	scratch_store_dword off, v6, off offset:272 ; 4-byte Folded Spill
	v_add_u32_e32 v6, v4, v7
	v_lshrrev_b32_e32 v8, 4, v6
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v6, v8, v6
	v_add_u32_e32 v1, v1, v11
	scratch_store_dword off, v6, off offset:276 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v6, 4, v1
	v_and_b32_e32 v6, 0x78, v6
	v_xor_b32_e32 v1, v6, v1
	scratch_store_dword off, v1, off offset:280 ; 4-byte Folded Spill
	v_add_u32_e32 v1, v4, v11
	v_lshrrev_b32_e32 v4, 4, v1
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v1, v4, v1
	v_add_u32_e32 v0, s5, v0
	scratch_store_dword off, v1, off offset:284 ; 4-byte Folded Spill
	v_add_u32_e32 v1, v0, v3
	v_lshrrev_b32_e32 v4, 4, v1
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v1, v4, v1
	scratch_store_dword off, v1, off offset:288 ; 4-byte Folded Spill
	v_add_u32_e32 v1, s5, v2
	v_add_u32_e32 v2, v1, v3
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:292 ; 4-byte Folded Spill
	v_add_u32_e32 v2, v0, v5
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:296 ; 4-byte Folded Spill
	v_add_u32_e32 v2, v1, v5
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:300 ; 4-byte Folded Spill
	v_add_u32_e32 v2, v0, v7
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	scratch_store_dword off, v2, off offset:304 ; 4-byte Folded Spill
	v_add_u32_e32 v2, v1, v7
	v_lshrrev_b32_e32 v3, 4, v2
	v_and_b32_e32 v3, 0x78, v3
	v_xor_b32_e32 v2, v3, v2
	v_add_u32_e32 v0, v0, v11
	scratch_store_dword off, v2, off offset:308 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v24, 4, v23
	v_and_b32_e32 v2, 0x78, v2
	v_and_b32_e32 v24, 0x78, v24
	v_xor_b32_e32 v0, v2, v0
	s_lshl_b32 s2, s4, 9
	s_lshl_b32 s6, s6, 9
	v_xor_b32_e32 v23, v24, v23
	scratch_store_dword off, v0, off offset:312 ; 4-byte Folded Spill
	v_add_u32_e32 v0, v1, v11
	s_add_u32 s14, s14, 0x80
	scratch_store_dword off, v23, off offset:40 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v23, 4, v21
	v_lshrrev_b32_e32 v1, 4, v0
	s_addc_u32 s15, s15, 0
	v_and_b32_e32 v23, 0x78, v23
	v_and_b32_e32 v1, 0x78, v1
	s_add_u32 s19, s0, 0x80
	v_mov_b32_e32 v2, 0
	v_mov_b64_e32 v[56:57], 0
	v_xor_b32_e32 v21, v23, v21
	v_xor_b32_e32 v0, v1, v0
	s_addc_u32 s20, s1, 0
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
	v_mov_b32_e32 v26, v2
	v_mov_b32_e32 v27, v2
	v_mov_b32_e32 v28, v2
	v_mov_b32_e32 v29, v2
	v_mov_b32_e32 v38, v2
	v_mov_b32_e32 v39, v2
	v_mov_b32_e32 v40, v2
	v_mov_b32_e32 v41, v2
	v_mov_b32_e32 v50, v2
	v_mov_b32_e32 v51, v2
	v_mov_b32_e32 v52, v2
	v_mov_b32_e32 v53, v2
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
	v_mov_b32_e32 v130, v2
	v_mov_b32_e32 v131, v2
	v_mov_b32_e32 v132, v2
	v_mov_b32_e32 v133, v2
	v_mov_b32_e32 v134, v2
	v_mov_b32_e32 v135, v2
	v_mov_b32_e32 v136, v2
	v_mov_b32_e32 v137, v2
	v_mov_b32_e32 v138, v2
	v_mov_b32_e32 v139, v2
	v_mov_b32_e32 v140, v2
	v_mov_b32_e32 v141, v2
	v_mov_b32_e32 v142, v2
	v_mov_b32_e32 v143, v2
	v_mov_b32_e32 v144, v2
	v_mov_b32_e32 v145, v2
	v_mov_b32_e32 v146, v2
	v_mov_b32_e32 v147, v2
	v_mov_b32_e32 v148, v2
	v_mov_b32_e32 v149, v2
	v_mov_b32_e32 v150, v2
	v_mov_b32_e32 v151, v2
	v_mov_b32_e32 v152, v2
	v_mov_b32_e32 v153, v2
	v_mov_b32_e32 v154, v2
	v_mov_b32_e32 v155, v2
	v_mov_b32_e32 v156, v2
	v_mov_b32_e32 v157, v2
	v_mov_b32_e32 v158, v2
	v_mov_b32_e32 v159, v2
	v_mov_b32_e32 v160, v2
	v_mov_b32_e32 v161, v2
	v_mov_b64_e32 v[44:45], v[56:57]
	v_mov_b64_e32 v[32:33], v[56:57]
	v_mov_b64_e32 v[18:19], v[56:57]
	v_mov_b64_e32 v[60:61], v[56:57]
	v_mov_b64_e32 v[48:49], v[56:57]
	v_mov_b64_e32 v[36:37], v[56:57]
	scratch_store_dword off, v21, off offset:44 ; 4-byte Folded Spill
	scratch_store_dword off, v0, off offset:316 ; 4-byte Folded Spill
	scratch_store_dwordx4 off, v[16:19], off offset:192 ; 16-byte Folded Spill
	scratch_store_dwordx4 off, v[16:19], off offset:208 ; 16-byte Folded Spill
	s_branch .LBB0_4
.LBB0_3:                                ;   in Loop: Header=BB0_4 Depth=1
	v_bfi_b32 v104, s21, v104, v104
	v_bfi_b32 v102, s21, v102, v102
	v_bfi_b32 v100, s21, v100, v100
	v_bfi_b32 v98, s21, v98, v98
	v_bfi_b32 v234, s21, v234, v234
	v_bfi_b32 v232, s21, v232, v232
	v_bfi_b32 v230, s21, v230, v230
	v_bfi_b32 v228, s21, v228, v228
	v_bfi_b32 v242, s21, v242, v242
	v_bfi_b32 v240, s21, v240, v240
	v_bfi_b32 v238, s21, v238, v238
	v_bfi_b32 v236, s21, v236, v236
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[158:161], v[104:105], v[234:235], v[2:5]
	v_mfma_f32_16x16x16_bf16 v[154:157], v[104:105], v[232:233], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[150:153], v[104:105], v[230:231], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[146:149], v[104:105], v[228:229], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[142:145], v[102:103], v[234:235], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[138:141], v[102:103], v[232:233], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[134:137], v[102:103], v[230:231], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[130:133], v[102:103], v[228:229], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[126:129], v[100:101], v[234:235], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[100:101], v[232:233], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[100:101], v[230:231], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[100:101], v[228:229], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[98:99], v[234:235], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[98:99], v[232:233], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[98:99], v[230:231], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[98:99], v[228:229], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[242:243], v[234:235], v[162:165]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[242:243], v[232:233], v[166:169]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[242:243], v[230:231], v[170:173]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[242:243], v[228:229], v[174:177]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[240:241], v[234:235], v[178:181]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[240:241], v[232:233], v[182:185]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[240:241], v[230:231], v[186:189]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[240:241], v[228:229], v[190:193]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[238:239], v[234:235], v[194:197]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[238:239], v[232:233], v[198:201]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[238:239], v[230:231], v[202:205]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[238:239], v[228:229], v[206:209]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[236:237], v[234:235], v[210:213]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[236:237], v[232:233], v[214:217]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[236:237], v[230:231], v[218:221]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[236:237], v[228:229], v[222:225]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_add_u32 s12, s12, 0x80
	s_addc_u32 s13, s13, 0
	s_cmpk_eq_i32 s12, 0x4000
	s_cbranch_scc1 .LBB0_10
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	s_cmpk_lg_i32 s12, 0x3f80
	s_cselect_b64 s[4:5], -1, 0
	s_cmpk_eq_i32 s12, 0x3f80
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	scratch_load_dword v0, off, off offset:224 ; 4-byte Folded Reload
	s_add_u32 s0, s19, s12
	s_addc_u32 s1, s20, s13
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[18:21], v0, s[0:3], 0 offen
	s_nop 0
	scratch_load_dword v0, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	scratch_store_dwordx4 off, v[18:21], off offset:192 ; 16-byte Folded Spill
	s_waitcnt vmcnt(1)
	buffer_load_dwordx4 v[30:33], v0, s[0:3], 0 offen
	s_nop 0
	scratch_load_dword v0, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[42:45], v0, s[0:3], 0 offen
	s_nop 0
	scratch_load_dword v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[54:57], v0, s[0:3], 0 offen
.LBB0_6:                                ;   in Loop: Header=BB0_4 Depth=1
	; sched_barrier mask(0x00000000)
	s_nop 0
	scratch_load_dword v0, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[162:163], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[164:165], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[166:167], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[168:169], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[170:171], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[172:173], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[174:175], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[176:177], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[178:179], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[180:181], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[182:183], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[184:185], v0

	;;#ASMEND
	v_bfi_b32 v162, s21, v162, v162
	v_bfi_b32 v164, s21, v164, v164
	v_bfi_b32 v166, s21, v166, v166
	v_bfi_b32 v168, s21, v168, v168
	v_bfi_b32 v170, s21, v170, v170
	v_bfi_b32 v172, s21, v172, v172
	v_bfi_b32 v174, s21, v174, v174
	v_bfi_b32 v176, s21, v176, v176
	v_bfi_b32 v178, s21, v178, v178
	v_bfi_b32 v180, s21, v180, v180
	v_bfi_b32 v182, s21, v182, v182
	v_bfi_b32 v184, s21, v184, v184
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[158:161], v[170:171], v[162:163], v[158:161]
	v_mfma_f32_16x16x16_bf16 v[154:157], v[170:171], v[164:165], v[154:157]
	v_mfma_f32_16x16x16_bf16 v[150:153], v[170:171], v[166:167], v[150:153]
	v_mfma_f32_16x16x16_bf16 v[146:149], v[170:171], v[168:169], v[146:149]
	v_mfma_f32_16x16x16_bf16 v[142:145], v[172:173], v[162:163], v[142:145]
	v_mfma_f32_16x16x16_bf16 v[138:141], v[172:173], v[164:165], v[138:141]
	v_mfma_f32_16x16x16_bf16 v[134:137], v[172:173], v[166:167], v[134:137]
	v_mfma_f32_16x16x16_bf16 v[130:133], v[172:173], v[168:169], v[130:133]
	v_mfma_f32_16x16x16_bf16 v[126:129], v[174:175], v[162:163], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[174:175], v[164:165], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[174:175], v[166:167], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[174:175], v[168:169], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[176:177], v[162:163], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[176:177], v[164:165], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[176:177], v[166:167], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[176:177], v[168:169], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[178:179], v[162:163], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[178:179], v[164:165], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[178:179], v[166:167], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[178:179], v[168:169], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[180:181], v[162:163], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[180:181], v[164:165], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[180:181], v[166:167], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[180:181], v[168:169], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[182:183], v[162:163], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[182:183], v[164:165], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[182:183], v[166:167], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[182:183], v[168:169], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[184:185], v[162:163], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[184:185], v[164:165], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[184:185], v[166:167], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[184:185], v[168:169], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_cmp_ne_u32_e64 s[0:1], 1, v0
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	scratch_load_dword v0, off, off offset:240 ; 4-byte Folded Reload
	s_add_u32 s4, s14, s12
	s_addc_u32 s5, s15, s13
	s_mov_b32 s7, s3
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[18:21], v0, s[4:7], 0 offen
	s_nop 0
	scratch_load_dword v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	scratch_store_dwordx4 off, v[18:21], off offset:208 ; 16-byte Folded Spill
	s_waitcnt vmcnt(1)
	buffer_load_dwordx4 v[34:37], v0, s[4:7], 0 offen
	s_nop 0
	scratch_load_dword v0, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[46:49], v0, s[4:7], 0 offen
	s_nop 0
	scratch_load_dword v0, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_load_dwordx4 v[58:61], v0, s[4:7], 0 offen
.LBB0_8:                                ;   in Loop: Header=BB0_4 Depth=1
	; sched_barrier mask(0x00000000)
	s_nop 0
	scratch_load_dword v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[218:219], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[222:223], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[228:229], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[230:231], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[162:163], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[164:165], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[166:167], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[168:169], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[182:183], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[198:199], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[214:215], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[232:233], v0

	;;#ASMEND
	v_bfi_b32 v218, s21, v218, v218
	v_bfi_b32 v222, s21, v222, v222
	v_bfi_b32 v228, s21, v228, v228
	v_bfi_b32 v230, s21, v230, v230
	v_bfi_b32 v162, s21, v162, v162
	v_bfi_b32 v164, s21, v164, v164
	v_bfi_b32 v166, s21, v166, v166
	v_bfi_b32 v168, s21, v168, v168
	v_bfi_b32 v182, s21, v182, v182
	v_bfi_b32 v198, s21, v198, v198
	v_bfi_b32 v214, s21, v214, v214
	v_bfi_b32 v232, s21, v232, v232
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[158:161], v[162:163], v[218:219], v[158:161]
	v_mfma_f32_16x16x16_bf16 v[154:157], v[162:163], v[222:223], v[154:157]
	v_mfma_f32_16x16x16_bf16 v[150:153], v[162:163], v[228:229], v[150:153]
	v_mfma_f32_16x16x16_bf16 v[146:149], v[162:163], v[230:231], v[146:149]
	v_mfma_f32_16x16x16_bf16 v[142:145], v[164:165], v[218:219], v[142:145]
	v_mfma_f32_16x16x16_bf16 v[138:141], v[164:165], v[222:223], v[138:141]
	v_mfma_f32_16x16x16_bf16 v[134:137], v[164:165], v[228:229], v[134:137]
	v_mfma_f32_16x16x16_bf16 v[130:133], v[164:165], v[230:231], v[130:133]
	v_mfma_f32_16x16x16_bf16 v[126:129], v[166:167], v[218:219], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[122:125], v[166:167], v[222:223], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[166:167], v[228:229], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[166:167], v[230:231], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[168:169], v[218:219], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[168:169], v[222:223], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[162:165], v[168:169], v[228:229], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[166:169], v[168:169], v[230:231], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[170:173], v[182:183], v[218:219], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[174:177], v[182:183], v[222:223], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[178:181], v[182:183], v[228:229], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[182:185], v[182:183], v[230:231], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[186:189], v[198:199], v[218:219], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[190:193], v[198:199], v[222:223], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[194:197], v[198:199], v[228:229], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[198:201], v[198:199], v[230:231], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[202:205], v[214:215], v[218:219], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[206:209], v[214:215], v[222:223], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[210:213], v[214:215], v[228:229], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[214:217], v[214:215], v[230:231], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[218:221], v[232:233], v[218:219], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[222:225], v[232:233], v[222:223], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[252:255], v[232:233], v[228:229], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[248:251], v[232:233], v[230:231], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	scratch_load_dword v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[226:227], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[244:245], v0

	;;#ASMEND
	scratch_load_dword v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[0:1], v0

	;;#ASMEND
	scratch_load_dword v2, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[246:247], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[14:15], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[62:63], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[78:79], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[94:95], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[18:19], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[20:21], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[22:23], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[24:25], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[234:235], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[232:233], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[230:231], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[228:229], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[104:105], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[102:103], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[100:101], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[98:99], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[242:243], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[240:241], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[238:239], v2

	;;#ASMEND
	scratch_load_dword v2, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_read_b64 v[236:237], v2

	;;#ASMEND
	v_bfi_b32 v14, s21, v14, v14
	v_bfi_b32 v62, s21, v62, v62
	v_bfi_b32 v78, s21, v78, v78
	v_bfi_b32 v94, s21, v94, v94
	v_bfi_b32 v226, s21, v226, v226
	v_bfi_b32 v244, s21, v244, v244
	v_bfi_b32 v0, s21, v0, v0
	v_bfi_b32 v246, s21, v246, v246
	v_bfi_b32 v18, s21, v18, v18
	v_bfi_b32 v20, s21, v20, v20
	v_bfi_b32 v22, s21, v22, v22
	v_bfi_b32 v24, s21, v24, v24
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[2:5], v[14:15], v[226:227], v[158:161]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[14:15], v[244:245], v[154:157]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[14:15], v[0:1], v[150:153]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[14:15], v[246:247], v[146:149]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[62:63], v[226:227], v[142:145]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[62:63], v[244:245], v[138:141]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[62:63], v[0:1], v[134:137]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[62:63], v[246:247], v[130:133]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[78:79], v[226:227], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[78:79], v[244:245], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[78:79], v[0:1], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[78:79], v[246:247], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[94:95], v[226:227], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[94:95], v[244:245], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[94:95], v[0:1], v[162:165]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[94:95], v[246:247], v[166:169]
	v_mfma_f32_16x16x16_bf16 v[162:165], v[18:19], v[226:227], v[170:173]
	v_mfma_f32_16x16x16_bf16 v[166:169], v[18:19], v[244:245], v[174:177]
	v_mfma_f32_16x16x16_bf16 v[170:173], v[18:19], v[0:1], v[178:181]
	v_mfma_f32_16x16x16_bf16 v[174:177], v[18:19], v[246:247], v[182:185]
	v_mfma_f32_16x16x16_bf16 v[178:181], v[20:21], v[226:227], v[186:189]
	v_mfma_f32_16x16x16_bf16 v[182:185], v[20:21], v[244:245], v[190:193]
	v_mfma_f32_16x16x16_bf16 v[186:189], v[20:21], v[0:1], v[194:197]
	v_mfma_f32_16x16x16_bf16 v[190:193], v[20:21], v[246:247], v[198:201]
	v_mfma_f32_16x16x16_bf16 v[194:197], v[22:23], v[226:227], v[202:205]
	v_mfma_f32_16x16x16_bf16 v[198:201], v[22:23], v[244:245], v[206:209]
	v_mfma_f32_16x16x16_bf16 v[202:205], v[22:23], v[0:1], v[210:213]
	v_mfma_f32_16x16x16_bf16 v[206:209], v[22:23], v[246:247], v[214:217]
	v_mfma_f32_16x16x16_bf16 v[210:213], v[24:25], v[226:227], v[218:221]
	v_mfma_f32_16x16x16_bf16 v[214:217], v[24:25], v[244:245], v[222:225]
	v_mfma_f32_16x16x16_bf16 v[218:221], v[24:25], v[0:1], v[252:255]
	v_mfma_f32_16x16x16_bf16 v[222:225], v[24:25], v[246:247], v[248:251]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_3
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=1
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	scratch_load_dword v0, off, off offset:256 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[18:21], off, off offset:192 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[18:19]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[20:21]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[30:31]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[32:33]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[42:43]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[44:45]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[54:55]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[56:57]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:288 ; 4-byte Folded Reload
	scratch_load_dwordx4 v[18:21], off, off offset:208 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[18:19]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[20:21]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[34:35]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[36:37]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[46:47]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[48:49]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[58:59]

	;;#ASMEND
	scratch_load_dword v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v0, v[60:61]

	;;#ASMEND
	s_branch .LBB0_3
.LBB0_10:
	scratch_load_dword v0, off, off offset:320 ; 4-byte Folded Reload
	s_movk_i32 s0, 0x100
	s_waitcnt vmcnt(0)
	v_cmp_gt_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_12
; %bb.11:
	s_barrier
.LBB0_12:
	s_or_b64 exec, exec, s[0:1]
	scratch_load_dword v0, off, off offset:340 ; 4-byte Folded Reload
	scratch_load_dwordx2 v[20:21], off, off offset:324 ; 8-byte Folded Reload
	scratch_load_dword v163, off, off offset:332 ; 4-byte Folded Reload
	s_mul_i32 s2, s10, s16
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v162, s17, v0
	scratch_load_dword v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v164, v20
	v_mul_lo_u32 v1, s11, v162
	v_mad_u64_u32 v[18:19], s[0:1], s10, v162, 0
	v_add3_u32 v19, v19, s2, v1
	v_lshl_add_u64 v[18:19], v[18:19], 2, s[8:9]
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[20:21], s[0:1], v163, s10, v[164:165]
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[22:23], 2, v[20:21]
	v_add_u32_e32 v20, s10, v20
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[30:31], 2, v[20:21]
	v_add_u32_e32 v20, s10, v20
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[34:35], 2, v[20:21]
	v_add_u32_e32 v20, s10, v20
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s18, v0
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_lshl_add_u64 v[18:19], v[18:19], 0, v[0:1]
	v_lshl_add_u64 v[24:25], v[18:19], 0, v[22:23]
	v_lshl_add_u64 v[32:33], v[18:19], 0, v[30:31]
	v_lshl_add_u64 v[36:37], v[18:19], 0, v[34:35]
	global_store_dword v[24:25], v158, off
	v_lshl_add_u64 v[42:43], v[18:19], 0, v[20:21]
	global_store_dword v[32:33], v159, off
	global_store_dword v[36:37], v160, off
	global_store_dword v[42:43], v161, off
	global_store_dword v[24:25], v154, off offset:64
	global_store_dword v[32:33], v155, off offset:64
	global_store_dword v[36:37], v156, off offset:64
	global_store_dword v[42:43], v157, off offset:64
	global_store_dword v[24:25], v150, off offset:128
	global_store_dword v[32:33], v151, off offset:128
	global_store_dword v[36:37], v152, off offset:128
	global_store_dword v[42:43], v153, off offset:128
	global_store_dword v[24:25], v146, off offset:192
	global_store_dword v[32:33], v147, off offset:192
	global_store_dword v[36:37], v148, off offset:192
	global_store_dword v[42:43], v149, off offset:192
	v_or_b32_e32 v24, 16, v163
	v_mad_u64_u32 v[24:25], s[0:1], v24, s10, v[164:165]
	v_ashrrev_i32_e32 v25, 31, v24
	v_lshlrev_b64 v[32:33], 2, v[24:25]
	v_add_u32_e32 v24, s10, v24
	v_ashrrev_i32_e32 v25, 31, v24
	v_lshlrev_b64 v[42:43], 2, v[24:25]
	v_add_u32_e32 v24, s10, v24
	v_ashrrev_i32_e32 v25, 31, v24
	v_lshlrev_b64 v[46:47], 2, v[24:25]
	v_add_u32_e32 v24, s10, v24
	v_ashrrev_i32_e32 v25, 31, v24
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_lshl_add_u64 v[36:37], v[18:19], 0, v[32:33]
	v_lshl_add_u64 v[44:45], v[18:19], 0, v[42:43]
	v_lshl_add_u64 v[48:49], v[18:19], 0, v[46:47]
	v_lshl_add_u64 v[54:55], v[18:19], 0, v[24:25]
	global_store_dword v[36:37], v142, off
	global_store_dword v[44:45], v143, off
	global_store_dword v[48:49], v144, off
	global_store_dword v[54:55], v145, off
	global_store_dword v[36:37], v138, off offset:64
	global_store_dword v[44:45], v139, off offset:64
	global_store_dword v[48:49], v140, off offset:64
	global_store_dword v[54:55], v141, off offset:64
	global_store_dword v[36:37], v134, off offset:128
	global_store_dword v[44:45], v135, off offset:128
	global_store_dword v[48:49], v136, off offset:128
	global_store_dword v[54:55], v137, off offset:128
	global_store_dword v[36:37], v130, off offset:192
	global_store_dword v[44:45], v131, off offset:192
	global_store_dword v[48:49], v132, off offset:192
	global_store_dword v[54:55], v133, off offset:192
	v_or_b32_e32 v36, 32, v163
	v_mad_u64_u32 v[36:37], s[0:1], v36, s10, v[164:165]
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[44:45], 2, v[36:37]
	v_add_u32_e32 v36, s10, v36
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[54:55], 2, v[36:37]
	v_add_u32_e32 v36, s10, v36
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[58:59], 2, v[36:37]
	v_add_u32_e32 v36, s10, v36
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshl_add_u64 v[48:49], v[18:19], 0, v[44:45]
	v_lshl_add_u64 v[56:57], v[18:19], 0, v[54:55]
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	global_store_dword v[48:49], v126, off
	global_store_dword v[56:57], v127, off
	v_lshl_add_u64 v[60:61], v[18:19], 0, v[58:59]
	v_lshl_add_u64 v[126:127], v[18:19], 0, v[36:37]
	global_store_dword v[60:61], v128, off
	global_store_dword v[126:127], v129, off
	global_store_dword v[48:49], v122, off offset:64
	global_store_dword v[56:57], v123, off offset:64
	global_store_dword v[60:61], v124, off offset:64
	global_store_dword v[126:127], v125, off offset:64
	global_store_dword v[48:49], v118, off offset:128
	global_store_dword v[56:57], v119, off offset:128
	global_store_dword v[60:61], v120, off offset:128
	global_store_dword v[126:127], v121, off offset:128
	global_store_dword v[48:49], v114, off offset:192
	global_store_dword v[56:57], v115, off offset:192
	global_store_dword v[60:61], v116, off offset:192
	global_store_dword v[126:127], v117, off offset:192
	v_or_b32_e32 v48, 48, v163
	v_mad_u64_u32 v[48:49], s[0:1], v48, s10, v[164:165]
	v_ashrrev_i32_e32 v49, 31, v48
	v_lshlrev_b64 v[56:57], 2, v[48:49]
	v_add_u32_e32 v48, s10, v48
	v_ashrrev_i32_e32 v49, 31, v48
	v_lshlrev_b64 v[114:115], 2, v[48:49]
	v_add_u32_e32 v48, s10, v48
	v_lshl_add_u64 v[60:61], v[18:19], 0, v[56:57]
	v_lshl_add_u64 v[116:117], v[18:19], 0, v[114:115]
	v_ashrrev_i32_e32 v49, 31, v48
	global_store_dword v[60:61], v110, off
	global_store_dword v[116:117], v111, off
	v_lshlrev_b64 v[110:111], 2, v[48:49]
	v_add_u32_e32 v48, s10, v48
	v_ashrrev_i32_e32 v49, 31, v48
	v_lshlrev_b64 v[48:49], 2, v[48:49]
	v_lshl_add_u64 v[118:119], v[18:19], 0, v[110:111]
	v_lshl_add_u64 v[18:19], v[18:19], 0, v[48:49]
	global_store_dword v[118:119], v112, off
	global_store_dword v[18:19], v113, off
	global_store_dword v[60:61], v106, off offset:64
	global_store_dword v[116:117], v107, off offset:64
	global_store_dword v[118:119], v108, off offset:64
	global_store_dword v[18:19], v109, off offset:64
	global_store_dword v[60:61], v102, off offset:128
	global_store_dword v[116:117], v103, off offset:128
	global_store_dword v[118:119], v104, off offset:128
	global_store_dword v[18:19], v105, off offset:128
	global_store_dword v[60:61], v98, off offset:192
	global_store_dword v[116:117], v99, off offset:192
	global_store_dword v[118:119], v100, off offset:192
	global_store_dword v[18:19], v101, off offset:192
	v_add_u32_e32 v18, 0x80, v162
	v_ashrrev_i32_e32 v19, 31, v18
	v_mul_lo_u32 v60, s10, v19
	v_mul_lo_u32 v61, s11, v18
	v_mad_u64_u32 v[18:19], s[0:1], s10, v18, 0
	v_add3_u32 v19, v19, v60, v61
	v_lshl_add_u64 v[18:19], v[18:19], 2, s[8:9]
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[0:1]
	v_lshl_add_u64 v[18:19], v[0:1], 0, v[22:23]
	v_lshl_add_u64 v[22:23], v[0:1], 0, v[30:31]
	v_lshl_add_u64 v[30:31], v[0:1], 0, v[34:35]
	v_lshl_add_u64 v[20:21], v[0:1], 0, v[20:21]
	global_store_dword v[18:19], v94, off
	global_store_dword v[22:23], v95, off
	global_store_dword v[30:31], v96, off
	global_store_dword v[20:21], v97, off
	global_store_dword v[18:19], v90, off offset:64
	global_store_dword v[22:23], v91, off offset:64
	global_store_dword v[30:31], v92, off offset:64
	global_store_dword v[20:21], v93, off offset:64
	global_store_dword v[18:19], v86, off offset:128
	global_store_dword v[22:23], v87, off offset:128
	global_store_dword v[30:31], v88, off offset:128
	global_store_dword v[20:21], v89, off offset:128
	global_store_dword v[18:19], v82, off offset:192
	global_store_dword v[22:23], v83, off offset:192
	global_store_dword v[30:31], v84, off offset:192
	global_store_dword v[20:21], v85, off offset:192
	v_lshl_add_u64 v[18:19], v[0:1], 0, v[32:33]
	v_lshl_add_u64 v[20:21], v[0:1], 0, v[42:43]
	v_lshl_add_u64 v[22:23], v[0:1], 0, v[46:47]
	v_lshl_add_u64 v[24:25], v[0:1], 0, v[24:25]
	global_store_dword v[18:19], v78, off
	global_store_dword v[20:21], v79, off
	global_store_dword v[22:23], v80, off
	global_store_dword v[24:25], v81, off
	global_store_dword v[18:19], v74, off offset:64
	global_store_dword v[20:21], v75, off offset:64
	global_store_dword v[22:23], v76, off offset:64
	global_store_dword v[24:25], v77, off offset:64
	global_store_dword v[18:19], v70, off offset:128
	global_store_dword v[20:21], v71, off offset:128
	global_store_dword v[22:23], v72, off offset:128
	global_store_dword v[24:25], v73, off offset:128
	global_store_dword v[18:19], v66, off offset:192
	global_store_dword v[20:21], v67, off offset:192
	global_store_dword v[22:23], v68, off offset:192
	global_store_dword v[24:25], v69, off offset:192
	v_lshl_add_u64 v[18:19], v[0:1], 0, v[44:45]
	v_lshl_add_u64 v[20:21], v[0:1], 0, v[54:55]
	v_lshl_add_u64 v[22:23], v[0:1], 0, v[58:59]
	v_lshl_add_u64 v[24:25], v[0:1], 0, v[36:37]
	global_store_dword v[18:19], v62, off
	global_store_dword v[20:21], v63, off
	global_store_dword v[22:23], v64, off
	global_store_dword v[24:25], v65, off
	global_store_dword v[18:19], v50, off offset:64
	global_store_dword v[20:21], v51, off offset:64
	global_store_dword v[22:23], v52, off offset:64
	global_store_dword v[24:25], v53, off offset:64
	global_store_dword v[18:19], v38, off offset:128
	global_store_dword v[20:21], v39, off offset:128
	global_store_dword v[22:23], v40, off offset:128
	global_store_dword v[24:25], v41, off offset:128
	global_store_dword v[18:19], v26, off offset:192
	global_store_dword v[20:21], v27, off offset:192
	global_store_dword v[22:23], v28, off offset:192
	global_store_dword v[24:25], v29, off offset:192
	v_lshl_add_u64 v[18:19], v[0:1], 0, v[56:57]
	v_lshl_add_u64 v[20:21], v[0:1], 0, v[114:115]
	global_store_dword v[18:19], v14, off
	global_store_dword v[20:21], v15, off
	v_lshl_add_u64 v[14:15], v[0:1], 0, v[110:111]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[48:49]
	global_store_dword v[14:15], v16, off
	global_store_dword v[0:1], v17, off
	global_store_dword v[18:19], v10, off offset:64
	global_store_dword v[20:21], v11, off offset:64
	global_store_dword v[14:15], v12, off offset:64
	global_store_dword v[0:1], v13, off offset:64
	global_store_dword v[18:19], v6, off offset:128
	global_store_dword v[20:21], v7, off offset:128
	global_store_dword v[14:15], v8, off offset:128
	global_store_dword v[0:1], v9, off offset:128
	global_store_dword v[18:19], v2, off offset:192
	global_store_dword v[20:21], v3, off offset:192
	global_store_dword v[14:15], v4, off offset:192
	global_store_dword v[0:1], v5, off offset:192
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z8micro_tk13micro_globals
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 348
		.amdhsa_kernarg_size 144
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
; codeLenInByte = 8720
; NumSgprs: 32
; NumVgprs: 256
; NumAgprs: 0
; TotalNumVgprs: 256
; ScratchSize: 348
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
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 144
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 512
    .name:           _Z8micro_tk13micro_globals
    .private_segment_fixed_size: 348
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         _Z8micro_tk13micro_globals.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 94
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
