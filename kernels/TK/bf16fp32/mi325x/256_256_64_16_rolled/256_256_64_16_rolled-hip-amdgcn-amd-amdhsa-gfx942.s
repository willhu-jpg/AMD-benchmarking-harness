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
	s_cselect_b32 s5, 0, 0
	s_mov_b32 s4, 0
	s_and_b32 s16, s5, -16
	s_load_dwordx2 s[10:11], s[0:1], 0x0
	s_load_dwordx2 s[6:7], s[0:1], 0x20
	s_load_dwordx2 s[18:19], s[0:1], 0x30
	s_load_dwordx2 s[8:9], s[0:1], 0x50
	s_load_dwordx2 s[12:13], s[0:1], 0x60
	s_load_dwordx2 s[14:15], s[0:1], 0x80
	s_and_b32 s0, s5, 15
	s_mov_b32 s1, s4
	s_add_i32 s16, s16, 16
	s_cmp_eq_u64 s[0:1], 0
	s_cselect_b32 s5, s5, s16
	s_lshl_b32 s24, s3, 8
	s_ashr_i32 s3, s24, 31
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s16, s6, s3
	s_mul_hi_u32 s17, s6, s24
	s_add_i32 s0, s5, 0x8000
	s_add_i32 s16, s17, s16
	s_mul_i32 s7, s7, s24
	s_and_b32 s1, s0, -16
	s_add_i32 s17, s16, s7
	s_mul_i32 s16, s6, s24
	s_and_b32 s20, s0, 15
	s_add_i32 s1, s1, 16
	s_lshl_b64 s[16:17], s[16:17], 1
	s_add_u32 s16, s10, s16
	s_addc_u32 s17, s11, s17
	s_lshl_b32 s7, s2, 8
	s_ashr_i32 s10, s7, 31
	s_mul_i32 s10, s8, s10
	s_mul_hi_u32 s11, s8, s7
	s_add_i32 s10, s11, s10
	s_mul_i32 s9, s9, s7
	s_add_i32 s11, s10, s9
	s_mul_i32 s10, s8, s7
	s_lshl_b64 s[10:11], s[10:11], 1
	v_lshlrev_b32_e32 v2, 3, v0
	s_add_u32 s18, s18, s10
	v_and_b32_e32 v20, 56, v2
	v_lshrrev_b32_e32 v3, 3, v0
	s_addc_u32 s19, s19, s11
	v_mad_u64_u32 v[12:13], s[10:11], v3, s6, v[20:21]
	v_or_b32_e32 v21, 64, v3
	v_ashrrev_i32_e32 v13, 31, v12
	v_mad_u64_u32 v[8:9], s[10:11], v21, s6, v[20:21]
	v_lshlrev_b32_e32 v23, 4, v0
	v_lshlrev_b32_e32 v24, 1, v20
	v_lshl_add_u64 v[4:5], v[12:13], 1, s[16:17]
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshl_add_u32 v12, s6, 7, v12
	v_or_b32_e32 v22, 0xc0, v3
	v_and_b32_e32 v23, 0x1f80, v23
	v_add_u32_e32 v25, s5, v24
	;;#ASMSTART
	global_load_dwordx4 v[4:7], v[4:5], off

	;;#ASMEND
	v_lshl_add_u64 v[8:9], v[8:9], 1, s[16:17]
	v_ashrrev_i32_e32 v13, 31, v12
	v_mad_u64_u32 v[16:17], s[10:11], v22, s6, v[20:21]
	v_add_u32_e32 v28, v25, v23
	;;#ASMSTART
	global_load_dwordx4 v[8:11], v[8:9], off

	;;#ASMEND
	v_lshl_add_u64 v[12:13], v[12:13], 1, s[16:17]
	v_ashrrev_i32_e32 v17, 31, v16
	v_or_b32_e32 v26, 8, v24
	v_lshrrev_b32_e32 v29, 4, v28
	;;#ASMSTART
	global_load_dwordx4 v[12:15], v[12:13], off

	;;#ASMEND
	v_lshl_add_u64 v[16:17], v[16:17], 1, s[16:17]
	v_add_u32_e32 v27, s5, v26
	v_and_b32_e32 v29, 0x78, v29
	;;#ASMSTART
	global_load_dwordx4 v[16:19], v[16:17], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	v_xor_b32_e32 v28, v29, v28
	;;#ASMSTART
	ds_write_b64 v28, v[4:5]

	;;#ASMEND
	v_add_u32_e32 v4, v27, v23
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	v_or_b32_e32 v28, 0x2000, v23
	;;#ASMSTART
	ds_write_b64 v4, v[6:7]

	;;#ASMEND
	v_add_u32_e32 v4, v25, v28
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	;;#ASMSTART
	ds_write_b64 v4, v[8:9]

	;;#ASMEND
	v_add_u32_e32 v4, v27, v28
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	v_or_b32_e32 v29, 0x4000, v23
	;;#ASMSTART
	ds_write_b64 v4, v[10:11]

	;;#ASMEND
	v_add_u32_e32 v4, v25, v29
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	;;#ASMSTART
	ds_write_b64 v4, v[12:13]

	;;#ASMEND
	v_add_u32_e32 v4, v27, v29
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	v_or_b32_e32 v30, 0x6000, v23
	;;#ASMSTART
	ds_write_b64 v4, v[14:15]

	;;#ASMEND
	v_add_u32_e32 v4, v25, v30
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	;;#ASMSTART
	ds_write_b64 v4, v[16:17]

	;;#ASMEND
	v_add_u32_e32 v4, v27, v30
	s_mov_b32 s21, s4
	v_lshrrev_b32_e32 v5, 4, v4
	s_cmp_eq_u64 s[20:21], 0
	v_and_b32_e32 v5, 0x78, v5
	v_mad_u64_u32 v[12:13], s[10:11], v3, s8, v[20:21]
	v_xor_b32_e32 v4, v5, v4
	v_ashrrev_i32_e32 v13, 31, v12
	v_mad_u64_u32 v[8:9], s[10:11], v21, s8, v[20:21]
	s_cselect_b32 s7, s0, s1
	;;#ASMSTART
	ds_write_b64 v4, v[18:19]

	;;#ASMEND
	v_lshl_add_u64 v[4:5], v[12:13], 1, s[18:19]
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshl_add_u32 v12, s8, 7, v12
	v_add_u32_e32 v3, s7, v24
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	;;#ASMSTART
	global_load_dwordx4 v[4:7], v[4:5], off

	;;#ASMEND
	v_lshl_add_u64 v[8:9], v[8:9], 1, s[18:19]
	v_ashrrev_i32_e32 v13, 31, v12
	v_mad_u64_u32 v[16:17], s[10:11], v22, s8, v[20:21]
	v_add_u32_e32 v21, v3, v23
	;;#ASMSTART
	global_load_dwordx4 v[8:11], v[8:9], off

	;;#ASMEND
	v_lshl_add_u64 v[12:13], v[12:13], 1, s[18:19]
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshrrev_b32_e32 v22, 4, v21
	;;#ASMSTART
	global_load_dwordx4 v[12:15], v[12:13], off

	;;#ASMEND
	v_lshl_add_u64 v[16:17], v[16:17], 1, s[18:19]
	v_add_u32_e32 v20, s7, v26
	v_and_b32_e32 v22, 0x78, v22
	;;#ASMSTART
	global_load_dwordx4 v[16:19], v[16:17], off

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	v_xor_b32_e32 v21, v22, v21
	;;#ASMSTART
	ds_write_b64 v21, v[4:5]

	;;#ASMEND
	v_add_u32_e32 v4, v20, v23
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	;;#ASMSTART
	ds_write_b64 v4, v[6:7]

	;;#ASMEND
	v_add_u32_e32 v4, v3, v28
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	;;#ASMSTART
	ds_write_b64 v4, v[8:9]

	;;#ASMEND
	v_add_u32_e32 v4, v20, v28
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	;;#ASMSTART
	ds_write_b64 v4, v[10:11]

	;;#ASMEND
	v_add_u32_e32 v4, v3, v29
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	;;#ASMSTART
	ds_write_b64 v4, v[12:13]

	;;#ASMEND
	v_add_u32_e32 v4, v20, v29
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v4, v5, v4
	v_add_u32_e32 v3, v3, v30
	;;#ASMSTART
	ds_write_b64 v4, v[14:15]

	;;#ASMEND
	v_lshrrev_b32_e32 v4, 4, v3
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v3, v4, v3
	;;#ASMSTART
	ds_write_b64 v3, v[16:17]

	;;#ASMEND
	v_add_u32_e32 v3, v20, v30
	v_lshrrev_b32_e32 v4, 4, v3
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v3, v4, v3
	;;#ASMSTART
	ds_write_b64 v3, v[18:19]

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
	v_lshrrev_b32_e32 v3, 1, v0
	v_and_b32_e32 v3, 24, v3
	v_and_b32_e32 v2, 24, v2
	v_bfe_u32 v6, v0, 2, 6
	v_mad_u64_u32 v[4:5], s[0:1], v6, s8, v[2:3]
	v_lshrrev_b32_e32 v169, 2, v0
	s_lshl_b32 s0, s8, 6
	v_lshlrev_b32_e32 v177, 1, v4
	v_add_u32_e32 v4, s0, v4
	v_or_b32_e32 v7, 0xc0, v169
	v_lshlrev_b32_e32 v178, 1, v4
	v_add_lshl_u32 v179, v4, s0, 1
	v_mul_lo_u32 v4, v7, s8
	v_add_lshl_u32 v180, v4, v2, 1
	v_mad_u64_u32 v[4:5], s[0:1], v6, s6, v[2:3]
	s_lshl_b32 s0, s6, 6
	v_lshlrev_b32_e32 v181, 1, v4
	v_add_u32_e32 v4, s0, v4
	v_lshlrev_b32_e32 v176, 5, v1
	v_lshlrev_b32_e32 v182, 1, v4
	v_add_lshl_u32 v183, v4, s0, 1
	v_mul_lo_u32 v4, v7, s6
	v_add_lshl_u32 v184, v4, v2, 1
	v_or_b32_e32 v2, v176, v2
	v_lshlrev_b32_e32 v4, 7, v6
	v_lshlrev_b32_e32 v2, 1, v2
	v_add_u32_e32 v5, s5, v4
	v_add_u32_e32 v6, v5, v2
	v_lshrrev_b32_e32 v7, 4, v6
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v185, v7, v6
	v_or_b32_e32 v6, 8, v2
	v_add_u32_e32 v5, v5, v6
	v_lshrrev_b32_e32 v7, 4, v5
	v_and_b32_e32 v7, 0x78, v7
	v_xor_b32_e32 v186, v7, v5
	v_or_b32_e32 v5, 0x2000, v4
	v_add_u32_e32 v7, s5, v5
	v_add_u32_e32 v8, v7, v2
	v_lshrrev_b32_e32 v9, 4, v8
	v_and_b32_e32 v9, 0x78, v9
	v_add_u32_e32 v7, v7, v6
	v_xor_b32_e32 v187, v9, v8
	v_lshrrev_b32_e32 v8, 4, v7
	v_and_b32_e32 v8, 0x78, v8
	v_xor_b32_e32 v188, v8, v7
	v_or_b32_e32 v7, 0x4000, v4
	v_add_u32_e32 v8, s5, v7
	v_add_u32_e32 v9, v8, v2
	v_lshrrev_b32_e32 v10, 4, v9
	v_and_b32_e32 v10, 0x78, v10
	v_add_u32_e32 v8, v8, v6
	v_xor_b32_e32 v189, v10, v9
	v_lshrrev_b32_e32 v9, 4, v8
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v190, v9, v8
	v_lshlrev_b32_e32 v8, 5, v0
	v_and_b32_e32 v8, 0x1f80, v8
	v_or_b32_e32 v8, 0x6000, v8
	v_add_u32_e32 v9, s5, v8
	v_add_u32_e32 v10, v9, v2
	v_lshrrev_b32_e32 v11, 4, v10
	v_and_b32_e32 v11, 0x78, v11
	v_add_u32_e32 v9, v9, v6
	v_xor_b32_e32 v191, v11, v10
	v_lshrrev_b32_e32 v10, 4, v9
	v_and_b32_e32 v10, 0x78, v10
	v_add_u32_e32 v4, s7, v4
	v_xor_b32_e32 v192, v10, v9
	v_add_u32_e32 v9, v4, v2
	v_lshrrev_b32_e32 v10, 4, v9
	v_and_b32_e32 v10, 0x78, v10
	v_add_u32_e32 v4, v4, v6
	v_xor_b32_e32 v193, v10, v9
	v_lshrrev_b32_e32 v9, 4, v4
	v_and_b32_e32 v9, 0x78, v9
	v_xor_b32_e32 v194, v9, v4
	v_add_u32_e32 v4, s7, v5
	v_add_u32_e32 v5, v4, v2
	v_lshrrev_b32_e32 v9, 4, v5
	v_and_b32_e32 v9, 0x78, v9
	v_add_u32_e32 v4, v4, v6
	v_xor_b32_e32 v195, v9, v5
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v196, v5, v4
	v_add_u32_e32 v4, s7, v7
	v_add_u32_e32 v5, v4, v2
	v_lshrrev_b32_e32 v7, 4, v5
	v_and_b32_e32 v7, 0x78, v7
	v_add_u32_e32 v4, v4, v6
	v_xor_b32_e32 v197, v7, v5
	v_lshrrev_b32_e32 v5, 4, v4
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v198, v5, v4
	v_add_u32_e32 v4, s7, v8
	v_add_u32_e32 v2, v4, v2
	v_lshrrev_b32_e32 v5, 4, v2
	v_and_b32_e32 v5, 0x78, v5
	v_xor_b32_e32 v199, v5, v2
	v_add_u32_e32 v2, v4, v6
	v_lshrrev_b32_e32 v4, 4, v2
	v_bfe_u32 v167, v0, 6, 2
	v_and_b32_e32 v166, 15, v0
	v_and_b32_e32 v4, 0x78, v4
	v_xor_b32_e32 v200, v4, v2
	v_lshlrev_b32_e32 v2, 12, v167
	v_lshlrev_b32_e32 v4, 7, v166
	v_or3_b32 v2, v2, v4, v3
	v_add_u32_e32 v201, s7, v2
	v_lshlrev_b32_e32 v2, 12, v1
	s_lshl_b32 s26, s6, 9
	v_or3_b32 v2, v2, v4, v3
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_add_u32_e32 v202, s5, v2
	s_mov_b32 s5, s4
	v_mov_b64_e32 v[124:125], s[6:7]
	v_mov_b64_e32 v[122:123], s[4:5]
	v_mov_b64_e32 v[156:157], 0
	v_mov_b64_e32 v[128:129], v[124:125]
	v_mov_b64_e32 v[118:119], v[122:123]
	v_mov_b64_e32 v[114:115], v[122:123]
	v_mov_b64_e32 v[110:111], v[122:123]
	v_mov_b64_e32 v[106:107], v[122:123]
	v_mov_b64_e32 v[102:103], v[122:123]
	v_mov_b64_e32 v[98:99], v[122:123]
	v_mov_b64_e32 v[94:95], v[122:123]
	v_mov_b64_e32 v[90:91], v[122:123]
	v_mov_b64_e32 v[86:87], v[122:123]
	v_mov_b64_e32 v[82:83], v[122:123]
	v_mov_b64_e32 v[78:79], v[122:123]
	v_mov_b64_e32 v[74:75], v[122:123]
	v_mov_b64_e32 v[70:71], v[122:123]
	v_mov_b64_e32 v[66:67], v[122:123]
	v_mov_b64_e32 v[62:63], v[122:123]
	v_mov_b64_e32 v[58:59], v[122:123]
	v_mov_b64_e32 v[54:55], v[122:123]
	v_mov_b64_e32 v[50:51], v[122:123]
	v_mov_b64_e32 v[46:47], v[122:123]
	v_mov_b64_e32 v[42:43], v[122:123]
	v_mov_b64_e32 v[38:39], v[122:123]
	v_mov_b64_e32 v[34:35], v[122:123]
	v_mov_b64_e32 v[30:31], v[122:123]
	v_mov_b64_e32 v[26:27], v[122:123]
	v_mov_b64_e32 v[22:23], v[122:123]
	v_mov_b64_e32 v[18:19], v[122:123]
	v_mov_b64_e32 v[14:15], v[122:123]
	v_mov_b64_e32 v[10:11], v[122:123]
	v_mov_b64_e32 v[6:7], v[122:123]
	v_mov_b64_e32 v[2:3], v[122:123]
	s_lshl_b32 s25, s8, 9
	v_or_b32_e32 v168, 0x2000, v176
	v_mov_b32_e32 v171, 0
	v_mov_b32_e32 v173, 0x110000
	s_mov_b32 s5, 0xffff
	v_mov_b64_e32 v[152:153], v[156:157]
	v_mov_b64_e32 v[144:145], v[156:157]
	v_mov_b64_e32 v[136:137], v[156:157]
	v_mov_b64_e32 v[160:161], v[156:157]
	v_mov_b64_e32 v[148:149], v[156:157]
	v_mov_b64_e32 v[140:141], v[156:157]
	v_mov_b64_e32 v[132:133], v[156:157]
	v_mov_b64_e32 v[126:127], v[122:123]
	v_mov_b64_e32 v[120:121], v[124:125]
	v_mov_b64_e32 v[116:117], v[124:125]
	v_mov_b64_e32 v[112:113], v[124:125]
	v_mov_b64_e32 v[108:109], v[124:125]
	v_mov_b64_e32 v[104:105], v[124:125]
	v_mov_b64_e32 v[100:101], v[124:125]
	v_mov_b64_e32 v[96:97], v[124:125]
	v_mov_b64_e32 v[92:93], v[124:125]
	v_mov_b64_e32 v[88:89], v[124:125]
	v_mov_b64_e32 v[84:85], v[124:125]
	v_mov_b64_e32 v[80:81], v[124:125]
	v_mov_b64_e32 v[76:77], v[124:125]
	v_mov_b64_e32 v[72:73], v[124:125]
	v_mov_b64_e32 v[68:69], v[124:125]
	v_mov_b64_e32 v[64:65], v[124:125]
	v_mov_b64_e32 v[60:61], v[124:125]
	v_mov_b64_e32 v[56:57], v[124:125]
	v_mov_b64_e32 v[52:53], v[124:125]
	v_mov_b64_e32 v[48:49], v[124:125]
	v_mov_b64_e32 v[44:45], v[124:125]
	v_mov_b64_e32 v[40:41], v[124:125]
	v_mov_b64_e32 v[36:37], v[124:125]
	v_mov_b64_e32 v[32:33], v[124:125]
	v_mov_b64_e32 v[28:29], v[124:125]
	v_mov_b64_e32 v[24:25], v[124:125]
	v_mov_b64_e32 v[20:21], v[124:125]
	v_mov_b64_e32 v[16:17], v[124:125]
	v_mov_b64_e32 v[12:13], v[124:125]
	v_mov_b64_e32 v[8:9], v[124:125]
	v_mov_b64_e32 v[4:5], v[124:125]
	s_branch .LBB0_4
