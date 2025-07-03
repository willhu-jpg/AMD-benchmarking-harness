; ModuleID = '256_256_64_16-hip-amdgcn-amd-amdhsa-gfx942.tmp.bc'
source_filename = "256_256_64_16.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%"struct.kittens::alignment_dummy" = type { i32, [12 x i8] }
%struct.micro_globals = type { %"struct.kittens::gl", %"struct.kittens::gl", %"struct.kittens::gl.0" }
%"struct.kittens::gl" = type <{ ptr, %"struct.kittens::ducks::gl::runtime_dim", %"struct.kittens::ducks::gl::runtime_dim", %"struct.kittens::ducks::gl::runtime_dim", %"struct.kittens::ducks::gl::runtime_dim", %"struct.kittens::detail::descriptor_dict", [7 x i8] }>
%"struct.kittens::ducks::gl::runtime_dim" = type { i64 }
%"struct.kittens::detail::descriptor_dict" = type { i8 }
%"struct.kittens::gl.0" = type <{ ptr, %"struct.kittens::ducks::gl::runtime_dim", %"struct.kittens::ducks::gl::runtime_dim", %"struct.kittens::ducks::gl::runtime_dim", %"struct.kittens::ducks::gl::runtime_dim", %"struct.kittens::detail::descriptor_dict", [7 x i8] }>
%struct.__hip_bfloat16 = type { i16 }

@__shm = external hidden addrspace(3) global [0 x %"struct.kittens::alignment_dummy"], align 16
@__hip_cuid_ef41947e8d93eef1 = addrspace(1) global i8 0
@llvm.compiler.used = appending addrspace(1) global [1 x ptr] [ptr addrspacecast (ptr addrspace(1) @__hip_cuid_ef41947e8d93eef1 to ptr)], section "llvm.metadata"

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z8micro_tk13micro_globals(ptr addrspace(4) nocapture noundef readonly byref(%struct.micro_globals) align 8 %0) local_unnamed_addr #0 !dbg !9 {
  %.sroa.01601.0.copyload = load ptr, ptr addrspace(4) %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 32
  %.sroa.7.0.copyload = load i64, ptr addrspace(4) %.sroa.7.0..sroa_idx, align 8
  %.sroa.91606.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 48
  %.sroa.91606.0.copyload = load ptr, ptr addrspace(4) %.sroa.91606.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 80
  %.sroa.15.0.copyload = load i64, ptr addrspace(4) %.sroa.15.0..sroa_idx, align 8
  %.sroa.171610.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 96
  %.sroa.171610.0.copyload = load ptr, ptr addrspace(4) %.sroa.171610.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 128
  %.sroa.23.0.copyload = load i64, ptr addrspace(4) %.sroa.23.0..sroa_idx, align 8
  %2 = and i64 ptrtoint (ptr addrspacecast (ptr addrspace(3) @__shm to ptr) to i64), 15, !dbg !12
  %.not.i.i = icmp eq i64 %2, 0, !dbg !18
  %reass.sub.i.i = and i64 ptrtoint (ptr addrspacecast (ptr addrspace(3) @__shm to ptr) to i64), -16, !dbg !19
  %3 = add i64 %reass.sub.i.i, 16, !dbg !19
  %4 = inttoptr i64 %3 to ptr, !dbg !19
  %5 = select i1 %.not.i.i, ptr addrspacecast (ptr addrspace(3) @__shm to ptr), ptr %4, !dbg !19
  %6 = getelementptr inbounds i8, ptr %5, i64 32768, !dbg !20
  %7 = ptrtoint ptr %6 to i64, !dbg !21
  %8 = and i64 %7, 15, !dbg !24
  %reass.sub.i.i125 = and i64 %7, -16, !dbg !25
  %9 = add i64 %reass.sub.i.i125, 16, !dbg !25
  %10 = inttoptr i64 %9 to ptr, !dbg !25
  %.not.i.i124 = icmp eq i64 %8, 0, !dbg !26
  %11 = select i1 %.not.i.i124, ptr %6, ptr %10, !dbg !25
  %12 = tail call noundef i32 @llvm.amdgcn.workgroup.id.y(), !dbg !27
  %13 = tail call noundef i32 @llvm.amdgcn.workgroup.id.x(), !dbg !33
  %14 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x(), !dbg !38
  %15 = lshr i32 %14, 8, !dbg !45
  %16 = and i32 %14, 192, !dbg !46
  %17 = trunc i64 %.sroa.7.0.copyload to i32, !dbg !47
  %18 = shl nsw i32 %12, 8, !dbg !54
  %19 = sext i32 %18 to i64, !dbg !58
  %20 = mul i64 %.sroa.7.0.copyload, %19, !dbg !62
  %21 = getelementptr %struct.__hip_bfloat16, ptr %.sroa.01601.0.copyload, i64 %20, !dbg !63
  %22 = ptrtoint ptr %5 to i64, !dbg !64
  %23 = shl nuw nsw i32 %14, 3
  %24 = and i32 %23, 56
  %25 = lshr i32 %14, 3, !dbg !65
  %26 = and i32 %25, 63, !dbg !65
  %27 = mul i32 %26, %17, !dbg !66
  %28 = add i32 %27, %24, !dbg !67
  %29 = sext i32 %28 to i64, !dbg !68
  %30 = getelementptr inbounds %struct.__hip_bfloat16, ptr %21, i64 %29, !dbg !68
  %31 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %30) #6, !dbg !69, !srcloc !73
  %32 = or i32 %25, 64, !dbg !65
  %33 = mul i32 %32, %17, !dbg !66
  %34 = add i32 %33, %24, !dbg !67
  %35 = sext i32 %34 to i64, !dbg !68
  %36 = getelementptr inbounds %struct.__hip_bfloat16, ptr %21, i64 %35, !dbg !68
  %37 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %36) #6, !dbg !69, !srcloc !73
  %38 = or disjoint i32 %26, 128, !dbg !65
  %39 = mul i32 %38, %17, !dbg !66
  %40 = add i32 %39, %24, !dbg !67
  %41 = sext i32 %40 to i64, !dbg !68
  %42 = getelementptr inbounds %struct.__hip_bfloat16, ptr %21, i64 %41, !dbg !68
  %43 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %42) #6, !dbg !69, !srcloc !73
  %44 = or i32 %25, 192, !dbg !65
  %45 = mul i32 %44, %17, !dbg !66
  %46 = add i32 %45, %24, !dbg !67
  %47 = sext i32 %46 to i64, !dbg !68
  %48 = getelementptr inbounds %struct.__hip_bfloat16, ptr %21, i64 %47, !dbg !68
  %49 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %48) #6, !dbg !69, !srcloc !73
  %50 = trunc i64 %22 to i32, !dbg !64
  tail call void asm sideeffect "s_waitcnt vmcnt(0)", ""() #6, !dbg !74, !srcloc !75
  %51 = shl nuw nsw i32 %14, 4
  %.masked.i.i = and i32 %51, 8064
  %52 = shl nuw nsw i32 %24, 1
  %53 = add i32 %52, %50
  %54 = or disjoint i32 %52, 8
  %55 = add i32 %54, %50
  %56 = add i32 %53, %.masked.i.i, !dbg !76
  %57 = lshr exact i32 %56, 4, !dbg !80
  %58 = and i32 %57, 120, !dbg !80
  %59 = xor i32 %58, %56, !dbg !81
  %.sroa.0.0.extract.trunc.i.i = trunc i128 %31 to i64, !dbg !82
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %59, i64 %.sroa.0.0.extract.trunc.i.i) #6, !dbg !83, !srcloc !86
  %60 = add i32 %55, %.masked.i.i, !dbg !87
  %61 = lshr i32 %60, 4, !dbg !89
  %62 = and i32 %61, 120, !dbg !89
  %63 = xor i32 %62, %60, !dbg !90
  %.sroa.0.8.extract.shift.i.i = lshr i128 %31, 64, !dbg !91
  %.sroa.0.8.extract.trunc.i.i = trunc nuw i128 %.sroa.0.8.extract.shift.i.i to i64, !dbg !91
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %63, i64 %.sroa.0.8.extract.trunc.i.i) #6, !dbg !92, !srcloc !86
  %64 = or disjoint i32 %.masked.i.i, 8192, !dbg !94
  %65 = add i32 %53, %64, !dbg !76
  %66 = lshr exact i32 %65, 4, !dbg !80
  %67 = and i32 %66, 120, !dbg !80
  %68 = xor i32 %67, %65, !dbg !81
  %.sroa.5.16.extract.trunc.i.i = trunc i128 %37 to i64, !dbg !82
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %68, i64 %.sroa.5.16.extract.trunc.i.i) #6, !dbg !83, !srcloc !86
  %69 = add i32 %55, %64, !dbg !87
  %70 = lshr i32 %69, 4, !dbg !89
  %71 = and i32 %70, 120, !dbg !89
  %72 = xor i32 %71, %69, !dbg !90
  %.sroa.5.24.extract.shift.i.i = lshr i128 %37, 64, !dbg !91
  %.sroa.5.24.extract.trunc.i.i = trunc nuw i128 %.sroa.5.24.extract.shift.i.i to i64, !dbg !91
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %72, i64 %.sroa.5.24.extract.trunc.i.i) #6, !dbg !92, !srcloc !86
  %73 = or disjoint i32 %.masked.i.i, 16384, !dbg !94
  %74 = add i32 %53, %73, !dbg !76
  %75 = lshr exact i32 %74, 4, !dbg !80
  %76 = and i32 %75, 120, !dbg !80
  %77 = xor i32 %76, %74, !dbg !81
  %.sroa.8.32.extract.trunc.i.i = trunc i128 %43 to i64, !dbg !82
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %77, i64 %.sroa.8.32.extract.trunc.i.i) #6, !dbg !83, !srcloc !86
  %78 = add i32 %55, %73, !dbg !87
  %79 = lshr i32 %78, 4, !dbg !89
  %80 = and i32 %79, 120, !dbg !89
  %81 = xor i32 %80, %78, !dbg !90
  %.sroa.8.40.extract.shift.i.i = lshr i128 %43, 64, !dbg !91
  %.sroa.8.40.extract.trunc.i.i = trunc nuw i128 %.sroa.8.40.extract.shift.i.i to i64, !dbg !91
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %81, i64 %.sroa.8.40.extract.trunc.i.i) #6, !dbg !92, !srcloc !86
  %82 = or disjoint i32 %.masked.i.i, 24576, !dbg !94
  %83 = add i32 %53, %82, !dbg !76
  %84 = lshr exact i32 %83, 4, !dbg !80
  %85 = and i32 %84, 120, !dbg !80
  %86 = xor i32 %85, %83, !dbg !81
  %.sroa.11.48.extract.trunc.i.i = trunc i128 %49 to i64, !dbg !82
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %86, i64 %.sroa.11.48.extract.trunc.i.i) #6, !dbg !83, !srcloc !86
  %87 = add i32 %55, %82, !dbg !87
  %88 = lshr i32 %87, 4, !dbg !89
  %89 = and i32 %88, 120, !dbg !89
  %90 = xor i32 %89, %87, !dbg !90
  %.sroa.11.56.extract.shift.i.i = lshr i128 %49, 64, !dbg !91
  %.sroa.11.56.extract.trunc.i.i = trunc nuw i128 %.sroa.11.56.extract.shift.i.i to i64, !dbg !91
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %90, i64 %.sroa.11.56.extract.trunc.i.i) #6, !dbg !92, !srcloc !86
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !95, !srcloc !96
  %91 = trunc i64 %.sroa.15.0.copyload to i32, !dbg !97
  %92 = shl i32 %13, 8, !dbg !100
  %93 = sext i32 %92 to i64, !dbg !102
  %94 = mul i64 %.sroa.15.0.copyload, %93, !dbg !104
  %95 = getelementptr %struct.__hip_bfloat16, ptr %.sroa.91606.0.copyload, i64 %94, !dbg !105
  %96 = ptrtoint ptr %11 to i64, !dbg !106
  %97 = mul i32 %26, %91, !dbg !107
  %98 = add i32 %97, %24, !dbg !108
  %99 = sext i32 %98 to i64, !dbg !109
  %100 = getelementptr inbounds %struct.__hip_bfloat16, ptr %95, i64 %99, !dbg !109
  %101 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %100) #6, !dbg !110, !srcloc !73
  %102 = mul i32 %32, %91, !dbg !107
  %103 = add i32 %102, %24, !dbg !108
  %104 = sext i32 %103 to i64, !dbg !109
  %105 = getelementptr inbounds %struct.__hip_bfloat16, ptr %95, i64 %104, !dbg !109
  %106 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %105) #6, !dbg !110, !srcloc !73
  %107 = mul i32 %38, %91, !dbg !107
  %108 = add i32 %107, %24, !dbg !108
  %109 = sext i32 %108 to i64, !dbg !109
  %110 = getelementptr inbounds %struct.__hip_bfloat16, ptr %95, i64 %109, !dbg !109
  %111 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %110) #6, !dbg !110, !srcloc !73
  %112 = mul i32 %44, %91, !dbg !107
  %113 = add i32 %112, %24, !dbg !108
  %114 = sext i32 %113 to i64, !dbg !109
  %115 = getelementptr inbounds %struct.__hip_bfloat16, ptr %95, i64 %114, !dbg !109
  %116 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %115) #6, !dbg !110, !srcloc !73
  %117 = trunc i64 %96 to i32, !dbg !106
  tail call void asm sideeffect "s_waitcnt vmcnt(0)", ""() #6, !dbg !112, !srcloc !75
  %118 = add i32 %52, %117
  %119 = add i32 %54, %117
  %120 = add i32 %118, %.masked.i.i, !dbg !113
  %121 = lshr exact i32 %120, 4, !dbg !115
  %122 = and i32 %121, 120, !dbg !115
  %123 = xor i32 %122, %120, !dbg !116
  %.sroa.0.0.extract.trunc.i.i130 = trunc i128 %101 to i64, !dbg !117
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %123, i64 %.sroa.0.0.extract.trunc.i.i130) #6, !dbg !118, !srcloc !86
  %124 = add i32 %119, %.masked.i.i, !dbg !120
  %125 = lshr i32 %124, 4, !dbg !122
  %126 = and i32 %125, 120, !dbg !122
  %127 = xor i32 %126, %124, !dbg !123
  %.sroa.0.8.extract.shift.i.i131 = lshr i128 %101, 64, !dbg !124
  %.sroa.0.8.extract.trunc.i.i132 = trunc nuw i128 %.sroa.0.8.extract.shift.i.i131 to i64, !dbg !124
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %127, i64 %.sroa.0.8.extract.trunc.i.i132) #6, !dbg !125, !srcloc !86
  %128 = add i32 %118, %64, !dbg !113
  %129 = lshr exact i32 %128, 4, !dbg !115
  %130 = and i32 %129, 120, !dbg !115
  %131 = xor i32 %130, %128, !dbg !116
  %.sroa.5.16.extract.trunc.i.i133 = trunc i128 %106 to i64, !dbg !117
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %131, i64 %.sroa.5.16.extract.trunc.i.i133) #6, !dbg !118, !srcloc !86
  %132 = add i32 %119, %64, !dbg !120
  %133 = lshr i32 %132, 4, !dbg !122
  %134 = and i32 %133, 120, !dbg !122
  %135 = xor i32 %134, %132, !dbg !123
  %.sroa.5.24.extract.shift.i.i134 = lshr i128 %106, 64, !dbg !124
  %.sroa.5.24.extract.trunc.i.i135 = trunc nuw i128 %.sroa.5.24.extract.shift.i.i134 to i64, !dbg !124
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %135, i64 %.sroa.5.24.extract.trunc.i.i135) #6, !dbg !125, !srcloc !86
  %136 = add i32 %118, %73, !dbg !113
  %137 = lshr exact i32 %136, 4, !dbg !115
  %138 = and i32 %137, 120, !dbg !115
  %139 = xor i32 %138, %136, !dbg !116
  %.sroa.8.32.extract.trunc.i.i136 = trunc i128 %111 to i64, !dbg !117
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %139, i64 %.sroa.8.32.extract.trunc.i.i136) #6, !dbg !118, !srcloc !86
  %140 = add i32 %119, %73, !dbg !120
  %141 = lshr i32 %140, 4, !dbg !122
  %142 = and i32 %141, 120, !dbg !122
  %143 = xor i32 %142, %140, !dbg !123
  %.sroa.8.40.extract.shift.i.i137 = lshr i128 %111, 64, !dbg !124
  %.sroa.8.40.extract.trunc.i.i138 = trunc nuw i128 %.sroa.8.40.extract.shift.i.i137 to i64, !dbg !124
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %143, i64 %.sroa.8.40.extract.trunc.i.i138) #6, !dbg !125, !srcloc !86
  %144 = add i32 %118, %82, !dbg !113
  %145 = lshr exact i32 %144, 4, !dbg !115
  %146 = and i32 %145, 120, !dbg !115
  %147 = xor i32 %146, %144, !dbg !116
  %.sroa.11.48.extract.trunc.i.i139 = trunc i128 %116 to i64, !dbg !117
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %147, i64 %.sroa.11.48.extract.trunc.i.i139) #6, !dbg !118, !srcloc !86
  %148 = add i32 %119, %82, !dbg !120
  %149 = lshr i32 %148, 4, !dbg !122
  %150 = and i32 %149, 120, !dbg !122
  %151 = xor i32 %150, %148, !dbg !123
  %.sroa.11.56.extract.shift.i.i140 = lshr i128 %116, 64, !dbg !124
  %.sroa.11.56.extract.trunc.i.i141 = trunc nuw i128 %.sroa.11.56.extract.shift.i.i140 to i64, !dbg !124
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %151, i64 %.sroa.11.56.extract.trunc.i.i141) #6, !dbg !125, !srcloc !86
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !127, !srcloc !96
  tail call void @llvm.amdgcn.s.barrier(), !dbg !128
  %152 = icmp eq i32 %15, 1, !dbg !129
  br i1 %152, label %153, label %154, !dbg !130

153:                                              ; preds = %1
  tail call void @llvm.amdgcn.s.barrier(), !dbg !131
  br label %154, !dbg !132