.LBB0_3:                                ;   in Loop: Header=BB0_4 Depth=1
	s_barrier
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)
	;;#ASMEND
	; sched_barrier mask(0x00000000)
	s_cmpk_eq_i32 s4, 0x80
	s_cbranch_scc1 .LBB0_28
.LBB0_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
                                        ;       Child Loop BB0_19 Depth 3
                                        ;       Child Loop BB0_21 Depth 3
                                        ;       Child Loop BB0_23 Depth 3
                                        ;       Child Loop BB0_25 Depth 3
	s_mov_b32 s0, s4
	s_add_i32 s4, s4, 1
	s_cmpk_lg_i32 s0, 0x7f
	s_cselect_b64 s[6:7], -1, 0
	s_cmpk_eq_i32 s0, 0x7f
	v_mov_b64_e32 v[174:175], v[168:169]
	s_cbranch_scc1 .LBB0_14
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	v_lshl_or_b32 v174, s4, 6, v176
	v_lshlrev_b32_e32 v170, 1, v174
	v_lshl_add_u64 v[162:163], s[16:17], 0, v[170:171]
	v_mov_b32_e32 v172, s26
	s_mov_b64 s[20:21], exec
.LBB0_6:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s8, v162
	v_readfirstlane_b32 s9, v163
	v_readfirstlane_b32 s10, v172
	v_readfirstlane_b32 s11, v173
	v_cmp_eq_u64_e32 vcc, s[8:9], v[162:163]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[10:11], v[172:173]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx4 v[134:137], v181, s[8:11], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	s_mov_b64 exec, s[20:21]
	s_mov_b64 s[20:21], exec
.LBB0_8:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s8, v162
	v_readfirstlane_b32 s9, v163
	v_readfirstlane_b32 s10, v172
	v_readfirstlane_b32 s11, v173
	v_cmp_eq_u64_e32 vcc, s[8:9], v[162:163]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[10:11], v[172:173]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx4 v[142:145], v182, s[8:11], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=1
	s_mov_b64 exec, s[20:21]
	s_mov_b64 s[20:21], exec
.LBB0_10:                               ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s8, v162
	v_readfirstlane_b32 s9, v163
	v_readfirstlane_b32 s10, v172
	v_readfirstlane_b32 s11, v173
	v_cmp_eq_u64_e32 vcc, s[8:9], v[162:163]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[10:11], v[172:173]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx4 v[150:153], v183, s[8:11], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ;   in Loop: Header=BB0_4 Depth=1
	s_mov_b64 exec, s[20:21]
	s_mov_b64 s[20:21], exec
.LBB0_12:                               ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_readfirstlane_b32 s8, v162
	v_readfirstlane_b32 s9, v163
	v_readfirstlane_b32 s10, v172
	v_readfirstlane_b32 s11, v173
	v_cmp_eq_u64_e32 vcc, s[8:9], v[162:163]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[10:11], v[172:173]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx4 v[154:157], v184, s[8:11], 0 offen
                                        ; implicit-def: $vgpr162_vgpr163_vgpr164_vgpr165
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ;   in Loop: Header=BB0_4 Depth=1
	s_mov_b64 exec, s[20:21]