154:                                              ; preds = %153, %1
  %155 = and i32 %14, 15
  %156 = lshr i32 %14, 2
  %157 = and i32 %156, 12
  %158 = shl nuw nsw i32 %14, 7
  %159 = and i32 %158, 26496
  %160 = shl nuw nsw i32 %157, 1
  %161 = add i32 %159, %117
  %162 = add i32 %161, %160
  %163 = lshr i32 %162, 4
  %164 = and i32 %163, 120
  %165 = xor i32 %164, %162
  %166 = shl i32 %17, 9
  %167 = shl i32 %28, 1
  %168 = shl i32 %34, 1
  %169 = shl i32 %40, 1
  %170 = shl i32 %46, 1
  %171 = or disjoint i32 %155, 16
  %172 = or disjoint i32 %16, %171
  %173 = shl nuw nsw i32 %172, 7
  %174 = add i32 %173, %117
  %175 = add i32 %174, %160
  %176 = lshr i32 %175, 4
  %177 = and i32 %176, 120
  %178 = xor i32 %177, %175
  %179 = or disjoint i32 %155, 32
  %180 = or disjoint i32 %16, %179
  %181 = shl nuw nsw i32 %180, 7
  %182 = add i32 %181, %117
  %183 = add i32 %182, %160
  %184 = lshr i32 %183, 4
  %185 = and i32 %184, 120
  %186 = xor i32 %185, %183
  %187 = or disjoint i32 %155, 48
  %188 = or disjoint i32 %16, %187
  %189 = shl nuw nsw i32 %188, 7
  %190 = add i32 %189, %117
  %191 = add i32 %190, %160
  %192 = lshr i32 %191, 4
  %193 = and i32 %192, 120
  %194 = xor i32 %193, %191
  %195 = shl nuw nsw i32 %15, 6
  %196 = or disjoint i32 %195, %155
  %197 = shl nuw nsw i32 %196, 7
  %198 = add i32 %197, %50
  %199 = add i32 %198, %160
  %200 = lshr i32 %199, 4
  %201 = and i32 %200, 120
  %202 = xor i32 %201, %199
  %203 = or disjoint i32 %171, %195
  %204 = shl nuw nsw i32 %203, 7
  %205 = add i32 %204, %50
  %206 = add i32 %205, %160
  %207 = lshr i32 %206, 4
  %208 = and i32 %207, 120
  %209 = xor i32 %208, %206
  %210 = or disjoint i32 %179, %195
  %211 = shl nuw nsw i32 %210, 7
  %212 = add i32 %211, %50
  %213 = add i32 %212, %160
  %214 = lshr i32 %213, 4
  %215 = and i32 %214, 120
  %216 = xor i32 %215, %213
  %217 = or disjoint i32 %187, %195
  %218 = shl nuw nsw i32 %217, 7
  %219 = add i32 %218, %50
  %220 = add i32 %219, %160
  %221 = lshr i32 %220, 4
  %222 = and i32 %221, 120
  %223 = xor i32 %222, %220
  %224 = add nuw nsw i32 %195, 128
  %225 = or disjoint i32 %224, %155
  %226 = shl nuw nsw i32 %225, 7
  %227 = add i32 %226, %50
  %228 = add i32 %227, %160
  %229 = lshr i32 %228, 4
  %230 = and i32 %229, 120
  %231 = xor i32 %230, %228
  %232 = or disjoint i32 %224, %171
  %233 = shl nuw nsw i32 %232, 7
  %234 = add i32 %233, %50
  %235 = add i32 %234, %160
  %236 = lshr i32 %235, 4
  %237 = and i32 %236, 120
  %238 = xor i32 %237, %235
  %239 = or disjoint i32 %224, %179
  %240 = shl nuw nsw i32 %239, 7
  %241 = add i32 %240, %50
  %242 = add i32 %241, %160
  %243 = lshr i32 %242, 4
  %244 = and i32 %243, 120
  %245 = xor i32 %244, %242
  %246 = or disjoint i32 %224, %187
  %247 = shl nuw nsw i32 %246, 7
  %248 = add i32 %247, %50
  %249 = add i32 %248, %160
  %250 = lshr i32 %249, 4
  %251 = and i32 %250, 120
  %252 = xor i32 %251, %249
  %253 = shl i32 %91, 9
  %254 = shl i32 %98, 1
  %255 = shl i32 %103, 1
  %256 = shl i32 %108, 1
  %257 = shl i32 %113, 1
  %258 = or disjoint i32 %160, 32
  %259 = add i32 %161, %258
  %260 = lshr i32 %259, 4
  %261 = and i32 %260, 120
  %262 = xor i32 %261, %259
  %263 = add i32 %174, %258
  %264 = lshr i32 %263, 4
  %265 = and i32 %264, 120
  %266 = xor i32 %265, %263
  %267 = add i32 %182, %258
  %268 = lshr i32 %267, 4
  %269 = and i32 %268, 120
  %270 = xor i32 %269, %267
  %271 = add i32 %190, %258
  %272 = lshr i32 %271, 4
  %273 = and i32 %272, 120
  %274 = xor i32 %273, %271
  %275 = add i32 %198, %258
  %276 = lshr i32 %275, 4
  %277 = and i32 %276, 120
  %278 = xor i32 %277, %275
  %279 = add i32 %205, %258
  %280 = lshr i32 %279, 4
  %281 = and i32 %280, 120
  %282 = xor i32 %281, %279
  %283 = add i32 %212, %258
  %284 = lshr i32 %283, 4
  %285 = and i32 %284, 120
  %286 = xor i32 %285, %283
  %287 = add i32 %219, %258
  %288 = lshr i32 %287, 4
  %289 = and i32 %288, 120
  %290 = xor i32 %289, %287
  %291 = add i32 %227, %258
  %292 = lshr i32 %291, 4
  %293 = and i32 %292, 120
  %294 = xor i32 %293, %291
  %295 = add i32 %234, %258
  %296 = lshr i32 %295, 4
  %297 = and i32 %296, 120
  %298 = xor i32 %297, %295
  %299 = add i32 %241, %258
  %300 = lshr i32 %299, 4
  %301 = and i32 %300, 120
  %302 = xor i32 %301, %299
  %303 = add i32 %248, %258
  %304 = lshr i32 %303, 4
  %305 = and i32 %304, 120
  %306 = xor i32 %305, %303
  %307 = or disjoint i32 %160, 64
  %308 = add i32 %161, %307
  %309 = lshr i32 %308, 4
  %310 = and i32 %309, 120
  %311 = xor i32 %310, %308
  %312 = add i32 %174, %307
  %313 = lshr i32 %312, 4
  %314 = and i32 %313, 120
  %315 = xor i32 %314, %312
  %316 = add i32 %182, %307
  %317 = lshr i32 %316, 4
  %318 = and i32 %317, 120
  %319 = xor i32 %318, %316
  %320 = add i32 %190, %307
  %321 = lshr i32 %320, 4
  %322 = and i32 %321, 120
  %323 = xor i32 %322, %320
  %324 = add i32 %198, %307
  %325 = lshr i32 %324, 4
  %326 = and i32 %325, 120
  %327 = xor i32 %326, %324
  %328 = add i32 %205, %307
  %329 = lshr i32 %328, 4
  %330 = and i32 %329, 120
  %331 = xor i32 %330, %328
  %332 = add i32 %212, %307
  %333 = lshr i32 %332, 4
  %334 = and i32 %333, 120
  %335 = xor i32 %334, %332
  %336 = add i32 %219, %307
  %337 = lshr i32 %336, 4
  %338 = and i32 %337, 120
  %339 = xor i32 %338, %336
  %340 = add i32 %227, %307
  %341 = lshr i32 %340, 4
  %342 = and i32 %341, 120
  %343 = xor i32 %342, %340
  %344 = add i32 %234, %307
  %345 = lshr i32 %344, 4
  %346 = and i32 %345, 120
  %347 = xor i32 %346, %344
  %348 = add i32 %241, %307
  %349 = lshr i32 %348, 4
  %350 = and i32 %349, 120
  %351 = xor i32 %350, %348
  %352 = add i32 %248, %307
  %353 = lshr i32 %352, 4
  %354 = and i32 %353, 120
  %355 = xor i32 %354, %352
  %356 = or disjoint i32 %160, 96
  %357 = add i32 %161, %356
  %358 = lshr i32 %357, 4
  %359 = and i32 %358, 120
  %360 = xor i32 %359, %357
  %361 = add i32 %174, %356
  %362 = lshr i32 %361, 4
  %363 = and i32 %362, 120
  %364 = xor i32 %363, %361
  %365 = add i32 %182, %356
  %366 = lshr i32 %365, 4
  %367 = and i32 %366, 120
  %368 = xor i32 %367, %365
  %369 = add i32 %190, %356
  %370 = lshr i32 %369, 4
  %371 = and i32 %370, 120
  %372 = xor i32 %371, %369
  %373 = add i32 %198, %356
  %374 = lshr i32 %373, 4
  %375 = and i32 %374, 120
  %376 = xor i32 %375, %373
  %377 = add i32 %205, %356
  %378 = lshr i32 %377, 4
  %379 = and i32 %378, 120
  %380 = xor i32 %379, %377
  %381 = add i32 %212, %356
  %382 = lshr i32 %381, 4
  %383 = and i32 %382, 120
  %384 = xor i32 %383, %381
  %385 = add i32 %219, %356
  %386 = lshr i32 %385, 4
  %387 = and i32 %386, 120
  %388 = xor i32 %387, %385
  %389 = add i32 %227, %356
  %390 = lshr i32 %389, 4
  %391 = and i32 %390, 120
  %392 = xor i32 %391, %389
  %393 = add i32 %234, %356
  %394 = lshr i32 %393, 4
  %395 = and i32 %394, 120
  %396 = xor i32 %395, %393
  %397 = add i32 %241, %356
  %398 = lshr i32 %397, 4
  %399 = and i32 %398, 120
  %400 = xor i32 %399, %397
  %401 = add i32 %248, %356
  %402 = lshr i32 %401, 4
  %403 = and i32 %402, 120
  %404 = xor i32 %403, %401
  %405 = and i32 %51, 112
  %406 = add i32 %405, %50
  %407 = or disjoint i32 %405, 8
  %408 = add i32 %407, %50
  %409 = add i32 %406, %.masked.i.i
  %410 = lshr exact i32 %409, 4
  %411 = and i32 %410, 120
  %412 = xor i32 %411, %409
  %413 = add i32 %408, %.masked.i.i
  %414 = lshr i32 %413, 4
  %415 = and i32 %414, 120
  %416 = xor i32 %415, %413
  %417 = add i32 %406, %64
  %418 = lshr exact i32 %417, 4
  %419 = and i32 %418, 120
  %420 = xor i32 %419, %417
  %421 = add i32 %408, %64
  %422 = lshr i32 %421, 4
  %423 = and i32 %422, 120
  %424 = xor i32 %423, %421
  %425 = add i32 %406, %73
  %426 = lshr exact i32 %425, 4
  %427 = and i32 %426, 120
  %428 = xor i32 %427, %425
  %429 = add i32 %408, %73
  %430 = lshr i32 %429, 4
  %431 = and i32 %430, 120
  %432 = xor i32 %431, %429
  %433 = add i32 %406, %82
  %434 = lshr exact i32 %433, 4
  %435 = and i32 %434, 120
  %436 = xor i32 %435, %433
  %437 = add i32 %408, %82
  %438 = lshr i32 %437, 4
  %439 = and i32 %438, 120
  %440 = xor i32 %439, %437
  %441 = add i32 %405, %117
  %442 = add i32 %407, %117
  %443 = add i32 %441, %.masked.i.i
  %444 = lshr exact i32 %443, 4
  %445 = and i32 %444, 120
  %446 = xor i32 %445, %443
  %447 = add i32 %442, %.masked.i.i
  %448 = lshr i32 %447, 4
  %449 = and i32 %448, 120
  %450 = xor i32 %449, %447
  %451 = add i32 %441, %64
  %452 = lshr exact i32 %451, 4
  %453 = and i32 %452, 120
  %454 = xor i32 %453, %451
  %455 = add i32 %442, %64
  %456 = lshr i32 %455, 4
  %457 = and i32 %456, 120
  %458 = xor i32 %457, %455
  %459 = add i32 %441, %73
  %460 = lshr exact i32 %459, 4
  %461 = and i32 %460, 120
  %462 = xor i32 %461, %459
  %463 = add i32 %442, %73
  %464 = lshr i32 %463, 4
  %465 = and i32 %464, 120
  %466 = xor i32 %465, %463
  %467 = add i32 %441, %82
  %468 = lshr exact i32 %467, 4
  %469 = and i32 %468, 120
  %470 = xor i32 %469, %467
  %471 = add i32 %442, %82
  %472 = lshr i32 %471, 4
  %473 = and i32 %472, 120
  %474 = xor i32 %473, %471
  br label %477, !dbg !133

475:                                              ; preds = %888
  %476 = icmp ult i32 %14, 256, !dbg !134
  br i1 %476, label %921, label %922, !dbg !135

477:                                              ; preds = %154, %888
  %.sroa.498.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %920, %888 ], !dbg !136
  %.sroa.482.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %919, %888 ], !dbg !136
  %.sroa.466.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %918, %888 ], !dbg !136
  %.sroa.450.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %917, %888 ], !dbg !136
  %.sroa.434.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %916, %888 ], !dbg !136
  %.sroa.418.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %915, %888 ], !dbg !136
  %.sroa.402.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %914, %888 ], !dbg !136
  %.sroa.386.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %913, %888 ], !dbg !136
  %.sroa.370.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %912, %888 ], !dbg !136
  %.sroa.354.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %911, %888 ], !dbg !136
  %.sroa.338.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %910, %888 ], !dbg !136
  %.sroa.322.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %909, %888 ], !dbg !136
  %.sroa.306.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %908, %888 ], !dbg !136
  %.sroa.290.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %907, %888 ], !dbg !136
  %.sroa.274.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %906, %888 ], !dbg !136
  %.sroa.258.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %905, %888 ], !dbg !136
  %.sroa.242.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %904, %888 ], !dbg !136
  %.sroa.226.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %903, %888 ], !dbg !136
  %.sroa.210.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %902, %888 ], !dbg !136
  %.sroa.194.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %901, %888 ], !dbg !136
  %.sroa.178.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %900, %888 ], !dbg !136
  %.sroa.162.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %899, %888 ], !dbg !136
  %.sroa.146.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %898, %888 ], !dbg !136
  %.sroa.130.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %897, %888 ], !dbg !136
  %.sroa.114.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %896, %888 ], !dbg !136
  %.sroa.98.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %895, %888 ], !dbg !136
  %.sroa.82.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %894, %888 ], !dbg !136
  %.sroa.66.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %893, %888 ], !dbg !136
  %.sroa.50.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %892, %888 ], !dbg !136
  %.sroa.34.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %891, %888 ], !dbg !136
  %.sroa.18.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %890, %888 ], !dbg !136
  %.sroa.0.0 = phi <4 x float> [ zeroinitializer, %154 ], [ %889, %888 ], !dbg !136
  %.01221686 = phi i32 [ 0, %154 ], [ %478, %888 ]
  %.sroa.111134.0.off641685 = phi i64 [ 0, %154 ], [ %.sroa.111134.1.off64, %888 ]
  %.sroa.111134.0.off01684 = phi i64 [ undef, %154 ], [ %.sroa.111134.1.off0, %888 ]
  %.sroa.81133.0.off641683 = phi i64 [ 0, %154 ], [ %.sroa.81133.1.off64, %888 ]
  %.sroa.81133.0.off01682 = phi i64 [ undef, %154 ], [ %.sroa.81133.1.off0, %888 ]
  %.sroa.51132.0.off641681 = phi i64 [ 0, %154 ], [ %.sroa.51132.1.off64, %888 ]
  %.sroa.51132.0.off01680 = phi i64 [ undef, %154 ], [ %.sroa.51132.1.off0, %888 ]
  %.sroa.01131.0.off641679 = phi i64 [ 0, %154 ], [ %.sroa.01131.1.off64, %888 ]
  %.sroa.01131.0.off01678 = phi i64 [ undef, %154 ], [ %.sroa.01131.1.off0, %888 ]
  %.sroa.11.0.off641677 = phi i64 [ 0, %154 ], [ %.sroa.11.1.off64, %888 ]
  %.sroa.11.0.off01676 = phi i64 [ undef, %154 ], [ %.sroa.11.1.off0, %888 ]
  %.sroa.81130.0.off641675 = phi i64 [ 0, %154 ], [ %.sroa.81130.1.off64, %888 ]
  %.sroa.81130.0.off01674 = phi i64 [ undef, %154 ], [ %.sroa.81130.1.off0, %888 ]
  %.sroa.5.0.off641673 = phi i64 [ 0, %154 ], [ %.sroa.5.1.off64, %888 ]
  %.sroa.5.0.off01672 = phi i64 [ undef, %154 ], [ %.sroa.5.1.off0, %888 ]
  %.sroa.01129.0.off641671 = phi i64 [ 0, %154 ], [ %.sroa.01129.1.off64, %888 ]
  %.sroa.01129.0.off01670 = phi i64 [ undef, %154 ], [ %.sroa.01129.1.off0, %888 ]
  %478 = add nuw nsw i32 %.01221686, 1, !dbg !137
  %.not = icmp eq i32 %.01221686, 127, !dbg !138
  br i1 %.not, label %490, label %479, !dbg !139

479:                                              ; preds = %477
  %480 = shl nuw nsw i32 %478, 6, !dbg !140
  %481 = zext nneg i32 %480 to i64, !dbg !145
  %482 = getelementptr %struct.__hip_bfloat16, ptr %21, i64 %481, !dbg !147
  %483 = ptrtoint ptr %482 to i64, !dbg !148
  %484 = bitcast i64 %483 to <2 x i32>, !dbg !148
  %.sroa.0.0.vec.expand.i.i = shufflevector <2 x i32> %484, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>, !dbg !148
  %485 = insertelement <4 x i32> %.sroa.0.0.vec.expand.i.i, i32 1114112, i64 3, !dbg !148
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x i32> %485, i32 %166, i64 2, !dbg !148
  %486 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i, i32 noundef %167, i32 noundef 0, i32 noundef 0) #6, !dbg !151
  %487 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i, i32 noundef %168, i32 noundef 0, i32 noundef 0) #6, !dbg !151
  %488 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i, i32 noundef %169, i32 noundef 0, i32 noundef 0) #6, !dbg !151
  %489 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i, i32 noundef %170, i32 noundef 0, i32 noundef 0) #6, !dbg !151
  %extract.t1641 = trunc i128 %486 to i64, !dbg !154
  %extract1643 = lshr i128 %486, 64, !dbg !154
  %extract.t1644 = trunc nuw i128 %extract1643 to i64, !dbg !154
  %extract.t1648 = trunc i128 %487 to i64, !dbg !154
  %extract1650 = lshr i128 %487, 64, !dbg !154
  %extract.t1651 = trunc nuw i128 %extract1650 to i64, !dbg !154
  %extract.t1655 = trunc i128 %488 to i64, !dbg !154
  %extract1657 = lshr i128 %488, 64, !dbg !154
  %extract.t1658 = trunc nuw i128 %extract1657 to i64, !dbg !154
  %extract.t1662 = trunc i128 %489 to i64, !dbg !154
  %extract1664 = lshr i128 %489, 64, !dbg !154
  %extract.t1665 = trunc nuw i128 %extract1664 to i64, !dbg !154
  br label %490, !dbg !154

490:                                              ; preds = %479, %477
  %.sroa.01131.1.off0 = phi i64 [ %.sroa.01131.0.off01678, %477 ], [ %extract.t1641, %479 ]
  %.sroa.01131.1.off64 = phi i64 [ %.sroa.01131.0.off641679, %477 ], [ %extract.t1644, %479 ]
  %.sroa.51132.1.off0 = phi i64 [ %.sroa.51132.0.off01680, %477 ], [ %extract.t1648, %479 ]
  %.sroa.51132.1.off64 = phi i64 [ %.sroa.51132.0.off641681, %477 ], [ %extract.t1651, %479 ]
  %.sroa.81133.1.off0 = phi i64 [ %.sroa.81133.0.off01682, %477 ], [ %extract.t1655, %479 ]
  %.sroa.81133.1.off64 = phi i64 [ %.sroa.81133.0.off641683, %477 ], [ %extract.t1658, %479 ]
  %.sroa.111134.1.off0 = phi i64 [ %.sroa.111134.0.off01684, %477 ], [ %extract.t1662, %479 ]
  %.sroa.111134.1.off64 = phi i64 [ %.sroa.111134.0.off641685, %477 ], [ %extract.t1665, %479 ]
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !155
  %491 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %165) #6, !dbg !156, !srcloc !161
  %.sroa.036.2.extract.shift37.i = lshr i64 %491, 16, !dbg !162
  %492 = insertelement <2 x i64> poison, i64 %491, i64 0, !dbg !162
  %493 = insertelement <2 x i64> %492, i64 %.sroa.036.2.extract.shift37.i, i64 1, !dbg !162
  %494 = shufflevector <2 x i64> %492, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !156
  %495 = lshr <2 x i64> %494, <i64 32, i64 48>, !dbg !156
  %496 = shufflevector <2 x i64> %493, <2 x i64> %495, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !163
  %.sroa.01233.6.vec.insert12572052 = trunc <4 x i64> %496 to <4 x i16>, !dbg !163
  %497 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %178) #6, !dbg !156, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i = lshr i64 %497, 16, !dbg !162
  %498 = insertelement <2 x i64> poison, i64 %497, i64 0, !dbg !162
  %499 = insertelement <2 x i64> %498, i64 %.sroa.036.2.extract.shift37.1.i, i64 1, !dbg !162
  %500 = shufflevector <2 x i64> %498, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !156
  %501 = lshr <2 x i64> %500, <i64 32, i64 48>, !dbg !156
  %502 = shufflevector <2 x i64> %499, <2 x i64> %501, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !163
  %.sroa.261258.14.vec.insert12822051 = trunc <4 x i64> %502 to <4 x i16>, !dbg !163
  %503 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %186) #6, !dbg !156, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i = lshr i64 %503, 16, !dbg !162
  %504 = insertelement <2 x i64> poison, i64 %503, i64 0, !dbg !162
  %505 = insertelement <2 x i64> %504, i64 %.sroa.036.2.extract.shift37.2.i, i64 1, !dbg !162
  %506 = shufflevector <2 x i64> %504, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !156
  %507 = lshr <2 x i64> %506, <i64 32, i64 48>, !dbg !156
  %508 = shufflevector <2 x i64> %505, <2 x i64> %507, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !163
  %.sroa.501283.22.vec.insert13072050 = trunc <4 x i64> %508 to <4 x i16>, !dbg !163
  %509 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %194) #6, !dbg !156, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i = lshr i64 %509, 16, !dbg !162
  %510 = insertelement <2 x i64> poison, i64 %509, i64 0, !dbg !162
  %511 = insertelement <2 x i64> %510, i64 %.sroa.036.2.extract.shift37.3.i, i64 1, !dbg !162
  %512 = shufflevector <2 x i64> %510, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !156
  %513 = lshr <2 x i64> %512, <i64 32, i64 48>, !dbg !156
  %514 = shufflevector <2 x i64> %511, <2 x i64> %513, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !163
  %.sroa.741308.30.vec.insert13322049 = trunc <4 x i64> %514 to <4 x i16>, !dbg !163
  %515 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %202) #6, !dbg !167, !srcloc !161
  %.sroa.036.2.extract.shift37.i150 = lshr i64 %515, 16, !dbg !170
  %516 = insertelement <2 x i64> poison, i64 %515, i64 0, !dbg !170
  %517 = insertelement <2 x i64> %516, i64 %.sroa.036.2.extract.shift37.i150, i64 1, !dbg !170
  %518 = shufflevector <2 x i64> %516, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !167
  %519 = lshr <2 x i64> %518, <i64 32, i64 48>, !dbg !167
  %520 = shufflevector <2 x i64> %517, <2 x i64> %519, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !171
  %.sroa.01463.6.vec.insert14792048 = trunc <4 x i64> %520 to <4 x i16>, !dbg !171
  %521 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %209) #6, !dbg !167, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i159 = lshr i64 %521, 16, !dbg !170
  %522 = insertelement <2 x i64> poison, i64 %521, i64 0, !dbg !170
  %523 = insertelement <2 x i64> %522, i64 %.sroa.036.2.extract.shift37.1.i159, i64 1, !dbg !170
  %524 = shufflevector <2 x i64> %522, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !167
  %525 = lshr <2 x i64> %524, <i64 32, i64 48>, !dbg !167
  %526 = shufflevector <2 x i64> %523, <2 x i64> %525, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !171
  %.sroa.181480.14.vec.insert14962047 = trunc <4 x i64> %526 to <4 x i16>, !dbg !171
  %527 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %216) #6, !dbg !167, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i168 = lshr i64 %527, 16, !dbg !170
  %528 = insertelement <2 x i64> poison, i64 %527, i64 0, !dbg !170
  %529 = insertelement <2 x i64> %528, i64 %.sroa.036.2.extract.shift37.2.i168, i64 1, !dbg !170
  %530 = shufflevector <2 x i64> %528, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !167
  %531 = lshr <2 x i64> %530, <i64 32, i64 48>, !dbg !167
  %532 = shufflevector <2 x i64> %529, <2 x i64> %531, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !171
  %.sroa.341497.22.vec.insert15132046 = trunc <4 x i64> %532 to <4 x i16>, !dbg !171
  %533 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %223) #6, !dbg !167, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i177 = lshr i64 %533, 16, !dbg !170
  %534 = insertelement <2 x i64> poison, i64 %533, i64 0, !dbg !170
  %535 = insertelement <2 x i64> %534, i64 %.sroa.036.2.extract.shift37.3.i177, i64 1, !dbg !170
  %536 = shufflevector <2 x i64> %534, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !167
  %537 = lshr <2 x i64> %536, <i64 32, i64 48>, !dbg !167
  %538 = shufflevector <2 x i64> %535, <2 x i64> %537, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !171
  %.sroa.501514.30.vec.insert15302045 = trunc <4 x i64> %538 to <4 x i16>, !dbg !171
  %539 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %231) #6, !dbg !173, !srcloc !161
  %.sroa.036.2.extract.shift37.i189 = lshr i64 %539, 16, !dbg !176
  %540 = insertelement <2 x i64> poison, i64 %539, i64 0, !dbg !176
  %541 = insertelement <2 x i64> %540, i64 %.sroa.036.2.extract.shift37.i189, i64 1, !dbg !176
  %542 = shufflevector <2 x i64> %540, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !173
  %543 = lshr <2 x i64> %542, <i64 32, i64 48>, !dbg !173
  %544 = shufflevector <2 x i64> %541, <2 x i64> %543, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !177
  %.sroa.661531.38.vec.insert15472044 = trunc <4 x i64> %544 to <4 x i16>, !dbg !177
  %545 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %238) #6, !dbg !173, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i198 = lshr i64 %545, 16, !dbg !176
  %546 = insertelement <2 x i64> poison, i64 %545, i64 0, !dbg !176
  %547 = insertelement <2 x i64> %546, i64 %.sroa.036.2.extract.shift37.1.i198, i64 1, !dbg !176
  %548 = shufflevector <2 x i64> %546, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !173
  %549 = lshr <2 x i64> %548, <i64 32, i64 48>, !dbg !173
  %550 = shufflevector <2 x i64> %547, <2 x i64> %549, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !177
  %.sroa.821548.46.vec.insert15642043 = trunc <4 x i64> %550 to <4 x i16>, !dbg !177
  %551 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %245) #6, !dbg !173, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i207 = lshr i64 %551, 16, !dbg !176
  %552 = insertelement <2 x i64> poison, i64 %551, i64 0, !dbg !176
  %553 = insertelement <2 x i64> %552, i64 %.sroa.036.2.extract.shift37.2.i207, i64 1, !dbg !176
  %554 = shufflevector <2 x i64> %552, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !173
  %555 = lshr <2 x i64> %554, <i64 32, i64 48>, !dbg !173
  %556 = shufflevector <2 x i64> %553, <2 x i64> %555, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !177
  %.sroa.981565.54.vec.insert15812042 = trunc <4 x i64> %556 to <4 x i16>, !dbg !177
  %557 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %252) #6, !dbg !173, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i216 = lshr i64 %557, 16, !dbg !176
  %558 = insertelement <2 x i64> poison, i64 %557, i64 0, !dbg !176
  %559 = insertelement <2 x i64> %558, i64 %.sroa.036.2.extract.shift37.3.i216, i64 1, !dbg !176
  %560 = shufflevector <2 x i64> %558, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !173
  %561 = lshr <2 x i64> %560, <i64 32, i64 48>, !dbg !173
  %562 = shufflevector <2 x i64> %559, <2 x i64> %561, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !177
  %.sroa.1141582.62.vec.insert15982041 = trunc <4 x i64> %562 to <4 x i16>, !dbg !177
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !179, !srcloc !180
  tail call void @llvm.amdgcn.s.barrier(), !dbg !181
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !182
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !183, !srcloc !184
  tail call void @llvm.amdgcn.s.setprio(i16 1), !dbg !185
  %563 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01463.6.vec.insert14792048, <4 x i16> %.sroa.01233.6.vec.insert12572052, <4 x float> %.sroa.0.0, i32 0, i32 0, i32 0), !dbg !186
  %564 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01463.6.vec.insert14792048, <4 x i16> %.sroa.261258.14.vec.insert12822051, <4 x float> %.sroa.18.0, i32 0, i32 0, i32 0), !dbg !186
  %565 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01463.6.vec.insert14792048, <4 x i16> %.sroa.501283.22.vec.insert13072050, <4 x float> %.sroa.34.0, i32 0, i32 0, i32 0), !dbg !186
  %566 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01463.6.vec.insert14792048, <4 x i16> %.sroa.741308.30.vec.insert13322049, <4 x float> %.sroa.50.0, i32 0, i32 0, i32 0), !dbg !186
  %567 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.181480.14.vec.insert14962047, <4 x i16> %.sroa.01233.6.vec.insert12572052, <4 x float> %.sroa.66.0, i32 0, i32 0, i32 0), !dbg !186
  %568 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.181480.14.vec.insert14962047, <4 x i16> %.sroa.261258.14.vec.insert12822051, <4 x float> %.sroa.82.0, i32 0, i32 0, i32 0), !dbg !186
  %569 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.181480.14.vec.insert14962047, <4 x i16> %.sroa.501283.22.vec.insert13072050, <4 x float> %.sroa.98.0, i32 0, i32 0, i32 0), !dbg !186
  %570 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.181480.14.vec.insert14962047, <4 x i16> %.sroa.741308.30.vec.insert13322049, <4 x float> %.sroa.114.0, i32 0, i32 0, i32 0), !dbg !186
  %571 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.341497.22.vec.insert15132046, <4 x i16> %.sroa.01233.6.vec.insert12572052, <4 x float> %.sroa.130.0, i32 0, i32 0, i32 0), !dbg !186
  %572 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.341497.22.vec.insert15132046, <4 x i16> %.sroa.261258.14.vec.insert12822051, <4 x float> %.sroa.146.0, i32 0, i32 0, i32 0), !dbg !186
  %573 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.341497.22.vec.insert15132046, <4 x i16> %.sroa.501283.22.vec.insert13072050, <4 x float> %.sroa.162.0, i32 0, i32 0, i32 0), !dbg !186
  %574 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.341497.22.vec.insert15132046, <4 x i16> %.sroa.741308.30.vec.insert13322049, <4 x float> %.sroa.178.0, i32 0, i32 0, i32 0), !dbg !186
  %575 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501514.30.vec.insert15302045, <4 x i16> %.sroa.01233.6.vec.insert12572052, <4 x float> %.sroa.194.0, i32 0, i32 0, i32 0), !dbg !186
  %576 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501514.30.vec.insert15302045, <4 x i16> %.sroa.261258.14.vec.insert12822051, <4 x float> %.sroa.210.0, i32 0, i32 0, i32 0), !dbg !186
  %577 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501514.30.vec.insert15302045, <4 x i16> %.sroa.501283.22.vec.insert13072050, <4 x float> %.sroa.226.0, i32 0, i32 0, i32 0), !dbg !186
  %578 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501514.30.vec.insert15302045, <4 x i16> %.sroa.741308.30.vec.insert13322049, <4 x float> %.sroa.242.0, i32 0, i32 0, i32 0), !dbg !186
  %579 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.661531.38.vec.insert15472044, <4 x i16> %.sroa.01233.6.vec.insert12572052, <4 x float> %.sroa.258.0, i32 0, i32 0, i32 0), !dbg !194
  %580 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.661531.38.vec.insert15472044, <4 x i16> %.sroa.261258.14.vec.insert12822051, <4 x float> %.sroa.274.0, i32 0, i32 0, i32 0), !dbg !194
  %581 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.661531.38.vec.insert15472044, <4 x i16> %.sroa.501283.22.vec.insert13072050, <4 x float> %.sroa.290.0, i32 0, i32 0, i32 0), !dbg !194
  %582 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.661531.38.vec.insert15472044, <4 x i16> %.sroa.741308.30.vec.insert13322049, <4 x float> %.sroa.306.0, i32 0, i32 0, i32 0), !dbg !194
  %583 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.821548.46.vec.insert15642043, <4 x i16> %.sroa.01233.6.vec.insert12572052, <4 x float> %.sroa.322.0, i32 0, i32 0, i32 0), !dbg !194
  %584 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.821548.46.vec.insert15642043, <4 x i16> %.sroa.261258.14.vec.insert12822051, <4 x float> %.sroa.338.0, i32 0, i32 0, i32 0), !dbg !194
  %585 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.821548.46.vec.insert15642043, <4 x i16> %.sroa.501283.22.vec.insert13072050, <4 x float> %.sroa.354.0, i32 0, i32 0, i32 0), !dbg !194
  %586 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.821548.46.vec.insert15642043, <4 x i16> %.sroa.741308.30.vec.insert13322049, <4 x float> %.sroa.370.0, i32 0, i32 0, i32 0), !dbg !194
  %587 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.981565.54.vec.insert15812042, <4 x i16> %.sroa.01233.6.vec.insert12572052, <4 x float> %.sroa.386.0, i32 0, i32 0, i32 0), !dbg !194
  %588 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.981565.54.vec.insert15812042, <4 x i16> %.sroa.261258.14.vec.insert12822051, <4 x float> %.sroa.402.0, i32 0, i32 0, i32 0), !dbg !194
  %589 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.981565.54.vec.insert15812042, <4 x i16> %.sroa.501283.22.vec.insert13072050, <4 x float> %.sroa.418.0, i32 0, i32 0, i32 0), !dbg !194
  %590 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.981565.54.vec.insert15812042, <4 x i16> %.sroa.741308.30.vec.insert13322049, <4 x float> %.sroa.434.0, i32 0, i32 0, i32 0), !dbg !194
  %591 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.1141582.62.vec.insert15982041, <4 x i16> %.sroa.01233.6.vec.insert12572052, <4 x float> %.sroa.450.0, i32 0, i32 0, i32 0), !dbg !194
  %592 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.1141582.62.vec.insert15982041, <4 x i16> %.sroa.261258.14.vec.insert12822051, <4 x float> %.sroa.466.0, i32 0, i32 0, i32 0), !dbg !194
  %593 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.1141582.62.vec.insert15982041, <4 x i16> %.sroa.501283.22.vec.insert13072050, <4 x float> %.sroa.482.0, i32 0, i32 0, i32 0), !dbg !194
  %594 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.1141582.62.vec.insert15982041, <4 x i16> %.sroa.741308.30.vec.insert13322049, <4 x float> %.sroa.498.0, i32 0, i32 0, i32 0), !dbg !194
  tail call void @llvm.amdgcn.s.setprio(i16 0), !dbg !198
  tail call void @llvm.amdgcn.s.barrier(), !dbg !199
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !200
  br i1 %.not, label %606, label %595, !dbg !201