.LBB0_14:                               ; %._crit_edge
                                        ;   in Loop: Header=BB0_4 Depth=1
	v_lshlrev_b32_e32 v170, 1, v174
	v_lshl_add_u64 v[162:163], s[18:19], 0, v[170:171]
	v_mov_b32_e32 v172, s25
	s_mov_b32 s27, 0
	s_xor_b64 s[20:21], s[6:7], -1
	s_branch .LBB0_17
.LBB0_15:                               ;   in Loop: Header=BB0_17 Depth=2
	s_mov_b64 exec, s[22:23]
.LBB0_16:                               ;   in Loop: Header=BB0_17 Depth=2
	; sched_barrier mask(0x00000000)
	v_add_u32_e32 v170, s27, v201
	v_lshrrev_b32_e32 v164, 4, v170
	v_add_u32_e32 v174, 0x800, v170
	v_add_u32_e32 v203, 0x4000, v170
	v_and_b32_e32 v164, 0x78, v164
	v_lshrrev_b32_e32 v165, 4, v174
	v_lshrrev_b32_e32 v204, 4, v203
	v_xor_b32_e32 v164, v164, v170
	v_and_b32_e32 v175, 0x78, v165
	v_and_b32_e32 v204, 0x78, v204
	;;#ASMSTART
	ds_read_b64 v[164:165], v164

	;;#ASMEND
	v_xor_b32_e32 v174, v175, v174
	v_xor_b32_e32 v203, v204, v203
	v_add_u32_e32 v170, 0x4800, v170
	;;#ASMSTART
	ds_read_b64 v[174:175], v174

	;;#ASMEND
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[204:205], v203

	;;#ASMEND
	v_lshrrev_b32_e32 v203, 4, v170
	v_and_b32_e32 v203, 0x78, v203
	v_xor_b32_e32 v170, v203, v170
	;;#ASMSTART
	ds_read_b64 v[206:207], v170

	;;#ASMEND
	v_add_u32_e32 v170, s27, v202
	v_lshrrev_b32_e32 v203, 4, v170
	v_and_b32_e32 v203, 0x78, v203
	v_xor_b32_e32 v203, v203, v170
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[208:209], v203

	;;#ASMEND
	v_add_u32_e32 v203, 0x800, v170
	v_lshrrev_b32_e32 v210, 4, v203
	v_and_b32_e32 v210, 0x78, v210
	v_xor_b32_e32 v203, v210, v203
	;;#ASMSTART
	ds_read_b64 v[210:211], v203

	;;#ASMEND
	v_add_u32_e32 v203, 0x2000, v170
	v_lshrrev_b32_e32 v212, 4, v203
	v_and_b32_e32 v212, 0x78, v212
	v_xor_b32_e32 v203, v212, v203
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[212:213], v203

	;;#ASMEND
	v_add_u32_e32 v203, 0x2800, v170
	v_lshrrev_b32_e32 v214, 4, v203
	v_and_b32_e32 v214, 0x78, v214
	v_xor_b32_e32 v203, v214, v203
	;;#ASMSTART
	ds_read_b64 v[214:215], v203

	;;#ASMEND
	v_add_u32_e32 v203, 0x4000, v170
	v_lshrrev_b32_e32 v216, 4, v203
	v_and_b32_e32 v216, 0x78, v216
	v_xor_b32_e32 v203, v216, v203
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[216:217], v203

	;;#ASMEND
	v_add_u32_e32 v203, 0x4800, v170
	v_lshrrev_b32_e32 v218, 4, v203
	v_and_b32_e32 v218, 0x78, v218
	v_xor_b32_e32 v203, v218, v203
	;;#ASMSTART
	ds_read_b64 v[218:219], v203

	;;#ASMEND
	v_add_u32_e32 v203, 0x6000, v170
	v_lshrrev_b32_e32 v220, 4, v203
	v_and_b32_e32 v220, 0x78, v220
	v_xor_b32_e32 v203, v220, v203
	v_add_u32_e32 v170, 0x6800, v170
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)

	;;#ASMEND
	;;#ASMSTART
	ds_read_b64 v[220:221], v203

	;;#ASMEND
	v_lshrrev_b32_e32 v203, 4, v170
	v_and_b32_e32 v203, 0x78, v203
	v_xor_b32_e32 v170, v203, v170
	;;#ASMSTART
	ds_read_b64 v[222:223], v170

	;;#ASMEND
	v_bfi_b32 v164, s5, v164, v164
	v_bfi_b32 v174, s5, v174, v174
	v_bfi_b32 v204, s5, v204, v204
	v_bfi_b32 v206, s5, v206, v206
	v_bfi_b32 v208, s5, v208, v208
	v_bfi_b32 v210, s5, v210, v210
	v_bfi_b32 v212, s5, v212, v212
	v_bfi_b32 v214, s5, v214, v214
	v_bfi_b32 v216, s5, v216, v216
	v_bfi_b32 v218, s5, v218, v218
	v_bfi_b32 v220, s5, v220, v220
	v_bfi_b32 v222, s5, v222, v222
	;;#ASMSTART
	s_waitcnt lgkmcnt(0)

	;;#ASMEND
	s_barrier
	; sched_barrier mask(0x00000000)
	s_setprio 1
	v_mfma_f32_16x16x16_bf16 v[122:125], v[208:209], v[164:165], v[122:125]
	v_mfma_f32_16x16x16_bf16 v[126:129], v[208:209], v[174:175], v[126:129]
	v_mfma_f32_16x16x16_bf16 v[118:121], v[210:211], v[164:165], v[118:121]
	v_mfma_f32_16x16x16_bf16 v[114:117], v[210:211], v[174:175], v[114:117]
	v_mfma_f32_16x16x16_bf16 v[110:113], v[208:209], v[204:205], v[110:113]
	v_mfma_f32_16x16x16_bf16 v[106:109], v[208:209], v[206:207], v[106:109]
	v_mfma_f32_16x16x16_bf16 v[102:105], v[210:211], v[204:205], v[102:105]
	v_mfma_f32_16x16x16_bf16 v[98:101], v[210:211], v[206:207], v[98:101]
	v_mfma_f32_16x16x16_bf16 v[94:97], v[212:213], v[164:165], v[94:97]
	v_mfma_f32_16x16x16_bf16 v[90:93], v[212:213], v[174:175], v[90:93]
	v_mfma_f32_16x16x16_bf16 v[86:89], v[214:215], v[164:165], v[86:89]
	v_mfma_f32_16x16x16_bf16 v[82:85], v[214:215], v[174:175], v[82:85]
	v_mfma_f32_16x16x16_bf16 v[78:81], v[212:213], v[204:205], v[78:81]
	v_mfma_f32_16x16x16_bf16 v[74:77], v[212:213], v[206:207], v[74:77]
	v_mfma_f32_16x16x16_bf16 v[70:73], v[214:215], v[204:205], v[70:73]
	v_mfma_f32_16x16x16_bf16 v[66:69], v[214:215], v[206:207], v[66:69]
	v_mfma_f32_16x16x16_bf16 v[62:65], v[216:217], v[164:165], v[62:65]
	v_mfma_f32_16x16x16_bf16 v[58:61], v[216:217], v[174:175], v[58:61]
	v_mfma_f32_16x16x16_bf16 v[54:57], v[218:219], v[164:165], v[54:57]
	v_mfma_f32_16x16x16_bf16 v[50:53], v[218:219], v[174:175], v[50:53]
	v_mfma_f32_16x16x16_bf16 v[46:49], v[216:217], v[204:205], v[46:49]
	v_mfma_f32_16x16x16_bf16 v[42:45], v[216:217], v[206:207], v[42:45]
	v_mfma_f32_16x16x16_bf16 v[38:41], v[218:219], v[204:205], v[38:41]
	v_mfma_f32_16x16x16_bf16 v[34:37], v[218:219], v[206:207], v[34:37]
	v_mfma_f32_16x16x16_bf16 v[30:33], v[220:221], v[164:165], v[30:33]
	v_mfma_f32_16x16x16_bf16 v[26:29], v[220:221], v[174:175], v[26:29]
	v_mfma_f32_16x16x16_bf16 v[22:25], v[222:223], v[164:165], v[22:25]
	v_mfma_f32_16x16x16_bf16 v[18:21], v[222:223], v[174:175], v[18:21]
	v_mfma_f32_16x16x16_bf16 v[14:17], v[220:221], v[204:205], v[14:17]
	v_mfma_f32_16x16x16_bf16 v[10:13], v[220:221], v[206:207], v[10:13]
	v_mfma_f32_16x16x16_bf16 v[6:9], v[222:223], v[204:205], v[6:9]
	v_mfma_f32_16x16x16_bf16 v[2:5], v[222:223], v[206:207], v[2:5]
	s_setprio 0
	s_barrier
	; sched_barrier mask(0x00000000)
	s_add_i32 s27, s27, 32
	s_cmpk_eq_i32 s27, 0x80
	s_cbranch_scc1 .LBB0_26