595:                                              ; preds = %490
  %596 = shl nuw nsw i32 %478, 6, !dbg !202
  %597 = zext nneg i32 %596 to i64, !dbg !205
  %598 = getelementptr %struct.__hip_bfloat16, ptr %95, i64 %597, !dbg !207
  %599 = ptrtoint ptr %598 to i64, !dbg !208
  %600 = bitcast i64 %599 to <2 x i32>, !dbg !208
  %.sroa.0.0.vec.expand.i.i280 = shufflevector <2 x i32> %600, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>, !dbg !208
  %601 = insertelement <4 x i32> %.sroa.0.0.vec.expand.i.i280, i32 1114112, i64 3, !dbg !208
  %.sroa.0.12.vec.insert.i.i281 = insertelement <4 x i32> %601, i32 %253, i64 2, !dbg !208
  %602 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i281, i32 noundef %254, i32 noundef 0, i32 noundef 0) #6, !dbg !210
  %603 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i281, i32 noundef %255, i32 noundef 0, i32 noundef 0) #6, !dbg !210
  %604 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i281, i32 noundef %256, i32 noundef 0, i32 noundef 0) #6, !dbg !210
  %605 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i281, i32 noundef %257, i32 noundef 0, i32 noundef 0) #6, !dbg !210
  %extract.t1613 = trunc i128 %602 to i64, !dbg !212
  %extract1615 = lshr i128 %602, 64, !dbg !212
  %extract.t1616 = trunc nuw i128 %extract1615 to i64, !dbg !212
  %extract.t1620 = trunc i128 %603 to i64, !dbg !212
  %extract1622 = lshr i128 %603, 64, !dbg !212
  %extract.t1623 = trunc nuw i128 %extract1622 to i64, !dbg !212
  %extract.t1627 = trunc i128 %604 to i64, !dbg !212
  %extract1629 = lshr i128 %604, 64, !dbg !212
  %extract.t1630 = trunc nuw i128 %extract1629 to i64, !dbg !212
  %extract.t1634 = trunc i128 %605 to i64, !dbg !212
  %extract1636 = lshr i128 %605, 64, !dbg !212
  %extract.t1637 = trunc nuw i128 %extract1636 to i64, !dbg !212
  br label %606, !dbg !212

606:                                              ; preds = %595, %490
  %.sroa.01129.1.off0 = phi i64 [ %.sroa.01129.0.off01670, %490 ], [ %extract.t1613, %595 ]
  %.sroa.01129.1.off64 = phi i64 [ %.sroa.01129.0.off641671, %490 ], [ %extract.t1616, %595 ]
  %.sroa.5.1.off0 = phi i64 [ %.sroa.5.0.off01672, %490 ], [ %extract.t1620, %595 ]
  %.sroa.5.1.off64 = phi i64 [ %.sroa.5.0.off641673, %490 ], [ %extract.t1623, %595 ]
  %.sroa.81130.1.off0 = phi i64 [ %.sroa.81130.0.off01674, %490 ], [ %extract.t1627, %595 ]
  %.sroa.81130.1.off64 = phi i64 [ %.sroa.81130.0.off641675, %490 ], [ %extract.t1630, %595 ]
  %.sroa.11.1.off0 = phi i64 [ %.sroa.11.0.off01676, %490 ], [ %extract.t1634, %595 ]
  %.sroa.11.1.off64 = phi i64 [ %.sroa.11.0.off641677, %490 ], [ %extract.t1637, %595 ]
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !213
  %607 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %262) #6, !dbg !214, !srcloc !161
  %.sroa.036.2.extract.shift37.i289 = lshr i64 %607, 16, !dbg !217
  %608 = insertelement <2 x i64> poison, i64 %607, i64 0, !dbg !217
  %609 = insertelement <2 x i64> %608, i64 %.sroa.036.2.extract.shift37.i289, i64 1, !dbg !217
  %610 = shufflevector <2 x i64> %608, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !214
  %611 = lshr <2 x i64> %610, <i64 32, i64 48>, !dbg !214
  %612 = shufflevector <2 x i64> %609, <2 x i64> %611, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !218
  %.sroa.01136.6.vec.insert11602016 = trunc <4 x i64> %612 to <4 x i16>, !dbg !218
  %613 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %266) #6, !dbg !214, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i298 = lshr i64 %613, 16, !dbg !217
  %614 = insertelement <2 x i64> poison, i64 %613, i64 0, !dbg !217
  %615 = insertelement <2 x i64> %614, i64 %.sroa.036.2.extract.shift37.1.i298, i64 1, !dbg !217
  %616 = shufflevector <2 x i64> %614, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !214
  %617 = lshr <2 x i64> %616, <i64 32, i64 48>, !dbg !214
  %618 = shufflevector <2 x i64> %615, <2 x i64> %617, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !218
  %.sroa.26.14.vec.insert11842015 = trunc <4 x i64> %618 to <4 x i16>, !dbg !218
  %619 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %270) #6, !dbg !214, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i307 = lshr i64 %619, 16, !dbg !217
  %620 = insertelement <2 x i64> poison, i64 %619, i64 0, !dbg !217
  %621 = insertelement <2 x i64> %620, i64 %.sroa.036.2.extract.shift37.2.i307, i64 1, !dbg !217
  %622 = shufflevector <2 x i64> %620, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !214
  %623 = lshr <2 x i64> %622, <i64 32, i64 48>, !dbg !214
  %624 = shufflevector <2 x i64> %621, <2 x i64> %623, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !218
  %.sroa.50.22.vec.insert12082014 = trunc <4 x i64> %624 to <4 x i16>, !dbg !218
  %625 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %274) #6, !dbg !214, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i316 = lshr i64 %625, 16, !dbg !217
  %626 = insertelement <2 x i64> poison, i64 %625, i64 0, !dbg !217
  %627 = insertelement <2 x i64> %626, i64 %.sroa.036.2.extract.shift37.3.i316, i64 1, !dbg !217
  %628 = shufflevector <2 x i64> %626, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !214
  %629 = lshr <2 x i64> %628, <i64 32, i64 48>, !dbg !214
  %630 = shufflevector <2 x i64> %627, <2 x i64> %629, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !218
  %.sroa.74.30.vec.insert12322013 = trunc <4 x i64> %630 to <4 x i16>, !dbg !218
  %631 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %278) #6, !dbg !220, !srcloc !161
  %.sroa.036.2.extract.shift37.i328 = lshr i64 %631, 16, !dbg !223
  %632 = insertelement <2 x i64> poison, i64 %631, i64 0, !dbg !223
  %633 = insertelement <2 x i64> %632, i64 %.sroa.036.2.extract.shift37.i328, i64 1, !dbg !223
  %634 = shufflevector <2 x i64> %632, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !220
  %635 = lshr <2 x i64> %634, <i64 32, i64 48>, !dbg !220
  %636 = shufflevector <2 x i64> %633, <2 x i64> %635, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !224
  %.sroa.01333.6.vec.insert13492012 = trunc <4 x i64> %636 to <4 x i16>, !dbg !224
  %637 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %282) #6, !dbg !220, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i337 = lshr i64 %637, 16, !dbg !223
  %638 = insertelement <2 x i64> poison, i64 %637, i64 0, !dbg !223
  %639 = insertelement <2 x i64> %638, i64 %.sroa.036.2.extract.shift37.1.i337, i64 1, !dbg !223
  %640 = shufflevector <2 x i64> %638, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !220
  %641 = lshr <2 x i64> %640, <i64 32, i64 48>, !dbg !220
  %642 = shufflevector <2 x i64> %639, <2 x i64> %641, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !224
  %.sroa.18.14.vec.insert13652011 = trunc <4 x i64> %642 to <4 x i16>, !dbg !224
  %643 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %286) #6, !dbg !220, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i346 = lshr i64 %643, 16, !dbg !223
  %644 = insertelement <2 x i64> poison, i64 %643, i64 0, !dbg !223
  %645 = insertelement <2 x i64> %644, i64 %.sroa.036.2.extract.shift37.2.i346, i64 1, !dbg !223
  %646 = shufflevector <2 x i64> %644, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !220
  %647 = lshr <2 x i64> %646, <i64 32, i64 48>, !dbg !220
  %648 = shufflevector <2 x i64> %645, <2 x i64> %647, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !224
  %.sroa.34.22.vec.insert13812010 = trunc <4 x i64> %648 to <4 x i16>, !dbg !224
  %649 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %290) #6, !dbg !220, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i355 = lshr i64 %649, 16, !dbg !223
  %650 = insertelement <2 x i64> poison, i64 %649, i64 0, !dbg !223
  %651 = insertelement <2 x i64> %650, i64 %.sroa.036.2.extract.shift37.3.i355, i64 1, !dbg !223
  %652 = shufflevector <2 x i64> %650, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !220
  %653 = lshr <2 x i64> %652, <i64 32, i64 48>, !dbg !220
  %654 = shufflevector <2 x i64> %651, <2 x i64> %653, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !224
  %.sroa.501382.30.vec.insert13982009 = trunc <4 x i64> %654 to <4 x i16>, !dbg !224
  %655 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %294) #6, !dbg !226, !srcloc !161
  %.sroa.036.2.extract.shift37.i367 = lshr i64 %655, 16, !dbg !229
  %656 = insertelement <2 x i64> poison, i64 %655, i64 0, !dbg !229
  %657 = insertelement <2 x i64> %656, i64 %.sroa.036.2.extract.shift37.i367, i64 1, !dbg !229
  %658 = shufflevector <2 x i64> %656, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !226
  %659 = lshr <2 x i64> %658, <i64 32, i64 48>, !dbg !226
  %660 = shufflevector <2 x i64> %657, <2 x i64> %659, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !230
  %.sroa.66.38.vec.insert14142008 = trunc <4 x i64> %660 to <4 x i16>, !dbg !230
  %661 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %298) #6, !dbg !226, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i376 = lshr i64 %661, 16, !dbg !229
  %662 = insertelement <2 x i64> poison, i64 %661, i64 0, !dbg !229
  %663 = insertelement <2 x i64> %662, i64 %.sroa.036.2.extract.shift37.1.i376, i64 1, !dbg !229
  %664 = shufflevector <2 x i64> %662, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !226
  %665 = lshr <2 x i64> %664, <i64 32, i64 48>, !dbg !226
  %666 = shufflevector <2 x i64> %663, <2 x i64> %665, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !230
  %.sroa.82.46.vec.insert14302007 = trunc <4 x i64> %666 to <4 x i16>, !dbg !230
  %667 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %302) #6, !dbg !226, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i385 = lshr i64 %667, 16, !dbg !229
  %668 = insertelement <2 x i64> poison, i64 %667, i64 0, !dbg !229
  %669 = insertelement <2 x i64> %668, i64 %.sroa.036.2.extract.shift37.2.i385, i64 1, !dbg !229
  %670 = shufflevector <2 x i64> %668, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !226
  %671 = lshr <2 x i64> %670, <i64 32, i64 48>, !dbg !226
  %672 = shufflevector <2 x i64> %669, <2 x i64> %671, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !230
  %.sroa.98.54.vec.insert14462006 = trunc <4 x i64> %672 to <4 x i16>, !dbg !230
  %673 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %306) #6, !dbg !226, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i394 = lshr i64 %673, 16, !dbg !229
  %674 = insertelement <2 x i64> poison, i64 %673, i64 0, !dbg !229
  %675 = insertelement <2 x i64> %674, i64 %.sroa.036.2.extract.shift37.3.i394, i64 1, !dbg !229
  %676 = shufflevector <2 x i64> %674, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !226
  %677 = lshr <2 x i64> %676, <i64 32, i64 48>, !dbg !226
  %678 = shufflevector <2 x i64> %675, <2 x i64> %677, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !230
  %.sroa.114.62.vec.insert14622005 = trunc <4 x i64> %678 to <4 x i16>, !dbg !230
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !232, !srcloc !233
  tail call void @llvm.amdgcn.s.barrier(), !dbg !234
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !235
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !236, !srcloc !237
  tail call void @llvm.amdgcn.s.setprio(i16 1), !dbg !238
  %679 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01333.6.vec.insert13492012, <4 x i16> %.sroa.01136.6.vec.insert11602016, <4 x float> %563, i32 0, i32 0, i32 0), !dbg !239
  %680 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01333.6.vec.insert13492012, <4 x i16> %.sroa.26.14.vec.insert11842015, <4 x float> %564, i32 0, i32 0, i32 0), !dbg !239
  %681 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01333.6.vec.insert13492012, <4 x i16> %.sroa.50.22.vec.insert12082014, <4 x float> %565, i32 0, i32 0, i32 0), !dbg !239
  %682 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01333.6.vec.insert13492012, <4 x i16> %.sroa.74.30.vec.insert12322013, <4 x float> %566, i32 0, i32 0, i32 0), !dbg !239
  %683 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.18.14.vec.insert13652011, <4 x i16> %.sroa.01136.6.vec.insert11602016, <4 x float> %567, i32 0, i32 0, i32 0), !dbg !239
  %684 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.18.14.vec.insert13652011, <4 x i16> %.sroa.26.14.vec.insert11842015, <4 x float> %568, i32 0, i32 0, i32 0), !dbg !239
  %685 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.18.14.vec.insert13652011, <4 x i16> %.sroa.50.22.vec.insert12082014, <4 x float> %569, i32 0, i32 0, i32 0), !dbg !239
  %686 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.18.14.vec.insert13652011, <4 x i16> %.sroa.74.30.vec.insert12322013, <4 x float> %570, i32 0, i32 0, i32 0), !dbg !239
  %687 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.34.22.vec.insert13812010, <4 x i16> %.sroa.01136.6.vec.insert11602016, <4 x float> %571, i32 0, i32 0, i32 0), !dbg !239
  %688 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.34.22.vec.insert13812010, <4 x i16> %.sroa.26.14.vec.insert11842015, <4 x float> %572, i32 0, i32 0, i32 0), !dbg !239
  %689 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.34.22.vec.insert13812010, <4 x i16> %.sroa.50.22.vec.insert12082014, <4 x float> %573, i32 0, i32 0, i32 0), !dbg !239
  %690 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.34.22.vec.insert13812010, <4 x i16> %.sroa.74.30.vec.insert12322013, <4 x float> %574, i32 0, i32 0, i32 0), !dbg !239
  %691 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501382.30.vec.insert13982009, <4 x i16> %.sroa.01136.6.vec.insert11602016, <4 x float> %575, i32 0, i32 0, i32 0), !dbg !239
  %692 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501382.30.vec.insert13982009, <4 x i16> %.sroa.26.14.vec.insert11842015, <4 x float> %576, i32 0, i32 0, i32 0), !dbg !239
  %693 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501382.30.vec.insert13982009, <4 x i16> %.sroa.50.22.vec.insert12082014, <4 x float> %577, i32 0, i32 0, i32 0), !dbg !239
  %694 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501382.30.vec.insert13982009, <4 x i16> %.sroa.74.30.vec.insert12322013, <4 x float> %578, i32 0, i32 0, i32 0), !dbg !239
  %695 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.66.38.vec.insert14142008, <4 x i16> %.sroa.01136.6.vec.insert11602016, <4 x float> %579, i32 0, i32 0, i32 0), !dbg !243
  %696 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.66.38.vec.insert14142008, <4 x i16> %.sroa.26.14.vec.insert11842015, <4 x float> %580, i32 0, i32 0, i32 0), !dbg !243
  %697 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.66.38.vec.insert14142008, <4 x i16> %.sroa.50.22.vec.insert12082014, <4 x float> %581, i32 0, i32 0, i32 0), !dbg !243
  %698 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.66.38.vec.insert14142008, <4 x i16> %.sroa.74.30.vec.insert12322013, <4 x float> %582, i32 0, i32 0, i32 0), !dbg !243
  %699 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.82.46.vec.insert14302007, <4 x i16> %.sroa.01136.6.vec.insert11602016, <4 x float> %583, i32 0, i32 0, i32 0), !dbg !243
  %700 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.82.46.vec.insert14302007, <4 x i16> %.sroa.26.14.vec.insert11842015, <4 x float> %584, i32 0, i32 0, i32 0), !dbg !243
  %701 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.82.46.vec.insert14302007, <4 x i16> %.sroa.50.22.vec.insert12082014, <4 x float> %585, i32 0, i32 0, i32 0), !dbg !243
  %702 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.82.46.vec.insert14302007, <4 x i16> %.sroa.74.30.vec.insert12322013, <4 x float> %586, i32 0, i32 0, i32 0), !dbg !243
  %703 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.98.54.vec.insert14462006, <4 x i16> %.sroa.01136.6.vec.insert11602016, <4 x float> %587, i32 0, i32 0, i32 0), !dbg !243
  %704 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.98.54.vec.insert14462006, <4 x i16> %.sroa.26.14.vec.insert11842015, <4 x float> %588, i32 0, i32 0, i32 0), !dbg !243
  %705 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.98.54.vec.insert14462006, <4 x i16> %.sroa.50.22.vec.insert12082014, <4 x float> %589, i32 0, i32 0, i32 0), !dbg !243
  %706 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.98.54.vec.insert14462006, <4 x i16> %.sroa.74.30.vec.insert12322013, <4 x float> %590, i32 0, i32 0, i32 0), !dbg !243
  %707 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.114.62.vec.insert14622005, <4 x i16> %.sroa.01136.6.vec.insert11602016, <4 x float> %591, i32 0, i32 0, i32 0), !dbg !243
  %708 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.114.62.vec.insert14622005, <4 x i16> %.sroa.26.14.vec.insert11842015, <4 x float> %592, i32 0, i32 0, i32 0), !dbg !243
  %709 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.114.62.vec.insert14622005, <4 x i16> %.sroa.50.22.vec.insert12082014, <4 x float> %593, i32 0, i32 0, i32 0), !dbg !243
  %710 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.114.62.vec.insert14622005, <4 x i16> %.sroa.74.30.vec.insert12322013, <4 x float> %594, i32 0, i32 0, i32 0), !dbg !243
  tail call void @llvm.amdgcn.s.setprio(i16 0), !dbg !247
  tail call void @llvm.amdgcn.s.barrier(), !dbg !248
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !249
  %711 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %311) #6, !dbg !250, !srcloc !161
  %.sroa.036.2.extract.shift37.i502 = lshr i64 %711, 16, !dbg !253
  %712 = insertelement <2 x i64> poison, i64 %711, i64 0, !dbg !253
  %713 = insertelement <2 x i64> %712, i64 %.sroa.036.2.extract.shift37.i502, i64 1, !dbg !253
  %714 = shufflevector <2 x i64> %712, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !250
  %715 = lshr <2 x i64> %714, <i64 32, i64 48>, !dbg !250
  %716 = shufflevector <2 x i64> %713, <2 x i64> %715, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !254
  %.sroa.01233.6.vec.insert2040 = trunc <4 x i64> %716 to <4 x i16>, !dbg !254
  %717 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %315) #6, !dbg !250, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i511 = lshr i64 %717, 16, !dbg !253
  %718 = insertelement <2 x i64> poison, i64 %717, i64 0, !dbg !253
  %719 = insertelement <2 x i64> %718, i64 %.sroa.036.2.extract.shift37.1.i511, i64 1, !dbg !253
  %720 = shufflevector <2 x i64> %718, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !250
  %721 = lshr <2 x i64> %720, <i64 32, i64 48>, !dbg !250
  %722 = shufflevector <2 x i64> %719, <2 x i64> %721, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !254
  %.sroa.261258.14.vec.insert2039 = trunc <4 x i64> %722 to <4 x i16>, !dbg !254
  %723 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %319) #6, !dbg !250, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i520 = lshr i64 %723, 16, !dbg !253
  %724 = insertelement <2 x i64> poison, i64 %723, i64 0, !dbg !253
  %725 = insertelement <2 x i64> %724, i64 %.sroa.036.2.extract.shift37.2.i520, i64 1, !dbg !253
  %726 = shufflevector <2 x i64> %724, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !250
  %727 = lshr <2 x i64> %726, <i64 32, i64 48>, !dbg !250
  %728 = shufflevector <2 x i64> %725, <2 x i64> %727, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !254
  %.sroa.501283.22.vec.insert2038 = trunc <4 x i64> %728 to <4 x i16>, !dbg !254
  %729 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %323) #6, !dbg !250, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i529 = lshr i64 %729, 16, !dbg !253
  %730 = insertelement <2 x i64> poison, i64 %729, i64 0, !dbg !253
  %731 = insertelement <2 x i64> %730, i64 %.sroa.036.2.extract.shift37.3.i529, i64 1, !dbg !253
  %732 = shufflevector <2 x i64> %730, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !250
  %733 = lshr <2 x i64> %732, <i64 32, i64 48>, !dbg !250
  %734 = shufflevector <2 x i64> %731, <2 x i64> %733, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !254
  %.sroa.741308.30.vec.insert2037 = trunc <4 x i64> %734 to <4 x i16>, !dbg !254
  %735 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %327) #6, !dbg !256, !srcloc !161
  %.sroa.036.2.extract.shift37.i541 = lshr i64 %735, 16, !dbg !259
  %736 = insertelement <2 x i64> poison, i64 %735, i64 0, !dbg !259
  %737 = insertelement <2 x i64> %736, i64 %.sroa.036.2.extract.shift37.i541, i64 1, !dbg !259
  %738 = shufflevector <2 x i64> %736, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !256
  %739 = lshr <2 x i64> %738, <i64 32, i64 48>, !dbg !256
  %740 = shufflevector <2 x i64> %737, <2 x i64> %739, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !260
  %.sroa.01463.6.vec.insert2036 = trunc <4 x i64> %740 to <4 x i16>, !dbg !260
  %741 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %331) #6, !dbg !256, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i550 = lshr i64 %741, 16, !dbg !259
  %742 = insertelement <2 x i64> poison, i64 %741, i64 0, !dbg !259
  %743 = insertelement <2 x i64> %742, i64 %.sroa.036.2.extract.shift37.1.i550, i64 1, !dbg !259
  %744 = shufflevector <2 x i64> %742, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !256
  %745 = lshr <2 x i64> %744, <i64 32, i64 48>, !dbg !256
  %746 = shufflevector <2 x i64> %743, <2 x i64> %745, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !260
  %.sroa.181480.14.vec.insert2035 = trunc <4 x i64> %746 to <4 x i16>, !dbg !260
  %747 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %335) #6, !dbg !256, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i559 = lshr i64 %747, 16, !dbg !259
  %748 = insertelement <2 x i64> poison, i64 %747, i64 0, !dbg !259
  %749 = insertelement <2 x i64> %748, i64 %.sroa.036.2.extract.shift37.2.i559, i64 1, !dbg !259
  %750 = shufflevector <2 x i64> %748, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !256
  %751 = lshr <2 x i64> %750, <i64 32, i64 48>, !dbg !256
  %752 = shufflevector <2 x i64> %749, <2 x i64> %751, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !260
  %.sroa.341497.22.vec.insert2034 = trunc <4 x i64> %752 to <4 x i16>, !dbg !260
  %753 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %339) #6, !dbg !256, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i568 = lshr i64 %753, 16, !dbg !259
  %754 = insertelement <2 x i64> poison, i64 %753, i64 0, !dbg !259
  %755 = insertelement <2 x i64> %754, i64 %.sroa.036.2.extract.shift37.3.i568, i64 1, !dbg !259
  %756 = shufflevector <2 x i64> %754, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !256
  %757 = lshr <2 x i64> %756, <i64 32, i64 48>, !dbg !256
  %758 = shufflevector <2 x i64> %755, <2 x i64> %757, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !260
  %.sroa.501514.30.vec.insert2033 = trunc <4 x i64> %758 to <4 x i16>, !dbg !260
  %759 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %343) #6, !dbg !262, !srcloc !161
  %.sroa.036.2.extract.shift37.i580 = lshr i64 %759, 16, !dbg !265
  %760 = insertelement <2 x i64> poison, i64 %759, i64 0, !dbg !265
  %761 = insertelement <2 x i64> %760, i64 %.sroa.036.2.extract.shift37.i580, i64 1, !dbg !265
  %762 = shufflevector <2 x i64> %760, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !262
  %763 = lshr <2 x i64> %762, <i64 32, i64 48>, !dbg !262
  %764 = shufflevector <2 x i64> %761, <2 x i64> %763, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !266
  %.sroa.661531.38.vec.insert2032 = trunc <4 x i64> %764 to <4 x i16>, !dbg !266
  %765 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %347) #6, !dbg !262, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i589 = lshr i64 %765, 16, !dbg !265
  %766 = insertelement <2 x i64> poison, i64 %765, i64 0, !dbg !265
  %767 = insertelement <2 x i64> %766, i64 %.sroa.036.2.extract.shift37.1.i589, i64 1, !dbg !265
  %768 = shufflevector <2 x i64> %766, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !262
  %769 = lshr <2 x i64> %768, <i64 32, i64 48>, !dbg !262
  %770 = shufflevector <2 x i64> %767, <2 x i64> %769, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !266
  %.sroa.821548.46.vec.insert2031 = trunc <4 x i64> %770 to <4 x i16>, !dbg !266
  %771 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %351) #6, !dbg !262, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i598 = lshr i64 %771, 16, !dbg !265
  %772 = insertelement <2 x i64> poison, i64 %771, i64 0, !dbg !265
  %773 = insertelement <2 x i64> %772, i64 %.sroa.036.2.extract.shift37.2.i598, i64 1, !dbg !265
  %774 = shufflevector <2 x i64> %772, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !262
  %775 = lshr <2 x i64> %774, <i64 32, i64 48>, !dbg !262
  %776 = shufflevector <2 x i64> %773, <2 x i64> %775, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !266
  %.sroa.981565.54.vec.insert2030 = trunc <4 x i64> %776 to <4 x i16>, !dbg !266
  %777 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %355) #6, !dbg !262, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i607 = lshr i64 %777, 16, !dbg !265
  %778 = insertelement <2 x i64> poison, i64 %777, i64 0, !dbg !265
  %779 = insertelement <2 x i64> %778, i64 %.sroa.036.2.extract.shift37.3.i607, i64 1, !dbg !265
  %780 = shufflevector <2 x i64> %778, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !262
  %781 = lshr <2 x i64> %780, <i64 32, i64 48>, !dbg !262
  %782 = shufflevector <2 x i64> %779, <2 x i64> %781, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !266
  %.sroa.1141582.62.vec.insert2029 = trunc <4 x i64> %782 to <4 x i16>, !dbg !266
  %783 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %360) #6, !dbg !268, !srcloc !161
  %.sroa.036.2.extract.shift37.i619 = lshr i64 %783, 16, !dbg !271
  %784 = insertelement <2 x i64> poison, i64 %783, i64 0, !dbg !271
  %785 = insertelement <2 x i64> %784, i64 %.sroa.036.2.extract.shift37.i619, i64 1, !dbg !271
  %786 = shufflevector <2 x i64> %784, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !268
  %787 = lshr <2 x i64> %786, <i64 32, i64 48>, !dbg !268
  %788 = shufflevector <2 x i64> %785, <2 x i64> %787, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !272
  %.sroa.01136.6.vec.insert2028 = trunc <4 x i64> %788 to <4 x i16>, !dbg !272
  %789 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %364) #6, !dbg !268, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i628 = lshr i64 %789, 16, !dbg !271
  %790 = insertelement <2 x i64> poison, i64 %789, i64 0, !dbg !271
  %791 = insertelement <2 x i64> %790, i64 %.sroa.036.2.extract.shift37.1.i628, i64 1, !dbg !271
  %792 = shufflevector <2 x i64> %790, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !268
  %793 = lshr <2 x i64> %792, <i64 32, i64 48>, !dbg !268
  %794 = shufflevector <2 x i64> %791, <2 x i64> %793, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !272
  %.sroa.26.14.vec.insert2027 = trunc <4 x i64> %794 to <4 x i16>, !dbg !272
  %795 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %368) #6, !dbg !268, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i637 = lshr i64 %795, 16, !dbg !271
  %796 = insertelement <2 x i64> poison, i64 %795, i64 0, !dbg !271
  %797 = insertelement <2 x i64> %796, i64 %.sroa.036.2.extract.shift37.2.i637, i64 1, !dbg !271
  %798 = shufflevector <2 x i64> %796, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !268
  %799 = lshr <2 x i64> %798, <i64 32, i64 48>, !dbg !268
  %800 = shufflevector <2 x i64> %797, <2 x i64> %799, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !272
  %.sroa.50.22.vec.insert2026 = trunc <4 x i64> %800 to <4 x i16>, !dbg !272
  %801 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %372) #6, !dbg !268, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i646 = lshr i64 %801, 16, !dbg !271
  %802 = insertelement <2 x i64> poison, i64 %801, i64 0, !dbg !271
  %803 = insertelement <2 x i64> %802, i64 %.sroa.036.2.extract.shift37.3.i646, i64 1, !dbg !271
  %804 = shufflevector <2 x i64> %802, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !268
  %805 = lshr <2 x i64> %804, <i64 32, i64 48>, !dbg !268
  %806 = shufflevector <2 x i64> %803, <2 x i64> %805, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !272
  %.sroa.74.30.vec.insert2025 = trunc <4 x i64> %806 to <4 x i16>, !dbg !272
  %807 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %376) #6, !dbg !274, !srcloc !161
  %.sroa.036.2.extract.shift37.i658 = lshr i64 %807, 16, !dbg !277
  %808 = insertelement <2 x i64> poison, i64 %807, i64 0, !dbg !277
  %809 = insertelement <2 x i64> %808, i64 %.sroa.036.2.extract.shift37.i658, i64 1, !dbg !277
  %810 = shufflevector <2 x i64> %808, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !274
  %811 = lshr <2 x i64> %810, <i64 32, i64 48>, !dbg !274
  %812 = shufflevector <2 x i64> %809, <2 x i64> %811, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !278
  %.sroa.01333.6.vec.insert2024 = trunc <4 x i64> %812 to <4 x i16>, !dbg !278
  %813 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %380) #6, !dbg !274, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i667 = lshr i64 %813, 16, !dbg !277
  %814 = insertelement <2 x i64> poison, i64 %813, i64 0, !dbg !277
  %815 = insertelement <2 x i64> %814, i64 %.sroa.036.2.extract.shift37.1.i667, i64 1, !dbg !277
  %816 = shufflevector <2 x i64> %814, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !274
  %817 = lshr <2 x i64> %816, <i64 32, i64 48>, !dbg !274
  %818 = shufflevector <2 x i64> %815, <2 x i64> %817, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !278
  %.sroa.18.14.vec.insert2023 = trunc <4 x i64> %818 to <4 x i16>, !dbg !278
  %819 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %384) #6, !dbg !274, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i676 = lshr i64 %819, 16, !dbg !277
  %820 = insertelement <2 x i64> poison, i64 %819, i64 0, !dbg !277
  %821 = insertelement <2 x i64> %820, i64 %.sroa.036.2.extract.shift37.2.i676, i64 1, !dbg !277
  %822 = shufflevector <2 x i64> %820, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !274
  %823 = lshr <2 x i64> %822, <i64 32, i64 48>, !dbg !274
  %824 = shufflevector <2 x i64> %821, <2 x i64> %823, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !278
  %.sroa.34.22.vec.insert2022 = trunc <4 x i64> %824 to <4 x i16>, !dbg !278
  %825 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %388) #6, !dbg !274, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i685 = lshr i64 %825, 16, !dbg !277
  %826 = insertelement <2 x i64> poison, i64 %825, i64 0, !dbg !277
  %827 = insertelement <2 x i64> %826, i64 %.sroa.036.2.extract.shift37.3.i685, i64 1, !dbg !277
  %828 = shufflevector <2 x i64> %826, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !274
  %829 = lshr <2 x i64> %828, <i64 32, i64 48>, !dbg !274
  %830 = shufflevector <2 x i64> %827, <2 x i64> %829, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !278
  %.sroa.501382.30.vec.insert2021 = trunc <4 x i64> %830 to <4 x i16>, !dbg !278
  %831 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %392) #6, !dbg !280, !srcloc !161
  %.sroa.036.2.extract.shift37.i697 = lshr i64 %831, 16, !dbg !283
  %832 = insertelement <2 x i64> poison, i64 %831, i64 0, !dbg !283
  %833 = insertelement <2 x i64> %832, i64 %.sroa.036.2.extract.shift37.i697, i64 1, !dbg !283
  %834 = shufflevector <2 x i64> %832, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !280
  %835 = lshr <2 x i64> %834, <i64 32, i64 48>, !dbg !280
  %836 = shufflevector <2 x i64> %833, <2 x i64> %835, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !284
  %.sroa.66.38.vec.insert2020 = trunc <4 x i64> %836 to <4 x i16>, !dbg !284
  %837 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %396) #6, !dbg !280, !srcloc !161
  %.sroa.036.2.extract.shift37.1.i706 = lshr i64 %837, 16, !dbg !283
  %838 = insertelement <2 x i64> poison, i64 %837, i64 0, !dbg !283
  %839 = insertelement <2 x i64> %838, i64 %.sroa.036.2.extract.shift37.1.i706, i64 1, !dbg !283
  %840 = shufflevector <2 x i64> %838, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !280
  %841 = lshr <2 x i64> %840, <i64 32, i64 48>, !dbg !280
  %842 = shufflevector <2 x i64> %839, <2 x i64> %841, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !284
  %.sroa.82.46.vec.insert2019 = trunc <4 x i64> %842 to <4 x i16>, !dbg !284
  %843 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %400) #6, !dbg !280, !srcloc !161
  %.sroa.036.2.extract.shift37.2.i715 = lshr i64 %843, 16, !dbg !283
  %844 = insertelement <2 x i64> poison, i64 %843, i64 0, !dbg !283
  %845 = insertelement <2 x i64> %844, i64 %.sroa.036.2.extract.shift37.2.i715, i64 1, !dbg !283
  %846 = shufflevector <2 x i64> %844, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !280
  %847 = lshr <2 x i64> %846, <i64 32, i64 48>, !dbg !280
  %848 = shufflevector <2 x i64> %845, <2 x i64> %847, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !284
  %.sroa.98.54.vec.insert2018 = trunc <4 x i64> %848 to <4 x i16>, !dbg !284
  %849 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %404) #6, !dbg !280, !srcloc !161
  %.sroa.036.2.extract.shift37.3.i724 = lshr i64 %849, 16, !dbg !283
  %850 = insertelement <2 x i64> poison, i64 %849, i64 0, !dbg !283
  %851 = insertelement <2 x i64> %850, i64 %.sroa.036.2.extract.shift37.3.i724, i64 1, !dbg !283
  %852 = shufflevector <2 x i64> %850, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !280
  %853 = lshr <2 x i64> %852, <i64 32, i64 48>, !dbg !280
  %854 = shufflevector <2 x i64> %851, <2 x i64> %853, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !284
  %.sroa.114.62.vec.insert2017 = trunc <4 x i64> %854 to <4 x i16>, !dbg !284
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !286, !srcloc !287
  tail call void @llvm.amdgcn.s.barrier(), !dbg !288
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !289
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !290, !srcloc !291
  tail call void @llvm.amdgcn.s.setprio(i16 1), !dbg !292
  %855 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01463.6.vec.insert2036, <4 x i16> %.sroa.01233.6.vec.insert2040, <4 x float> %679, i32 0, i32 0, i32 0), !dbg !293
  %856 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01463.6.vec.insert2036, <4 x i16> %.sroa.261258.14.vec.insert2039, <4 x float> %680, i32 0, i32 0, i32 0), !dbg !293
  %857 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01463.6.vec.insert2036, <4 x i16> %.sroa.501283.22.vec.insert2038, <4 x float> %681, i32 0, i32 0, i32 0), !dbg !293
  %858 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01463.6.vec.insert2036, <4 x i16> %.sroa.741308.30.vec.insert2037, <4 x float> %682, i32 0, i32 0, i32 0), !dbg !293
  %859 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.181480.14.vec.insert2035, <4 x i16> %.sroa.01233.6.vec.insert2040, <4 x float> %683, i32 0, i32 0, i32 0), !dbg !293
  %860 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.181480.14.vec.insert2035, <4 x i16> %.sroa.261258.14.vec.insert2039, <4 x float> %684, i32 0, i32 0, i32 0), !dbg !293
  %861 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.181480.14.vec.insert2035, <4 x i16> %.sroa.501283.22.vec.insert2038, <4 x float> %685, i32 0, i32 0, i32 0), !dbg !293
  %862 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.181480.14.vec.insert2035, <4 x i16> %.sroa.741308.30.vec.insert2037, <4 x float> %686, i32 0, i32 0, i32 0), !dbg !293
  %863 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.341497.22.vec.insert2034, <4 x i16> %.sroa.01233.6.vec.insert2040, <4 x float> %687, i32 0, i32 0, i32 0), !dbg !293
  %864 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.341497.22.vec.insert2034, <4 x i16> %.sroa.261258.14.vec.insert2039, <4 x float> %688, i32 0, i32 0, i32 0), !dbg !293
  %865 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.341497.22.vec.insert2034, <4 x i16> %.sroa.501283.22.vec.insert2038, <4 x float> %689, i32 0, i32 0, i32 0), !dbg !293
  %866 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.341497.22.vec.insert2034, <4 x i16> %.sroa.741308.30.vec.insert2037, <4 x float> %690, i32 0, i32 0, i32 0), !dbg !293
  %867 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501514.30.vec.insert2033, <4 x i16> %.sroa.01233.6.vec.insert2040, <4 x float> %691, i32 0, i32 0, i32 0), !dbg !293
  %868 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501514.30.vec.insert2033, <4 x i16> %.sroa.261258.14.vec.insert2039, <4 x float> %692, i32 0, i32 0, i32 0), !dbg !293
  %869 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501514.30.vec.insert2033, <4 x i16> %.sroa.501283.22.vec.insert2038, <4 x float> %693, i32 0, i32 0, i32 0), !dbg !293
  %870 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501514.30.vec.insert2033, <4 x i16> %.sroa.741308.30.vec.insert2037, <4 x float> %694, i32 0, i32 0, i32 0), !dbg !293
  %871 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.661531.38.vec.insert2032, <4 x i16> %.sroa.01233.6.vec.insert2040, <4 x float> %695, i32 0, i32 0, i32 0), !dbg !297
  %872 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.661531.38.vec.insert2032, <4 x i16> %.sroa.261258.14.vec.insert2039, <4 x float> %696, i32 0, i32 0, i32 0), !dbg !297
  %873 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.661531.38.vec.insert2032, <4 x i16> %.sroa.501283.22.vec.insert2038, <4 x float> %697, i32 0, i32 0, i32 0), !dbg !297
  %874 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.661531.38.vec.insert2032, <4 x i16> %.sroa.741308.30.vec.insert2037, <4 x float> %698, i32 0, i32 0, i32 0), !dbg !297
  %875 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.821548.46.vec.insert2031, <4 x i16> %.sroa.01233.6.vec.insert2040, <4 x float> %699, i32 0, i32 0, i32 0), !dbg !297
  %876 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.821548.46.vec.insert2031, <4 x i16> %.sroa.261258.14.vec.insert2039, <4 x float> %700, i32 0, i32 0, i32 0), !dbg !297
  %877 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.821548.46.vec.insert2031, <4 x i16> %.sroa.501283.22.vec.insert2038, <4 x float> %701, i32 0, i32 0, i32 0), !dbg !297
  %878 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.821548.46.vec.insert2031, <4 x i16> %.sroa.741308.30.vec.insert2037, <4 x float> %702, i32 0, i32 0, i32 0), !dbg !297
  %879 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.981565.54.vec.insert2030, <4 x i16> %.sroa.01233.6.vec.insert2040, <4 x float> %703, i32 0, i32 0, i32 0), !dbg !297
  %880 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.981565.54.vec.insert2030, <4 x i16> %.sroa.261258.14.vec.insert2039, <4 x float> %704, i32 0, i32 0, i32 0), !dbg !297
  %881 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.981565.54.vec.insert2030, <4 x i16> %.sroa.501283.22.vec.insert2038, <4 x float> %705, i32 0, i32 0, i32 0), !dbg !297
  %882 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.981565.54.vec.insert2030, <4 x i16> %.sroa.741308.30.vec.insert2037, <4 x float> %706, i32 0, i32 0, i32 0), !dbg !297
  %883 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.1141582.62.vec.insert2029, <4 x i16> %.sroa.01233.6.vec.insert2040, <4 x float> %707, i32 0, i32 0, i32 0), !dbg !297
  %884 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.1141582.62.vec.insert2029, <4 x i16> %.sroa.261258.14.vec.insert2039, <4 x float> %708, i32 0, i32 0, i32 0), !dbg !297
  %885 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.1141582.62.vec.insert2029, <4 x i16> %.sroa.501283.22.vec.insert2038, <4 x float> %709, i32 0, i32 0, i32 0), !dbg !297
  %886 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.1141582.62.vec.insert2029, <4 x i16> %.sroa.741308.30.vec.insert2037, <4 x float> %710, i32 0, i32 0, i32 0), !dbg !297
  tail call void @llvm.amdgcn.s.setprio(i16 0), !dbg !301
  tail call void @llvm.amdgcn.s.barrier(), !dbg !302
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !303
  br i1 %.not, label %888, label %887, !dbg !304