.LBB0_17:                               ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_19 Depth 3
                                        ;       Child Loop BB0_21 Depth 3
                                        ;       Child Loop BB0_23 Depth 3
                                        ;       Child Loop BB0_25 Depth 3
	s_cmp_lg_u32 s27, 64
	s_cselect_b64 s[0:1], -1, 0
	s_or_b64 s[0:1], s[20:21], s[0:1]
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_16
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=2
	s_mov_b64 s[22:23], exec
.LBB0_19:                               ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_17 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_readfirstlane_b32 s8, v162
	v_readfirstlane_b32 s9, v163
	v_readfirstlane_b32 s10, v172
	v_readfirstlane_b32 s11, v173
	v_cmp_eq_u64_e32 vcc, s[8:9], v[162:163]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[10:11], v[172:173]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx4 v[130:133], v177, s[8:11], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ;   in Loop: Header=BB0_17 Depth=2
	s_mov_b64 exec, s[22:23]
	s_mov_b64 s[22:23], exec
.LBB0_21:                               ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_17 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_readfirstlane_b32 s8, v162
	v_readfirstlane_b32 s9, v163
	v_readfirstlane_b32 s10, v172
	v_readfirstlane_b32 s11, v173
	v_cmp_eq_u64_e32 vcc, s[8:9], v[162:163]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[10:11], v[172:173]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx4 v[138:141], v178, s[8:11], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ;   in Loop: Header=BB0_17 Depth=2
	s_mov_b64 exec, s[22:23]
	s_mov_b64 s[22:23], exec
.LBB0_23:                               ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_17 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_readfirstlane_b32 s8, v162
	v_readfirstlane_b32 s9, v163
	v_readfirstlane_b32 s10, v172
	v_readfirstlane_b32 s11, v173
	v_cmp_eq_u64_e32 vcc, s[8:9], v[162:163]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[10:11], v[172:173]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx4 v[146:149], v179, s[8:11], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ;   in Loop: Header=BB0_17 Depth=2
	s_mov_b64 exec, s[22:23]
	s_mov_b64 s[22:23], exec
.LBB0_25:                               ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_17 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	v_readfirstlane_b32 s8, v162
	v_readfirstlane_b32 s9, v163
	v_readfirstlane_b32 s10, v172
	v_readfirstlane_b32 s11, v173
	v_cmp_eq_u64_e32 vcc, s[8:9], v[162:163]
	s_nop 0
	v_cmp_eq_u64_e64 s[0:1], s[10:11], v[172:173]
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[0:1], s[0:1]
	buffer_load_dwordx4 v[158:161], v180, s[8:11], 0 offen
	s_xor_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB0_25
	s_branch .LBB0_15
.LBB0_26:                               ;   in Loop: Header=BB0_4 Depth=1
	s_and_b64 vcc, exec, s[6:7]
	s_cbranch_vccz .LBB0_3
; %bb.27:                               ;   in Loop: Header=BB0_4 Depth=1
	;;#ASMSTART
	s_waitcnt vmcnt(0)
	;;#ASMEND
	s_waitcnt vmcnt(3)
	;;#ASMSTART
	ds_write_b64 v185, v[134:135]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v186, v[136:137]

	;;#ASMEND
	s_waitcnt vmcnt(2)
	;;#ASMSTART
	ds_write_b64 v187, v[142:143]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v188, v[144:145]

	;;#ASMEND
	s_waitcnt vmcnt(1)
	;;#ASMSTART
	ds_write_b64 v189, v[150:151]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v190, v[152:153]

	;;#ASMEND
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	ds_write_b64 v191, v[154:155]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v192, v[156:157]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v193, v[130:131]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v194, v[132:133]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v195, v[138:139]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v196, v[140:141]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v197, v[146:147]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v198, v[148:149]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v199, v[158:159]

	;;#ASMEND
	;;#ASMSTART
	ds_write_b64 v200, v[160:161]

	;;#ASMEND
	s_branch .LBB0_3
.LBB0_28:
	s_movk_i32 s0, 0x100
	v_cmp_gt_u32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_30
; %bb.29:
	s_barrier