887:                                              ; preds = %606
  tail call void asm sideeffect "s_waitcnt vmcnt(0)", ""() #6, !dbg !305, !srcloc !306
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %412, i64 %.sroa.01131.1.off0) #6, !dbg !307, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %416, i64 %.sroa.01131.1.off64) #6, !dbg !313, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %420, i64 %.sroa.51132.1.off0) #6, !dbg !307, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %424, i64 %.sroa.51132.1.off64) #6, !dbg !313, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %428, i64 %.sroa.81133.1.off0) #6, !dbg !307, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %432, i64 %.sroa.81133.1.off64) #6, !dbg !313, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %436, i64 %.sroa.111134.1.off0) #6, !dbg !307, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %440, i64 %.sroa.111134.1.off64) #6, !dbg !313, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %446, i64 %.sroa.01129.1.off0) #6, !dbg !315, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %450, i64 %.sroa.01129.1.off64) #6, !dbg !318, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %454, i64 %.sroa.5.1.off0) #6, !dbg !315, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %458, i64 %.sroa.5.1.off64) #6, !dbg !318, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %462, i64 %.sroa.81130.1.off0) #6, !dbg !315, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %466, i64 %.sroa.81130.1.off64) #6, !dbg !318, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %470, i64 %.sroa.11.1.off0) #6, !dbg !315, !srcloc !312
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %474, i64 %.sroa.11.1.off64) #6, !dbg !318, !srcloc !312
  br label %888, !dbg !320

888:                                              ; preds = %887, %606
  tail call void @llvm.amdgcn.s.barrier(), !dbg !321
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !322
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !323, !srcloc !324
  tail call void @llvm.amdgcn.s.setprio(i16 1), !dbg !325
  %889 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01333.6.vec.insert2024, <4 x i16> %.sroa.01136.6.vec.insert2028, <4 x float> %855, i32 0, i32 0, i32 0), !dbg !326
  %890 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01333.6.vec.insert2024, <4 x i16> %.sroa.26.14.vec.insert2027, <4 x float> %856, i32 0, i32 0, i32 0), !dbg !326
  %891 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01333.6.vec.insert2024, <4 x i16> %.sroa.50.22.vec.insert2026, <4 x float> %857, i32 0, i32 0, i32 0), !dbg !326
  %892 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.01333.6.vec.insert2024, <4 x i16> %.sroa.74.30.vec.insert2025, <4 x float> %858, i32 0, i32 0, i32 0), !dbg !326
  %893 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.18.14.vec.insert2023, <4 x i16> %.sroa.01136.6.vec.insert2028, <4 x float> %859, i32 0, i32 0, i32 0), !dbg !326
  %894 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.18.14.vec.insert2023, <4 x i16> %.sroa.26.14.vec.insert2027, <4 x float> %860, i32 0, i32 0, i32 0), !dbg !326
  %895 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.18.14.vec.insert2023, <4 x i16> %.sroa.50.22.vec.insert2026, <4 x float> %861, i32 0, i32 0, i32 0), !dbg !326
  %896 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.18.14.vec.insert2023, <4 x i16> %.sroa.74.30.vec.insert2025, <4 x float> %862, i32 0, i32 0, i32 0), !dbg !326
  %897 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.34.22.vec.insert2022, <4 x i16> %.sroa.01136.6.vec.insert2028, <4 x float> %863, i32 0, i32 0, i32 0), !dbg !326
  %898 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.34.22.vec.insert2022, <4 x i16> %.sroa.26.14.vec.insert2027, <4 x float> %864, i32 0, i32 0, i32 0), !dbg !326
  %899 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.34.22.vec.insert2022, <4 x i16> %.sroa.50.22.vec.insert2026, <4 x float> %865, i32 0, i32 0, i32 0), !dbg !326
  %900 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.34.22.vec.insert2022, <4 x i16> %.sroa.74.30.vec.insert2025, <4 x float> %866, i32 0, i32 0, i32 0), !dbg !326
  %901 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501382.30.vec.insert2021, <4 x i16> %.sroa.01136.6.vec.insert2028, <4 x float> %867, i32 0, i32 0, i32 0), !dbg !326
  %902 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501382.30.vec.insert2021, <4 x i16> %.sroa.26.14.vec.insert2027, <4 x float> %868, i32 0, i32 0, i32 0), !dbg !326
  %903 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501382.30.vec.insert2021, <4 x i16> %.sroa.50.22.vec.insert2026, <4 x float> %869, i32 0, i32 0, i32 0), !dbg !326
  %904 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.501382.30.vec.insert2021, <4 x i16> %.sroa.74.30.vec.insert2025, <4 x float> %870, i32 0, i32 0, i32 0), !dbg !326
  %905 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.66.38.vec.insert2020, <4 x i16> %.sroa.01136.6.vec.insert2028, <4 x float> %871, i32 0, i32 0, i32 0), !dbg !330
  %906 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.66.38.vec.insert2020, <4 x i16> %.sroa.26.14.vec.insert2027, <4 x float> %872, i32 0, i32 0, i32 0), !dbg !330
  %907 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.66.38.vec.insert2020, <4 x i16> %.sroa.50.22.vec.insert2026, <4 x float> %873, i32 0, i32 0, i32 0), !dbg !330
  %908 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.66.38.vec.insert2020, <4 x i16> %.sroa.74.30.vec.insert2025, <4 x float> %874, i32 0, i32 0, i32 0), !dbg !330
  %909 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.82.46.vec.insert2019, <4 x i16> %.sroa.01136.6.vec.insert2028, <4 x float> %875, i32 0, i32 0, i32 0), !dbg !330
  %910 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.82.46.vec.insert2019, <4 x i16> %.sroa.26.14.vec.insert2027, <4 x float> %876, i32 0, i32 0, i32 0), !dbg !330
  %911 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.82.46.vec.insert2019, <4 x i16> %.sroa.50.22.vec.insert2026, <4 x float> %877, i32 0, i32 0, i32 0), !dbg !330
  %912 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.82.46.vec.insert2019, <4 x i16> %.sroa.74.30.vec.insert2025, <4 x float> %878, i32 0, i32 0, i32 0), !dbg !330
  %913 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.98.54.vec.insert2018, <4 x i16> %.sroa.01136.6.vec.insert2028, <4 x float> %879, i32 0, i32 0, i32 0), !dbg !330
  %914 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.98.54.vec.insert2018, <4 x i16> %.sroa.26.14.vec.insert2027, <4 x float> %880, i32 0, i32 0, i32 0), !dbg !330
  %915 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.98.54.vec.insert2018, <4 x i16> %.sroa.50.22.vec.insert2026, <4 x float> %881, i32 0, i32 0, i32 0), !dbg !330
  %916 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.98.54.vec.insert2018, <4 x i16> %.sroa.74.30.vec.insert2025, <4 x float> %882, i32 0, i32 0, i32 0), !dbg !330
  %917 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.114.62.vec.insert2017, <4 x i16> %.sroa.01136.6.vec.insert2028, <4 x float> %883, i32 0, i32 0, i32 0), !dbg !330
  %918 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.114.62.vec.insert2017, <4 x i16> %.sroa.26.14.vec.insert2027, <4 x float> %884, i32 0, i32 0, i32 0), !dbg !330
  %919 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.114.62.vec.insert2017, <4 x i16> %.sroa.50.22.vec.insert2026, <4 x float> %885, i32 0, i32 0, i32 0), !dbg !330
  %920 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.114.62.vec.insert2017, <4 x i16> %.sroa.74.30.vec.insert2025, <4 x float> %886, i32 0, i32 0, i32 0), !dbg !330
  tail call void @llvm.amdgcn.s.setprio(i16 0), !dbg !334
  tail call void @llvm.amdgcn.s.barrier(), !dbg !335
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !336
  %exitcond.not = icmp eq i32 %478, 128, !dbg !337
  br i1 %exitcond.not, label %475, label %477, !dbg !133, !llvm.loop !338

921:                                              ; preds = %475
  tail call void @llvm.amdgcn.s.barrier(), !dbg !341
  br label %922, !dbg !342

922:                                              ; preds = %921, %475
  %923 = shl i32 %12, 8, !dbg !343
  %924 = shl nuw nsw i32 %15, 6, !dbg !343
  %925 = or disjoint i32 %923, %924, !dbg !343
  %926 = or disjoint i32 %16, %92, !dbg !351
  %927 = sext i32 %925 to i64, !dbg !352
  %928 = mul i64 %.sroa.23.0.copyload, %927, !dbg !355
  %929 = sext i32 %926 to i64, !dbg !356
  %930 = getelementptr float, ptr %.sroa.171610.0.copyload, i64 %928, !dbg !357
  %931 = getelementptr float, ptr %930, i64 %929, !dbg !357
  %932 = trunc i64 %.sroa.23.0.copyload to i32, !dbg !358
  %933 = mul nsw i32 %157, %932
  %934 = or disjoint i32 %157, 1
  %935 = mul nsw i32 %934, %932
  %936 = or disjoint i32 %157, 2
  %937 = mul nsw i32 %936, %932
  %938 = or disjoint i32 %157, 3
  %939 = mul nsw i32 %938, %932
  %.sroa.0.0.vec.extract = extractelement <4 x float> %889, i64 0, !dbg !359
  %940 = add nsw i32 %933, %155, !dbg !360
  %941 = sext i32 %940 to i64, !dbg !361
  %942 = getelementptr inbounds float, ptr %931, i64 %941, !dbg !361
  store float %.sroa.0.0.vec.extract, ptr %942, align 4, !dbg !362, !tbaa !363
  %.sroa.0.4.vec.extract = extractelement <4 x float> %889, i64 1, !dbg !367
  %943 = add nsw i32 %935, %155, !dbg !368
  %944 = sext i32 %943 to i64, !dbg !369
  %945 = getelementptr inbounds float, ptr %931, i64 %944, !dbg !369
  store float %.sroa.0.4.vec.extract, ptr %945, align 4, !dbg !370, !tbaa !363
  %.sroa.0.8.vec.extract = extractelement <4 x float> %889, i64 2, !dbg !371
  %946 = add nsw i32 %937, %155, !dbg !372
  %947 = sext i32 %946 to i64, !dbg !373
  %948 = getelementptr inbounds float, ptr %931, i64 %947, !dbg !373
  store float %.sroa.0.8.vec.extract, ptr %948, align 4, !dbg !374, !tbaa !363
  %.sroa.0.12.vec.extract = extractelement <4 x float> %889, i64 3, !dbg !375
  %949 = add nsw i32 %939, %155, !dbg !376
  %950 = sext i32 %949 to i64, !dbg !377
  %951 = getelementptr inbounds float, ptr %931, i64 %950, !dbg !377
  store float %.sroa.0.12.vec.extract, ptr %951, align 4, !dbg !378, !tbaa !363
  %.sroa.18.16.vec.extract = extractelement <4 x float> %890, i64 0, !dbg !359
  %952 = add nsw i32 %933, %171, !dbg !360
  %953 = sext i32 %952 to i64, !dbg !361
  %954 = getelementptr inbounds float, ptr %931, i64 %953, !dbg !361
  store float %.sroa.18.16.vec.extract, ptr %954, align 4, !dbg !362, !tbaa !363
  %.sroa.18.20.vec.extract = extractelement <4 x float> %890, i64 1, !dbg !367
  %955 = add nsw i32 %935, %171, !dbg !368
  %956 = sext i32 %955 to i64, !dbg !369
  %957 = getelementptr inbounds float, ptr %931, i64 %956, !dbg !369
  store float %.sroa.18.20.vec.extract, ptr %957, align 4, !dbg !370, !tbaa !363
  %.sroa.18.24.vec.extract = extractelement <4 x float> %890, i64 2, !dbg !371
  %958 = add nsw i32 %937, %171, !dbg !372
  %959 = sext i32 %958 to i64, !dbg !373
  %960 = getelementptr inbounds float, ptr %931, i64 %959, !dbg !373
  store float %.sroa.18.24.vec.extract, ptr %960, align 4, !dbg !374, !tbaa !363
  %.sroa.18.28.vec.extract = extractelement <4 x float> %890, i64 3, !dbg !375
  %961 = add nsw i32 %939, %171, !dbg !376
  %962 = sext i32 %961 to i64, !dbg !377
  %963 = getelementptr inbounds float, ptr %931, i64 %962, !dbg !377
  store float %.sroa.18.28.vec.extract, ptr %963, align 4, !dbg !378, !tbaa !363
  %.sroa.34.32.vec.extract = extractelement <4 x float> %891, i64 0, !dbg !359
  %964 = add nsw i32 %933, %179, !dbg !360
  %965 = sext i32 %964 to i64, !dbg !361
  %966 = getelementptr inbounds float, ptr %931, i64 %965, !dbg !361
  store float %.sroa.34.32.vec.extract, ptr %966, align 4, !dbg !362, !tbaa !363
  %.sroa.34.36.vec.extract = extractelement <4 x float> %891, i64 1, !dbg !367
  %967 = add nsw i32 %935, %179, !dbg !368
  %968 = sext i32 %967 to i64, !dbg !369
  %969 = getelementptr inbounds float, ptr %931, i64 %968, !dbg !369
  store float %.sroa.34.36.vec.extract, ptr %969, align 4, !dbg !370, !tbaa !363
  %.sroa.34.40.vec.extract = extractelement <4 x float> %891, i64 2, !dbg !371
  %970 = add nsw i32 %937, %179, !dbg !372
  %971 = sext i32 %970 to i64, !dbg !373
  %972 = getelementptr inbounds float, ptr %931, i64 %971, !dbg !373
  store float %.sroa.34.40.vec.extract, ptr %972, align 4, !dbg !374, !tbaa !363
  %.sroa.34.44.vec.extract = extractelement <4 x float> %891, i64 3, !dbg !375
  %973 = add nsw i32 %939, %179, !dbg !376
  %974 = sext i32 %973 to i64, !dbg !377
  %975 = getelementptr inbounds float, ptr %931, i64 %974, !dbg !377
  store float %.sroa.34.44.vec.extract, ptr %975, align 4, !dbg !378, !tbaa !363
  %.sroa.50.48.vec.extract = extractelement <4 x float> %892, i64 0, !dbg !359
  %976 = add nsw i32 %933, %187, !dbg !360
  %977 = sext i32 %976 to i64, !dbg !361
  %978 = getelementptr inbounds float, ptr %931, i64 %977, !dbg !361
  store float %.sroa.50.48.vec.extract, ptr %978, align 4, !dbg !362, !tbaa !363
  %.sroa.50.52.vec.extract = extractelement <4 x float> %892, i64 1, !dbg !367
  %979 = add nsw i32 %935, %187, !dbg !368
  %980 = sext i32 %979 to i64, !dbg !369
  %981 = getelementptr inbounds float, ptr %931, i64 %980, !dbg !369
  store float %.sroa.50.52.vec.extract, ptr %981, align 4, !dbg !370, !tbaa !363
  %.sroa.50.56.vec.extract = extractelement <4 x float> %892, i64 2, !dbg !371
  %982 = add nsw i32 %937, %187, !dbg !372
  %983 = sext i32 %982 to i64, !dbg !373
  %984 = getelementptr inbounds float, ptr %931, i64 %983, !dbg !373
  store float %.sroa.50.56.vec.extract, ptr %984, align 4, !dbg !374, !tbaa !363
  %.sroa.50.60.vec.extract = extractelement <4 x float> %892, i64 3, !dbg !375
  %985 = add nsw i32 %939, %187, !dbg !376
  %986 = sext i32 %985 to i64, !dbg !377
  %987 = getelementptr inbounds float, ptr %931, i64 %986, !dbg !377
  store float %.sroa.50.60.vec.extract, ptr %987, align 4, !dbg !378, !tbaa !363
  %988 = or disjoint i32 %157, 16, !dbg !379
  %989 = mul nsw i32 %988, %932
  %990 = or disjoint i32 %157, 17
  %991 = mul nsw i32 %990, %932
  %992 = or disjoint i32 %157, 18
  %993 = mul nsw i32 %992, %932
  %994 = or disjoint i32 %157, 19
  %995 = mul nsw i32 %994, %932
  %.sroa.66.64.vec.extract = extractelement <4 x float> %893, i64 0, !dbg !359
  %996 = add nsw i32 %989, %155, !dbg !360
  %997 = sext i32 %996 to i64, !dbg !361
  %998 = getelementptr inbounds float, ptr %931, i64 %997, !dbg !361
  store float %.sroa.66.64.vec.extract, ptr %998, align 4, !dbg !362, !tbaa !363
  %.sroa.66.68.vec.extract = extractelement <4 x float> %893, i64 1, !dbg !367
  %999 = add nsw i32 %991, %155, !dbg !368
  %1000 = sext i32 %999 to i64, !dbg !369
  %1001 = getelementptr inbounds float, ptr %931, i64 %1000, !dbg !369
  store float %.sroa.66.68.vec.extract, ptr %1001, align 4, !dbg !370, !tbaa !363
  %.sroa.66.72.vec.extract = extractelement <4 x float> %893, i64 2, !dbg !371
  %1002 = add nsw i32 %993, %155, !dbg !372
  %1003 = sext i32 %1002 to i64, !dbg !373
  %1004 = getelementptr inbounds float, ptr %931, i64 %1003, !dbg !373
  store float %.sroa.66.72.vec.extract, ptr %1004, align 4, !dbg !374, !tbaa !363
  %.sroa.66.76.vec.extract = extractelement <4 x float> %893, i64 3, !dbg !375
  %1005 = add nsw i32 %995, %155, !dbg !376
  %1006 = sext i32 %1005 to i64, !dbg !377
  %1007 = getelementptr inbounds float, ptr %931, i64 %1006, !dbg !377
  store float %.sroa.66.76.vec.extract, ptr %1007, align 4, !dbg !378, !tbaa !363
  %.sroa.82.80.vec.extract = extractelement <4 x float> %894, i64 0, !dbg !359
  %1008 = add nsw i32 %989, %171, !dbg !360
  %1009 = sext i32 %1008 to i64, !dbg !361
  %1010 = getelementptr inbounds float, ptr %931, i64 %1009, !dbg !361
  store float %.sroa.82.80.vec.extract, ptr %1010, align 4, !dbg !362, !tbaa !363
  %.sroa.82.84.vec.extract = extractelement <4 x float> %894, i64 1, !dbg !367
  %1011 = add nsw i32 %991, %171, !dbg !368
  %1012 = sext i32 %1011 to i64, !dbg !369
  %1013 = getelementptr inbounds float, ptr %931, i64 %1012, !dbg !369
  store float %.sroa.82.84.vec.extract, ptr %1013, align 4, !dbg !370, !tbaa !363
  %.sroa.82.88.vec.extract = extractelement <4 x float> %894, i64 2, !dbg !371
  %1014 = add nsw i32 %993, %171, !dbg !372
  %1015 = sext i32 %1014 to i64, !dbg !373
  %1016 = getelementptr inbounds float, ptr %931, i64 %1015, !dbg !373
  store float %.sroa.82.88.vec.extract, ptr %1016, align 4, !dbg !374, !tbaa !363
  %.sroa.82.92.vec.extract = extractelement <4 x float> %894, i64 3, !dbg !375
  %1017 = add nsw i32 %995, %171, !dbg !376
  %1018 = sext i32 %1017 to i64, !dbg !377
  %1019 = getelementptr inbounds float, ptr %931, i64 %1018, !dbg !377
  store float %.sroa.82.92.vec.extract, ptr %1019, align 4, !dbg !378, !tbaa !363
  %.sroa.98.96.vec.extract = extractelement <4 x float> %895, i64 0, !dbg !359
  %1020 = add nsw i32 %989, %179, !dbg !360
  %1021 = sext i32 %1020 to i64, !dbg !361
  %1022 = getelementptr inbounds float, ptr %931, i64 %1021, !dbg !361
  store float %.sroa.98.96.vec.extract, ptr %1022, align 4, !dbg !362, !tbaa !363
  %.sroa.98.100.vec.extract = extractelement <4 x float> %895, i64 1, !dbg !367
  %1023 = add nsw i32 %991, %179, !dbg !368
  %1024 = sext i32 %1023 to i64, !dbg !369
  %1025 = getelementptr inbounds float, ptr %931, i64 %1024, !dbg !369
  store float %.sroa.98.100.vec.extract, ptr %1025, align 4, !dbg !370, !tbaa !363
  %.sroa.98.104.vec.extract = extractelement <4 x float> %895, i64 2, !dbg !371
  %1026 = add nsw i32 %993, %179, !dbg !372
  %1027 = sext i32 %1026 to i64, !dbg !373
  %1028 = getelementptr inbounds float, ptr %931, i64 %1027, !dbg !373
  store float %.sroa.98.104.vec.extract, ptr %1028, align 4, !dbg !374, !tbaa !363
  %.sroa.98.108.vec.extract = extractelement <4 x float> %895, i64 3, !dbg !375
  %1029 = add nsw i32 %995, %179, !dbg !376
  %1030 = sext i32 %1029 to i64, !dbg !377
  %1031 = getelementptr inbounds float, ptr %931, i64 %1030, !dbg !377
  store float %.sroa.98.108.vec.extract, ptr %1031, align 4, !dbg !378, !tbaa !363
  %.sroa.114.112.vec.extract = extractelement <4 x float> %896, i64 0, !dbg !359
  %1032 = add nsw i32 %989, %187, !dbg !360
  %1033 = sext i32 %1032 to i64, !dbg !361
  %1034 = getelementptr inbounds float, ptr %931, i64 %1033, !dbg !361
  store float %.sroa.114.112.vec.extract, ptr %1034, align 4, !dbg !362, !tbaa !363
  %.sroa.114.116.vec.extract = extractelement <4 x float> %896, i64 1, !dbg !367
  %1035 = add nsw i32 %991, %187, !dbg !368
  %1036 = sext i32 %1035 to i64, !dbg !369
  %1037 = getelementptr inbounds float, ptr %931, i64 %1036, !dbg !369
  store float %.sroa.114.116.vec.extract, ptr %1037, align 4, !dbg !370, !tbaa !363
  %.sroa.114.120.vec.extract = extractelement <4 x float> %896, i64 2, !dbg !371
  %1038 = add nsw i32 %993, %187, !dbg !372
  %1039 = sext i32 %1038 to i64, !dbg !373
  %1040 = getelementptr inbounds float, ptr %931, i64 %1039, !dbg !373
  store float %.sroa.114.120.vec.extract, ptr %1040, align 4, !dbg !374, !tbaa !363
  %.sroa.114.124.vec.extract = extractelement <4 x float> %896, i64 3, !dbg !375
  %1041 = add nsw i32 %995, %187, !dbg !376
  %1042 = sext i32 %1041 to i64, !dbg !377
  %1043 = getelementptr inbounds float, ptr %931, i64 %1042, !dbg !377
  store float %.sroa.114.124.vec.extract, ptr %1043, align 4, !dbg !378, !tbaa !363
  %1044 = or disjoint i32 %157, 32, !dbg !379
  %1045 = mul nsw i32 %1044, %932
  %1046 = or disjoint i32 %157, 33
  %1047 = mul nsw i32 %1046, %932
  %1048 = or disjoint i32 %157, 34
  %1049 = mul nsw i32 %1048, %932
  %1050 = or disjoint i32 %157, 35
  %1051 = mul nsw i32 %1050, %932
  %.sroa.130.128.vec.extract = extractelement <4 x float> %897, i64 0, !dbg !359
  %1052 = add nsw i32 %1045, %155, !dbg !360
  %1053 = sext i32 %1052 to i64, !dbg !361
  %1054 = getelementptr inbounds float, ptr %931, i64 %1053, !dbg !361
  store float %.sroa.130.128.vec.extract, ptr %1054, align 4, !dbg !362, !tbaa !363
  %.sroa.130.132.vec.extract = extractelement <4 x float> %897, i64 1, !dbg !367
  %1055 = add nsw i32 %1047, %155, !dbg !368
  %1056 = sext i32 %1055 to i64, !dbg !369
  %1057 = getelementptr inbounds float, ptr %931, i64 %1056, !dbg !369
  store float %.sroa.130.132.vec.extract, ptr %1057, align 4, !dbg !370, !tbaa !363
  %.sroa.130.136.vec.extract = extractelement <4 x float> %897, i64 2, !dbg !371
  %1058 = add nsw i32 %1049, %155, !dbg !372
  %1059 = sext i32 %1058 to i64, !dbg !373
  %1060 = getelementptr inbounds float, ptr %931, i64 %1059, !dbg !373
  store float %.sroa.130.136.vec.extract, ptr %1060, align 4, !dbg !374, !tbaa !363
  %.sroa.130.140.vec.extract = extractelement <4 x float> %897, i64 3, !dbg !375
  %1061 = add nsw i32 %1051, %155, !dbg !376
  %1062 = sext i32 %1061 to i64, !dbg !377
  %1063 = getelementptr inbounds float, ptr %931, i64 %1062, !dbg !377
  store float %.sroa.130.140.vec.extract, ptr %1063, align 4, !dbg !378, !tbaa !363
  %.sroa.146.144.vec.extract = extractelement <4 x float> %898, i64 0, !dbg !359
  %1064 = add nsw i32 %1045, %171, !dbg !360
  %1065 = sext i32 %1064 to i64, !dbg !361
  %1066 = getelementptr inbounds float, ptr %931, i64 %1065, !dbg !361
  store float %.sroa.146.144.vec.extract, ptr %1066, align 4, !dbg !362, !tbaa !363
  %.sroa.146.148.vec.extract = extractelement <4 x float> %898, i64 1, !dbg !367
  %1067 = add nsw i32 %1047, %171, !dbg !368
  %1068 = sext i32 %1067 to i64, !dbg !369
  %1069 = getelementptr inbounds float, ptr %931, i64 %1068, !dbg !369
  store float %.sroa.146.148.vec.extract, ptr %1069, align 4, !dbg !370, !tbaa !363
  %.sroa.146.152.vec.extract = extractelement <4 x float> %898, i64 2, !dbg !371
  %1070 = add nsw i32 %1049, %171, !dbg !372
  %1071 = sext i32 %1070 to i64, !dbg !373
  %1072 = getelementptr inbounds float, ptr %931, i64 %1071, !dbg !373
  store float %.sroa.146.152.vec.extract, ptr %1072, align 4, !dbg !374, !tbaa !363
  %.sroa.146.156.vec.extract = extractelement <4 x float> %898, i64 3, !dbg !375
  %1073 = add nsw i32 %1051, %171, !dbg !376
  %1074 = sext i32 %1073 to i64, !dbg !377
  %1075 = getelementptr inbounds float, ptr %931, i64 %1074, !dbg !377
  store float %.sroa.146.156.vec.extract, ptr %1075, align 4, !dbg !378, !tbaa !363
  %.sroa.162.160.vec.extract = extractelement <4 x float> %899, i64 0, !dbg !359
  %1076 = add nsw i32 %1045, %179, !dbg !360
  %1077 = sext i32 %1076 to i64, !dbg !361
  %1078 = getelementptr inbounds float, ptr %931, i64 %1077, !dbg !361
  store float %.sroa.162.160.vec.extract, ptr %1078, align 4, !dbg !362, !tbaa !363
  %.sroa.162.164.vec.extract = extractelement <4 x float> %899, i64 1, !dbg !367
  %1079 = add nsw i32 %1047, %179, !dbg !368
  %1080 = sext i32 %1079 to i64, !dbg !369
  %1081 = getelementptr inbounds float, ptr %931, i64 %1080, !dbg !369
  store float %.sroa.162.164.vec.extract, ptr %1081, align 4, !dbg !370, !tbaa !363
  %.sroa.162.168.vec.extract = extractelement <4 x float> %899, i64 2, !dbg !371
  %1082 = add nsw i32 %1049, %179, !dbg !372
  %1083 = sext i32 %1082 to i64, !dbg !373
  %1084 = getelementptr inbounds float, ptr %931, i64 %1083, !dbg !373
  store float %.sroa.162.168.vec.extract, ptr %1084, align 4, !dbg !374, !tbaa !363
  %.sroa.162.172.vec.extract = extractelement <4 x float> %899, i64 3, !dbg !375
  %1085 = add nsw i32 %1051, %179, !dbg !376
  %1086 = sext i32 %1085 to i64, !dbg !377
  %1087 = getelementptr inbounds float, ptr %931, i64 %1086, !dbg !377
  store float %.sroa.162.172.vec.extract, ptr %1087, align 4, !dbg !378, !tbaa !363
  %.sroa.178.176.vec.extract = extractelement <4 x float> %900, i64 0, !dbg !359
  %1088 = add nsw i32 %1045, %187, !dbg !360
  %1089 = sext i32 %1088 to i64, !dbg !361
  %1090 = getelementptr inbounds float, ptr %931, i64 %1089, !dbg !361
  store float %.sroa.178.176.vec.extract, ptr %1090, align 4, !dbg !362, !tbaa !363
  %.sroa.178.180.vec.extract = extractelement <4 x float> %900, i64 1, !dbg !367
  %1091 = add nsw i32 %1047, %187, !dbg !368
  %1092 = sext i32 %1091 to i64, !dbg !369
  %1093 = getelementptr inbounds float, ptr %931, i64 %1092, !dbg !369
  store float %.sroa.178.180.vec.extract, ptr %1093, align 4, !dbg !370, !tbaa !363
  %.sroa.178.184.vec.extract = extractelement <4 x float> %900, i64 2, !dbg !371
  %1094 = add nsw i32 %1049, %187, !dbg !372
  %1095 = sext i32 %1094 to i64, !dbg !373
  %1096 = getelementptr inbounds float, ptr %931, i64 %1095, !dbg !373
  store float %.sroa.178.184.vec.extract, ptr %1096, align 4, !dbg !374, !tbaa !363
  %.sroa.178.188.vec.extract = extractelement <4 x float> %900, i64 3, !dbg !375
  %1097 = add nsw i32 %1051, %187, !dbg !376
  %1098 = sext i32 %1097 to i64, !dbg !377
  %1099 = getelementptr inbounds float, ptr %931, i64 %1098, !dbg !377
  store float %.sroa.178.188.vec.extract, ptr %1099, align 4, !dbg !378, !tbaa !363
  %1100 = or disjoint i32 %157, 48, !dbg !379
  %1101 = mul nsw i32 %1100, %932
  %1102 = or disjoint i32 %157, 49
  %1103 = mul nsw i32 %1102, %932
  %1104 = or disjoint i32 %157, 50
  %1105 = mul nsw i32 %1104, %932
  %1106 = or disjoint i32 %157, 51
  %1107 = mul nsw i32 %1106, %932
  %.sroa.194.192.vec.extract = extractelement <4 x float> %901, i64 0, !dbg !359
  %1108 = add nsw i32 %1101, %155, !dbg !360
  %1109 = sext i32 %1108 to i64, !dbg !361
  %1110 = getelementptr inbounds float, ptr %931, i64 %1109, !dbg !361
  store float %.sroa.194.192.vec.extract, ptr %1110, align 4, !dbg !362, !tbaa !363
  %.sroa.194.196.vec.extract = extractelement <4 x float> %901, i64 1, !dbg !367
  %1111 = add nsw i32 %1103, %155, !dbg !368
  %1112 = sext i32 %1111 to i64, !dbg !369
  %1113 = getelementptr inbounds float, ptr %931, i64 %1112, !dbg !369
  store float %.sroa.194.196.vec.extract, ptr %1113, align 4, !dbg !370, !tbaa !363
  %.sroa.194.200.vec.extract = extractelement <4 x float> %901, i64 2, !dbg !371
  %1114 = add nsw i32 %1105, %155, !dbg !372
  %1115 = sext i32 %1114 to i64, !dbg !373
  %1116 = getelementptr inbounds float, ptr %931, i64 %1115, !dbg !373
  store float %.sroa.194.200.vec.extract, ptr %1116, align 4, !dbg !374, !tbaa !363
  %.sroa.194.204.vec.extract = extractelement <4 x float> %901, i64 3, !dbg !375
  %1117 = add nsw i32 %1107, %155, !dbg !376
  %1118 = sext i32 %1117 to i64, !dbg !377
  %1119 = getelementptr inbounds float, ptr %931, i64 %1118, !dbg !377
  store float %.sroa.194.204.vec.extract, ptr %1119, align 4, !dbg !378, !tbaa !363
  %.sroa.210.208.vec.extract = extractelement <4 x float> %902, i64 0, !dbg !359
  %1120 = add nsw i32 %1101, %171, !dbg !360
  %1121 = sext i32 %1120 to i64, !dbg !361
  %1122 = getelementptr inbounds float, ptr %931, i64 %1121, !dbg !361
  store float %.sroa.210.208.vec.extract, ptr %1122, align 4, !dbg !362, !tbaa !363
  %.sroa.210.212.vec.extract = extractelement <4 x float> %902, i64 1, !dbg !367
  %1123 = add nsw i32 %1103, %171, !dbg !368
  %1124 = sext i32 %1123 to i64, !dbg !369
  %1125 = getelementptr inbounds float, ptr %931, i64 %1124, !dbg !369
  store float %.sroa.210.212.vec.extract, ptr %1125, align 4, !dbg !370, !tbaa !363
  %.sroa.210.216.vec.extract = extractelement <4 x float> %902, i64 2, !dbg !371
  %1126 = add nsw i32 %1105, %171, !dbg !372
  %1127 = sext i32 %1126 to i64, !dbg !373
  %1128 = getelementptr inbounds float, ptr %931, i64 %1127, !dbg !373
  store float %.sroa.210.216.vec.extract, ptr %1128, align 4, !dbg !374, !tbaa !363
  %.sroa.210.220.vec.extract = extractelement <4 x float> %902, i64 3, !dbg !375
  %1129 = add nsw i32 %1107, %171, !dbg !376
  %1130 = sext i32 %1129 to i64, !dbg !377
  %1131 = getelementptr inbounds float, ptr %931, i64 %1130, !dbg !377
  store float %.sroa.210.220.vec.extract, ptr %1131, align 4, !dbg !378, !tbaa !363
  %.sroa.226.224.vec.extract = extractelement <4 x float> %903, i64 0, !dbg !359
  %1132 = add nsw i32 %1101, %179, !dbg !360
  %1133 = sext i32 %1132 to i64, !dbg !361
  %1134 = getelementptr inbounds float, ptr %931, i64 %1133, !dbg !361
  store float %.sroa.226.224.vec.extract, ptr %1134, align 4, !dbg !362, !tbaa !363
  %.sroa.226.228.vec.extract = extractelement <4 x float> %903, i64 1, !dbg !367
  %1135 = add nsw i32 %1103, %179, !dbg !368
  %1136 = sext i32 %1135 to i64, !dbg !369
  %1137 = getelementptr inbounds float, ptr %931, i64 %1136, !dbg !369
  store float %.sroa.226.228.vec.extract, ptr %1137, align 4, !dbg !370, !tbaa !363
  %.sroa.226.232.vec.extract = extractelement <4 x float> %903, i64 2, !dbg !371
  %1138 = add nsw i32 %1105, %179, !dbg !372
  %1139 = sext i32 %1138 to i64, !dbg !373
  %1140 = getelementptr inbounds float, ptr %931, i64 %1139, !dbg !373
  store float %.sroa.226.232.vec.extract, ptr %1140, align 4, !dbg !374, !tbaa !363
  %.sroa.226.236.vec.extract = extractelement <4 x float> %903, i64 3, !dbg !375
  %1141 = add nsw i32 %1107, %179, !dbg !376
  %1142 = sext i32 %1141 to i64, !dbg !377
  %1143 = getelementptr inbounds float, ptr %931, i64 %1142, !dbg !377
  store float %.sroa.226.236.vec.extract, ptr %1143, align 4, !dbg !378, !tbaa !363
  %.sroa.242.240.vec.extract = extractelement <4 x float> %904, i64 0, !dbg !359
  %1144 = add nsw i32 %1101, %187, !dbg !360
  %1145 = sext i32 %1144 to i64, !dbg !361
  %1146 = getelementptr inbounds float, ptr %931, i64 %1145, !dbg !361
  store float %.sroa.242.240.vec.extract, ptr %1146, align 4, !dbg !362, !tbaa !363
  %.sroa.242.244.vec.extract = extractelement <4 x float> %904, i64 1, !dbg !367
  %1147 = add nsw i32 %1103, %187, !dbg !368
  %1148 = sext i32 %1147 to i64, !dbg !369
  %1149 = getelementptr inbounds float, ptr %931, i64 %1148, !dbg !369
  store float %.sroa.242.244.vec.extract, ptr %1149, align 4, !dbg !370, !tbaa !363
  %.sroa.242.248.vec.extract = extractelement <4 x float> %904, i64 2, !dbg !371
  %1150 = add nsw i32 %1105, %187, !dbg !372
  %1151 = sext i32 %1150 to i64, !dbg !373
  %1152 = getelementptr inbounds float, ptr %931, i64 %1151, !dbg !373
  store float %.sroa.242.248.vec.extract, ptr %1152, align 4, !dbg !374, !tbaa !363
  %.sroa.242.252.vec.extract = extractelement <4 x float> %904, i64 3, !dbg !375
  %1153 = add nsw i32 %1107, %187, !dbg !376
  %1154 = sext i32 %1153 to i64, !dbg !377
  %1155 = getelementptr inbounds float, ptr %931, i64 %1154, !dbg !377
  store float %.sroa.242.252.vec.extract, ptr %1155, align 4, !dbg !378, !tbaa !363
  %1156 = add i32 %925, 128, !dbg !380
  %1157 = sext i32 %1156 to i64, !dbg !384
  %1158 = mul i64 %.sroa.23.0.copyload, %1157, !dbg !386
  %1159 = getelementptr float, ptr %.sroa.171610.0.copyload, i64 %1158, !dbg !387
  %1160 = getelementptr float, ptr %1159, i64 %929, !dbg !387
  %.sroa.258.256.vec.extract = extractelement <4 x float> %905, i64 0, !dbg !388
  %1161 = getelementptr inbounds float, ptr %1160, i64 %941, !dbg !389
  store float %.sroa.258.256.vec.extract, ptr %1161, align 4, !dbg !390, !tbaa !363
  %.sroa.258.260.vec.extract = extractelement <4 x float> %905, i64 1, !dbg !391
  %1162 = getelementptr inbounds float, ptr %1160, i64 %944, !dbg !392
  store float %.sroa.258.260.vec.extract, ptr %1162, align 4, !dbg !393, !tbaa !363
  %.sroa.258.264.vec.extract = extractelement <4 x float> %905, i64 2, !dbg !394
  %1163 = getelementptr inbounds float, ptr %1160, i64 %947, !dbg !395
  store float %.sroa.258.264.vec.extract, ptr %1163, align 4, !dbg !396, !tbaa !363
  %.sroa.258.268.vec.extract = extractelement <4 x float> %905, i64 3, !dbg !397
  %1164 = getelementptr inbounds float, ptr %1160, i64 %950, !dbg !398
  store float %.sroa.258.268.vec.extract, ptr %1164, align 4, !dbg !399, !tbaa !363
  %.sroa.274.272.vec.extract = extractelement <4 x float> %906, i64 0, !dbg !388
  %1165 = getelementptr inbounds float, ptr %1160, i64 %953, !dbg !389
  store float %.sroa.274.272.vec.extract, ptr %1165, align 4, !dbg !390, !tbaa !363
  %.sroa.274.276.vec.extract = extractelement <4 x float> %906, i64 1, !dbg !391
  %1166 = getelementptr inbounds float, ptr %1160, i64 %956, !dbg !392
  store float %.sroa.274.276.vec.extract, ptr %1166, align 4, !dbg !393, !tbaa !363
  %.sroa.274.280.vec.extract = extractelement <4 x float> %906, i64 2, !dbg !394
  %1167 = getelementptr inbounds float, ptr %1160, i64 %959, !dbg !395
  store float %.sroa.274.280.vec.extract, ptr %1167, align 4, !dbg !396, !tbaa !363
  %.sroa.274.284.vec.extract = extractelement <4 x float> %906, i64 3, !dbg !397
  %1168 = getelementptr inbounds float, ptr %1160, i64 %962, !dbg !398
  store float %.sroa.274.284.vec.extract, ptr %1168, align 4, !dbg !399, !tbaa !363
  %.sroa.290.288.vec.extract = extractelement <4 x float> %907, i64 0, !dbg !388
  %1169 = getelementptr inbounds float, ptr %1160, i64 %965, !dbg !389
  store float %.sroa.290.288.vec.extract, ptr %1169, align 4, !dbg !390, !tbaa !363
  %.sroa.290.292.vec.extract = extractelement <4 x float> %907, i64 1, !dbg !391
  %1170 = getelementptr inbounds float, ptr %1160, i64 %968, !dbg !392
  store float %.sroa.290.292.vec.extract, ptr %1170, align 4, !dbg !393, !tbaa !363
  %.sroa.290.296.vec.extract = extractelement <4 x float> %907, i64 2, !dbg !394
  %1171 = getelementptr inbounds float, ptr %1160, i64 %971, !dbg !395
  store float %.sroa.290.296.vec.extract, ptr %1171, align 4, !dbg !396, !tbaa !363
  %.sroa.290.300.vec.extract = extractelement <4 x float> %907, i64 3, !dbg !397
  %1172 = getelementptr inbounds float, ptr %1160, i64 %974, !dbg !398
  store float %.sroa.290.300.vec.extract, ptr %1172, align 4, !dbg !399, !tbaa !363
  %.sroa.306.304.vec.extract = extractelement <4 x float> %908, i64 0, !dbg !388
  %1173 = getelementptr inbounds float, ptr %1160, i64 %977, !dbg !389
  store float %.sroa.306.304.vec.extract, ptr %1173, align 4, !dbg !390, !tbaa !363
  %.sroa.306.308.vec.extract = extractelement <4 x float> %908, i64 1, !dbg !391
  %1174 = getelementptr inbounds float, ptr %1160, i64 %980, !dbg !392
  store float %.sroa.306.308.vec.extract, ptr %1174, align 4, !dbg !393, !tbaa !363
  %.sroa.306.312.vec.extract = extractelement <4 x float> %908, i64 2, !dbg !394
  %1175 = getelementptr inbounds float, ptr %1160, i64 %983, !dbg !395
  store float %.sroa.306.312.vec.extract, ptr %1175, align 4, !dbg !396, !tbaa !363
  %.sroa.306.316.vec.extract = extractelement <4 x float> %908, i64 3, !dbg !397
  %1176 = getelementptr inbounds float, ptr %1160, i64 %986, !dbg !398
  store float %.sroa.306.316.vec.extract, ptr %1176, align 4, !dbg !399, !tbaa !363
  %.sroa.322.320.vec.extract = extractelement <4 x float> %909, i64 0, !dbg !388
  %1177 = getelementptr inbounds float, ptr %1160, i64 %997, !dbg !389
  store float %.sroa.322.320.vec.extract, ptr %1177, align 4, !dbg !390, !tbaa !363
  %.sroa.322.324.vec.extract = extractelement <4 x float> %909, i64 1, !dbg !391
  %1178 = getelementptr inbounds float, ptr %1160, i64 %1000, !dbg !392
  store float %.sroa.322.324.vec.extract, ptr %1178, align 4, !dbg !393, !tbaa !363
  %.sroa.322.328.vec.extract = extractelement <4 x float> %909, i64 2, !dbg !394
  %1179 = getelementptr inbounds float, ptr %1160, i64 %1003, !dbg !395
  store float %.sroa.322.328.vec.extract, ptr %1179, align 4, !dbg !396, !tbaa !363
  %.sroa.322.332.vec.extract = extractelement <4 x float> %909, i64 3, !dbg !397
  %1180 = getelementptr inbounds float, ptr %1160, i64 %1006, !dbg !398
  store float %.sroa.322.332.vec.extract, ptr %1180, align 4, !dbg !399, !tbaa !363
  %.sroa.338.336.vec.extract = extractelement <4 x float> %910, i64 0, !dbg !388
  %1181 = getelementptr inbounds float, ptr %1160, i64 %1009, !dbg !389
  store float %.sroa.338.336.vec.extract, ptr %1181, align 4, !dbg !390, !tbaa !363
  %.sroa.338.340.vec.extract = extractelement <4 x float> %910, i64 1, !dbg !391
  %1182 = getelementptr inbounds float, ptr %1160, i64 %1012, !dbg !392
  store float %.sroa.338.340.vec.extract, ptr %1182, align 4, !dbg !393, !tbaa !363
  %.sroa.338.344.vec.extract = extractelement <4 x float> %910, i64 2, !dbg !394
  %1183 = getelementptr inbounds float, ptr %1160, i64 %1015, !dbg !395
  store float %.sroa.338.344.vec.extract, ptr %1183, align 4, !dbg !396, !tbaa !363
  %.sroa.338.348.vec.extract = extractelement <4 x float> %910, i64 3, !dbg !397
  %1184 = getelementptr inbounds float, ptr %1160, i64 %1018, !dbg !398
  store float %.sroa.338.348.vec.extract, ptr %1184, align 4, !dbg !399, !tbaa !363
  %.sroa.354.352.vec.extract = extractelement <4 x float> %911, i64 0, !dbg !388
  %1185 = getelementptr inbounds float, ptr %1160, i64 %1021, !dbg !389
  store float %.sroa.354.352.vec.extract, ptr %1185, align 4, !dbg !390, !tbaa !363
  %.sroa.354.356.vec.extract = extractelement <4 x float> %911, i64 1, !dbg !391
  %1186 = getelementptr inbounds float, ptr %1160, i64 %1024, !dbg !392
  store float %.sroa.354.356.vec.extract, ptr %1186, align 4, !dbg !393, !tbaa !363
  %.sroa.354.360.vec.extract = extractelement <4 x float> %911, i64 2, !dbg !394
  %1187 = getelementptr inbounds float, ptr %1160, i64 %1027, !dbg !395
  store float %.sroa.354.360.vec.extract, ptr %1187, align 4, !dbg !396, !tbaa !363
  %.sroa.354.364.vec.extract = extractelement <4 x float> %911, i64 3, !dbg !397
  %1188 = getelementptr inbounds float, ptr %1160, i64 %1030, !dbg !398
  store float %.sroa.354.364.vec.extract, ptr %1188, align 4, !dbg !399, !tbaa !363
  %.sroa.370.368.vec.extract = extractelement <4 x float> %912, i64 0, !dbg !388
  %1189 = getelementptr inbounds float, ptr %1160, i64 %1033, !dbg !389
  store float %.sroa.370.368.vec.extract, ptr %1189, align 4, !dbg !390, !tbaa !363
  %.sroa.370.372.vec.extract = extractelement <4 x float> %912, i64 1, !dbg !391
  %1190 = getelementptr inbounds float, ptr %1160, i64 %1036, !dbg !392
  store float %.sroa.370.372.vec.extract, ptr %1190, align 4, !dbg !393, !tbaa !363
  %.sroa.370.376.vec.extract = extractelement <4 x float> %912, i64 2, !dbg !394
  %1191 = getelementptr inbounds float, ptr %1160, i64 %1039, !dbg !395
  store float %.sroa.370.376.vec.extract, ptr %1191, align 4, !dbg !396, !tbaa !363
  %.sroa.370.380.vec.extract = extractelement <4 x float> %912, i64 3, !dbg !397
  %1192 = getelementptr inbounds float, ptr %1160, i64 %1042, !dbg !398
  store float %.sroa.370.380.vec.extract, ptr %1192, align 4, !dbg !399, !tbaa !363
  %.sroa.386.384.vec.extract = extractelement <4 x float> %913, i64 0, !dbg !388
  %1193 = getelementptr inbounds float, ptr %1160, i64 %1053, !dbg !389
  store float %.sroa.386.384.vec.extract, ptr %1193, align 4, !dbg !390, !tbaa !363
  %.sroa.386.388.vec.extract = extractelement <4 x float> %913, i64 1, !dbg !391
  %1194 = getelementptr inbounds float, ptr %1160, i64 %1056, !dbg !392
  store float %.sroa.386.388.vec.extract, ptr %1194, align 4, !dbg !393, !tbaa !363
  %.sroa.386.392.vec.extract = extractelement <4 x float> %913, i64 2, !dbg !394
  %1195 = getelementptr inbounds float, ptr %1160, i64 %1059, !dbg !395
  store float %.sroa.386.392.vec.extract, ptr %1195, align 4, !dbg !396, !tbaa !363
  %.sroa.386.396.vec.extract = extractelement <4 x float> %913, i64 3, !dbg !397
  %1196 = getelementptr inbounds float, ptr %1160, i64 %1062, !dbg !398
  store float %.sroa.386.396.vec.extract, ptr %1196, align 4, !dbg !399, !tbaa !363
  %.sroa.402.400.vec.extract = extractelement <4 x float> %914, i64 0, !dbg !388
  %1197 = getelementptr inbounds float, ptr %1160, i64 %1065, !dbg !389
  store float %.sroa.402.400.vec.extract, ptr %1197, align 4, !dbg !390, !tbaa !363
  %.sroa.402.404.vec.extract = extractelement <4 x float> %914, i64 1, !dbg !391
  %1198 = getelementptr inbounds float, ptr %1160, i64 %1068, !dbg !392
  store float %.sroa.402.404.vec.extract, ptr %1198, align 4, !dbg !393, !tbaa !363
  %.sroa.402.408.vec.extract = extractelement <4 x float> %914, i64 2, !dbg !394
  %1199 = getelementptr inbounds float, ptr %1160, i64 %1071, !dbg !395
  store float %.sroa.402.408.vec.extract, ptr %1199, align 4, !dbg !396, !tbaa !363
  %.sroa.402.412.vec.extract = extractelement <4 x float> %914, i64 3, !dbg !397
  %1200 = getelementptr inbounds float, ptr %1160, i64 %1074, !dbg !398
  store float %.sroa.402.412.vec.extract, ptr %1200, align 4, !dbg !399, !tbaa !363
  %.sroa.418.416.vec.extract = extractelement <4 x float> %915, i64 0, !dbg !388
  %1201 = getelementptr inbounds float, ptr %1160, i64 %1077, !dbg !389
  store float %.sroa.418.416.vec.extract, ptr %1201, align 4, !dbg !390, !tbaa !363
  %.sroa.418.420.vec.extract = extractelement <4 x float> %915, i64 1, !dbg !391
  %1202 = getelementptr inbounds float, ptr %1160, i64 %1080, !dbg !392
  store float %.sroa.418.420.vec.extract, ptr %1202, align 4, !dbg !393, !tbaa !363
  %.sroa.418.424.vec.extract = extractelement <4 x float> %915, i64 2, !dbg !394
  %1203 = getelementptr inbounds float, ptr %1160, i64 %1083, !dbg !395
  store float %.sroa.418.424.vec.extract, ptr %1203, align 4, !dbg !396, !tbaa !363
  %.sroa.418.428.vec.extract = extractelement <4 x float> %915, i64 3, !dbg !397
  %1204 = getelementptr inbounds float, ptr %1160, i64 %1086, !dbg !398
  store float %.sroa.418.428.vec.extract, ptr %1204, align 4, !dbg !399, !tbaa !363
  %.sroa.434.432.vec.extract = extractelement <4 x float> %916, i64 0, !dbg !388
  %1205 = getelementptr inbounds float, ptr %1160, i64 %1089, !dbg !389
  store float %.sroa.434.432.vec.extract, ptr %1205, align 4, !dbg !390, !tbaa !363
  %.sroa.434.436.vec.extract = extractelement <4 x float> %916, i64 1, !dbg !391
  %1206 = getelementptr inbounds float, ptr %1160, i64 %1092, !dbg !392
  store float %.sroa.434.436.vec.extract, ptr %1206, align 4, !dbg !393, !tbaa !363
  %.sroa.434.440.vec.extract = extractelement <4 x float> %916, i64 2, !dbg !394
  %1207 = getelementptr inbounds float, ptr %1160, i64 %1095, !dbg !395
  store float %.sroa.434.440.vec.extract, ptr %1207, align 4, !dbg !396, !tbaa !363
  %.sroa.434.444.vec.extract = extractelement <4 x float> %916, i64 3, !dbg !397
  %1208 = getelementptr inbounds float, ptr %1160, i64 %1098, !dbg !398
  store float %.sroa.434.444.vec.extract, ptr %1208, align 4, !dbg !399, !tbaa !363
  %.sroa.450.448.vec.extract = extractelement <4 x float> %917, i64 0, !dbg !388
  %1209 = getelementptr inbounds float, ptr %1160, i64 %1109, !dbg !389
  store float %.sroa.450.448.vec.extract, ptr %1209, align 4, !dbg !390, !tbaa !363
  %.sroa.450.452.vec.extract = extractelement <4 x float> %917, i64 1, !dbg !391
  %1210 = getelementptr inbounds float, ptr %1160, i64 %1112, !dbg !392
  store float %.sroa.450.452.vec.extract, ptr %1210, align 4, !dbg !393, !tbaa !363
  %.sroa.450.456.vec.extract = extractelement <4 x float> %917, i64 2, !dbg !394
  %1211 = getelementptr inbounds float, ptr %1160, i64 %1115, !dbg !395
  store float %.sroa.450.456.vec.extract, ptr %1211, align 4, !dbg !396, !tbaa !363
  %.sroa.450.460.vec.extract = extractelement <4 x float> %917, i64 3, !dbg !397
  %1212 = getelementptr inbounds float, ptr %1160, i64 %1118, !dbg !398
  store float %.sroa.450.460.vec.extract, ptr %1212, align 4, !dbg !399, !tbaa !363
  %.sroa.466.464.vec.extract = extractelement <4 x float> %918, i64 0, !dbg !388
  %1213 = getelementptr inbounds float, ptr %1160, i64 %1121, !dbg !389
  store float %.sroa.466.464.vec.extract, ptr %1213, align 4, !dbg !390, !tbaa !363
  %.sroa.466.468.vec.extract = extractelement <4 x float> %918, i64 1, !dbg !391
  %1214 = getelementptr inbounds float, ptr %1160, i64 %1124, !dbg !392
  store float %.sroa.466.468.vec.extract, ptr %1214, align 4, !dbg !393, !tbaa !363
  %.sroa.466.472.vec.extract = extractelement <4 x float> %918, i64 2, !dbg !394
  %1215 = getelementptr inbounds float, ptr %1160, i64 %1127, !dbg !395
  store float %.sroa.466.472.vec.extract, ptr %1215, align 4, !dbg !396, !tbaa !363
  %.sroa.466.476.vec.extract = extractelement <4 x float> %918, i64 3, !dbg !397
  %1216 = getelementptr inbounds float, ptr %1160, i64 %1130, !dbg !398
  store float %.sroa.466.476.vec.extract, ptr %1216, align 4, !dbg !399, !tbaa !363
  %.sroa.482.480.vec.extract = extractelement <4 x float> %919, i64 0, !dbg !388
  %1217 = getelementptr inbounds float, ptr %1160, i64 %1133, !dbg !389
  store float %.sroa.482.480.vec.extract, ptr %1217, align 4, !dbg !390, !tbaa !363
  %.sroa.482.484.vec.extract = extractelement <4 x float> %919, i64 1, !dbg !391
  %1218 = getelementptr inbounds float, ptr %1160, i64 %1136, !dbg !392
  store float %.sroa.482.484.vec.extract, ptr %1218, align 4, !dbg !393, !tbaa !363
  %.sroa.482.488.vec.extract = extractelement <4 x float> %919, i64 2, !dbg !394
  %1219 = getelementptr inbounds float, ptr %1160, i64 %1139, !dbg !395
  store float %.sroa.482.488.vec.extract, ptr %1219, align 4, !dbg !396, !tbaa !363
  %.sroa.482.492.vec.extract = extractelement <4 x float> %919, i64 3, !dbg !397
  %1220 = getelementptr inbounds float, ptr %1160, i64 %1142, !dbg !398
  store float %.sroa.482.492.vec.extract, ptr %1220, align 4, !dbg !399, !tbaa !363
  %.sroa.498.496.vec.extract = extractelement <4 x float> %920, i64 0, !dbg !388
  %1221 = getelementptr inbounds float, ptr %1160, i64 %1145, !dbg !389
  store float %.sroa.498.496.vec.extract, ptr %1221, align 4, !dbg !390, !tbaa !363
  %.sroa.498.500.vec.extract = extractelement <4 x float> %920, i64 1, !dbg !391
  %1222 = getelementptr inbounds float, ptr %1160, i64 %1148, !dbg !392
  store float %.sroa.498.500.vec.extract, ptr %1222, align 4, !dbg !393, !tbaa !363
  %.sroa.498.504.vec.extract = extractelement <4 x float> %920, i64 2, !dbg !394
  %1223 = getelementptr inbounds float, ptr %1160, i64 %1151, !dbg !395
  store float %.sroa.498.504.vec.extract, ptr %1223, align 4, !dbg !396, !tbaa !363
  %.sroa.498.508.vec.extract = extractelement <4 x float> %920, i64 3, !dbg !397
  %1224 = getelementptr inbounds float, ptr %1160, i64 %1154, !dbg !398
  store float %.sroa.498.508.vec.extract, ptr %1224, align 4, !dbg !399, !tbaa !363
  ret void, !dbg !400
}