.LBB0_30:
	s_or_b64 exec, exec, s[0:1]
	v_and_b32_e32 v0, 12, v169
	v_mul_lo_u32 v0, v0, s14
	s_waitcnt vmcnt(3)
	v_add_u32_e32 v130, s14, v0
	v_lshl_or_b32 v174, v1, 5, s24
	v_lshlrev_b32_e32 v1, 5, v167
	v_add_u32_e32 v132, s14, v130
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v160, s2, 8, v1
	s_mul_i32 s2, s14, s3
	v_mul_lo_u32 v1, s15, v174
	v_mad_u64_u32 v[162:163], s[0:1], s14, v174, 0
	v_add_u32_e32 v134, s14, v132
	v_add_u32_e32 v136, v0, v166
	v_add_u32_e32 v138, v130, v166
	v_add3_u32 v163, v163, s2, v1
	v_ashrrev_i32_e32 v161, 31, v160
	v_ashrrev_i32_e32 v137, 31, v136
	v_ashrrev_i32_e32 v139, 31, v138
	v_add_u32_e32 v140, v132, v166
	v_add_u32_e32 v142, v134, v166
	v_lshl_add_u64 v[162:163], v[162:163], 2, s[12:13]
	v_lshlrev_b64 v[160:161], 2, v[160:161]
	v_ashrrev_i32_e32 v1, 31, v0
	v_mov_b32_e32 v167, 0
	v_ashrrev_i32_e32 v141, 31, v140
	v_ashrrev_i32_e32 v143, 31, v142
	v_lshl_add_u64 v[162:163], v[162:163], 0, v[160:161]
	v_lshlrev_b64 v[136:137], 2, v[136:137]
	v_lshlrev_b64 v[138:139], 2, v[138:139]
	v_lshl_add_u64 v[0:1], v[0:1], 0, v[166:167]
	v_lshl_add_u64 v[164:165], v[162:163], 0, v[136:137]
	v_lshl_add_u64 v[168:169], v[162:163], 0, v[138:139]
	v_lshlrev_b64 v[140:141], 2, v[140:141]
	v_lshlrev_b64 v[142:143], 2, v[142:143]
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	global_store_dword v[164:165], v122, off
	global_store_dword v[168:169], v123, off
	v_lshl_add_u64 v[170:171], v[162:163], 0, v[140:141]
	v_lshl_add_u64 v[172:173], v[162:163], 0, v[142:143]
	v_lshl_add_u64 v[122:123], v[162:163], 0, v[0:1]
	v_ashrrev_i32_e32 v131, 31, v130
	global_store_dword v[170:171], v124, off
	global_store_dword v[172:173], v125, off
	global_store_dword v[122:123], v126, off offset:64
	v_lshl_add_u64 v[122:123], v[130:131], 0, v[166:167]
	v_lshlrev_b64 v[122:123], 2, v[122:123]
	v_lshl_add_u64 v[124:125], v[162:163], 0, v[122:123]
	v_ashrrev_i32_e32 v133, 31, v132
	global_store_dword v[124:125], v127, off offset:64
	v_lshl_add_u64 v[124:125], v[132:133], 0, v[166:167]
	v_lshlrev_b64 v[124:125], 2, v[124:125]
	v_mad_u64_u32 v[144:145], s[0:1], s14, 13, v[134:135]
	v_lshl_add_u64 v[126:127], v[162:163], 0, v[124:125]
	v_ashrrev_i32_e32 v135, 31, v134
	v_add_u32_e32 v146, s14, v144
	global_store_dword v[126:127], v128, off offset:64
	v_lshl_add_u64 v[126:127], v[134:135], 0, v[166:167]
	v_add_u32_e32 v148, s14, v146
	v_add_u32_e32 v152, v144, v166
	v_add_u32_e32 v154, v146, v166
	v_lshlrev_b64 v[126:127], 2, v[126:127]
	v_add_u32_e32 v150, s14, v148
	v_ashrrev_i32_e32 v153, 31, v152
	v_ashrrev_i32_e32 v155, 31, v154
	v_lshl_add_u64 v[130:131], v[162:163], 0, v[126:127]
	v_add_u32_e32 v156, v148, v166
	v_add_u32_e32 v158, v150, v166
	global_store_dword v[130:131], v129, off offset:64
	v_lshlrev_b64 v[128:129], 2, v[152:153]
	v_lshlrev_b64 v[132:133], 2, v[154:155]
	v_ashrrev_i32_e32 v157, 31, v156
	v_ashrrev_i32_e32 v159, 31, v158
	v_lshl_add_u64 v[130:131], v[162:163], 0, v[128:129]
	v_lshl_add_u64 v[134:135], v[162:163], 0, v[132:133]
	global_store_dword v[130:131], v118, off
	global_store_dword v[134:135], v119, off
	v_lshlrev_b64 v[118:119], 2, v[156:157]
	v_lshlrev_b64 v[154:155], 2, v[158:159]
	v_lshl_add_u64 v[152:153], v[162:163], 0, v[118:119]
	v_lshl_add_u64 v[156:157], v[162:163], 0, v[154:155]
	v_ashrrev_i32_e32 v145, 31, v144
	global_store_dword v[152:153], v120, off
	global_store_dword v[156:157], v121, off
	v_lshl_add_u64 v[120:121], v[144:145], 0, v[166:167]
	v_lshlrev_b64 v[120:121], 2, v[120:121]
	v_lshl_add_u64 v[144:145], v[162:163], 0, v[120:121]
	v_ashrrev_i32_e32 v147, 31, v146
	global_store_dword v[144:145], v114, off offset:64
	v_lshl_add_u64 v[144:145], v[146:147], 0, v[166:167]
	v_lshlrev_b64 v[144:145], 2, v[144:145]
	v_lshl_add_u64 v[146:147], v[162:163], 0, v[144:145]
	v_ashrrev_i32_e32 v149, 31, v148
	global_store_dword v[146:147], v115, off offset:64
	v_lshl_add_u64 v[114:115], v[148:149], 0, v[166:167]
	v_lshlrev_b64 v[114:115], 2, v[114:115]
	v_lshl_add_u64 v[146:147], v[162:163], 0, v[114:115]
	v_ashrrev_i32_e32 v151, 31, v150
	global_store_dword v[146:147], v116, off offset:64
	v_lshl_add_u64 v[146:147], v[150:151], 0, v[166:167]
	v_lshlrev_b64 v[146:147], 2, v[146:147]
	v_lshl_add_u64 v[148:149], v[162:163], 0, v[146:147]
	s_mov_b64 s[0:1], 0x200
	global_store_dword v[148:149], v117, off offset:64
	v_lshl_add_u64 v[116:117], v[162:163], 0, s[0:1]
	global_store_dword v[164:165], v110, off offset:512
	global_store_dword v[168:169], v111, off offset:512
	global_store_dword v[170:171], v112, off offset:512
	global_store_dword v[172:173], v113, off offset:512
	v_lshl_add_u64 v[110:111], v[116:117], 0, v[0:1]
	global_store_dword v[110:111], v106, off offset:64
	v_lshl_add_u64 v[110:111], v[116:117], 0, v[122:123]
	global_store_dword v[110:111], v107, off offset:64
	v_lshl_add_u64 v[106:107], v[116:117], 0, v[124:125]
	global_store_dword v[106:107], v108, off offset:64
	v_lshl_add_u64 v[106:107], v[116:117], 0, v[126:127]
	global_store_dword v[106:107], v109, off offset:64
	global_store_dword v[130:131], v102, off offset:512
	global_store_dword v[134:135], v103, off offset:512
	global_store_dword v[152:153], v104, off offset:512
	global_store_dword v[156:157], v105, off offset:512
	v_lshl_add_u64 v[102:103], v[116:117], 0, v[120:121]
	global_store_dword v[102:103], v98, off offset:64
	v_lshl_add_u64 v[102:103], v[116:117], 0, v[144:145]
	global_store_dword v[102:103], v99, off offset:64
	v_lshl_add_u64 v[98:99], v[116:117], 0, v[114:115]
	global_store_dword v[98:99], v100, off offset:64
	v_lshl_add_u64 v[98:99], v[116:117], 0, v[146:147]
	global_store_dword v[98:99], v101, off offset:64
	v_or_b32_e32 v98, 64, v174
	v_mul_lo_u32 v100, s15, v98
	v_mad_u64_u32 v[98:99], s[4:5], s14, v98, 0
	v_add3_u32 v99, v99, s2, v100
	v_lshl_add_u64 v[98:99], v[98:99], 2, s[12:13]
	v_lshl_add_u64 v[98:99], v[98:99], 0, v[160:161]
	v_lshl_add_u64 v[100:101], v[98:99], 0, v[136:137]
	v_lshl_add_u64 v[102:103], v[98:99], 0, v[138:139]
	global_store_dword v[100:101], v94, off
	global_store_dword v[102:103], v95, off
	v_lshl_add_u64 v[94:95], v[98:99], 0, v[140:141]
	v_lshl_add_u64 v[104:105], v[98:99], 0, v[142:143]
	global_store_dword v[94:95], v96, off
	global_store_dword v[104:105], v97, off
	v_lshl_add_u64 v[96:97], v[98:99], 0, v[0:1]
	global_store_dword v[96:97], v90, off offset:64
	v_lshl_add_u64 v[96:97], v[98:99], 0, v[122:123]
	global_store_dword v[96:97], v91, off offset:64
	v_lshl_add_u64 v[90:91], v[98:99], 0, v[124:125]
	global_store_dword v[90:91], v92, off offset:64
	v_lshl_add_u64 v[90:91], v[98:99], 0, v[126:127]
	global_store_dword v[90:91], v93, off offset:64
	v_lshl_add_u64 v[90:91], v[98:99], 0, v[128:129]
	v_lshl_add_u64 v[92:93], v[98:99], 0, v[132:133]
	global_store_dword v[90:91], v86, off
	global_store_dword v[92:93], v87, off
	v_lshl_add_u64 v[86:87], v[98:99], 0, v[118:119]
	v_lshl_add_u64 v[96:97], v[98:99], 0, v[154:155]
	global_store_dword v[86:87], v88, off
	global_store_dword v[96:97], v89, off
	v_lshl_add_u64 v[88:89], v[98:99], 0, v[120:121]
	global_store_dword v[88:89], v82, off offset:64
	v_lshl_add_u64 v[88:89], v[98:99], 0, v[144:145]
	global_store_dword v[88:89], v83, off offset:64
	v_lshl_add_u64 v[82:83], v[98:99], 0, v[114:115]
	global_store_dword v[82:83], v84, off offset:64
	v_lshl_add_u64 v[82:83], v[98:99], 0, v[146:147]
	global_store_dword v[82:83], v85, off offset:64
	v_lshl_add_u64 v[82:83], v[98:99], 0, s[0:1]
	global_store_dword v[100:101], v78, off offset:512
	global_store_dword v[102:103], v79, off offset:512
	global_store_dword v[94:95], v80, off offset:512
	global_store_dword v[104:105], v81, off offset:512
	v_lshl_add_u64 v[78:79], v[82:83], 0, v[0:1]
	global_store_dword v[78:79], v74, off offset:64
	v_lshl_add_u64 v[78:79], v[82:83], 0, v[122:123]
	global_store_dword v[78:79], v75, off offset:64
	v_lshl_add_u64 v[74:75], v[82:83], 0, v[124:125]
	global_store_dword v[74:75], v76, off offset:64
	v_lshl_add_u64 v[74:75], v[82:83], 0, v[126:127]
	global_store_dword v[74:75], v77, off offset:64
	global_store_dword v[90:91], v70, off offset:512
	global_store_dword v[92:93], v71, off offset:512
	global_store_dword v[86:87], v72, off offset:512
	global_store_dword v[96:97], v73, off offset:512
	v_lshl_add_u64 v[70:71], v[82:83], 0, v[120:121]
	global_store_dword v[70:71], v66, off offset:64
	v_lshl_add_u64 v[70:71], v[82:83], 0, v[144:145]
	global_store_dword v[70:71], v67, off offset:64
	v_lshl_add_u64 v[66:67], v[82:83], 0, v[114:115]
	global_store_dword v[66:67], v68, off offset:64
	v_lshl_add_u64 v[66:67], v[82:83], 0, v[146:147]
	global_store_dword v[66:67], v69, off offset:64
	v_or_b32_e32 v66, 0x80, v174
	v_mul_lo_u32 v68, s15, v66
	v_mad_u64_u32 v[66:67], s[4:5], s14, v66, 0
	v_add3_u32 v67, v67, s2, v68
	v_lshl_add_u64 v[66:67], v[66:67], 2, s[12:13]
	v_lshl_add_u64 v[66:67], v[66:67], 0, v[160:161]
	v_lshl_add_u64 v[68:69], v[66:67], 0, v[136:137]
	v_lshl_add_u64 v[70:71], v[66:67], 0, v[138:139]
	global_store_dword v[68:69], v62, off
	global_store_dword v[70:71], v63, off
	v_lshl_add_u64 v[62:63], v[66:67], 0, v[140:141]
	v_lshl_add_u64 v[72:73], v[66:67], 0, v[142:143]
	global_store_dword v[62:63], v64, off
	global_store_dword v[72:73], v65, off
	v_lshl_add_u64 v[64:65], v[66:67], 0, v[0:1]
	global_store_dword v[64:65], v58, off offset:64
	v_lshl_add_u64 v[64:65], v[66:67], 0, v[122:123]
	global_store_dword v[64:65], v59, off offset:64
	v_lshl_add_u64 v[58:59], v[66:67], 0, v[124:125]
	global_store_dword v[58:59], v60, off offset:64
	v_lshl_add_u64 v[58:59], v[66:67], 0, v[126:127]
	global_store_dword v[58:59], v61, off offset:64
	v_lshl_add_u64 v[58:59], v[66:67], 0, v[128:129]
	v_lshl_add_u64 v[60:61], v[66:67], 0, v[132:133]
	global_store_dword v[58:59], v54, off
	global_store_dword v[60:61], v55, off
	v_lshl_add_u64 v[54:55], v[66:67], 0, v[118:119]
	v_lshl_add_u64 v[64:65], v[66:67], 0, v[154:155]
	global_store_dword v[54:55], v56, off
	global_store_dword v[64:65], v57, off
	v_lshl_add_u64 v[56:57], v[66:67], 0, v[120:121]
	global_store_dword v[56:57], v50, off offset:64
	v_lshl_add_u64 v[56:57], v[66:67], 0, v[144:145]
	global_store_dword v[56:57], v51, off offset:64
	v_lshl_add_u64 v[50:51], v[66:67], 0, v[114:115]
	global_store_dword v[50:51], v52, off offset:64
	v_lshl_add_u64 v[50:51], v[66:67], 0, v[146:147]
	global_store_dword v[50:51], v53, off offset:64
	v_lshl_add_u64 v[50:51], v[66:67], 0, s[0:1]
	global_store_dword v[68:69], v46, off offset:512
	global_store_dword v[70:71], v47, off offset:512
	global_store_dword v[62:63], v48, off offset:512
	global_store_dword v[72:73], v49, off offset:512
	v_lshl_add_u64 v[46:47], v[50:51], 0, v[0:1]
	global_store_dword v[46:47], v42, off offset:64
	v_lshl_add_u64 v[46:47], v[50:51], 0, v[122:123]
	global_store_dword v[46:47], v43, off offset:64
	v_lshl_add_u64 v[42:43], v[50:51], 0, v[124:125]
	global_store_dword v[42:43], v44, off offset:64
	v_lshl_add_u64 v[42:43], v[50:51], 0, v[126:127]
	global_store_dword v[42:43], v45, off offset:64
	global_store_dword v[58:59], v38, off offset:512
	global_store_dword v[60:61], v39, off offset:512
	global_store_dword v[54:55], v40, off offset:512
	global_store_dword v[64:65], v41, off offset:512
	v_lshl_add_u64 v[38:39], v[50:51], 0, v[120:121]
	global_store_dword v[38:39], v34, off offset:64
	v_lshl_add_u64 v[38:39], v[50:51], 0, v[144:145]
	global_store_dword v[38:39], v35, off offset:64
	v_lshl_add_u64 v[34:35], v[50:51], 0, v[114:115]
	global_store_dword v[34:35], v36, off offset:64
	v_lshl_add_u64 v[34:35], v[50:51], 0, v[146:147]
	global_store_dword v[34:35], v37, off offset:64
	v_or_b32_e32 v34, 0xc0, v174
	v_mul_lo_u32 v36, s15, v34
	v_mad_u64_u32 v[34:35], s[4:5], s14, v34, 0
	v_add3_u32 v35, v35, s2, v36
	v_lshl_add_u64 v[34:35], v[34:35], 2, s[12:13]
	v_lshl_add_u64 v[34:35], v[34:35], 0, v[160:161]
	v_lshl_add_u64 v[36:37], v[34:35], 0, v[136:137]
	v_lshl_add_u64 v[38:39], v[34:35], 0, v[138:139]
	global_store_dword v[36:37], v30, off
	global_store_dword v[38:39], v31, off
	v_lshl_add_u64 v[30:31], v[34:35], 0, v[140:141]
	v_lshl_add_u64 v[40:41], v[34:35], 0, v[142:143]
	global_store_dword v[30:31], v32, off
	global_store_dword v[40:41], v33, off
	v_lshl_add_u64 v[32:33], v[34:35], 0, v[0:1]
	global_store_dword v[32:33], v26, off offset:64
	v_lshl_add_u64 v[32:33], v[34:35], 0, v[122:123]
	global_store_dword v[32:33], v27, off offset:64
	v_lshl_add_u64 v[26:27], v[34:35], 0, v[124:125]
	global_store_dword v[26:27], v28, off offset:64
	v_lshl_add_u64 v[26:27], v[34:35], 0, v[126:127]
	global_store_dword v[26:27], v29, off offset:64
	v_lshl_add_u64 v[26:27], v[34:35], 0, v[128:129]
	v_lshl_add_u64 v[28:29], v[34:35], 0, v[132:133]
	global_store_dword v[26:27], v22, off
	global_store_dword v[28:29], v23, off
	v_lshl_add_u64 v[22:23], v[34:35], 0, v[118:119]
	v_lshl_add_u64 v[32:33], v[34:35], 0, v[154:155]
	global_store_dword v[22:23], v24, off
	global_store_dword v[32:33], v25, off
	v_lshl_add_u64 v[24:25], v[34:35], 0, v[120:121]
	global_store_dword v[24:25], v18, off offset:64
	v_lshl_add_u64 v[24:25], v[34:35], 0, v[144:145]
	global_store_dword v[24:25], v19, off offset:64
	v_lshl_add_u64 v[18:19], v[34:35], 0, v[114:115]
	global_store_dword v[18:19], v20, off offset:64
	v_lshl_add_u64 v[18:19], v[34:35], 0, v[146:147]
	global_store_dword v[18:19], v21, off offset:64
	v_lshl_add_u64 v[18:19], v[34:35], 0, s[0:1]
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[0:1]
	global_store_dword v[36:37], v14, off offset:512
	global_store_dword v[38:39], v15, off offset:512
	global_store_dword v[30:31], v16, off offset:512
	global_store_dword v[40:41], v17, off offset:512
	global_store_dword v[0:1], v10, off offset:64
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[122:123]
	global_store_dword v[0:1], v11, off offset:64
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[124:125]
	global_store_dword v[0:1], v12, off offset:64
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[126:127]
	global_store_dword v[0:1], v13, off offset:64
	global_store_dword v[26:27], v6, off offset:512
	global_store_dword v[28:29], v7, off offset:512
	global_store_dword v[22:23], v8, off offset:512
	global_store_dword v[32:33], v9, off offset:512
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[120:121]
	global_store_dword v[0:1], v2, off offset:64
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[144:145]
	global_store_dword v[0:1], v3, off offset:64
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[114:115]
	global_store_dword v[0:1], v4, off offset:64
	v_lshl_add_u64 v[0:1], v[18:19], 0, v[146:147]
	global_store_dword v[0:1], v5, off offset:64
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z8micro_tk13micro_globals
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
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
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 224
		.amdhsa_next_free_sgpr 28
		.amdhsa_accum_offset 224
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
; codeLenInByte = 5972
; NumSgprs: 34
; NumVgprs: 224
; NumAgprs: 0
; TotalNumVgprs: 224
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 4
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 224
; AccumOffset: 224
; Occupancy: 2
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 55
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.p2alignl 6, 3212836864
	.fill 256, 4, 3212836864
	.type	__hip_cuid_9be0291b55b98188,@object ; @__hip_cuid_9be0291b55b98188
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_9be0291b55b98188
__hip_cuid_9be0291b55b98188:
	.byte	0                               ; 0x0
	.size	__hip_cuid_9be0291b55b98188, 1

	.ident	"AMD clang version 19.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.4.1 25184 c87081df219c42dc27c5b6d86c0525bc7d01f727)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __shm
	.addrsig_sym __hip_cuid_9be0291b55b98188
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
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         _Z8micro_tk13micro_globals.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     224
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