; Function Attrs: convergent mustprogress nocallback nofree nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: convergent mustprogress nocallback nofree nounwind willreturn
declare void @llvm.amdgcn.sched.barrier(i32 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.amdgcn.s.setprio(i16 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32>, i32, i32, i32 immarg) #3

; Function Attrs: convergent mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16>, <4 x i16>, <4 x float>, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.amdgcn.workitem.id.x() #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.amdgcn.workgroup.id.x() #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.amdgcn.workgroup.id.y() #5

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nocallback nofree nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { convergent mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { convergent nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!opencl.ocl.version = !{!7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "AMD clang version 19.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.4.1 25184 c87081df219c42dc27c5b6d86c0525bc7d01f727)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "256_256_64_16.cpp", directory: "/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/256_256_64_16")
!2 = !{i32 1, !"amdhsa_code_object_version", i32 600}
!3 = !{i32 1, !"amdgpu_printf_kind", !"hostcall"}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 2, i32 0}
!8 = !{!"AMD clang version 19.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.4.1 25184 c87081df219c42dc27c5b6d86c0525bc7d01f727)"}
!9 = distinct !DISubprogram(name: "micro_tk", scope: !1, file: !1, line: 34, type: !10, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 231, column: 22, scope: !13, inlinedAt: !15)
!13 = distinct !DISubprogram(name: "align_ptr<16>", scope: !14, file: !14, line: 228, type: !10, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!14 = !DIFile(filename: "ThunderKittens-HIP/include/common/util.cuh", directory: "/workdir/AMD-benchmarking-harness")
!15 = distinct !DILocation(line: 252, column: 13, scope: !16, inlinedAt: !17)
!16 = distinct !DISubprogram(name: "allocate<kittens::st<__hip_bfloat16, 256, 64> >", scope: !14, file: !14, line: 250, type: !10, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!17 = distinct !DILocation(line: 37, column: 42, scope: !9)
!18 = !DILocation(line: 231, column: 34, scope: !13, inlinedAt: !15)
!19 = !DILocation(line: 231, column: 20, scope: !13, inlinedAt: !15)
!20 = !DILocation(line: 255, column: 17, scope: !16, inlinedAt: !17)
!21 = !DILocation(line: 230, column: 30, scope: !13, inlinedAt: !22)
!22 = distinct !DILocation(line: 252, column: 13, scope: !16, inlinedAt: !23)
!23 = distinct !DILocation(line: 38, column: 42, scope: !9)
!24 = !DILocation(line: 231, column: 22, scope: !13, inlinedAt: !22)
!25 = !DILocation(line: 231, column: 20, scope: !13, inlinedAt: !22)
!26 = !DILocation(line: 231, column: 34, scope: !13, inlinedAt: !22)
!27 = !DILocation(line: 271, column: 116, scope: !28, inlinedAt: !30)
!28 = distinct !DISubprogram(name: "__hip_get_block_idx_y", scope: !29, file: !29, line: 271, type: !10, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!29 = !DIFile(filename: "/opt/rocm-6.4.1/lib/llvm/bin/../../../include/hip/amd_detail/amd_hip_runtime.h", directory: "")
!30 = distinct !DILocation(line: 301, column: 160, scope: !31, inlinedAt: !32)
!31 = distinct !DISubprogram(name: "__get_y", scope: !29, file: !29, line: 301, type: !10, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!32 = distinct !DILocation(line: 50, column: 21, scope: !9)
!33 = !DILocation(line: 270, column: 116, scope: !34, inlinedAt: !35)
!34 = distinct !DISubprogram(name: "__hip_get_block_idx_x", scope: !29, file: !29, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!35 = distinct !DILocation(line: 300, column: 160, scope: !36, inlinedAt: !37)
!36 = distinct !DISubprogram(name: "__get_x", scope: !29, file: !29, line: 300, type: !10, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!37 = distinct !DILocation(line: 51, column: 21, scope: !9)
!38 = !DILocation(line: 265, column: 117, scope: !39, inlinedAt: !40)
!39 = distinct !DISubprogram(name: "__hip_get_thread_idx_x", scope: !29, file: !29, line: 265, type: !10, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!40 = distinct !DILocation(line: 291, column: 160, scope: !41, inlinedAt: !42)
!41 = distinct !DISubprogram(name: "__get_x", scope: !29, file: !29, line: 291, type: !10, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!42 = distinct !DILocation(line: 57, column: 85, scope: !43, inlinedAt: !44)
!43 = distinct !DISubprogram(name: "warpid", scope: !14, file: !14, line: 57, type: !10, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = distinct !DILocation(line: 53, column: 25, scope: !9)
!45 = !DILocation(line: 54, column: 34, scope: !9)
!46 = !DILocation(line: 55, column: 34, scope: !9)
!47 = !DILocation(line: 30, column: 28, scope: !48, inlinedAt: !50)
!48 = distinct !DISubprogram(name: "load<2, false, kittens::st<__hip_bfloat16, 256, 64>, kittens::gl<__hip_bfloat16, -1, -1, -1, -1>, kittens::coord<kittens::st<__hip_bfloat16, 256, 64> >, 512>", scope: !49, file: !49, line: 27, type: !10, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/memory/tile/global_to_shared.cuh", directory: "/workdir/AMD-benchmarking-harness")
!50 = distinct !DILocation(line: 12, column: 5, scope: !51, inlinedAt: !53)
!51 = distinct !DISubprogram(name: "load<kittens::st<__hip_bfloat16, 256, 64>, kittens::gl<__hip_bfloat16, -1, -1, -1, -1>, kittens::coord<kittens::st<__hip_bfloat16, 256, 64> > >", scope: !52, file: !52, line: 11, type: !10, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!52 = !DIFile(filename: "ThunderKittens-HIP/include/ops/group/memory/tile/global_to_shared.cuh", directory: "/workdir/AMD-benchmarking-harness")
!53 = distinct !DILocation(line: 60, column: 5, scope: !9)
!54 = !DILocation(line: 60, column: 34, scope: !55, inlinedAt: !57)
!55 = distinct !DISubprogram(name: "unit_coord<2, 3>", scope: !56, file: !56, line: 51, type: !10, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = !DIFile(filename: "ThunderKittens-HIP/include/types/global/util.cuh", directory: "/workdir/AMD-benchmarking-harness")
!57 = distinct !DILocation(line: 37, column: 39, scope: !48, inlinedAt: !50)
!58 = !DILocation(line: 63, column: 54, scope: !59, inlinedAt: !61)
!59 = distinct !DISubprogram(name: "operator[]", scope: !60, file: !60, line: 62, type: !10, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!60 = !DIFile(filename: "ThunderKittens-HIP/include/types/global/gl.cuh", directory: "/workdir/AMD-benchmarking-harness")
!61 = distinct !DILocation(line: 38, column: 57, scope: !48, inlinedAt: !50)
!62 = !DILocation(line: 63, column: 60, scope: !59, inlinedAt: !61)
!63 = !DILocation(line: 63, column: 16, scope: !59, inlinedAt: !61)
!64 = !DILocation(line: 40, column: 24, scope: !48, inlinedAt: !50)
!65 = !DILocation(line: 54, column: 32, scope: !48, inlinedAt: !50)
!66 = !DILocation(line: 58, column: 75, scope: !48, inlinedAt: !50)
!67 = !DILocation(line: 58, column: 88, scope: !48, inlinedAt: !50)
!68 = !DILocation(line: 58, column: 68, scope: !48, inlinedAt: !50)
!69 = !DILocation(line: 92, column: 5, scope: !70, inlinedAt: !72)
!70 = distinct !DISubprogram(name: "load_global_vec4_async", scope: !71, file: !71, line: 89, type: !10, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!71 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/memory/util/util.cuh", directory: "/workdir/AMD-benchmarking-harness")
!72 = distinct !DILocation(line: 58, column: 26, scope: !48, inlinedAt: !50)
!73 = !{i64 3065620}
!74 = !DILocation(line: 62, column: 9, scope: !48, inlinedAt: !50)
!75 = !{i64 3083803}
!76 = !DILocation(line: 103, column: 35, scope: !77, inlinedAt: !79)
!77 = distinct !DISubprogram(name: "idx", scope: !78, file: !78, line: 98, type: !10, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!78 = !DIFile(filename: "ThunderKittens-HIP/include/types/shared/st.cuh", directory: "/workdir/AMD-benchmarking-harness")
!79 = distinct !DILocation(line: 71, column: 34, scope: !48, inlinedAt: !50)
!80 = !DILocation(line: 104, column: 60, scope: !77, inlinedAt: !79)
!81 = !DILocation(line: 105, column: 22, scope: !77, inlinedAt: !79)
!82 = !DILocation(line: 71, column: 72, scope: !48, inlinedAt: !50)
!83 = !DILocation(line: 27, column: 5, scope: !84, inlinedAt: !85)
!84 = distinct !DISubprogram(name: "store_shared_vec", scope: !71, file: !71, line: 26, type: !10, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!85 = distinct !DILocation(line: 71, column: 17, scope: !48, inlinedAt: !50)
!86 = !{i64 3063955}
!87 = !DILocation(line: 103, column: 35, scope: !77, inlinedAt: !88)
!88 = distinct !DILocation(line: 72, column: 34, scope: !48, inlinedAt: !50)
!89 = !DILocation(line: 104, column: 60, scope: !77, inlinedAt: !88)
!90 = !DILocation(line: 105, column: 22, scope: !77, inlinedAt: !88)
!91 = !DILocation(line: 72, column: 95, scope: !48, inlinedAt: !50)
!92 = !DILocation(line: 27, column: 5, scope: !84, inlinedAt: !93)
!93 = distinct !DILocation(line: 72, column: 17, scope: !48, inlinedAt: !50)
!94 = !DILocation(line: 103, column: 46, scope: !77, inlinedAt: !79)
!95 = !DILocation(line: 75, column: 9, scope: !48, inlinedAt: !50)
!96 = !{i64 3084344}
!97 = !DILocation(line: 30, column: 28, scope: !48, inlinedAt: !98)
!98 = distinct !DILocation(line: 12, column: 5, scope: !51, inlinedAt: !99)
!99 = distinct !DILocation(line: 61, column: 5, scope: !9)
!100 = !DILocation(line: 60, column: 34, scope: !55, inlinedAt: !101)
!101 = distinct !DILocation(line: 37, column: 39, scope: !48, inlinedAt: !98)
!102 = !DILocation(line: 63, column: 54, scope: !59, inlinedAt: !103)
!103 = distinct !DILocation(line: 38, column: 57, scope: !48, inlinedAt: !98)
!104 = !DILocation(line: 63, column: 60, scope: !59, inlinedAt: !103)
!105 = !DILocation(line: 63, column: 16, scope: !59, inlinedAt: !103)
!106 = !DILocation(line: 40, column: 24, scope: !48, inlinedAt: !98)
!107 = !DILocation(line: 58, column: 75, scope: !48, inlinedAt: !98)
!108 = !DILocation(line: 58, column: 88, scope: !48, inlinedAt: !98)
!109 = !DILocation(line: 58, column: 68, scope: !48, inlinedAt: !98)
!110 = !DILocation(line: 92, column: 5, scope: !70, inlinedAt: !111)
!111 = distinct !DILocation(line: 58, column: 26, scope: !48, inlinedAt: !98)
!112 = !DILocation(line: 62, column: 9, scope: !48, inlinedAt: !98)
!113 = !DILocation(line: 103, column: 35, scope: !77, inlinedAt: !114)
!114 = distinct !DILocation(line: 71, column: 34, scope: !48, inlinedAt: !98)
!115 = !DILocation(line: 104, column: 60, scope: !77, inlinedAt: !114)
!116 = !DILocation(line: 105, column: 22, scope: !77, inlinedAt: !114)
!117 = !DILocation(line: 71, column: 72, scope: !48, inlinedAt: !98)
!118 = !DILocation(line: 27, column: 5, scope: !84, inlinedAt: !119)
!119 = distinct !DILocation(line: 71, column: 17, scope: !48, inlinedAt: !98)
!120 = !DILocation(line: 103, column: 35, scope: !77, inlinedAt: !121)
!121 = distinct !DILocation(line: 72, column: 34, scope: !48, inlinedAt: !98)
!122 = !DILocation(line: 104, column: 60, scope: !77, inlinedAt: !121)
!123 = !DILocation(line: 105, column: 22, scope: !77, inlinedAt: !121)
!124 = !DILocation(line: 72, column: 95, scope: !48, inlinedAt: !98)
!125 = !DILocation(line: 27, column: 5, scope: !84, inlinedAt: !126)
!126 = distinct !DILocation(line: 72, column: 17, scope: !48, inlinedAt: !98)
!127 = !DILocation(line: 75, column: 9, scope: !48, inlinedAt: !98)
!128 = !DILocation(line: 62, column: 5, scope: !9)
!129 = !DILocation(line: 64, column: 18, scope: !9)
!130 = !DILocation(line: 64, column: 9, scope: !9)
!131 = !DILocation(line: 65, column: 9, scope: !9)
!132 = !DILocation(line: 66, column: 5, scope: !9)
!133 = !DILocation(line: 68, column: 5, scope: !9)
!134 = !DILocation(line: 158, column: 18, scope: !9)
!135 = !DILocation(line: 158, column: 9, scope: !9)
!136 = !DILocation(line: 0, scope: !9)
!137 = !DILocation(line: 69, column: 35, scope: !9)
!138 = !DILocation(line: 69, column: 39, scope: !9)
!139 = !DILocation(line: 72, column: 13, scope: !9)
!140 = !DILocation(line: 61, column: 18, scope: !55, inlinedAt: !141)
!141 = distinct !DILocation(line: 54, column: 39, scope: !142, inlinedAt: !144)
!142 = distinct !DISubprogram(name: "load_global_to_registers<2, false, kittens::st<__hip_bfloat16, 256, 64>, kittens::gl<__hip_bfloat16, -1, -1, -1, -1>, kittens::coord<kittens::st<__hip_bfloat16, 256, 64> >, 512>", scope: !143, file: !143, line: 41, type: !10, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!143 = !DIFile(filename: "./../utils.cpp", directory: "/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/256_256_64_16")
!144 = distinct !DILocation(line: 73, column: 13, scope: !9)
!145 = !DILocation(line: 63, column: 68, scope: !59, inlinedAt: !146)
!146 = distinct !DILocation(line: 55, column: 24, scope: !142, inlinedAt: !144)
!147 = !DILocation(line: 63, column: 16, scope: !59, inlinedAt: !146)
!148 = !DILocation(line: 32, column: 28, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "make_srsrc", scope: !143, file: !143, line: 31, type: !10, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 60, column: 19, scope: !142, inlinedAt: !144)
!151 = !DILocation(line: 26, column: 23, scope: !152, inlinedAt: !153)
!152 = distinct !DISubprogram(name: "buffer_load_vec4", scope: !143, file: !143, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!153 = distinct !DILocation(line: 77, column: 39, scope: !142, inlinedAt: !144)
!154 = !DILocation(line: 75, column: 9, scope: !9)
!155 = !DILocation(line: 76, column: 9, scope: !9)
!156 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !158)
!157 = distinct !DISubprogram(name: "load_shared_vec_async", scope: !143, file: !143, line: 127, type: !10, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!158 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !160)
!159 = distinct !DISubprogram(name: "load_async_shared_to_register<kittens::rt<__hip_bfloat16, 64, 16, kittens::ducks::rt_layout::row>, kittens::st_subtile<kittens::st<__hip_bfloat16, 256, 64>, 64, 16> >", scope: !143, file: !143, line: 147, type: !10, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!160 = distinct !DILocation(line: 78, column: 9, scope: !9)
!161 = !{i64 4294467}
!162 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !160)
!163 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !166)
!164 = distinct !DISubprogram(name: "operator=", scope: !165, file: !165, line: 492, type: !10, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = !DIFile(filename: "/opt/rocm-6.4.1/lib/llvm/bin/../../../include/hip/amd_detail/amd_hip_bf16.h", directory: "")
!166 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !160)
!167 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !168)
!168 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !169)
!169 = distinct !DILocation(line: 79, column: 9, scope: !9)
!170 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !169)
!171 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !172)
!172 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !169)
!173 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !174)
!174 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !175)
!175 = distinct !DILocation(line: 80, column: 9, scope: !9)
!176 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !175)
!177 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !178)
!178 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !175)
!179 = !DILocation(line: 81, column: 9, scope: !9)
!180 = !{i64 4302068}
!181 = !DILocation(line: 82, column: 9, scope: !9)
!182 = !DILocation(line: 83, column: 9, scope: !9)
!183 = !DILocation(line: 86, column: 9, scope: !9)
!184 = !{i64 4302197}
!185 = !DILocation(line: 87, column: 9, scope: !9)
!186 = !DILocation(line: 29, column: 27, scope: !187, inlinedAt: !189)
!187 = distinct !DISubprogram(name: "mfma161616", scope: !188, file: !188, line: 25, type: !10, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!188 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/register/tile/mma.cuh", directory: "/workdir/AMD-benchmarking-harness")
!189 = distinct !DILocation(line: 81, column: 5, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "mma_ABt_base", scope: !188, file: !188, line: 77, type: !10, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!191 = distinct !DILocation(line: 216, column: 13, scope: !192, inlinedAt: !193)
!192 = distinct !DISubprogram(name: "mma_ABt<kittens::rt<float, 64, 64, kittens::ducks::rt_layout::col>, kittens::rt<__hip_bfloat16, 64, 16, kittens::ducks::rt_layout::row>, kittens::rt<__hip_bfloat16, 64, 16, kittens::ducks::rt_layout::row>, kittens::rt<float, 64, 64, kittens::ducks::rt_layout::col> >", scope: !188, file: !188, line: 197, type: !10, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!193 = distinct !DILocation(line: 88, column: 9, scope: !9)
!194 = !DILocation(line: 29, column: 27, scope: !187, inlinedAt: !195)
!195 = distinct !DILocation(line: 81, column: 5, scope: !190, inlinedAt: !196)
!196 = distinct !DILocation(line: 216, column: 13, scope: !192, inlinedAt: !197)
!197 = distinct !DILocation(line: 89, column: 9, scope: !9)
!198 = !DILocation(line: 90, column: 9, scope: !9)
!199 = !DILocation(line: 91, column: 9, scope: !9)
!200 = !DILocation(line: 92, column: 9, scope: !9)
!201 = !DILocation(line: 95, column: 13, scope: !9)
!202 = !DILocation(line: 61, column: 18, scope: !55, inlinedAt: !203)
!203 = distinct !DILocation(line: 54, column: 39, scope: !142, inlinedAt: !204)
!204 = distinct !DILocation(line: 96, column: 13, scope: !9)
!205 = !DILocation(line: 63, column: 68, scope: !59, inlinedAt: !206)
!206 = distinct !DILocation(line: 55, column: 24, scope: !142, inlinedAt: !204)
!207 = !DILocation(line: 63, column: 16, scope: !59, inlinedAt: !206)
!208 = !DILocation(line: 32, column: 28, scope: !149, inlinedAt: !209)
!209 = distinct !DILocation(line: 60, column: 19, scope: !142, inlinedAt: !204)
!210 = !DILocation(line: 26, column: 23, scope: !152, inlinedAt: !211)
!211 = distinct !DILocation(line: 77, column: 39, scope: !142, inlinedAt: !204)
!212 = !DILocation(line: 98, column: 9, scope: !9)
!213 = !DILocation(line: 99, column: 9, scope: !9)
!214 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !215)
!215 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !216)
!216 = distinct !DILocation(line: 101, column: 9, scope: !9)
!217 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !216)
!218 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !219)
!219 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !216)
!220 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !221)
!221 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !222)
!222 = distinct !DILocation(line: 102, column: 9, scope: !9)
!223 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !222)
!224 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !225)
!225 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !222)
!226 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !227)
!227 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !228)
!228 = distinct !DILocation(line: 103, column: 9, scope: !9)
!229 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !228)
!230 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !231)
!231 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !228)
!232 = !DILocation(line: 104, column: 9, scope: !9)
!233 = !{i64 4303185}
!234 = !DILocation(line: 105, column: 9, scope: !9)
!235 = !DILocation(line: 106, column: 9, scope: !9)
!236 = !DILocation(line: 109, column: 9, scope: !9)
!237 = !{i64 4303314}
!238 = !DILocation(line: 110, column: 9, scope: !9)
!239 = !DILocation(line: 29, column: 27, scope: !187, inlinedAt: !240)
!240 = distinct !DILocation(line: 81, column: 5, scope: !190, inlinedAt: !241)
!241 = distinct !DILocation(line: 216, column: 13, scope: !192, inlinedAt: !242)
!242 = distinct !DILocation(line: 111, column: 9, scope: !9)
!243 = !DILocation(line: 29, column: 27, scope: !187, inlinedAt: !244)
!244 = distinct !DILocation(line: 81, column: 5, scope: !190, inlinedAt: !245)
!245 = distinct !DILocation(line: 216, column: 13, scope: !192, inlinedAt: !246)
!246 = distinct !DILocation(line: 112, column: 9, scope: !9)
!247 = !DILocation(line: 113, column: 9, scope: !9)
!248 = !DILocation(line: 114, column: 9, scope: !9)
!249 = !DILocation(line: 115, column: 9, scope: !9)
!250 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !251)
!251 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !252)
!252 = distinct !DILocation(line: 118, column: 9, scope: !9)
!253 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !252)
!254 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !255)
!255 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !252)
!256 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !257)
!257 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !258)
!258 = distinct !DILocation(line: 119, column: 9, scope: !9)
!259 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !258)
!260 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !261)
!261 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !258)
!262 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !263)
!263 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !264)
!264 = distinct !DILocation(line: 120, column: 9, scope: !9)
!265 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !264)
!266 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !267)
!267 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !264)
!268 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !269)
!269 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !270)
!270 = distinct !DILocation(line: 121, column: 9, scope: !9)
!271 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !270)
!272 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !273)
!273 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !270)
!274 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !275)
!275 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !276)
!276 = distinct !DILocation(line: 122, column: 9, scope: !9)
!277 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !276)
!278 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !279)
!279 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !276)
!280 = !DILocation(line: 129, column: 5, scope: !157, inlinedAt: !281)
!281 = distinct !DILocation(line: 185, column: 37, scope: !159, inlinedAt: !282)
!282 = distinct !DILocation(line: 123, column: 9, scope: !9)
!283 = !DILocation(line: 187, column: 47, scope: !159, inlinedAt: !282)
!284 = !DILocation(line: 494, column: 7, scope: !164, inlinedAt: !285)
!285 = distinct !DILocation(line: 188, column: 45, scope: !159, inlinedAt: !282)
!286 = !DILocation(line: 124, column: 9, scope: !9)
!287 = !{i64 4304343}
!288 = !DILocation(line: 125, column: 9, scope: !9)
!289 = !DILocation(line: 126, column: 9, scope: !9)
!290 = !DILocation(line: 129, column: 9, scope: !9)
!291 = !{i64 4304472}
!292 = !DILocation(line: 130, column: 9, scope: !9)
!293 = !DILocation(line: 29, column: 27, scope: !187, inlinedAt: !294)
!294 = distinct !DILocation(line: 81, column: 5, scope: !190, inlinedAt: !295)
!295 = distinct !DILocation(line: 216, column: 13, scope: !192, inlinedAt: !296)
!296 = distinct !DILocation(line: 131, column: 9, scope: !9)
!297 = !DILocation(line: 29, column: 27, scope: !187, inlinedAt: !298)
!298 = distinct !DILocation(line: 81, column: 5, scope: !190, inlinedAt: !299)
!299 = distinct !DILocation(line: 216, column: 13, scope: !192, inlinedAt: !300)
!300 = distinct !DILocation(line: 132, column: 9, scope: !9)
!301 = !DILocation(line: 133, column: 9, scope: !9)
!302 = !DILocation(line: 134, column: 9, scope: !9)
!303 = !DILocation(line: 135, column: 9, scope: !9)
!304 = !DILocation(line: 138, column: 13, scope: !9)
!305 = !DILocation(line: 139, column: 13, scope: !9)
!306 = !{i64 4304848}
!307 = !DILocation(line: 17, column: 5, scope: !308, inlinedAt: !309)
!308 = distinct !DISubprogram(name: "store_shared_vec_new", scope: !143, file: !143, line: 16, type: !10, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!309 = distinct !DILocation(line: 119, column: 17, scope: !310, inlinedAt: !311)
!310 = distinct !DISubprogram(name: "store_registers_to_shared<kittens::st<__hip_bfloat16, 256, 64>, 512>", scope: !143, file: !143, line: 88, type: !10, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!311 = distinct !DILocation(line: 140, column: 13, scope: !9)
!312 = !{i64 4290493}
!313 = !DILocation(line: 17, column: 5, scope: !308, inlinedAt: !314)
!314 = distinct !DILocation(line: 120, column: 17, scope: !310, inlinedAt: !311)
!315 = !DILocation(line: 17, column: 5, scope: !308, inlinedAt: !316)
!316 = distinct !DILocation(line: 119, column: 17, scope: !310, inlinedAt: !317)
!317 = distinct !DILocation(line: 142, column: 13, scope: !9)
!318 = !DILocation(line: 17, column: 5, scope: !308, inlinedAt: !319)
!319 = distinct !DILocation(line: 120, column: 17, scope: !310, inlinedAt: !317)
!320 = !DILocation(line: 144, column: 9, scope: !9)
!321 = !DILocation(line: 145, column: 9, scope: !9)
!322 = !DILocation(line: 146, column: 9, scope: !9)
!323 = !DILocation(line: 149, column: 9, scope: !9)
!324 = !{i64 4305247}
!325 = !DILocation(line: 150, column: 9, scope: !9)
!326 = !DILocation(line: 29, column: 27, scope: !187, inlinedAt: !327)
!327 = distinct !DILocation(line: 81, column: 5, scope: !190, inlinedAt: !328)
!328 = distinct !DILocation(line: 216, column: 13, scope: !192, inlinedAt: !329)
!329 = distinct !DILocation(line: 151, column: 9, scope: !9)
!330 = !DILocation(line: 29, column: 27, scope: !187, inlinedAt: !331)
!331 = distinct !DILocation(line: 81, column: 5, scope: !190, inlinedAt: !332)
!332 = distinct !DILocation(line: 216, column: 13, scope: !192, inlinedAt: !333)
!333 = distinct !DILocation(line: 152, column: 9, scope: !9)
!334 = !DILocation(line: 153, column: 9, scope: !9)
!335 = !DILocation(line: 154, column: 9, scope: !9)
!336 = !DILocation(line: 155, column: 9, scope: !9)
!337 = !DILocation(line: 68, column: 29, scope: !9)
!338 = distinct !{!338, !133, !339, !340}
!339 = !DILocation(line: 156, column: 5, scope: !9)
!340 = !{!"llvm.loop.mustprogress"}
!341 = !DILocation(line: 159, column: 9, scope: !9)
!342 = !DILocation(line: 160, column: 5, scope: !9)
!343 = !DILocation(line: 60, column: 34, scope: !344, inlinedAt: !345)
!344 = distinct !DISubprogram(name: "unit_coord<2, 3>", scope: !56, file: !56, line: 51, type: !10, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!345 = distinct !DILocation(line: 192, column: 41, scope: !346, inlinedAt: !348)
!346 = distinct !DISubprogram(name: "store<2, kittens::rt<float, 64, 64, kittens::ducks::rt_layout::col>, kittens::gl<float, -1, -1, -1, -1>, kittens::coord<kittens::rt<float, 64, 64, kittens::ducks::rt_layout::col> > >", scope: !347, file: !347, line: 188, type: !10, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!347 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/memory/tile/global_to_register.cuh", directory: "/workdir/AMD-benchmarking-harness")
!348 = distinct !DILocation(line: 212, column: 5, scope: !349, inlinedAt: !350)
!349 = distinct !DISubprogram(name: "store<kittens::rt<float, 64, 64, kittens::ducks::rt_layout::col>, kittens::gl<float, -1, -1, -1, -1>, kittens::coord<kittens::rt<float, 64, 64, kittens::ducks::rt_layout::col> > >", scope: !347, file: !347, line: 211, type: !10, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!350 = distinct !DILocation(line: 162, column: 5, scope: !9)
!351 = !DILocation(line: 61, column: 18, scope: !344, inlinedAt: !345)
!352 = !DILocation(line: 63, column: 54, scope: !353, inlinedAt: !354)
!353 = distinct !DISubprogram(name: "operator[]", scope: !60, file: !60, line: 62, type: !10, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!354 = distinct !DILocation(line: 192, column: 23, scope: !346, inlinedAt: !348)
!355 = !DILocation(line: 63, column: 60, scope: !353, inlinedAt: !354)
!356 = !DILocation(line: 63, column: 68, scope: !353, inlinedAt: !354)
!357 = !DILocation(line: 63, column: 16, scope: !353, inlinedAt: !354)
!358 = !DILocation(line: 193, column: 28, scope: !346, inlinedAt: !348)
!359 = !DILocation(line: 203, column: 49, scope: !346, inlinedAt: !348)
!360 = !DILocation(line: 203, column: 40, scope: !346, inlinedAt: !348)
!361 = !DILocation(line: 203, column: 13, scope: !346, inlinedAt: !348)
!362 = !DILocation(line: 203, column: 47, scope: !346, inlinedAt: !348)
!363 = !{!364, !364, i64 0}
!364 = !{!"float", !365, i64 0}
!365 = !{!"omnipotent char", !366, i64 0}
!366 = !{!"Simple C++ TBAA"}
!367 = !DILocation(line: 204, column: 49, scope: !346, inlinedAt: !348)
!368 = !DILocation(line: 204, column: 40, scope: !346, inlinedAt: !348)
!369 = !DILocation(line: 204, column: 13, scope: !346, inlinedAt: !348)
!370 = !DILocation(line: 204, column: 47, scope: !346, inlinedAt: !348)
!371 = !DILocation(line: 205, column: 49, scope: !346, inlinedAt: !348)
!372 = !DILocation(line: 205, column: 40, scope: !346, inlinedAt: !348)
!373 = !DILocation(line: 205, column: 13, scope: !346, inlinedAt: !348)
!374 = !DILocation(line: 205, column: 47, scope: !346, inlinedAt: !348)
!375 = !DILocation(line: 206, column: 49, scope: !346, inlinedAt: !348)
!376 = !DILocation(line: 206, column: 40, scope: !346, inlinedAt: !348)
!377 = !DILocation(line: 206, column: 13, scope: !346, inlinedAt: !348)
!378 = !DILocation(line: 206, column: 47, scope: !346, inlinedAt: !348)
!379 = !DILocation(line: 199, column: 45, scope: !346, inlinedAt: !348)
!380 = !DILocation(line: 60, column: 34, scope: !344, inlinedAt: !381)
!381 = distinct !DILocation(line: 192, column: 41, scope: !346, inlinedAt: !382)
!382 = distinct !DILocation(line: 212, column: 5, scope: !349, inlinedAt: !383)
!383 = distinct !DILocation(line: 163, column: 5, scope: !9)
!384 = !DILocation(line: 63, column: 54, scope: !353, inlinedAt: !385)
!385 = distinct !DILocation(line: 192, column: 23, scope: !346, inlinedAt: !382)
!386 = !DILocation(line: 63, column: 60, scope: !353, inlinedAt: !385)
!387 = !DILocation(line: 63, column: 16, scope: !353, inlinedAt: !385)
!388 = !DILocation(line: 203, column: 49, scope: !346, inlinedAt: !382)
!389 = !DILocation(line: 203, column: 13, scope: !346, inlinedAt: !382)
!390 = !DILocation(line: 203, column: 47, scope: !346, inlinedAt: !382)
!391 = !DILocation(line: 204, column: 49, scope: !346, inlinedAt: !382)
!392 = !DILocation(line: 204, column: 13, scope: !346, inlinedAt: !382)
!393 = !DILocation(line: 204, column: 47, scope: !346, inlinedAt: !382)
!394 = !DILocation(line: 205, column: 49, scope: !346, inlinedAt: !382)
!395 = !DILocation(line: 205, column: 13, scope: !346, inlinedAt: !382)
!396 = !DILocation(line: 205, column: 47, scope: !346, inlinedAt: !382)
!397 = !DILocation(line: 206, column: 49, scope: !346, inlinedAt: !382)
!398 = !DILocation(line: 206, column: 13, scope: !346, inlinedAt: !382)
!399 = !DILocation(line: 206, column: 47, scope: !346, inlinedAt: !382)
!400 = !DILocation(line: 164, column: 1, scope: !9)
