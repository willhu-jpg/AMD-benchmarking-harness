; ModuleID = '256_256_64_16_rolled-hip-amdgcn-amd-amdhsa-gfx942.tmp.bc'
source_filename = "256_256_64_16_rolled.cpp"
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
@__hip_cuid_777f9a614c287f8a = addrspace(1) global i8 0
@llvm.compiler.used = appending addrspace(1) global [1 x ptr] [ptr addrspacecast (ptr addrspace(1) @__hip_cuid_777f9a614c287f8a to ptr)], section "llvm.metadata"

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z8micro_tk13micro_globals(ptr addrspace(4) nocapture noundef readonly byref(%struct.micro_globals) align 8 %0) local_unnamed_addr #0 !dbg !9 {
  %.sroa.0518.0.copyload = load ptr, ptr addrspace(4) %0, align 8
  %.sroa.7522.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 32
  %.sroa.7522.0.copyload = load i64, ptr addrspace(4) %.sroa.7522.0..sroa_idx, align 8
  %.sroa.9523.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 48
  %.sroa.9523.0.copyload = load ptr, ptr addrspace(4) %.sroa.9523.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 80
  %.sroa.15.0.copyload = load i64, ptr addrspace(4) %.sroa.15.0..sroa_idx, align 8
  %.sroa.17528.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 96
  %.sroa.17528.0.copyload = load ptr, ptr addrspace(4) %.sroa.17528.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %0, i64 128
  %.sroa.20.0.copyload = load i64, ptr addrspace(4) %.sroa.20.0..sroa_idx, align 8
  %2 = and i64 ptrtoint (ptr addrspacecast (ptr addrspace(3) @__shm to ptr) to i64), 15, !dbg !12
  %.not.i.i = icmp eq i64 %2, 0, !dbg !18
  %reass.sub.i.i = and i64 ptrtoint (ptr addrspacecast (ptr addrspace(3) @__shm to ptr) to i64), -16, !dbg !19
  %3 = add i64 %reass.sub.i.i, 16, !dbg !19
  %4 = inttoptr i64 %3 to ptr, !dbg !19
  %5 = select i1 %.not.i.i, ptr addrspacecast (ptr addrspace(3) @__shm to ptr), ptr %4, !dbg !19
  %6 = getelementptr inbounds i8, ptr %5, i64 32768, !dbg !20
  %7 = ptrtoint ptr %6 to i64, !dbg !21
  %8 = and i64 %7, 15, !dbg !24
  %reass.sub.i.i106 = and i64 %7, -16, !dbg !25
  %9 = add i64 %reass.sub.i.i106, 16, !dbg !25
  %10 = inttoptr i64 %9 to ptr, !dbg !25
  %.not.i.i105 = icmp eq i64 %8, 0, !dbg !26
  %11 = select i1 %.not.i.i105, ptr %6, ptr %10, !dbg !25
  %12 = tail call noundef i32 @llvm.amdgcn.workgroup.id.y(), !dbg !27
  %13 = tail call noundef i32 @llvm.amdgcn.workgroup.id.x(), !dbg !33
  %14 = tail call noundef range(i32 0, 1024) i32 @llvm.amdgcn.workitem.id.x(), !dbg !38
  %15 = lshr i32 %14, 6, !dbg !45
  %16 = lshr i32 %14, 8, !dbg !46
  %17 = and i32 %15, 3, !dbg !47
  %18 = shl nuw nsw i32 %16, 5, !dbg !48
  %19 = trunc i64 %.sroa.7522.0.copyload to i32, !dbg !55
  %20 = shl nsw i32 %12, 8, !dbg !62
  %21 = sext i32 %20 to i64, !dbg !66
  %22 = mul i64 %.sroa.7522.0.copyload, %21, !dbg !70
  %23 = getelementptr %struct.__hip_bfloat16, ptr %.sroa.0518.0.copyload, i64 %22, !dbg !71
  %24 = ptrtoint ptr %5 to i64, !dbg !72
  %25 = shl nuw nsw i32 %14, 3
  %26 = and i32 %25, 56
  %27 = lshr i32 %14, 3, !dbg !73
  %28 = and i32 %27, 63, !dbg !73
  %29 = mul nsw i32 %28, %19, !dbg !74
  %30 = add nsw i32 %29, %26, !dbg !75
  %31 = sext i32 %30 to i64, !dbg !76
  %32 = getelementptr inbounds %struct.__hip_bfloat16, ptr %23, i64 %31, !dbg !76
  %33 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %32) #6, !dbg !77, !srcloc !81
  %34 = or i32 %27, 64, !dbg !73
  %35 = mul nsw i32 %34, %19, !dbg !74
  %36 = add nsw i32 %35, %26, !dbg !75
  %37 = sext i32 %36 to i64, !dbg !76
  %38 = getelementptr inbounds %struct.__hip_bfloat16, ptr %23, i64 %37, !dbg !76
  %39 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %38) #6, !dbg !77, !srcloc !81
  %40 = or disjoint i32 %28, 128, !dbg !73
  %41 = mul nsw i32 %40, %19, !dbg !74
  %42 = add nsw i32 %41, %26, !dbg !75
  %43 = sext i32 %42 to i64, !dbg !76
  %44 = getelementptr inbounds %struct.__hip_bfloat16, ptr %23, i64 %43, !dbg !76
  %45 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %44) #6, !dbg !77, !srcloc !81
  %46 = or i32 %27, 192, !dbg !73
  %47 = mul nsw i32 %46, %19, !dbg !74
  %48 = add nsw i32 %47, %26, !dbg !75
  %49 = sext i32 %48 to i64, !dbg !76
  %50 = getelementptr inbounds %struct.__hip_bfloat16, ptr %23, i64 %49, !dbg !76
  %51 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %50) #6, !dbg !77, !srcloc !81
  %52 = trunc i64 %24 to i32, !dbg !72
  tail call void asm sideeffect "s_waitcnt vmcnt(0)", ""() #6, !dbg !82, !srcloc !83
  %53 = shl nuw nsw i32 %14, 4
  %.masked.i.i = and i32 %53, 8064
  %54 = shl nuw nsw i32 %26, 1
  %55 = add i32 %54, %52
  %56 = or disjoint i32 %54, 8
  %57 = add i32 %56, %52
  %58 = add i32 %55, %.masked.i.i, !dbg !84
  %59 = lshr exact i32 %58, 4, !dbg !87
  %60 = and i32 %59, 120, !dbg !87
  %61 = xor i32 %60, %58, !dbg !88
  %.sroa.0.0.extract.trunc.i.i = trunc i128 %33 to i64, !dbg !89
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %61, i64 %.sroa.0.0.extract.trunc.i.i) #6, !dbg !90, !srcloc !93
  %62 = add i32 %57, %.masked.i.i, !dbg !94
  %63 = lshr i32 %62, 4, !dbg !96
  %64 = and i32 %63, 120, !dbg !96
  %65 = xor i32 %64, %62, !dbg !97
  %.sroa.0.8.extract.shift.i.i = lshr i128 %33, 64, !dbg !98
  %.sroa.0.8.extract.trunc.i.i = trunc nuw i128 %.sroa.0.8.extract.shift.i.i to i64, !dbg !98
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %65, i64 %.sroa.0.8.extract.trunc.i.i) #6, !dbg !99, !srcloc !93
  %66 = or disjoint i32 %.masked.i.i, 8192, !dbg !101
  %67 = add i32 %55, %66, !dbg !84
  %68 = lshr exact i32 %67, 4, !dbg !87
  %69 = and i32 %68, 120, !dbg !87
  %70 = xor i32 %69, %67, !dbg !88
  %.sroa.5.16.extract.trunc.i.i = trunc i128 %39 to i64, !dbg !89
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %70, i64 %.sroa.5.16.extract.trunc.i.i) #6, !dbg !90, !srcloc !93
  %71 = add i32 %57, %66, !dbg !94
  %72 = lshr i32 %71, 4, !dbg !96
  %73 = and i32 %72, 120, !dbg !96
  %74 = xor i32 %73, %71, !dbg !97
  %.sroa.5.24.extract.shift.i.i = lshr i128 %39, 64, !dbg !98
  %.sroa.5.24.extract.trunc.i.i = trunc nuw i128 %.sroa.5.24.extract.shift.i.i to i64, !dbg !98
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %74, i64 %.sroa.5.24.extract.trunc.i.i) #6, !dbg !99, !srcloc !93
  %75 = or disjoint i32 %.masked.i.i, 16384, !dbg !101
  %76 = add i32 %55, %75, !dbg !84
  %77 = lshr exact i32 %76, 4, !dbg !87
  %78 = and i32 %77, 120, !dbg !87
  %79 = xor i32 %78, %76, !dbg !88
  %.sroa.8.32.extract.trunc.i.i = trunc i128 %45 to i64, !dbg !89
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %79, i64 %.sroa.8.32.extract.trunc.i.i) #6, !dbg !90, !srcloc !93
  %80 = add i32 %57, %75, !dbg !94
  %81 = lshr i32 %80, 4, !dbg !96
  %82 = and i32 %81, 120, !dbg !96
  %83 = xor i32 %82, %80, !dbg !97
  %.sroa.8.40.extract.shift.i.i = lshr i128 %45, 64, !dbg !98
  %.sroa.8.40.extract.trunc.i.i = trunc nuw i128 %.sroa.8.40.extract.shift.i.i to i64, !dbg !98
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %83, i64 %.sroa.8.40.extract.trunc.i.i) #6, !dbg !99, !srcloc !93
  %84 = or disjoint i32 %.masked.i.i, 24576, !dbg !101
  %85 = add i32 %55, %84, !dbg !84
  %86 = lshr exact i32 %85, 4, !dbg !87
  %87 = and i32 %86, 120, !dbg !87
  %88 = xor i32 %87, %85, !dbg !88
  %.sroa.11.48.extract.trunc.i.i = trunc i128 %51 to i64, !dbg !89
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %88, i64 %.sroa.11.48.extract.trunc.i.i) #6, !dbg !90, !srcloc !93
  %89 = add i32 %57, %84, !dbg !94
  %90 = lshr i32 %89, 4, !dbg !96
  %91 = and i32 %90, 120, !dbg !96
  %92 = xor i32 %91, %89, !dbg !97
  %.sroa.11.56.extract.shift.i.i = lshr i128 %51, 64, !dbg !98
  %.sroa.11.56.extract.trunc.i.i = trunc nuw i128 %.sroa.11.56.extract.shift.i.i to i64, !dbg !98
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %92, i64 %.sroa.11.56.extract.trunc.i.i) #6, !dbg !99, !srcloc !93
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !102, !srcloc !103
  %93 = trunc i64 %.sroa.15.0.copyload to i32, !dbg !104
  %94 = shl nsw i32 %13, 8, !dbg !107
  %95 = sext i32 %94 to i64, !dbg !109
  %96 = mul i64 %.sroa.15.0.copyload, %95, !dbg !111
  %97 = getelementptr %struct.__hip_bfloat16, ptr %.sroa.9523.0.copyload, i64 %96, !dbg !112
  %98 = ptrtoint ptr %11 to i64, !dbg !113
  %99 = mul nsw i32 %28, %93, !dbg !114
  %100 = add nsw i32 %99, %26, !dbg !115
  %101 = sext i32 %100 to i64, !dbg !116
  %102 = getelementptr inbounds %struct.__hip_bfloat16, ptr %97, i64 %101, !dbg !116
  %103 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %102) #6, !dbg !117, !srcloc !81
  %104 = mul nsw i32 %34, %93, !dbg !114
  %105 = add nsw i32 %104, %26, !dbg !115
  %106 = sext i32 %105 to i64, !dbg !116
  %107 = getelementptr inbounds %struct.__hip_bfloat16, ptr %97, i64 %106, !dbg !116
  %108 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %107) #6, !dbg !117, !srcloc !81
  %109 = mul nsw i32 %40, %93, !dbg !114
  %110 = add nsw i32 %109, %26, !dbg !115
  %111 = sext i32 %110 to i64, !dbg !116
  %112 = getelementptr inbounds %struct.__hip_bfloat16, ptr %97, i64 %111, !dbg !116
  %113 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %112) #6, !dbg !117, !srcloc !81
  %114 = mul nsw i32 %46, %93, !dbg !114
  %115 = add nsw i32 %114, %26, !dbg !115
  %116 = sext i32 %115 to i64, !dbg !116
  %117 = getelementptr inbounds %struct.__hip_bfloat16, ptr %97, i64 %116, !dbg !116
  %118 = tail call i128 asm sideeffect "global_load_dwordx4 $0, $1, off\0A", "=v,v,~{memory}"(ptr %117) #6, !dbg !117, !srcloc !81
  %119 = trunc i64 %98 to i32, !dbg !113
  tail call void asm sideeffect "s_waitcnt vmcnt(0)", ""() #6, !dbg !119, !srcloc !83
  %120 = add i32 %54, %119
  %121 = add i32 %56, %119
  %122 = add i32 %120, %.masked.i.i, !dbg !120
  %123 = lshr exact i32 %122, 4, !dbg !122
  %124 = and i32 %123, 120, !dbg !122
  %125 = xor i32 %124, %122, !dbg !123
  %.sroa.0.0.extract.trunc.i.i114 = trunc i128 %103 to i64, !dbg !124
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %125, i64 %.sroa.0.0.extract.trunc.i.i114) #6, !dbg !125, !srcloc !93
  %126 = add i32 %121, %.masked.i.i, !dbg !127
  %127 = lshr i32 %126, 4, !dbg !129
  %128 = and i32 %127, 120, !dbg !129
  %129 = xor i32 %128, %126, !dbg !130
  %.sroa.0.8.extract.shift.i.i115 = lshr i128 %103, 64, !dbg !131
  %.sroa.0.8.extract.trunc.i.i116 = trunc nuw i128 %.sroa.0.8.extract.shift.i.i115 to i64, !dbg !131
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %129, i64 %.sroa.0.8.extract.trunc.i.i116) #6, !dbg !132, !srcloc !93
  %130 = add i32 %120, %66, !dbg !120
  %131 = lshr exact i32 %130, 4, !dbg !122
  %132 = and i32 %131, 120, !dbg !122
  %133 = xor i32 %132, %130, !dbg !123
  %.sroa.5.16.extract.trunc.i.i117 = trunc i128 %108 to i64, !dbg !124
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %133, i64 %.sroa.5.16.extract.trunc.i.i117) #6, !dbg !125, !srcloc !93
  %134 = add i32 %121, %66, !dbg !127
  %135 = lshr i32 %134, 4, !dbg !129
  %136 = and i32 %135, 120, !dbg !129
  %137 = xor i32 %136, %134, !dbg !130
  %.sroa.5.24.extract.shift.i.i118 = lshr i128 %108, 64, !dbg !131
  %.sroa.5.24.extract.trunc.i.i119 = trunc nuw i128 %.sroa.5.24.extract.shift.i.i118 to i64, !dbg !131
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %137, i64 %.sroa.5.24.extract.trunc.i.i119) #6, !dbg !132, !srcloc !93
  %138 = add i32 %120, %75, !dbg !120
  %139 = lshr exact i32 %138, 4, !dbg !122
  %140 = and i32 %139, 120, !dbg !122
  %141 = xor i32 %140, %138, !dbg !123
  %.sroa.8.32.extract.trunc.i.i120 = trunc i128 %113 to i64, !dbg !124
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %141, i64 %.sroa.8.32.extract.trunc.i.i120) #6, !dbg !125, !srcloc !93
  %142 = add i32 %121, %75, !dbg !127
  %143 = lshr i32 %142, 4, !dbg !129
  %144 = and i32 %143, 120, !dbg !129
  %145 = xor i32 %144, %142, !dbg !130
  %.sroa.8.40.extract.shift.i.i121 = lshr i128 %113, 64, !dbg !131
  %.sroa.8.40.extract.trunc.i.i122 = trunc nuw i128 %.sroa.8.40.extract.shift.i.i121 to i64, !dbg !131
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %145, i64 %.sroa.8.40.extract.trunc.i.i122) #6, !dbg !132, !srcloc !93
  %146 = add i32 %120, %84, !dbg !120
  %147 = lshr exact i32 %146, 4, !dbg !122
  %148 = and i32 %147, 120, !dbg !122
  %149 = xor i32 %148, %146, !dbg !123
  %.sroa.11.48.extract.trunc.i.i123 = trunc i128 %118 to i64, !dbg !124
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %149, i64 %.sroa.11.48.extract.trunc.i.i123) #6, !dbg !125, !srcloc !93
  %150 = add i32 %121, %84, !dbg !127
  %151 = lshr i32 %150, 4, !dbg !129
  %152 = and i32 %151, 120, !dbg !129
  %153 = xor i32 %152, %150, !dbg !130
  %.sroa.11.56.extract.shift.i.i124 = lshr i128 %118, 64, !dbg !131
  %.sroa.11.56.extract.trunc.i.i125 = trunc nuw i128 %.sroa.11.56.extract.shift.i.i124 to i64, !dbg !131
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %153, i64 %.sroa.11.56.extract.trunc.i.i125) #6, !dbg !132, !srcloc !93
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !134, !srcloc !103
  tail call void @llvm.amdgcn.s.barrier(), !dbg !135
  %154 = icmp eq i32 %16, 1, !dbg !136
  br i1 %154, label %155, label %156, !dbg !137

155:                                              ; preds = %1
  tail call void @llvm.amdgcn.s.barrier(), !dbg !138
  br label %156, !dbg !139

156:                                              ; preds = %155, %1
  %157 = shl nuw nsw i32 %17, 5
  %158 = and i32 %14, 15
  %159 = or disjoint i32 %157, %158
  %160 = shl nuw nsw i32 %159, 7
  %161 = lshr i32 %14, 1
  %162 = and i32 %161, 24
  %163 = add i32 %160, %119
  %164 = shl i32 %93, 9
  %165 = and i32 %25, 24
  %166 = lshr i32 %14, 2
  %167 = and i32 %166, 63
  %168 = mul i32 %167, %93
  %169 = add i32 %168, %165
  %170 = shl i32 %169, 1
  %171 = or disjoint i32 %167, 64
  %172 = mul i32 %171, %93
  %173 = add i32 %172, %165
  %174 = shl i32 %173, 1
  %175 = or disjoint i32 %167, 128
  %176 = mul i32 %175, %93
  %177 = add i32 %176, %165
  %178 = shl i32 %177, 1
  %179 = or i32 %166, 192
  %180 = mul i32 %179, %93
  %181 = add i32 %180, %165
  %182 = shl i32 %181, 1
  %183 = or disjoint i32 %158, 16
  %184 = or disjoint i32 %157, %183
  %185 = shl nuw nsw i32 %184, 7
  %186 = add i32 %185, %119
  %187 = or disjoint i32 %157, 128
  %188 = or disjoint i32 %187, %158
  %189 = shl nuw nsw i32 %188, 7
  %190 = add i32 %189, %119
  %191 = or disjoint i32 %187, %183
  %192 = shl nuw nsw i32 %191, 7
  %193 = add i32 %192, %119
  %194 = or disjoint i32 %18, %158
  %195 = shl nuw nsw i32 %194, 7
  %196 = add i32 %195, %52
  %197 = or disjoint i32 %183, %18
  %198 = shl nuw nsw i32 %197, 7
  %199 = add i32 %198, %52
  %200 = add nuw nsw i32 %18, 64
  %201 = or disjoint i32 %200, %158
  %202 = shl nuw nsw i32 %201, 7
  %203 = add i32 %202, %52
  %204 = or disjoint i32 %200, %183
  %205 = shl nuw nsw i32 %204, 7
  %206 = add i32 %205, %52
  %207 = or disjoint i32 %18, 128
  %208 = or disjoint i32 %207, %158
  %209 = shl nuw nsw i32 %208, 7
  %210 = add i32 %209, %52
  %211 = or disjoint i32 %207, %183
  %212 = shl nuw nsw i32 %211, 7
  %213 = add i32 %212, %52
  %214 = add nuw nsw i32 %18, 192
  %215 = or disjoint i32 %214, %158
  %216 = shl nuw nsw i32 %215, 7
  %217 = add i32 %216, %52
  %218 = or disjoint i32 %214, %183
  %219 = shl nuw nsw i32 %218, 7
  %220 = add i32 %219, %52
  %221 = shl i32 %19, 9
  %222 = mul i32 %167, %19
  %223 = add i32 %222, %165
  %224 = shl i32 %223, 1
  %225 = mul i32 %171, %19
  %226 = add i32 %225, %165
  %227 = shl i32 %226, 1
  %228 = mul i32 %175, %19
  %229 = add i32 %228, %165
  %230 = shl i32 %229, 1
  %231 = mul i32 %179, %19
  %232 = add i32 %231, %165
  %233 = shl i32 %232, 1
  %.masked = and i32 %18, 32
  %234 = or disjoint i32 %.masked, %165
  %235 = shl nuw nsw i32 %14, 6
  %236 = and i32 %235, 32768
  %237 = shl nuw nsw i32 %167, 7
  %238 = shl nuw nsw i32 %234, 1
  %239 = add i32 %237, %52
  %240 = add i32 %239, %238
  %241 = add i32 %240, %236
  %242 = lshr i32 %240, 4
  %243 = and i32 %242, 120
  %244 = xor i32 %243, %241
  %245 = or disjoint i32 %238, 8
  %246 = add i32 %239, %245
  %247 = add i32 %246, %236
  %248 = lshr i32 %246, 4
  %249 = and i32 %248, 120
  %250 = xor i32 %249, %247
  %251 = or disjoint i32 %237, 8192
  %252 = add i32 %251, %52
  %253 = add i32 %252, %238
  %254 = add i32 %253, %236
  %255 = lshr i32 %253, 4
  %256 = and i32 %255, 120
  %257 = xor i32 %256, %254
  %258 = add i32 %252, %245
  %259 = add i32 %258, %236
  %260 = lshr i32 %258, 4
  %261 = and i32 %260, 120
  %262 = xor i32 %261, %259
  %263 = or disjoint i32 %237, 16384
  %264 = add i32 %263, %52
  %265 = add i32 %264, %238
  %266 = add i32 %265, %236
  %267 = lshr i32 %265, 4
  %268 = and i32 %267, 120
  %269 = xor i32 %268, %266
  %270 = add i32 %264, %245
  %271 = add i32 %270, %236
  %272 = lshr i32 %270, 4
  %273 = and i32 %272, 120
  %274 = xor i32 %273, %271
  %275 = shl nuw nsw i32 %14, 5
  %276 = and i32 %275, 8064
  %277 = or disjoint i32 %276, 24576
  %278 = add i32 %277, %52
  %279 = add i32 %278, %238
  %280 = add i32 %279, %236
  %281 = lshr i32 %279, 4
  %282 = and i32 %281, 120
  %283 = xor i32 %282, %280
  %284 = add i32 %278, %245
  %285 = add i32 %284, %236
  %286 = lshr i32 %284, 4
  %287 = and i32 %286, 120
  %288 = xor i32 %287, %285
  %289 = add i32 %237, %119
  %290 = add i32 %289, %238
  %291 = add i32 %290, %236
  %292 = lshr i32 %290, 4
  %293 = and i32 %292, 120
  %294 = xor i32 %293, %291
  %295 = add i32 %289, %245
  %296 = add i32 %295, %236
  %297 = lshr i32 %295, 4
  %298 = and i32 %297, 120
  %299 = xor i32 %298, %296
  %300 = add i32 %251, %119
  %301 = add i32 %300, %238
  %302 = add i32 %301, %236
  %303 = lshr i32 %301, 4
  %304 = and i32 %303, 120
  %305 = xor i32 %304, %302
  %306 = add i32 %300, %245
  %307 = add i32 %306, %236
  %308 = lshr i32 %306, 4
  %309 = and i32 %308, 120
  %310 = xor i32 %309, %307
  %311 = add i32 %263, %119
  %312 = add i32 %311, %238
  %313 = add i32 %312, %236
  %314 = lshr i32 %312, 4
  %315 = and i32 %314, 120
  %316 = xor i32 %315, %313
  %317 = add i32 %311, %245
  %318 = add i32 %317, %236
  %319 = lshr i32 %317, 4
  %320 = and i32 %319, 120
  %321 = xor i32 %320, %318
  %322 = add i32 %277, %119
  %323 = add i32 %322, %238
  %324 = add i32 %323, %236
  %325 = lshr i32 %323, 4
  %326 = and i32 %325, 120
  %327 = xor i32 %326, %324
  %328 = add i32 %322, %245
  %329 = add i32 %328, %236
  %330 = lshr i32 %328, 4
  %331 = and i32 %330, 120
  %332 = xor i32 %331, %329
  %.pre1040 = or disjoint i32 %18, 8192
  %.pre1042 = zext nneg i32 %.pre1040 to i64
  br label %335, !dbg !140

333:                                              ; preds = %540
  %334 = icmp ult i32 %14, 256, !dbg !141
  br i1 %334, label %541, label %542, !dbg !142

335:                                              ; preds = %156, %540
  %.0101813 = phi i32 [ 0, %156 ], [ %336, %540 ]
  %.sroa.11439.0.off64812 = phi i64 [ 0, %156 ], [ %.sroa.11439.1.off64, %540 ]
  %.sroa.11439.0.off0811 = phi i64 [ undef, %156 ], [ %.sroa.11439.1.off0, %540 ]
  %.sroa.8438.0.off64810 = phi i64 [ 0, %156 ], [ %.sroa.8438.1.off64, %540 ]
  %.sroa.8438.0.off0809 = phi i64 [ undef, %156 ], [ %.sroa.8438.1.off0, %540 ]
  %.sroa.5437.0.off64808 = phi i64 [ 0, %156 ], [ %.sroa.5437.1.off64, %540 ]
  %.sroa.5437.0.off0807 = phi i64 [ undef, %156 ], [ %.sroa.5437.1.off0, %540 ]
  %.sroa.0436.0.off64806 = phi i64 [ 0, %156 ], [ %.sroa.0436.1.off64, %540 ]
  %.sroa.0436.0.off0805 = phi i64 [ undef, %156 ], [ %.sroa.0436.1.off0, %540 ]
  %.sroa.11.0.off64804 = phi i64 [ 0, %156 ], [ %.sroa.11.2.off64, %540 ]
  %.sroa.11.0.off0803 = phi i64 [ undef, %156 ], [ %.sroa.11.2.off0, %540 ]
  %.sroa.8435.0.off64802 = phi i64 [ 0, %156 ], [ %.sroa.8435.2.off64, %540 ]
  %.sroa.8435.0.off0801 = phi i64 [ undef, %156 ], [ %.sroa.8435.2.off0, %540 ]
  %.sroa.5.0.off64800 = phi i64 [ 0, %156 ], [ %.sroa.5.2.off64, %540 ]
  %.sroa.5.0.off0799 = phi i64 [ undef, %156 ], [ %.sroa.5.2.off0, %540 ]
  %.sroa.0434.0.off64798 = phi i64 [ 0, %156 ], [ %.sroa.0434.2.off64, %540 ]
  %.sroa.0434.0.off0797 = phi i64 [ undef, %156 ], [ %.sroa.0434.2.off0, %540 ]
  %.lcssa703796 = phi <4 x float> [ zeroinitializer, %156 ], [ %506, %540 ]
  %.lcssa632704795 = phi <4 x float> [ zeroinitializer, %156 ], [ %507, %540 ]
  %.lcssa635706794 = phi <4 x float> [ zeroinitializer, %156 ], [ %508, %540 ]
  %.lcssa638708793 = phi <4 x float> [ zeroinitializer, %156 ], [ %509, %540 ]
  %.lcssa641710792 = phi <4 x float> [ zeroinitializer, %156 ], [ %510, %540 ]
  %.lcssa643712791 = phi <4 x float> [ zeroinitializer, %156 ], [ %511, %540 ]
  %.lcssa645714790 = phi <4 x float> [ zeroinitializer, %156 ], [ %512, %540 ]
  %.lcssa647716789 = phi <4 x float> [ zeroinitializer, %156 ], [ %513, %540 ]
  %.lcssa650718788 = phi <4 x float> [ zeroinitializer, %156 ], [ %514, %540 ]
  %.lcssa652720787 = phi <4 x float> [ zeroinitializer, %156 ], [ %515, %540 ]
  %.lcssa654722786 = phi <4 x float> [ zeroinitializer, %156 ], [ %516, %540 ]
  %.lcssa656724785 = phi <4 x float> [ zeroinitializer, %156 ], [ %517, %540 ]
  %.lcssa659726784 = phi <4 x float> [ zeroinitializer, %156 ], [ %518, %540 ]
  %.lcssa661728783 = phi <4 x float> [ zeroinitializer, %156 ], [ %519, %540 ]
  %.lcssa663730782 = phi <4 x float> [ zeroinitializer, %156 ], [ %520, %540 ]
  %.lcssa665732781 = phi <4 x float> [ zeroinitializer, %156 ], [ %521, %540 ]
  %.lcssa668734780 = phi <4 x float> [ zeroinitializer, %156 ], [ %522, %540 ]
  %.lcssa670736779 = phi <4 x float> [ zeroinitializer, %156 ], [ %523, %540 ]
  %.lcssa672738778 = phi <4 x float> [ zeroinitializer, %156 ], [ %524, %540 ]
  %.lcssa674740777 = phi <4 x float> [ zeroinitializer, %156 ], [ %525, %540 ]
  %.lcssa677742776 = phi <4 x float> [ zeroinitializer, %156 ], [ %526, %540 ]
  %.lcssa679744775 = phi <4 x float> [ zeroinitializer, %156 ], [ %527, %540 ]
  %.lcssa681746774 = phi <4 x float> [ zeroinitializer, %156 ], [ %528, %540 ]
  %.lcssa683748773 = phi <4 x float> [ zeroinitializer, %156 ], [ %529, %540 ]
  %.lcssa686750772 = phi <4 x float> [ zeroinitializer, %156 ], [ %530, %540 ]
  %.lcssa688752771 = phi <4 x float> [ zeroinitializer, %156 ], [ %531, %540 ]
  %.lcssa690754770 = phi <4 x float> [ zeroinitializer, %156 ], [ %532, %540 ]
  %.lcssa692756769 = phi <4 x float> [ zeroinitializer, %156 ], [ %533, %540 ]
  %.lcssa695758768 = phi <4 x float> [ zeroinitializer, %156 ], [ %534, %540 ]
  %.lcssa697760767 = phi <4 x float> [ zeroinitializer, %156 ], [ %535, %540 ]
  %.lcssa699762766 = phi <4 x float> [ zeroinitializer, %156 ], [ %536, %540 ]
  %.lcssa701764765 = phi <4 x float> [ zeroinitializer, %156 ], [ %537, %540 ]
  %336 = add nuw nsw i32 %.0101813, 1, !dbg !143
  %337 = icmp ne i32 %.0101813, 127, !dbg !144
  br i1 %337, label %338, label %._crit_edge, !dbg !145

338:                                              ; preds = %335
  %339 = shl nuw nsw i32 %336, 6, !dbg !146
  %340 = add nuw nsw i32 %339, %18, !dbg !146
  %341 = zext nneg i32 %340 to i64, !dbg !152
  %342 = getelementptr %struct.__hip_bfloat16, ptr %23, i64 %341, !dbg !154
  %343 = ptrtoint ptr %342 to i64, !dbg !155
  %344 = bitcast i64 %343 to <2 x i32>, !dbg !155
  %.sroa.0.0.vec.expand.i.i = shufflevector <2 x i32> %344, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>, !dbg !155
  %345 = insertelement <4 x i32> %.sroa.0.0.vec.expand.i.i, i32 1114112, i64 3, !dbg !155
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x i32> %345, i32 %221, i64 2, !dbg !155
  %346 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i, i32 noundef %224, i32 noundef 0, i32 noundef 0) #6, !dbg !158
  %347 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i, i32 noundef %227, i32 noundef 0, i32 noundef 0) #6, !dbg !158
  %348 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i, i32 noundef %230, i32 noundef 0, i32 noundef 0) #6, !dbg !158
  %349 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i, i32 noundef %233, i32 noundef 0, i32 noundef 0) #6, !dbg !158
  %extract.t = trunc i128 %346 to i64, !dbg !161
  %extract = lshr i128 %346, 64, !dbg !161
  %extract.t583 = trunc nuw i128 %extract to i64, !dbg !161
  %extract.t589 = trunc i128 %347 to i64, !dbg !161
  %extract591 = lshr i128 %347, 64, !dbg !161
  %extract.t592 = trunc nuw i128 %extract591 to i64, !dbg !161
  %extract.t598 = trunc i128 %348 to i64, !dbg !161
  %extract600 = lshr i128 %348, 64, !dbg !161
  %extract.t601 = trunc nuw i128 %extract600 to i64, !dbg !161
  %extract.t607 = trunc i128 %349 to i64, !dbg !161
  %extract609 = lshr i128 %349, 64, !dbg !161
  %extract.t610 = trunc nuw i128 %extract609 to i64, !dbg !161
  br label %._crit_edge, !dbg !161

._crit_edge:                                      ; preds = %335, %338
  %.pre-phi1043 = phi i64 [ %341, %338 ], [ %.pre1042, %335 ]
  %.sroa.0436.1.off0 = phi i64 [ %extract.t, %338 ], [ %.sroa.0436.0.off0805, %335 ]
  %.sroa.0436.1.off64 = phi i64 [ %extract.t583, %338 ], [ %.sroa.0436.0.off64806, %335 ]
  %.sroa.5437.1.off0 = phi i64 [ %extract.t589, %338 ], [ %.sroa.5437.0.off0807, %335 ]
  %.sroa.5437.1.off64 = phi i64 [ %extract.t592, %338 ], [ %.sroa.5437.0.off64808, %335 ]
  %.sroa.8438.1.off0 = phi i64 [ %extract.t598, %338 ], [ %.sroa.8438.0.off0809, %335 ]
  %.sroa.8438.1.off64 = phi i64 [ %extract.t601, %338 ], [ %.sroa.8438.0.off64810, %335 ]
  %.sroa.11439.1.off0 = phi i64 [ %extract.t607, %338 ], [ %.sroa.11439.0.off0811, %335 ]
  %.sroa.11439.1.off64 = phi i64 [ %extract.t610, %338 ], [ %.sroa.11439.0.off64812, %335 ]
  %350 = getelementptr %struct.__hip_bfloat16, ptr %97, i64 %.pre-phi1043
  %351 = ptrtoint ptr %350 to i64
  %352 = bitcast i64 %351 to <2 x i32>
  %.sroa.0.0.vec.expand.i.i129 = shufflevector <2 x i32> %352, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %353 = insertelement <4 x i32> %.sroa.0.0.vec.expand.i.i129, i32 1114112, i64 3
  %.sroa.0.12.vec.insert.i.i130 = insertelement <4 x i32> %353, i32 %164, i64 2
  br label %355, !dbg !162

354:                                              ; preds = %383
  br i1 %337, label %539, label %540, !dbg !163

355:                                              ; preds = %._crit_edge, %383
  %356 = phi <4 x float> [ %.lcssa701764765, %._crit_edge ], [ %537, %383 ]
  %357 = phi <4 x float> [ %.lcssa699762766, %._crit_edge ], [ %536, %383 ]
  %358 = phi <4 x float> [ %.lcssa697760767, %._crit_edge ], [ %535, %383 ]
  %.val30.i318694 = phi <4 x float> [ %.lcssa695758768, %._crit_edge ], [ %534, %383 ]
  %359 = phi <4 x float> [ %.lcssa692756769, %._crit_edge ], [ %533, %383 ]
  %360 = phi <4 x float> [ %.lcssa690754770, %._crit_edge ], [ %532, %383 ]
  %361 = phi <4 x float> [ %.lcssa688752771, %._crit_edge ], [ %531, %383 ]
  %.val30.i306685 = phi <4 x float> [ %.lcssa686750772, %._crit_edge ], [ %530, %383 ]
  %362 = phi <4 x float> [ %.lcssa683748773, %._crit_edge ], [ %529, %383 ]
  %363 = phi <4 x float> [ %.lcssa681746774, %._crit_edge ], [ %528, %383 ]
  %364 = phi <4 x float> [ %.lcssa679744775, %._crit_edge ], [ %527, %383 ]
  %.val30.i294676 = phi <4 x float> [ %.lcssa677742776, %._crit_edge ], [ %526, %383 ]
  %365 = phi <4 x float> [ %.lcssa674740777, %._crit_edge ], [ %525, %383 ]
  %366 = phi <4 x float> [ %.lcssa672738778, %._crit_edge ], [ %524, %383 ]
  %367 = phi <4 x float> [ %.lcssa670736779, %._crit_edge ], [ %523, %383 ]
  %.val30.i282667 = phi <4 x float> [ %.lcssa668734780, %._crit_edge ], [ %522, %383 ]
  %368 = phi <4 x float> [ %.lcssa665732781, %._crit_edge ], [ %521, %383 ]
  %369 = phi <4 x float> [ %.lcssa663730782, %._crit_edge ], [ %520, %383 ]
  %370 = phi <4 x float> [ %.lcssa661728783, %._crit_edge ], [ %519, %383 ]
  %.val30.i270658 = phi <4 x float> [ %.lcssa659726784, %._crit_edge ], [ %518, %383 ]
  %371 = phi <4 x float> [ %.lcssa656724785, %._crit_edge ], [ %517, %383 ]
  %372 = phi <4 x float> [ %.lcssa654722786, %._crit_edge ], [ %516, %383 ]
  %373 = phi <4 x float> [ %.lcssa652720787, %._crit_edge ], [ %515, %383 ]
  %.val30.i258649 = phi <4 x float> [ %.lcssa650718788, %._crit_edge ], [ %514, %383 ]
  %374 = phi <4 x float> [ %.lcssa647716789, %._crit_edge ], [ %513, %383 ]
  %375 = phi <4 x float> [ %.lcssa645714790, %._crit_edge ], [ %512, %383 ]
  %376 = phi <4 x float> [ %.lcssa643712791, %._crit_edge ], [ %511, %383 ]
  %.val30.i246640 = phi <4 x float> [ %.lcssa641710792, %._crit_edge ], [ %510, %383 ]
  %.val30.1.1.i637 = phi <4 x float> [ %.lcssa638708793, %._crit_edge ], [ %509, %383 ]
  %.val30.135.i634 = phi <4 x float> [ %.lcssa635706794, %._crit_edge ], [ %508, %383 ]
  %.val30.1.i631 = phi <4 x float> [ %.lcssa632704795, %._crit_edge ], [ %507, %383 ]
  %.0103628 = phi i32 [ 0, %._crit_edge ], [ %538, %383 ]
  %.sroa.11.1.off64627 = phi i64 [ %.sroa.11.0.off64804, %._crit_edge ], [ %.sroa.11.2.off64, %383 ]
  %.sroa.11.1.off0626 = phi i64 [ %.sroa.11.0.off0803, %._crit_edge ], [ %.sroa.11.2.off0, %383 ]
  %.sroa.8435.1.off64625 = phi i64 [ %.sroa.8435.0.off64802, %._crit_edge ], [ %.sroa.8435.2.off64, %383 ]
  %.sroa.8435.1.off0624 = phi i64 [ %.sroa.8435.0.off0801, %._crit_edge ], [ %.sroa.8435.2.off0, %383 ]
  %.sroa.5.1.off64623 = phi i64 [ %.sroa.5.0.off64800, %._crit_edge ], [ %.sroa.5.2.off64, %383 ]
  %.sroa.5.1.off0622 = phi i64 [ %.sroa.5.0.off0799, %._crit_edge ], [ %.sroa.5.2.off0, %383 ]
  %.sroa.0434.1.off64621 = phi i64 [ %.sroa.0434.0.off64798, %._crit_edge ], [ %.sroa.0434.2.off64, %383 ]
  %.sroa.0434.1.off0620 = phi i64 [ %.sroa.0434.0.off0797, %._crit_edge ], [ %.sroa.0434.2.off0, %383 ]
  %.val30.i618619 = phi <4 x float> [ %.lcssa703796, %._crit_edge ], [ %506, %383 ]
  %377 = icmp eq i32 %.0103628, 2
  %or.cond = and i1 %337, %377, !dbg !164
  br i1 %or.cond, label %378, label %383, !dbg !164

378:                                              ; preds = %355
  %379 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i130, i32 noundef %170, i32 noundef 0, i32 noundef 0) #6, !dbg !165
  %380 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i130, i32 noundef %174, i32 noundef 0, i32 noundef 0) #6, !dbg !165
  %381 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i130, i32 noundef %178, i32 noundef 0, i32 noundef 0) #6, !dbg !165
  %382 = tail call noundef i128 @llvm.amdgcn.raw.buffer.load.i128(<4 x i32> noundef %.sroa.0.12.vec.insert.i.i130, i32 noundef %182, i32 noundef 0, i32 noundef 0) #6, !dbg !165
  %extract.t535 = trunc i128 %379 to i64, !dbg !168
  %extract539 = lshr i128 %379, 64, !dbg !168
  %extract.t540 = trunc nuw i128 %extract539 to i64, !dbg !168
  %extract.t548 = trunc i128 %380 to i64, !dbg !168
  %extract552 = lshr i128 %380, 64, !dbg !168
  %extract.t553 = trunc nuw i128 %extract552 to i64, !dbg !168
  %extract.t561 = trunc i128 %381 to i64, !dbg !168
  %extract565 = lshr i128 %381, 64, !dbg !168
  %extract.t566 = trunc nuw i128 %extract565 to i64, !dbg !168
  %extract.t574 = trunc i128 %382 to i64, !dbg !168
  %extract578 = lshr i128 %382, 64, !dbg !168
  %extract.t579 = trunc nuw i128 %extract578 to i64, !dbg !168
  br label %383, !dbg !168

383:                                              ; preds = %378, %355
  %.sroa.0434.2.off0 = phi i64 [ %extract.t535, %378 ], [ %.sroa.0434.1.off0620, %355 ]
  %.sroa.0434.2.off64 = phi i64 [ %extract.t540, %378 ], [ %.sroa.0434.1.off64621, %355 ]
  %.sroa.5.2.off0 = phi i64 [ %extract.t548, %378 ], [ %.sroa.5.1.off0622, %355 ]
  %.sroa.5.2.off64 = phi i64 [ %extract.t553, %378 ], [ %.sroa.5.1.off64623, %355 ]
  %.sroa.8435.2.off0 = phi i64 [ %extract.t561, %378 ], [ %.sroa.8435.1.off0624, %355 ]
  %.sroa.8435.2.off64 = phi i64 [ %extract.t566, %378 ], [ %.sroa.8435.1.off64625, %355 ]
  %.sroa.11.2.off0 = phi i64 [ %extract.t574, %378 ], [ %.sroa.11.1.off0626, %355 ]
  %.sroa.11.2.off64 = phi i64 [ %extract.t579, %378 ], [ %.sroa.11.1.off64627, %355 ]
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !169
  %384 = shl nuw nsw i32 %.0103628, 5, !dbg !170
  %385 = or disjoint i32 %384, %162, !dbg !170
  %386 = add i32 %163, %385, !dbg !170
  %387 = lshr i32 %386, 4, !dbg !175
  %388 = and i32 %387, 120, !dbg !175
  %389 = xor i32 %388, %386, !dbg !176
  %390 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %389) #6, !dbg !177, !srcloc !180
  %.sroa.036.2.extract.shift37.i = lshr i64 %390, 16, !dbg !181
  %391 = insertelement <2 x i64> poison, i64 %390, i64 0, !dbg !181
  %392 = insertelement <2 x i64> %391, i64 %.sroa.036.2.extract.shift37.i, i64 1, !dbg !181
  %393 = shufflevector <2 x i64> %391, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !177
  %394 = lshr <2 x i64> %393, <i64 32, i64 48>, !dbg !177
  %395 = shufflevector <2 x i64> %392, <2 x i64> %394, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !182
  %.sroa.0459.6.vec.insert1107 = trunc <4 x i64> %395 to <4 x i16>, !dbg !182
  %396 = add i32 %186, %385, !dbg !170
  %397 = lshr i32 %396, 4, !dbg !175
  %398 = and i32 %397, 120, !dbg !175
  %399 = xor i32 %398, %396, !dbg !176
  %400 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %399) #6, !dbg !177, !srcloc !180
  %.sroa.036.2.extract.shift37.1.i = lshr i64 %400, 16, !dbg !181
  %401 = insertelement <2 x i64> poison, i64 %400, i64 0, !dbg !181
  %402 = insertelement <2 x i64> %401, i64 %.sroa.036.2.extract.shift37.1.i, i64 1, !dbg !181
  %403 = shufflevector <2 x i64> %401, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !177
  %404 = lshr <2 x i64> %403, <i64 32, i64 48>, !dbg !177
  %405 = shufflevector <2 x i64> %402, <2 x i64> %404, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !182
  %.sroa.14468.14.vec.insert1106 = trunc <4 x i64> %405 to <4 x i16>, !dbg !182
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0A", ""() #6, !dbg !186, !srcloc !187
  %406 = add i32 %190, %385, !dbg !188
  %407 = lshr i32 %406, 4, !dbg !191
  %408 = and i32 %407, 120, !dbg !191
  %409 = xor i32 %408, %406, !dbg !192
  %410 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %409) #6, !dbg !193, !srcloc !180
  %.sroa.036.2.extract.shift37.i142 = lshr i64 %410, 16, !dbg !195
  %411 = insertelement <2 x i64> poison, i64 %410, i64 0, !dbg !195
  %412 = insertelement <2 x i64> %411, i64 %.sroa.036.2.extract.shift37.i142, i64 1, !dbg !195
  %413 = shufflevector <2 x i64> %411, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !193
  %414 = lshr <2 x i64> %413, <i64 32, i64 48>, !dbg !193
  %415 = shufflevector <2 x i64> %412, <2 x i64> %414, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !196
  %.sroa.0441.6.vec.insert1109 = trunc <4 x i64> %415 to <4 x i16>, !dbg !196
  %416 = add i32 %193, %385, !dbg !188
  %417 = lshr i32 %416, 4, !dbg !191
  %418 = and i32 %417, 120, !dbg !191
  %419 = xor i32 %418, %416, !dbg !192
  %420 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %419) #6, !dbg !193, !srcloc !180
  %.sroa.036.2.extract.shift37.1.i151 = lshr i64 %420, 16, !dbg !195
  %421 = insertelement <2 x i64> poison, i64 %420, i64 0, !dbg !195
  %422 = insertelement <2 x i64> %421, i64 %.sroa.036.2.extract.shift37.1.i151, i64 1, !dbg !195
  %423 = shufflevector <2 x i64> %421, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !193
  %424 = lshr <2 x i64> %423, <i64 32, i64 48>, !dbg !193
  %425 = shufflevector <2 x i64> %422, <2 x i64> %424, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !196
  %.sroa.14450.14.vec.insert1108 = trunc <4 x i64> %425 to <4 x i16>, !dbg !196
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0A", ""() #6, !dbg !198, !srcloc !199
  %426 = add i32 %196, %385, !dbg !200
  %427 = lshr i32 %426, 4, !dbg !203
  %428 = and i32 %427, 120, !dbg !203
  %429 = xor i32 %428, %426, !dbg !204
  %430 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %429) #6, !dbg !205, !srcloc !180
  %.sroa.036.2.extract.shift37.i163 = lshr i64 %430, 16, !dbg !207
  %431 = insertelement <2 x i64> poison, i64 %430, i64 0, !dbg !207
  %432 = insertelement <2 x i64> %431, i64 %.sroa.036.2.extract.shift37.i163, i64 1, !dbg !207
  %433 = shufflevector <2 x i64> %431, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !205
  %434 = lshr <2 x i64> %433, <i64 32, i64 48>, !dbg !205
  %435 = shufflevector <2 x i64> %432, <2 x i64> %434, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !208
  %.sroa.0506.6.vec.insert1111 = trunc <4 x i64> %435 to <4 x i16>, !dbg !208
  %436 = add i32 %199, %385, !dbg !200
  %437 = lshr i32 %436, 4, !dbg !203
  %438 = and i32 %437, 120, !dbg !203
  %439 = xor i32 %438, %436, !dbg !204
  %440 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %439) #6, !dbg !205, !srcloc !180
  %.sroa.036.2.extract.shift37.1.i172 = lshr i64 %440, 16, !dbg !207
  %441 = insertelement <2 x i64> poison, i64 %440, i64 0, !dbg !207
  %442 = insertelement <2 x i64> %441, i64 %.sroa.036.2.extract.shift37.1.i172, i64 1, !dbg !207
  %443 = shufflevector <2 x i64> %441, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !205
  %444 = lshr <2 x i64> %443, <i64 32, i64 48>, !dbg !205
  %445 = shufflevector <2 x i64> %442, <2 x i64> %444, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !208
  %.sroa.10511.14.vec.insert1110 = trunc <4 x i64> %445 to <4 x i16>, !dbg !208
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0A", ""() #6, !dbg !210, !srcloc !211
  %446 = add i32 %203, %385, !dbg !212
  %447 = lshr i32 %446, 4, !dbg !215
  %448 = and i32 %447, 120, !dbg !215
  %449 = xor i32 %448, %446, !dbg !216
  %450 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %449) #6, !dbg !217, !srcloc !180
  %.sroa.036.2.extract.shift37.i184 = lshr i64 %450, 16, !dbg !219
  %451 = insertelement <2 x i64> poison, i64 %450, i64 0, !dbg !219
  %452 = insertelement <2 x i64> %451, i64 %.sroa.036.2.extract.shift37.i184, i64 1, !dbg !219
  %453 = shufflevector <2 x i64> %451, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !217
  %454 = lshr <2 x i64> %453, <i64 32, i64 48>, !dbg !217
  %455 = shufflevector <2 x i64> %452, <2 x i64> %454, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !220
  %.sroa.0496.6.vec.insert1113 = trunc <4 x i64> %455 to <4 x i16>, !dbg !220
  %456 = add i32 %206, %385, !dbg !212
  %457 = lshr i32 %456, 4, !dbg !215
  %458 = and i32 %457, 120, !dbg !215
  %459 = xor i32 %458, %456, !dbg !216
  %460 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %459) #6, !dbg !217, !srcloc !180
  %.sroa.036.2.extract.shift37.1.i193 = lshr i64 %460, 16, !dbg !219
  %461 = insertelement <2 x i64> poison, i64 %460, i64 0, !dbg !219
  %462 = insertelement <2 x i64> %461, i64 %.sroa.036.2.extract.shift37.1.i193, i64 1, !dbg !219
  %463 = shufflevector <2 x i64> %461, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !217
  %464 = lshr <2 x i64> %463, <i64 32, i64 48>, !dbg !217
  %465 = shufflevector <2 x i64> %462, <2 x i64> %464, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !220
  %.sroa.10501.14.vec.insert1112 = trunc <4 x i64> %465 to <4 x i16>, !dbg !220
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0A", ""() #6, !dbg !222, !srcloc !223
  %466 = add i32 %210, %385, !dbg !224
  %467 = lshr i32 %466, 4, !dbg !227
  %468 = and i32 %467, 120, !dbg !227
  %469 = xor i32 %468, %466, !dbg !228
  %470 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %469) #6, !dbg !229, !srcloc !180
  %.sroa.036.2.extract.shift37.i205 = lshr i64 %470, 16, !dbg !231
  %471 = insertelement <2 x i64> poison, i64 %470, i64 0, !dbg !231
  %472 = insertelement <2 x i64> %471, i64 %.sroa.036.2.extract.shift37.i205, i64 1, !dbg !231
  %473 = shufflevector <2 x i64> %471, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !229
  %474 = lshr <2 x i64> %473, <i64 32, i64 48>, !dbg !229
  %475 = shufflevector <2 x i64> %472, <2 x i64> %474, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !232
  %.sroa.0486.6.vec.insert1115 = trunc <4 x i64> %475 to <4 x i16>, !dbg !232
  %476 = add i32 %213, %385, !dbg !224
  %477 = lshr i32 %476, 4, !dbg !227
  %478 = and i32 %477, 120, !dbg !227
  %479 = xor i32 %478, %476, !dbg !228
  %480 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %479) #6, !dbg !229, !srcloc !180
  %.sroa.036.2.extract.shift37.1.i214 = lshr i64 %480, 16, !dbg !231
  %481 = insertelement <2 x i64> poison, i64 %480, i64 0, !dbg !231
  %482 = insertelement <2 x i64> %481, i64 %.sroa.036.2.extract.shift37.1.i214, i64 1, !dbg !231
  %483 = shufflevector <2 x i64> %481, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !229
  %484 = lshr <2 x i64> %483, <i64 32, i64 48>, !dbg !229
  %485 = shufflevector <2 x i64> %482, <2 x i64> %484, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !232
  %.sroa.10491.14.vec.insert1114 = trunc <4 x i64> %485 to <4 x i16>, !dbg !232
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0A", ""() #6, !dbg !234, !srcloc !235
  %486 = add i32 %217, %385, !dbg !236
  %487 = lshr i32 %486, 4, !dbg !239
  %488 = and i32 %487, 120, !dbg !239
  %489 = xor i32 %488, %486, !dbg !240
  %490 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %489) #6, !dbg !241, !srcloc !180
  %.sroa.036.2.extract.shift37.i226 = lshr i64 %490, 16, !dbg !243
  %491 = insertelement <2 x i64> poison, i64 %490, i64 0, !dbg !243
  %492 = insertelement <2 x i64> %491, i64 %.sroa.036.2.extract.shift37.i226, i64 1, !dbg !243
  %493 = shufflevector <2 x i64> %491, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !241
  %494 = lshr <2 x i64> %493, <i64 32, i64 48>, !dbg !241
  %495 = shufflevector <2 x i64> %492, <2 x i64> %494, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !244
  %.sroa.0477.6.vec.insert1117 = trunc <4 x i64> %495 to <4 x i16>, !dbg !244
  %496 = add i32 %220, %385, !dbg !236
  %497 = lshr i32 %496, 4, !dbg !239
  %498 = and i32 %497, 120, !dbg !239
  %499 = xor i32 %498, %496, !dbg !240
  %500 = tail call i64 asm sideeffect "ds_read_b64 $0, $1\0A", "=v,v,~{memory}"(i32 %499) #6, !dbg !241, !srcloc !180
  %.sroa.036.2.extract.shift37.1.i235 = lshr i64 %500, 16, !dbg !243
  %501 = insertelement <2 x i64> poison, i64 %500, i64 0, !dbg !243
  %502 = insertelement <2 x i64> %501, i64 %.sroa.036.2.extract.shift37.1.i235, i64 1, !dbg !243
  %503 = shufflevector <2 x i64> %501, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !241
  %504 = lshr <2 x i64> %503, <i64 32, i64 48>, !dbg !241
  %505 = shufflevector <2 x i64> %502, <2 x i64> %504, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !244
  %.sroa.10.14.vec.insert1116 = trunc <4 x i64> %505 to <4 x i16>, !dbg !244
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0A", ""() #6, !dbg !246, !srcloc !247
  tail call void @llvm.amdgcn.s.barrier(), !dbg !248
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !249
  tail call void @llvm.amdgcn.s.setprio(i16 1), !dbg !250
  %506 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0506.6.vec.insert1111, <4 x i16> %.sroa.0459.6.vec.insert1107, <4 x float> %.val30.i618619, i32 0, i32 0, i32 0), !dbg !251
  %507 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0506.6.vec.insert1111, <4 x i16> %.sroa.14468.14.vec.insert1106, <4 x float> %.val30.1.i631, i32 0, i32 0, i32 0), !dbg !251
  %508 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10511.14.vec.insert1110, <4 x i16> %.sroa.0459.6.vec.insert1107, <4 x float> %.val30.135.i634, i32 0, i32 0, i32 0), !dbg !251
  %509 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10511.14.vec.insert1110, <4 x i16> %.sroa.14468.14.vec.insert1106, <4 x float> %.val30.1.1.i637, i32 0, i32 0, i32 0), !dbg !251
  %510 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0506.6.vec.insert1111, <4 x i16> %.sroa.0441.6.vec.insert1109, <4 x float> %.val30.i246640, i32 0, i32 0, i32 0), !dbg !259
  %511 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0506.6.vec.insert1111, <4 x i16> %.sroa.14450.14.vec.insert1108, <4 x float> %376, i32 0, i32 0, i32 0), !dbg !259
  %512 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10511.14.vec.insert1110, <4 x i16> %.sroa.0441.6.vec.insert1109, <4 x float> %375, i32 0, i32 0, i32 0), !dbg !259
  %513 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10511.14.vec.insert1110, <4 x i16> %.sroa.14450.14.vec.insert1108, <4 x float> %374, i32 0, i32 0, i32 0), !dbg !259
  %514 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0496.6.vec.insert1113, <4 x i16> %.sroa.0459.6.vec.insert1107, <4 x float> %.val30.i258649, i32 0, i32 0, i32 0), !dbg !263
  %515 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0496.6.vec.insert1113, <4 x i16> %.sroa.14468.14.vec.insert1106, <4 x float> %373, i32 0, i32 0, i32 0), !dbg !263
  %516 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10501.14.vec.insert1112, <4 x i16> %.sroa.0459.6.vec.insert1107, <4 x float> %372, i32 0, i32 0, i32 0), !dbg !263
  %517 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10501.14.vec.insert1112, <4 x i16> %.sroa.14468.14.vec.insert1106, <4 x float> %371, i32 0, i32 0, i32 0), !dbg !263
  %518 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0496.6.vec.insert1113, <4 x i16> %.sroa.0441.6.vec.insert1109, <4 x float> %.val30.i270658, i32 0, i32 0, i32 0), !dbg !267
  %519 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0496.6.vec.insert1113, <4 x i16> %.sroa.14450.14.vec.insert1108, <4 x float> %370, i32 0, i32 0, i32 0), !dbg !267
  %520 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10501.14.vec.insert1112, <4 x i16> %.sroa.0441.6.vec.insert1109, <4 x float> %369, i32 0, i32 0, i32 0), !dbg !267
  %521 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10501.14.vec.insert1112, <4 x i16> %.sroa.14450.14.vec.insert1108, <4 x float> %368, i32 0, i32 0, i32 0), !dbg !267
  %522 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0486.6.vec.insert1115, <4 x i16> %.sroa.0459.6.vec.insert1107, <4 x float> %.val30.i282667, i32 0, i32 0, i32 0), !dbg !271
  %523 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0486.6.vec.insert1115, <4 x i16> %.sroa.14468.14.vec.insert1106, <4 x float> %367, i32 0, i32 0, i32 0), !dbg !271
  %524 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10491.14.vec.insert1114, <4 x i16> %.sroa.0459.6.vec.insert1107, <4 x float> %366, i32 0, i32 0, i32 0), !dbg !271
  %525 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10491.14.vec.insert1114, <4 x i16> %.sroa.14468.14.vec.insert1106, <4 x float> %365, i32 0, i32 0, i32 0), !dbg !271
  %526 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0486.6.vec.insert1115, <4 x i16> %.sroa.0441.6.vec.insert1109, <4 x float> %.val30.i294676, i32 0, i32 0, i32 0), !dbg !275
  %527 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0486.6.vec.insert1115, <4 x i16> %.sroa.14450.14.vec.insert1108, <4 x float> %364, i32 0, i32 0, i32 0), !dbg !275
  %528 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10491.14.vec.insert1114, <4 x i16> %.sroa.0441.6.vec.insert1109, <4 x float> %363, i32 0, i32 0, i32 0), !dbg !275
  %529 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10491.14.vec.insert1114, <4 x i16> %.sroa.14450.14.vec.insert1108, <4 x float> %362, i32 0, i32 0, i32 0), !dbg !275
  %530 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0477.6.vec.insert1117, <4 x i16> %.sroa.0459.6.vec.insert1107, <4 x float> %.val30.i306685, i32 0, i32 0, i32 0), !dbg !279
  %531 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0477.6.vec.insert1117, <4 x i16> %.sroa.14468.14.vec.insert1106, <4 x float> %361, i32 0, i32 0, i32 0), !dbg !279
  %532 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10.14.vec.insert1116, <4 x i16> %.sroa.0459.6.vec.insert1107, <4 x float> %360, i32 0, i32 0, i32 0), !dbg !279
  %533 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10.14.vec.insert1116, <4 x i16> %.sroa.14468.14.vec.insert1106, <4 x float> %359, i32 0, i32 0, i32 0), !dbg !279
  %534 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0477.6.vec.insert1117, <4 x i16> %.sroa.0441.6.vec.insert1109, <4 x float> %.val30.i318694, i32 0, i32 0, i32 0), !dbg !283
  %535 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.0477.6.vec.insert1117, <4 x i16> %.sroa.14450.14.vec.insert1108, <4 x float> %358, i32 0, i32 0, i32 0), !dbg !283
  %536 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10.14.vec.insert1116, <4 x i16> %.sroa.0441.6.vec.insert1109, <4 x float> %357, i32 0, i32 0, i32 0), !dbg !283
  %537 = tail call contract <4 x float> @llvm.amdgcn.mfma.f32.16x16x16bf16.1k(<4 x i16> %.sroa.10.14.vec.insert1116, <4 x i16> %.sroa.14450.14.vec.insert1108, <4 x float> %356, i32 0, i32 0, i32 0), !dbg !283
  tail call void @llvm.amdgcn.s.setprio(i16 0), !dbg !287
  tail call void @llvm.amdgcn.s.barrier(), !dbg !288
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !289
  %538 = add nuw nsw i32 %.0103628, 1, !dbg !290
  %exitcond.not = icmp eq i32 %538, 4, !dbg !291
  br i1 %exitcond.not, label %354, label %355, !dbg !162, !llvm.loop !292

539:                                              ; preds = %354
  tail call void asm sideeffect "s_waitcnt vmcnt(0)", ""() #6, !dbg !295, !srcloc !296
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %244, i64 %.sroa.0436.1.off0) #6, !dbg !297, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %250, i64 %.sroa.0436.1.off64) #6, !dbg !303, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %257, i64 %.sroa.5437.1.off0) #6, !dbg !297, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %262, i64 %.sroa.5437.1.off64) #6, !dbg !303, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %269, i64 %.sroa.8438.1.off0) #6, !dbg !297, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %274, i64 %.sroa.8438.1.off64) #6, !dbg !303, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %283, i64 %.sroa.11439.1.off0) #6, !dbg !297, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %288, i64 %.sroa.11439.1.off64) #6, !dbg !303, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %294, i64 %.sroa.0434.2.off0) #6, !dbg !305, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %299, i64 %.sroa.0434.2.off64) #6, !dbg !308, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %305, i64 %.sroa.5.2.off0) #6, !dbg !305, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %310, i64 %.sroa.5.2.off64) #6, !dbg !308, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %316, i64 %.sroa.8435.2.off0) #6, !dbg !305, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %321, i64 %.sroa.8435.2.off64) #6, !dbg !308, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %327, i64 %.sroa.11.2.off0) #6, !dbg !305, !srcloc !302
  tail call void asm sideeffect "ds_write_b64 $0, $1\0A", "v,v,~{memory}"(i32 %332, i64 %.sroa.11.2.off64) #6, !dbg !308, !srcloc !302
  br label %540, !dbg !310

540:                                              ; preds = %539, %354
  tail call void @llvm.amdgcn.s.barrier(), !dbg !311
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)", ""() #6, !dbg !312, !srcloc !313
  tail call void @llvm.amdgcn.sched.barrier(i32 0), !dbg !314
  %exitcond878.not = icmp eq i32 %336, 128, !dbg !315
  br i1 %exitcond878.not, label %333, label %335, !dbg !140, !llvm.loop !316

541:                                              ; preds = %333
  tail call void @llvm.amdgcn.s.barrier(), !dbg !318
  br label %542, !dbg !319

542:                                              ; preds = %541, %333
  %543 = shl nsw i32 %12, 3
  %544 = or disjoint i32 %543, %16
  %545 = shl nsw i32 %13, 3
  %546 = trunc i64 %.sroa.20.0.copyload to i32
  %547 = and i32 %166, 12
  %548 = mul nsw i32 %547, %546
  %549 = or disjoint i32 %547, 1
  %550 = mul nsw i32 %549, %546
  %551 = or disjoint i32 %547, 2
  %552 = mul nsw i32 %551, %546
  %553 = or disjoint i32 %547, 3
  %554 = mul nsw i32 %553, %546
  %555 = add nsw i32 %548, %158
  %556 = sext i32 %555 to i64
  %557 = add nsw i32 %550, %158
  %558 = sext i32 %557 to i64
  %559 = add nsw i32 %552, %158
  %560 = sext i32 %559 to i64
  %561 = add nsw i32 %554, %158
  %562 = sext i32 %561 to i64
  %563 = add nsw i32 %548, %183
  %564 = sext i32 %563 to i64
  %565 = add nsw i32 %550, %183
  %566 = sext i32 %565 to i64
  %567 = add nsw i32 %552, %183
  %568 = sext i32 %567 to i64
  %569 = add nsw i32 %554, %183
  %570 = sext i32 %569 to i64
  %571 = or disjoint i32 %547, 16
  %572 = mul nsw i32 %571, %546
  %573 = or disjoint i32 %547, 17
  %574 = mul nsw i32 %573, %546
  %575 = or disjoint i32 %547, 18
  %576 = mul nsw i32 %575, %546
  %577 = or disjoint i32 %547, 19
  %578 = mul nsw i32 %577, %546
  %579 = add nsw i32 %572, %158
  %580 = sext i32 %579 to i64
  %581 = add nsw i32 %574, %158
  %582 = sext i32 %581 to i64
  %583 = add nsw i32 %576, %158
  %584 = sext i32 %583 to i64
  %585 = add nsw i32 %578, %158
  %586 = sext i32 %585 to i64
  %587 = add nsw i32 %572, %183
  %588 = sext i32 %587 to i64
  %589 = add nsw i32 %574, %183
  %590 = sext i32 %589 to i64
  %591 = add nsw i32 %576, %183
  %592 = sext i32 %591 to i64
  %593 = add nsw i32 %578, %183
  %594 = sext i32 %593 to i64
  %595 = or disjoint i32 %545, %17, !dbg !320
  %596 = shl nsw i32 %544, 5, !dbg !321
  %597 = shl nsw i32 %595, 5, !dbg !329
  %598 = sext i32 %596 to i64, !dbg !330
  %599 = mul i64 %.sroa.20.0.copyload, %598, !dbg !333
  %600 = sext i32 %597 to i64, !dbg !334
  %601 = getelementptr float, ptr %.sroa.17528.0.copyload, i64 %599, !dbg !335
  %602 = getelementptr float, ptr %601, i64 %600, !dbg !335
  %.sroa.0.0.vec.extract = extractelement <4 x float> %506, i64 0, !dbg !336
  %603 = getelementptr inbounds float, ptr %602, i64 %556, !dbg !337
  store float %.sroa.0.0.vec.extract, ptr %603, align 4, !dbg !338, !tbaa !339
  %.sroa.0.4.vec.extract = extractelement <4 x float> %506, i64 1, !dbg !343
  %604 = getelementptr inbounds float, ptr %602, i64 %558, !dbg !344
  store float %.sroa.0.4.vec.extract, ptr %604, align 4, !dbg !345, !tbaa !339
  %.sroa.0.8.vec.extract = extractelement <4 x float> %506, i64 2, !dbg !346
  %605 = getelementptr inbounds float, ptr %602, i64 %560, !dbg !347
  store float %.sroa.0.8.vec.extract, ptr %605, align 4, !dbg !348, !tbaa !339
  %.sroa.0.12.vec.extract = extractelement <4 x float> %506, i64 3, !dbg !349
  %606 = getelementptr inbounds float, ptr %602, i64 %562, !dbg !350
  store float %.sroa.0.12.vec.extract, ptr %606, align 4, !dbg !351, !tbaa !339
  %.sroa.12.16.vec.extract = extractelement <4 x float> %507, i64 0, !dbg !336
  %607 = getelementptr inbounds float, ptr %602, i64 %564, !dbg !337
  store float %.sroa.12.16.vec.extract, ptr %607, align 4, !dbg !338, !tbaa !339
  %.sroa.12.20.vec.extract = extractelement <4 x float> %507, i64 1, !dbg !343
  %608 = getelementptr inbounds float, ptr %602, i64 %566, !dbg !344
  store float %.sroa.12.20.vec.extract, ptr %608, align 4, !dbg !345, !tbaa !339
  %.sroa.12.24.vec.extract = extractelement <4 x float> %507, i64 2, !dbg !346
  %609 = getelementptr inbounds float, ptr %602, i64 %568, !dbg !347
  store float %.sroa.12.24.vec.extract, ptr %609, align 4, !dbg !348, !tbaa !339
  %.sroa.12.28.vec.extract = extractelement <4 x float> %507, i64 3, !dbg !349
  %610 = getelementptr inbounds float, ptr %602, i64 %570, !dbg !350
  store float %.sroa.12.28.vec.extract, ptr %610, align 4, !dbg !351, !tbaa !339
  %.sroa.22.32.vec.extract = extractelement <4 x float> %508, i64 0, !dbg !336
  %611 = getelementptr inbounds float, ptr %602, i64 %580, !dbg !337
  store float %.sroa.22.32.vec.extract, ptr %611, align 4, !dbg !338, !tbaa !339
  %.sroa.22.36.vec.extract = extractelement <4 x float> %508, i64 1, !dbg !343
  %612 = getelementptr inbounds float, ptr %602, i64 %582, !dbg !344
  store float %.sroa.22.36.vec.extract, ptr %612, align 4, !dbg !345, !tbaa !339
  %.sroa.22.40.vec.extract = extractelement <4 x float> %508, i64 2, !dbg !346
  %613 = getelementptr inbounds float, ptr %602, i64 %584, !dbg !347
  store float %.sroa.22.40.vec.extract, ptr %613, align 4, !dbg !348, !tbaa !339
  %.sroa.22.44.vec.extract = extractelement <4 x float> %508, i64 3, !dbg !349
  %614 = getelementptr inbounds float, ptr %602, i64 %586, !dbg !350
  store float %.sroa.22.44.vec.extract, ptr %614, align 4, !dbg !351, !tbaa !339
  %.sroa.32.48.vec.extract = extractelement <4 x float> %509, i64 0, !dbg !336
  %615 = getelementptr inbounds float, ptr %602, i64 %588, !dbg !337
  store float %.sroa.32.48.vec.extract, ptr %615, align 4, !dbg !338, !tbaa !339
  %.sroa.32.52.vec.extract = extractelement <4 x float> %509, i64 1, !dbg !343
  %616 = getelementptr inbounds float, ptr %602, i64 %590, !dbg !344
  store float %.sroa.32.52.vec.extract, ptr %616, align 4, !dbg !345, !tbaa !339
  %.sroa.32.56.vec.extract = extractelement <4 x float> %509, i64 2, !dbg !346
  %617 = getelementptr inbounds float, ptr %602, i64 %592, !dbg !347
  store float %.sroa.32.56.vec.extract, ptr %617, align 4, !dbg !348, !tbaa !339
  %.sroa.32.60.vec.extract = extractelement <4 x float> %509, i64 3, !dbg !349
  %618 = getelementptr inbounds float, ptr %602, i64 %594, !dbg !350
  store float %.sroa.32.60.vec.extract, ptr %618, align 4, !dbg !351, !tbaa !339
  %619 = or disjoint i32 %545, %17, !dbg !320
  %620 = shl i32 %619, 5, !dbg !329
  %621 = or disjoint i32 %620, 128, !dbg !329
  %622 = sext i32 %621 to i64, !dbg !334
  %623 = getelementptr float, ptr %601, i64 %622, !dbg !335
  %.sroa.42.64.vec.extract = extractelement <4 x float> %510, i64 0, !dbg !336
  %624 = getelementptr inbounds float, ptr %623, i64 %556, !dbg !337
  store float %.sroa.42.64.vec.extract, ptr %624, align 4, !dbg !338, !tbaa !339
  %.sroa.42.68.vec.extract = extractelement <4 x float> %510, i64 1, !dbg !343
  %625 = getelementptr inbounds float, ptr %623, i64 %558, !dbg !344
  store float %.sroa.42.68.vec.extract, ptr %625, align 4, !dbg !345, !tbaa !339
  %.sroa.42.72.vec.extract = extractelement <4 x float> %510, i64 2, !dbg !346
  %626 = getelementptr inbounds float, ptr %623, i64 %560, !dbg !347
  store float %.sroa.42.72.vec.extract, ptr %626, align 4, !dbg !348, !tbaa !339
  %.sroa.42.76.vec.extract = extractelement <4 x float> %510, i64 3, !dbg !349
  %627 = getelementptr inbounds float, ptr %623, i64 %562, !dbg !350
  store float %.sroa.42.76.vec.extract, ptr %627, align 4, !dbg !351, !tbaa !339
  %.sroa.52.80.vec.extract = extractelement <4 x float> %511, i64 0, !dbg !336
  %628 = getelementptr inbounds float, ptr %623, i64 %564, !dbg !337
  store float %.sroa.52.80.vec.extract, ptr %628, align 4, !dbg !338, !tbaa !339
  %.sroa.52.84.vec.extract = extractelement <4 x float> %511, i64 1, !dbg !343
  %629 = getelementptr inbounds float, ptr %623, i64 %566, !dbg !344
  store float %.sroa.52.84.vec.extract, ptr %629, align 4, !dbg !345, !tbaa !339
  %.sroa.52.88.vec.extract = extractelement <4 x float> %511, i64 2, !dbg !346
  %630 = getelementptr inbounds float, ptr %623, i64 %568, !dbg !347
  store float %.sroa.52.88.vec.extract, ptr %630, align 4, !dbg !348, !tbaa !339
  %.sroa.52.92.vec.extract = extractelement <4 x float> %511, i64 3, !dbg !349
  %631 = getelementptr inbounds float, ptr %623, i64 %570, !dbg !350
  store float %.sroa.52.92.vec.extract, ptr %631, align 4, !dbg !351, !tbaa !339
  %.sroa.62.96.vec.extract = extractelement <4 x float> %512, i64 0, !dbg !336
  %632 = getelementptr inbounds float, ptr %623, i64 %580, !dbg !337
  store float %.sroa.62.96.vec.extract, ptr %632, align 4, !dbg !338, !tbaa !339
  %.sroa.62.100.vec.extract = extractelement <4 x float> %512, i64 1, !dbg !343
  %633 = getelementptr inbounds float, ptr %623, i64 %582, !dbg !344
  store float %.sroa.62.100.vec.extract, ptr %633, align 4, !dbg !345, !tbaa !339
  %.sroa.62.104.vec.extract = extractelement <4 x float> %512, i64 2, !dbg !346
  %634 = getelementptr inbounds float, ptr %623, i64 %584, !dbg !347
  store float %.sroa.62.104.vec.extract, ptr %634, align 4, !dbg !348, !tbaa !339
  %.sroa.62.108.vec.extract = extractelement <4 x float> %512, i64 3, !dbg !349
  %635 = getelementptr inbounds float, ptr %623, i64 %586, !dbg !350
  store float %.sroa.62.108.vec.extract, ptr %635, align 4, !dbg !351, !tbaa !339
  %.sroa.72.112.vec.extract = extractelement <4 x float> %513, i64 0, !dbg !336
  %636 = getelementptr inbounds float, ptr %623, i64 %588, !dbg !337
  store float %.sroa.72.112.vec.extract, ptr %636, align 4, !dbg !338, !tbaa !339
  %.sroa.72.116.vec.extract = extractelement <4 x float> %513, i64 1, !dbg !343
  %637 = getelementptr inbounds float, ptr %623, i64 %590, !dbg !344
  store float %.sroa.72.116.vec.extract, ptr %637, align 4, !dbg !345, !tbaa !339
  %.sroa.72.120.vec.extract = extractelement <4 x float> %513, i64 2, !dbg !346
  %638 = getelementptr inbounds float, ptr %623, i64 %592, !dbg !347
  store float %.sroa.72.120.vec.extract, ptr %638, align 4, !dbg !348, !tbaa !339
  %.sroa.72.124.vec.extract = extractelement <4 x float> %513, i64 3, !dbg !349
  %639 = getelementptr inbounds float, ptr %623, i64 %594, !dbg !350
  store float %.sroa.72.124.vec.extract, ptr %639, align 4, !dbg !351, !tbaa !339
  %640 = shl i32 %544, 5, !dbg !321
  %641 = add nuw nsw i32 %640, 64, !dbg !321
  %642 = sext i32 %641 to i64, !dbg !330
  %643 = mul i64 %.sroa.20.0.copyload, %642, !dbg !333
  %644 = getelementptr float, ptr %.sroa.17528.0.copyload, i64 %643, !dbg !335
  %645 = getelementptr float, ptr %644, i64 %600, !dbg !335
  %.sroa.82.128.vec.extract = extractelement <4 x float> %514, i64 0, !dbg !336
  %646 = getelementptr inbounds float, ptr %645, i64 %556, !dbg !337
  store float %.sroa.82.128.vec.extract, ptr %646, align 4, !dbg !338, !tbaa !339
  %.sroa.82.132.vec.extract = extractelement <4 x float> %514, i64 1, !dbg !343
  %647 = getelementptr inbounds float, ptr %645, i64 %558, !dbg !344
  store float %.sroa.82.132.vec.extract, ptr %647, align 4, !dbg !345, !tbaa !339
  %.sroa.82.136.vec.extract = extractelement <4 x float> %514, i64 2, !dbg !346
  %648 = getelementptr inbounds float, ptr %645, i64 %560, !dbg !347
  store float %.sroa.82.136.vec.extract, ptr %648, align 4, !dbg !348, !tbaa !339
  %.sroa.82.140.vec.extract = extractelement <4 x float> %514, i64 3, !dbg !349
  %649 = getelementptr inbounds float, ptr %645, i64 %562, !dbg !350
  store float %.sroa.82.140.vec.extract, ptr %649, align 4, !dbg !351, !tbaa !339
  %.sroa.92.144.vec.extract = extractelement <4 x float> %515, i64 0, !dbg !336
  %650 = getelementptr inbounds float, ptr %645, i64 %564, !dbg !337
  store float %.sroa.92.144.vec.extract, ptr %650, align 4, !dbg !338, !tbaa !339
  %.sroa.92.148.vec.extract = extractelement <4 x float> %515, i64 1, !dbg !343
  %651 = getelementptr inbounds float, ptr %645, i64 %566, !dbg !344
  store float %.sroa.92.148.vec.extract, ptr %651, align 4, !dbg !345, !tbaa !339
  %.sroa.92.152.vec.extract = extractelement <4 x float> %515, i64 2, !dbg !346
  %652 = getelementptr inbounds float, ptr %645, i64 %568, !dbg !347
  store float %.sroa.92.152.vec.extract, ptr %652, align 4, !dbg !348, !tbaa !339
  %.sroa.92.156.vec.extract = extractelement <4 x float> %515, i64 3, !dbg !349
  %653 = getelementptr inbounds float, ptr %645, i64 %570, !dbg !350
  store float %.sroa.92.156.vec.extract, ptr %653, align 4, !dbg !351, !tbaa !339
  %.sroa.102.160.vec.extract = extractelement <4 x float> %516, i64 0, !dbg !336
  %654 = getelementptr inbounds float, ptr %645, i64 %580, !dbg !337
  store float %.sroa.102.160.vec.extract, ptr %654, align 4, !dbg !338, !tbaa !339
  %.sroa.102.164.vec.extract = extractelement <4 x float> %516, i64 1, !dbg !343
  %655 = getelementptr inbounds float, ptr %645, i64 %582, !dbg !344
  store float %.sroa.102.164.vec.extract, ptr %655, align 4, !dbg !345, !tbaa !339
  %.sroa.102.168.vec.extract = extractelement <4 x float> %516, i64 2, !dbg !346
  %656 = getelementptr inbounds float, ptr %645, i64 %584, !dbg !347
  store float %.sroa.102.168.vec.extract, ptr %656, align 4, !dbg !348, !tbaa !339
  %.sroa.102.172.vec.extract = extractelement <4 x float> %516, i64 3, !dbg !349
  %657 = getelementptr inbounds float, ptr %645, i64 %586, !dbg !350
  store float %.sroa.102.172.vec.extract, ptr %657, align 4, !dbg !351, !tbaa !339
  %.sroa.112.176.vec.extract = extractelement <4 x float> %517, i64 0, !dbg !336
  %658 = getelementptr inbounds float, ptr %645, i64 %588, !dbg !337
  store float %.sroa.112.176.vec.extract, ptr %658, align 4, !dbg !338, !tbaa !339
  %.sroa.112.180.vec.extract = extractelement <4 x float> %517, i64 1, !dbg !343
  %659 = getelementptr inbounds float, ptr %645, i64 %590, !dbg !344
  store float %.sroa.112.180.vec.extract, ptr %659, align 4, !dbg !345, !tbaa !339
  %.sroa.112.184.vec.extract = extractelement <4 x float> %517, i64 2, !dbg !346
  %660 = getelementptr inbounds float, ptr %645, i64 %592, !dbg !347
  store float %.sroa.112.184.vec.extract, ptr %660, align 4, !dbg !348, !tbaa !339
  %.sroa.112.188.vec.extract = extractelement <4 x float> %517, i64 3, !dbg !349
  %661 = getelementptr inbounds float, ptr %645, i64 %594, !dbg !350
  store float %.sroa.112.188.vec.extract, ptr %661, align 4, !dbg !351, !tbaa !339
  %662 = getelementptr float, ptr %644, i64 %622, !dbg !335
  %.sroa.122.192.vec.extract = extractelement <4 x float> %518, i64 0, !dbg !336
  %663 = getelementptr inbounds float, ptr %662, i64 %556, !dbg !337
  store float %.sroa.122.192.vec.extract, ptr %663, align 4, !dbg !338, !tbaa !339
  %.sroa.122.196.vec.extract = extractelement <4 x float> %518, i64 1, !dbg !343
  %664 = getelementptr inbounds float, ptr %662, i64 %558, !dbg !344
  store float %.sroa.122.196.vec.extract, ptr %664, align 4, !dbg !345, !tbaa !339
  %.sroa.122.200.vec.extract = extractelement <4 x float> %518, i64 2, !dbg !346
  %665 = getelementptr inbounds float, ptr %662, i64 %560, !dbg !347
  store float %.sroa.122.200.vec.extract, ptr %665, align 4, !dbg !348, !tbaa !339
  %.sroa.122.204.vec.extract = extractelement <4 x float> %518, i64 3, !dbg !349
  %666 = getelementptr inbounds float, ptr %662, i64 %562, !dbg !350
  store float %.sroa.122.204.vec.extract, ptr %666, align 4, !dbg !351, !tbaa !339
  %.sroa.132.208.vec.extract = extractelement <4 x float> %519, i64 0, !dbg !336
  %667 = getelementptr inbounds float, ptr %662, i64 %564, !dbg !337
  store float %.sroa.132.208.vec.extract, ptr %667, align 4, !dbg !338, !tbaa !339
  %.sroa.132.212.vec.extract = extractelement <4 x float> %519, i64 1, !dbg !343
  %668 = getelementptr inbounds float, ptr %662, i64 %566, !dbg !344
  store float %.sroa.132.212.vec.extract, ptr %668, align 4, !dbg !345, !tbaa !339
  %.sroa.132.216.vec.extract = extractelement <4 x float> %519, i64 2, !dbg !346
  %669 = getelementptr inbounds float, ptr %662, i64 %568, !dbg !347
  store float %.sroa.132.216.vec.extract, ptr %669, align 4, !dbg !348, !tbaa !339
  %.sroa.132.220.vec.extract = extractelement <4 x float> %519, i64 3, !dbg !349
  %670 = getelementptr inbounds float, ptr %662, i64 %570, !dbg !350
  store float %.sroa.132.220.vec.extract, ptr %670, align 4, !dbg !351, !tbaa !339
  %.sroa.142.224.vec.extract = extractelement <4 x float> %520, i64 0, !dbg !336
  %671 = getelementptr inbounds float, ptr %662, i64 %580, !dbg !337
  store float %.sroa.142.224.vec.extract, ptr %671, align 4, !dbg !338, !tbaa !339
  %.sroa.142.228.vec.extract = extractelement <4 x float> %520, i64 1, !dbg !343
  %672 = getelementptr inbounds float, ptr %662, i64 %582, !dbg !344
  store float %.sroa.142.228.vec.extract, ptr %672, align 4, !dbg !345, !tbaa !339
  %.sroa.142.232.vec.extract = extractelement <4 x float> %520, i64 2, !dbg !346
  %673 = getelementptr inbounds float, ptr %662, i64 %584, !dbg !347
  store float %.sroa.142.232.vec.extract, ptr %673, align 4, !dbg !348, !tbaa !339
  %.sroa.142.236.vec.extract = extractelement <4 x float> %520, i64 3, !dbg !349
  %674 = getelementptr inbounds float, ptr %662, i64 %586, !dbg !350
  store float %.sroa.142.236.vec.extract, ptr %674, align 4, !dbg !351, !tbaa !339
  %.sroa.152.240.vec.extract = extractelement <4 x float> %521, i64 0, !dbg !336
  %675 = getelementptr inbounds float, ptr %662, i64 %588, !dbg !337
  store float %.sroa.152.240.vec.extract, ptr %675, align 4, !dbg !338, !tbaa !339
  %.sroa.152.244.vec.extract = extractelement <4 x float> %521, i64 1, !dbg !343
  %676 = getelementptr inbounds float, ptr %662, i64 %590, !dbg !344
  store float %.sroa.152.244.vec.extract, ptr %676, align 4, !dbg !345, !tbaa !339
  %.sroa.152.248.vec.extract = extractelement <4 x float> %521, i64 2, !dbg !346
  %677 = getelementptr inbounds float, ptr %662, i64 %592, !dbg !347
  store float %.sroa.152.248.vec.extract, ptr %677, align 4, !dbg !348, !tbaa !339
  %.sroa.152.252.vec.extract = extractelement <4 x float> %521, i64 3, !dbg !349
  %678 = getelementptr inbounds float, ptr %662, i64 %594, !dbg !350
  store float %.sroa.152.252.vec.extract, ptr %678, align 4, !dbg !351, !tbaa !339
  %679 = shl i32 %544, 5, !dbg !321
  %680 = or disjoint i32 %679, 128, !dbg !321
  %681 = sext i32 %680 to i64, !dbg !330
  %682 = mul i64 %.sroa.20.0.copyload, %681, !dbg !333
  %683 = getelementptr float, ptr %.sroa.17528.0.copyload, i64 %682, !dbg !335
  %684 = getelementptr float, ptr %683, i64 %600, !dbg !335
  %.sroa.162.256.vec.extract = extractelement <4 x float> %522, i64 0, !dbg !336
  %685 = getelementptr inbounds float, ptr %684, i64 %556, !dbg !337
  store float %.sroa.162.256.vec.extract, ptr %685, align 4, !dbg !338, !tbaa !339
  %.sroa.162.260.vec.extract = extractelement <4 x float> %522, i64 1, !dbg !343
  %686 = getelementptr inbounds float, ptr %684, i64 %558, !dbg !344
  store float %.sroa.162.260.vec.extract, ptr %686, align 4, !dbg !345, !tbaa !339
  %.sroa.162.264.vec.extract = extractelement <4 x float> %522, i64 2, !dbg !346
  %687 = getelementptr inbounds float, ptr %684, i64 %560, !dbg !347
  store float %.sroa.162.264.vec.extract, ptr %687, align 4, !dbg !348, !tbaa !339
  %.sroa.162.268.vec.extract = extractelement <4 x float> %522, i64 3, !dbg !349
  %688 = getelementptr inbounds float, ptr %684, i64 %562, !dbg !350
  store float %.sroa.162.268.vec.extract, ptr %688, align 4, !dbg !351, !tbaa !339
  %.sroa.172.272.vec.extract = extractelement <4 x float> %523, i64 0, !dbg !336
  %689 = getelementptr inbounds float, ptr %684, i64 %564, !dbg !337
  store float %.sroa.172.272.vec.extract, ptr %689, align 4, !dbg !338, !tbaa !339
  %.sroa.172.276.vec.extract = extractelement <4 x float> %523, i64 1, !dbg !343
  %690 = getelementptr inbounds float, ptr %684, i64 %566, !dbg !344
  store float %.sroa.172.276.vec.extract, ptr %690, align 4, !dbg !345, !tbaa !339
  %.sroa.172.280.vec.extract = extractelement <4 x float> %523, i64 2, !dbg !346
  %691 = getelementptr inbounds float, ptr %684, i64 %568, !dbg !347
  store float %.sroa.172.280.vec.extract, ptr %691, align 4, !dbg !348, !tbaa !339
  %.sroa.172.284.vec.extract = extractelement <4 x float> %523, i64 3, !dbg !349
  %692 = getelementptr inbounds float, ptr %684, i64 %570, !dbg !350
  store float %.sroa.172.284.vec.extract, ptr %692, align 4, !dbg !351, !tbaa !339
  %.sroa.182.288.vec.extract = extractelement <4 x float> %524, i64 0, !dbg !336
  %693 = getelementptr inbounds float, ptr %684, i64 %580, !dbg !337
  store float %.sroa.182.288.vec.extract, ptr %693, align 4, !dbg !338, !tbaa !339
  %.sroa.182.292.vec.extract = extractelement <4 x float> %524, i64 1, !dbg !343
  %694 = getelementptr inbounds float, ptr %684, i64 %582, !dbg !344
  store float %.sroa.182.292.vec.extract, ptr %694, align 4, !dbg !345, !tbaa !339
  %.sroa.182.296.vec.extract = extractelement <4 x float> %524, i64 2, !dbg !346
  %695 = getelementptr inbounds float, ptr %684, i64 %584, !dbg !347
  store float %.sroa.182.296.vec.extract, ptr %695, align 4, !dbg !348, !tbaa !339
  %.sroa.182.300.vec.extract = extractelement <4 x float> %524, i64 3, !dbg !349
  %696 = getelementptr inbounds float, ptr %684, i64 %586, !dbg !350
  store float %.sroa.182.300.vec.extract, ptr %696, align 4, !dbg !351, !tbaa !339
  %.sroa.192.304.vec.extract = extractelement <4 x float> %525, i64 0, !dbg !336
  %697 = getelementptr inbounds float, ptr %684, i64 %588, !dbg !337
  store float %.sroa.192.304.vec.extract, ptr %697, align 4, !dbg !338, !tbaa !339
  %.sroa.192.308.vec.extract = extractelement <4 x float> %525, i64 1, !dbg !343
  %698 = getelementptr inbounds float, ptr %684, i64 %590, !dbg !344
  store float %.sroa.192.308.vec.extract, ptr %698, align 4, !dbg !345, !tbaa !339
  %.sroa.192.312.vec.extract = extractelement <4 x float> %525, i64 2, !dbg !346
  %699 = getelementptr inbounds float, ptr %684, i64 %592, !dbg !347
  store float %.sroa.192.312.vec.extract, ptr %699, align 4, !dbg !348, !tbaa !339
  %.sroa.192.316.vec.extract = extractelement <4 x float> %525, i64 3, !dbg !349
  %700 = getelementptr inbounds float, ptr %684, i64 %594, !dbg !350
  store float %.sroa.192.316.vec.extract, ptr %700, align 4, !dbg !351, !tbaa !339
  %701 = getelementptr float, ptr %683, i64 %622, !dbg !335
  %.sroa.202.320.vec.extract = extractelement <4 x float> %526, i64 0, !dbg !336
  %702 = getelementptr inbounds float, ptr %701, i64 %556, !dbg !337
  store float %.sroa.202.320.vec.extract, ptr %702, align 4, !dbg !338, !tbaa !339
  %.sroa.202.324.vec.extract = extractelement <4 x float> %526, i64 1, !dbg !343
  %703 = getelementptr inbounds float, ptr %701, i64 %558, !dbg !344
  store float %.sroa.202.324.vec.extract, ptr %703, align 4, !dbg !345, !tbaa !339
  %.sroa.202.328.vec.extract = extractelement <4 x float> %526, i64 2, !dbg !346
  %704 = getelementptr inbounds float, ptr %701, i64 %560, !dbg !347
  store float %.sroa.202.328.vec.extract, ptr %704, align 4, !dbg !348, !tbaa !339
  %.sroa.202.332.vec.extract = extractelement <4 x float> %526, i64 3, !dbg !349
  %705 = getelementptr inbounds float, ptr %701, i64 %562, !dbg !350
  store float %.sroa.202.332.vec.extract, ptr %705, align 4, !dbg !351, !tbaa !339
  %.sroa.212.336.vec.extract = extractelement <4 x float> %527, i64 0, !dbg !336
  %706 = getelementptr inbounds float, ptr %701, i64 %564, !dbg !337
  store float %.sroa.212.336.vec.extract, ptr %706, align 4, !dbg !338, !tbaa !339
  %.sroa.212.340.vec.extract = extractelement <4 x float> %527, i64 1, !dbg !343
  %707 = getelementptr inbounds float, ptr %701, i64 %566, !dbg !344
  store float %.sroa.212.340.vec.extract, ptr %707, align 4, !dbg !345, !tbaa !339
  %.sroa.212.344.vec.extract = extractelement <4 x float> %527, i64 2, !dbg !346
  %708 = getelementptr inbounds float, ptr %701, i64 %568, !dbg !347
  store float %.sroa.212.344.vec.extract, ptr %708, align 4, !dbg !348, !tbaa !339
  %.sroa.212.348.vec.extract = extractelement <4 x float> %527, i64 3, !dbg !349
  %709 = getelementptr inbounds float, ptr %701, i64 %570, !dbg !350
  store float %.sroa.212.348.vec.extract, ptr %709, align 4, !dbg !351, !tbaa !339
  %.sroa.222.352.vec.extract = extractelement <4 x float> %528, i64 0, !dbg !336
  %710 = getelementptr inbounds float, ptr %701, i64 %580, !dbg !337
  store float %.sroa.222.352.vec.extract, ptr %710, align 4, !dbg !338, !tbaa !339
  %.sroa.222.356.vec.extract = extractelement <4 x float> %528, i64 1, !dbg !343
  %711 = getelementptr inbounds float, ptr %701, i64 %582, !dbg !344
  store float %.sroa.222.356.vec.extract, ptr %711, align 4, !dbg !345, !tbaa !339
  %.sroa.222.360.vec.extract = extractelement <4 x float> %528, i64 2, !dbg !346
  %712 = getelementptr inbounds float, ptr %701, i64 %584, !dbg !347
  store float %.sroa.222.360.vec.extract, ptr %712, align 4, !dbg !348, !tbaa !339
  %.sroa.222.364.vec.extract = extractelement <4 x float> %528, i64 3, !dbg !349
  %713 = getelementptr inbounds float, ptr %701, i64 %586, !dbg !350
  store float %.sroa.222.364.vec.extract, ptr %713, align 4, !dbg !351, !tbaa !339
  %.sroa.232.368.vec.extract = extractelement <4 x float> %529, i64 0, !dbg !336
  %714 = getelementptr inbounds float, ptr %701, i64 %588, !dbg !337
  store float %.sroa.232.368.vec.extract, ptr %714, align 4, !dbg !338, !tbaa !339
  %.sroa.232.372.vec.extract = extractelement <4 x float> %529, i64 1, !dbg !343
  %715 = getelementptr inbounds float, ptr %701, i64 %590, !dbg !344
  store float %.sroa.232.372.vec.extract, ptr %715, align 4, !dbg !345, !tbaa !339
  %.sroa.232.376.vec.extract = extractelement <4 x float> %529, i64 2, !dbg !346
  %716 = getelementptr inbounds float, ptr %701, i64 %592, !dbg !347
  store float %.sroa.232.376.vec.extract, ptr %716, align 4, !dbg !348, !tbaa !339
  %.sroa.232.380.vec.extract = extractelement <4 x float> %529, i64 3, !dbg !349
  %717 = getelementptr inbounds float, ptr %701, i64 %594, !dbg !350
  store float %.sroa.232.380.vec.extract, ptr %717, align 4, !dbg !351, !tbaa !339
  %718 = shl i32 %544, 5, !dbg !321
  %719 = add i32 %718, 192, !dbg !321
  %720 = sext i32 %719 to i64, !dbg !330
  %721 = mul i64 %.sroa.20.0.copyload, %720, !dbg !333
  %722 = getelementptr float, ptr %.sroa.17528.0.copyload, i64 %721, !dbg !335
  %723 = getelementptr float, ptr %722, i64 %600, !dbg !335
  %.sroa.242.384.vec.extract = extractelement <4 x float> %530, i64 0, !dbg !336
  %724 = getelementptr inbounds float, ptr %723, i64 %556, !dbg !337
  store float %.sroa.242.384.vec.extract, ptr %724, align 4, !dbg !338, !tbaa !339
  %.sroa.242.388.vec.extract = extractelement <4 x float> %530, i64 1, !dbg !343
  %725 = getelementptr inbounds float, ptr %723, i64 %558, !dbg !344
  store float %.sroa.242.388.vec.extract, ptr %725, align 4, !dbg !345, !tbaa !339
  %.sroa.242.392.vec.extract = extractelement <4 x float> %530, i64 2, !dbg !346
  %726 = getelementptr inbounds float, ptr %723, i64 %560, !dbg !347
  store float %.sroa.242.392.vec.extract, ptr %726, align 4, !dbg !348, !tbaa !339
  %.sroa.242.396.vec.extract = extractelement <4 x float> %530, i64 3, !dbg !349
  %727 = getelementptr inbounds float, ptr %723, i64 %562, !dbg !350
  store float %.sroa.242.396.vec.extract, ptr %727, align 4, !dbg !351, !tbaa !339
  %.sroa.252.400.vec.extract = extractelement <4 x float> %531, i64 0, !dbg !336
  %728 = getelementptr inbounds float, ptr %723, i64 %564, !dbg !337
  store float %.sroa.252.400.vec.extract, ptr %728, align 4, !dbg !338, !tbaa !339
  %.sroa.252.404.vec.extract = extractelement <4 x float> %531, i64 1, !dbg !343
  %729 = getelementptr inbounds float, ptr %723, i64 %566, !dbg !344
  store float %.sroa.252.404.vec.extract, ptr %729, align 4, !dbg !345, !tbaa !339
  %.sroa.252.408.vec.extract = extractelement <4 x float> %531, i64 2, !dbg !346
  %730 = getelementptr inbounds float, ptr %723, i64 %568, !dbg !347
  store float %.sroa.252.408.vec.extract, ptr %730, align 4, !dbg !348, !tbaa !339
  %.sroa.252.412.vec.extract = extractelement <4 x float> %531, i64 3, !dbg !349
  %731 = getelementptr inbounds float, ptr %723, i64 %570, !dbg !350
  store float %.sroa.252.412.vec.extract, ptr %731, align 4, !dbg !351, !tbaa !339
  %.sroa.262.416.vec.extract = extractelement <4 x float> %532, i64 0, !dbg !336
  %732 = getelementptr inbounds float, ptr %723, i64 %580, !dbg !337
  store float %.sroa.262.416.vec.extract, ptr %732, align 4, !dbg !338, !tbaa !339
  %.sroa.262.420.vec.extract = extractelement <4 x float> %532, i64 1, !dbg !343
  %733 = getelementptr inbounds float, ptr %723, i64 %582, !dbg !344
  store float %.sroa.262.420.vec.extract, ptr %733, align 4, !dbg !345, !tbaa !339
  %.sroa.262.424.vec.extract = extractelement <4 x float> %532, i64 2, !dbg !346
  %734 = getelementptr inbounds float, ptr %723, i64 %584, !dbg !347
  store float %.sroa.262.424.vec.extract, ptr %734, align 4, !dbg !348, !tbaa !339
  %.sroa.262.428.vec.extract = extractelement <4 x float> %532, i64 3, !dbg !349
  %735 = getelementptr inbounds float, ptr %723, i64 %586, !dbg !350
  store float %.sroa.262.428.vec.extract, ptr %735, align 4, !dbg !351, !tbaa !339
  %.sroa.272.432.vec.extract = extractelement <4 x float> %533, i64 0, !dbg !336
  %736 = getelementptr inbounds float, ptr %723, i64 %588, !dbg !337
  store float %.sroa.272.432.vec.extract, ptr %736, align 4, !dbg !338, !tbaa !339
  %.sroa.272.436.vec.extract = extractelement <4 x float> %533, i64 1, !dbg !343
  %737 = getelementptr inbounds float, ptr %723, i64 %590, !dbg !344
  store float %.sroa.272.436.vec.extract, ptr %737, align 4, !dbg !345, !tbaa !339
  %.sroa.272.440.vec.extract = extractelement <4 x float> %533, i64 2, !dbg !346
  %738 = getelementptr inbounds float, ptr %723, i64 %592, !dbg !347
  store float %.sroa.272.440.vec.extract, ptr %738, align 4, !dbg !348, !tbaa !339
  %.sroa.272.444.vec.extract = extractelement <4 x float> %533, i64 3, !dbg !349
  %739 = getelementptr inbounds float, ptr %723, i64 %594, !dbg !350
  store float %.sroa.272.444.vec.extract, ptr %739, align 4, !dbg !351, !tbaa !339
  %740 = getelementptr float, ptr %722, i64 %622, !dbg !335
  %.sroa.282.448.vec.extract = extractelement <4 x float> %534, i64 0, !dbg !336
  %741 = getelementptr inbounds float, ptr %740, i64 %556, !dbg !337
  store float %.sroa.282.448.vec.extract, ptr %741, align 4, !dbg !338, !tbaa !339
  %.sroa.282.452.vec.extract = extractelement <4 x float> %534, i64 1, !dbg !343
  %742 = getelementptr inbounds float, ptr %740, i64 %558, !dbg !344
  store float %.sroa.282.452.vec.extract, ptr %742, align 4, !dbg !345, !tbaa !339
  %.sroa.282.456.vec.extract = extractelement <4 x float> %534, i64 2, !dbg !346
  %743 = getelementptr inbounds float, ptr %740, i64 %560, !dbg !347
  store float %.sroa.282.456.vec.extract, ptr %743, align 4, !dbg !348, !tbaa !339
  %.sroa.282.460.vec.extract = extractelement <4 x float> %534, i64 3, !dbg !349
  %744 = getelementptr inbounds float, ptr %740, i64 %562, !dbg !350
  store float %.sroa.282.460.vec.extract, ptr %744, align 4, !dbg !351, !tbaa !339
  %.sroa.292.464.vec.extract = extractelement <4 x float> %535, i64 0, !dbg !336
  %745 = getelementptr inbounds float, ptr %740, i64 %564, !dbg !337
  store float %.sroa.292.464.vec.extract, ptr %745, align 4, !dbg !338, !tbaa !339
  %.sroa.292.468.vec.extract = extractelement <4 x float> %535, i64 1, !dbg !343
  %746 = getelementptr inbounds float, ptr %740, i64 %566, !dbg !344
  store float %.sroa.292.468.vec.extract, ptr %746, align 4, !dbg !345, !tbaa !339
  %.sroa.292.472.vec.extract = extractelement <4 x float> %535, i64 2, !dbg !346
  %747 = getelementptr inbounds float, ptr %740, i64 %568, !dbg !347
  store float %.sroa.292.472.vec.extract, ptr %747, align 4, !dbg !348, !tbaa !339
  %.sroa.292.476.vec.extract = extractelement <4 x float> %535, i64 3, !dbg !349
  %748 = getelementptr inbounds float, ptr %740, i64 %570, !dbg !350
  store float %.sroa.292.476.vec.extract, ptr %748, align 4, !dbg !351, !tbaa !339
  %.sroa.302.480.vec.extract = extractelement <4 x float> %536, i64 0, !dbg !336
  %749 = getelementptr inbounds float, ptr %740, i64 %580, !dbg !337
  store float %.sroa.302.480.vec.extract, ptr %749, align 4, !dbg !338, !tbaa !339
  %.sroa.302.484.vec.extract = extractelement <4 x float> %536, i64 1, !dbg !343
  %750 = getelementptr inbounds float, ptr %740, i64 %582, !dbg !344
  store float %.sroa.302.484.vec.extract, ptr %750, align 4, !dbg !345, !tbaa !339
  %.sroa.302.488.vec.extract = extractelement <4 x float> %536, i64 2, !dbg !346
  %751 = getelementptr inbounds float, ptr %740, i64 %584, !dbg !347
  store float %.sroa.302.488.vec.extract, ptr %751, align 4, !dbg !348, !tbaa !339
  %.sroa.302.492.vec.extract = extractelement <4 x float> %536, i64 3, !dbg !349
  %752 = getelementptr inbounds float, ptr %740, i64 %586, !dbg !350
  store float %.sroa.302.492.vec.extract, ptr %752, align 4, !dbg !351, !tbaa !339
  %.sroa.312.496.vec.extract = extractelement <4 x float> %537, i64 0, !dbg !336
  %753 = getelementptr inbounds float, ptr %740, i64 %588, !dbg !337
  store float %.sroa.312.496.vec.extract, ptr %753, align 4, !dbg !338, !tbaa !339
  %.sroa.312.500.vec.extract = extractelement <4 x float> %537, i64 1, !dbg !343
  %754 = getelementptr inbounds float, ptr %740, i64 %590, !dbg !344
  store float %.sroa.312.500.vec.extract, ptr %754, align 4, !dbg !345, !tbaa !339
  %.sroa.312.504.vec.extract = extractelement <4 x float> %537, i64 2, !dbg !346
  %755 = getelementptr inbounds float, ptr %740, i64 %592, !dbg !347
  store float %.sroa.312.504.vec.extract, ptr %755, align 4, !dbg !348, !tbaa !339
  %.sroa.312.508.vec.extract = extractelement <4 x float> %537, i64 3, !dbg !349
  %756 = getelementptr inbounds float, ptr %740, i64 %594, !dbg !350
  store float %.sroa.312.508.vec.extract, ptr %756, align 4, !dbg !351, !tbaa !339
  ret void, !dbg !352
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

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,512" "amdgpu-waves-per-eu"="1" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx942" "target-features"="+16-bit-insts,+atomic-buffer-global-pk-add-f16-insts,+atomic-ds-pk-add-16-insts,+atomic-fadd-rtn-insts,+atomic-flat-pk-add-16-insts,+atomic-global-pk-add-bf16-inst,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+fp8-conversion-insts,+fp8-insts,+gfx8-insts,+gfx9-insts,+gfx90a-insts,+gfx940-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64,+xf32-insts" "uniform-work-group-size"="true" }
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
!1 = !DIFile(filename: "256_256_64_16_rolled.cpp", directory: "/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/256_256_64_16_rolled")
!2 = !{i32 1, !"amdhsa_code_object_version", i32 600}
!3 = !{i32 1, !"amdgpu_printf_kind", !"hostcall"}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 2, i32 0}
!8 = !{!"AMD clang version 19.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.4.1 25184 c87081df219c42dc27c5b6d86c0525bc7d01f727)"}
!9 = distinct !DISubprogram(name: "micro_tk", scope: !1, file: !1, line: 36, type: !10, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 231, column: 22, scope: !13, inlinedAt: !15)
!13 = distinct !DISubprogram(name: "align_ptr<16>", scope: !14, file: !14, line: 228, type: !10, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!14 = !DIFile(filename: "ThunderKittens-HIP/include/common/util.cuh", directory: "/workdir/AMD-benchmarking-harness")
!15 = distinct !DILocation(line: 252, column: 13, scope: !16, inlinedAt: !17)
!16 = distinct !DISubprogram(name: "allocate<kittens::st<__hip_bfloat16, 256, 64> >", scope: !14, file: !14, line: 250, type: !10, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!17 = distinct !DILocation(line: 39, column: 42, scope: !9)
!18 = !DILocation(line: 231, column: 34, scope: !13, inlinedAt: !15)
!19 = !DILocation(line: 231, column: 20, scope: !13, inlinedAt: !15)
!20 = !DILocation(line: 255, column: 17, scope: !16, inlinedAt: !17)
!21 = !DILocation(line: 230, column: 30, scope: !13, inlinedAt: !22)
!22 = distinct !DILocation(line: 252, column: 13, scope: !16, inlinedAt: !23)
!23 = distinct !DILocation(line: 40, column: 42, scope: !9)
!24 = !DILocation(line: 231, column: 22, scope: !13, inlinedAt: !22)
!25 = !DILocation(line: 231, column: 20, scope: !13, inlinedAt: !22)
!26 = !DILocation(line: 231, column: 34, scope: !13, inlinedAt: !22)
!27 = !DILocation(line: 271, column: 116, scope: !28, inlinedAt: !30)
!28 = distinct !DISubprogram(name: "__hip_get_block_idx_y", scope: !29, file: !29, line: 271, type: !10, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!29 = !DIFile(filename: "/opt/rocm-6.4.1/lib/llvm/bin/../../../include/hip/amd_detail/amd_hip_runtime.h", directory: "")
!30 = distinct !DILocation(line: 301, column: 160, scope: !31, inlinedAt: !32)
!31 = distinct !DISubprogram(name: "__get_y", scope: !29, file: !29, line: 301, type: !10, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!32 = distinct !DILocation(line: 52, column: 21, scope: !9)
!33 = !DILocation(line: 270, column: 116, scope: !34, inlinedAt: !35)
!34 = distinct !DISubprogram(name: "__hip_get_block_idx_x", scope: !29, file: !29, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!35 = distinct !DILocation(line: 300, column: 160, scope: !36, inlinedAt: !37)
!36 = distinct !DISubprogram(name: "__get_x", scope: !29, file: !29, line: 300, type: !10, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!37 = distinct !DILocation(line: 53, column: 21, scope: !9)
!38 = !DILocation(line: 265, column: 117, scope: !39, inlinedAt: !40)
!39 = distinct !DISubprogram(name: "__hip_get_thread_idx_x", scope: !29, file: !29, line: 265, type: !10, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!40 = distinct !DILocation(line: 291, column: 160, scope: !41, inlinedAt: !42)
!41 = distinct !DISubprogram(name: "__get_x", scope: !29, file: !29, line: 291, type: !10, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!42 = distinct !DILocation(line: 57, column: 85, scope: !43, inlinedAt: !44)
!43 = distinct !DISubprogram(name: "warpid", scope: !14, file: !14, line: 57, type: !10, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = distinct !DILocation(line: 55, column: 25, scope: !9)
!45 = !DILocation(line: 57, column: 97, scope: !43, inlinedAt: !44)
!46 = !DILocation(line: 56, column: 34, scope: !9)
!47 = !DILocation(line: 57, column: 34, scope: !9)
!48 = !DILocation(line: 181, column: 31, scope: !49, inlinedAt: !51)
!49 = distinct !DISubprogram(name: "st_subtile", scope: !50, file: !50, line: 178, type: !10, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!50 = !DIFile(filename: "ThunderKittens-HIP/include/types/shared/st.cuh", directory: "/workdir/AMD-benchmarking-harness")
!51 = distinct !DILocation(line: 59, column: 12, scope: !52, inlinedAt: !54)
!52 = distinct !DISubprogram(name: "subtile_inplace<256, 32, kittens::st<__hip_bfloat16, 256, 64> >", scope: !53, file: !53, line: 52, type: !10, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/shared/tile/conversions.cuh", directory: "/workdir/AMD-benchmarking-harness")
!54 = distinct !DILocation(line: 62, column: 16, scope: !9)
!55 = !DILocation(line: 30, column: 28, scope: !56, inlinedAt: !58)
!56 = distinct !DISubprogram(name: "load<2, false, kittens::st<__hip_bfloat16, 256, 64>, kittens::gl<__hip_bfloat16, -1, -1, -1, -1>, kittens::coord<kittens::st<__hip_bfloat16, 256, 64> >, 512>", scope: !57, file: !57, line: 27, type: !10, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!57 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/memory/tile/global_to_shared.cuh", directory: "/workdir/AMD-benchmarking-harness")
!58 = distinct !DILocation(line: 12, column: 5, scope: !59, inlinedAt: !61)
!59 = distinct !DISubprogram(name: "load<kittens::st<__hip_bfloat16, 256, 64>, kittens::gl<__hip_bfloat16, -1, -1, -1, -1>, kittens::coord<kittens::st<__hip_bfloat16, 256, 64> > >", scope: !60, file: !60, line: 11, type: !10, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!60 = !DIFile(filename: "ThunderKittens-HIP/include/ops/group/memory/tile/global_to_shared.cuh", directory: "/workdir/AMD-benchmarking-harness")
!61 = distinct !DILocation(line: 66, column: 5, scope: !9)
!62 = !DILocation(line: 60, column: 34, scope: !63, inlinedAt: !65)
!63 = distinct !DISubprogram(name: "unit_coord<2, 3>", scope: !64, file: !64, line: 51, type: !10, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!64 = !DIFile(filename: "ThunderKittens-HIP/include/types/global/util.cuh", directory: "/workdir/AMD-benchmarking-harness")
!65 = distinct !DILocation(line: 37, column: 39, scope: !56, inlinedAt: !58)
!66 = !DILocation(line: 63, column: 54, scope: !67, inlinedAt: !69)
!67 = distinct !DISubprogram(name: "operator[]", scope: !68, file: !68, line: 62, type: !10, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!68 = !DIFile(filename: "ThunderKittens-HIP/include/types/global/gl.cuh", directory: "/workdir/AMD-benchmarking-harness")
!69 = distinct !DILocation(line: 38, column: 57, scope: !56, inlinedAt: !58)
!70 = !DILocation(line: 63, column: 60, scope: !67, inlinedAt: !69)
!71 = !DILocation(line: 63, column: 16, scope: !67, inlinedAt: !69)
!72 = !DILocation(line: 40, column: 24, scope: !56, inlinedAt: !58)
!73 = !DILocation(line: 54, column: 32, scope: !56, inlinedAt: !58)
!74 = !DILocation(line: 58, column: 75, scope: !56, inlinedAt: !58)
!75 = !DILocation(line: 58, column: 88, scope: !56, inlinedAt: !58)
!76 = !DILocation(line: 58, column: 68, scope: !56, inlinedAt: !58)
!77 = !DILocation(line: 92, column: 5, scope: !78, inlinedAt: !80)
!78 = distinct !DISubprogram(name: "load_global_vec4_async", scope: !79, file: !79, line: 89, type: !10, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!79 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/memory/util/util.cuh", directory: "/workdir/AMD-benchmarking-harness")
!80 = distinct !DILocation(line: 58, column: 26, scope: !56, inlinedAt: !58)
!81 = !{i64 3065634}
!82 = !DILocation(line: 62, column: 9, scope: !56, inlinedAt: !58)
!83 = !{i64 3083817}
!84 = !DILocation(line: 103, column: 35, scope: !85, inlinedAt: !86)
!85 = distinct !DISubprogram(name: "idx", scope: !50, file: !50, line: 98, type: !10, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!86 = distinct !DILocation(line: 71, column: 34, scope: !56, inlinedAt: !58)
!87 = !DILocation(line: 104, column: 60, scope: !85, inlinedAt: !86)
!88 = !DILocation(line: 105, column: 22, scope: !85, inlinedAt: !86)
!89 = !DILocation(line: 71, column: 72, scope: !56, inlinedAt: !58)
!90 = !DILocation(line: 27, column: 5, scope: !91, inlinedAt: !92)
!91 = distinct !DISubprogram(name: "store_shared_vec", scope: !79, file: !79, line: 26, type: !10, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!92 = distinct !DILocation(line: 71, column: 17, scope: !56, inlinedAt: !58)
!93 = !{i64 3063969}
!94 = !DILocation(line: 103, column: 35, scope: !85, inlinedAt: !95)
!95 = distinct !DILocation(line: 72, column: 34, scope: !56, inlinedAt: !58)
!96 = !DILocation(line: 104, column: 60, scope: !85, inlinedAt: !95)
!97 = !DILocation(line: 105, column: 22, scope: !85, inlinedAt: !95)
!98 = !DILocation(line: 72, column: 95, scope: !56, inlinedAt: !58)
!99 = !DILocation(line: 27, column: 5, scope: !91, inlinedAt: !100)
!100 = distinct !DILocation(line: 72, column: 17, scope: !56, inlinedAt: !58)
!101 = !DILocation(line: 103, column: 46, scope: !85, inlinedAt: !86)
!102 = !DILocation(line: 75, column: 9, scope: !56, inlinedAt: !58)
!103 = !{i64 3084358}
!104 = !DILocation(line: 30, column: 28, scope: !56, inlinedAt: !105)
!105 = distinct !DILocation(line: 12, column: 5, scope: !59, inlinedAt: !106)
!106 = distinct !DILocation(line: 67, column: 5, scope: !9)
!107 = !DILocation(line: 60, column: 34, scope: !63, inlinedAt: !108)
!108 = distinct !DILocation(line: 37, column: 39, scope: !56, inlinedAt: !105)
!109 = !DILocation(line: 63, column: 54, scope: !67, inlinedAt: !110)
!110 = distinct !DILocation(line: 38, column: 57, scope: !56, inlinedAt: !105)
!111 = !DILocation(line: 63, column: 60, scope: !67, inlinedAt: !110)
!112 = !DILocation(line: 63, column: 16, scope: !67, inlinedAt: !110)
!113 = !DILocation(line: 40, column: 24, scope: !56, inlinedAt: !105)
!114 = !DILocation(line: 58, column: 75, scope: !56, inlinedAt: !105)
!115 = !DILocation(line: 58, column: 88, scope: !56, inlinedAt: !105)
!116 = !DILocation(line: 58, column: 68, scope: !56, inlinedAt: !105)
!117 = !DILocation(line: 92, column: 5, scope: !78, inlinedAt: !118)
!118 = distinct !DILocation(line: 58, column: 26, scope: !56, inlinedAt: !105)
!119 = !DILocation(line: 62, column: 9, scope: !56, inlinedAt: !105)
!120 = !DILocation(line: 103, column: 35, scope: !85, inlinedAt: !121)
!121 = distinct !DILocation(line: 71, column: 34, scope: !56, inlinedAt: !105)
!122 = !DILocation(line: 104, column: 60, scope: !85, inlinedAt: !121)
!123 = !DILocation(line: 105, column: 22, scope: !85, inlinedAt: !121)
!124 = !DILocation(line: 71, column: 72, scope: !56, inlinedAt: !105)
!125 = !DILocation(line: 27, column: 5, scope: !91, inlinedAt: !126)
!126 = distinct !DILocation(line: 71, column: 17, scope: !56, inlinedAt: !105)
!127 = !DILocation(line: 103, column: 35, scope: !85, inlinedAt: !128)
!128 = distinct !DILocation(line: 72, column: 34, scope: !56, inlinedAt: !105)
!129 = !DILocation(line: 104, column: 60, scope: !85, inlinedAt: !128)
!130 = !DILocation(line: 105, column: 22, scope: !85, inlinedAt: !128)
!131 = !DILocation(line: 72, column: 95, scope: !56, inlinedAt: !105)
!132 = !DILocation(line: 27, column: 5, scope: !91, inlinedAt: !133)
!133 = distinct !DILocation(line: 72, column: 17, scope: !56, inlinedAt: !105)
!134 = !DILocation(line: 75, column: 9, scope: !56, inlinedAt: !105)
!135 = !DILocation(line: 68, column: 5, scope: !9)
!136 = !DILocation(line: 70, column: 18, scope: !9)
!137 = !DILocation(line: 70, column: 9, scope: !9)
!138 = !DILocation(line: 71, column: 9, scope: !9)
!139 = !DILocation(line: 72, column: 5, scope: !9)
!140 = !DILocation(line: 74, column: 5, scope: !9)
!141 = !DILocation(line: 146, column: 18, scope: !9)
!142 = !DILocation(line: 146, column: 9, scope: !9)
!143 = !DILocation(line: 75, column: 35, scope: !9)
!144 = !DILocation(line: 75, column: 39, scope: !9)
!145 = !DILocation(line: 78, column: 13, scope: !9)
!146 = !DILocation(line: 61, column: 18, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "unit_coord<2, 3>", scope: !64, file: !64, line: 51, type: !10, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!148 = distinct !DILocation(line: 54, column: 39, scope: !149, inlinedAt: !151)
!149 = distinct !DISubprogram(name: "load_global_to_registers<2, false, kittens::st_subtile<kittens::st<__hip_bfloat16, 256, 64>, 256, 32>, kittens::gl<__hip_bfloat16, -1, -1, -1, -1>, kittens::coord<kittens::st_subtile<kittens::st<__hip_bfloat16, 256, 64>, 256, 32> >, 256>", scope: !150, file: !150, line: 41, type: !10, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = !DIFile(filename: "./../utils.cpp", directory: "/workdir/AMD-benchmarking-harness/kernels/TK/bf16fp32/mi325x/256_256_64_16_rolled")
!151 = distinct !DILocation(line: 79, column: 13, scope: !9)
!152 = !DILocation(line: 63, column: 68, scope: !67, inlinedAt: !153)
!153 = distinct !DILocation(line: 55, column: 24, scope: !149, inlinedAt: !151)
!154 = !DILocation(line: 63, column: 16, scope: !67, inlinedAt: !153)
!155 = !DILocation(line: 32, column: 28, scope: !156, inlinedAt: !157)
!156 = distinct !DISubprogram(name: "make_srsrc", scope: !150, file: !150, line: 31, type: !10, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!157 = distinct !DILocation(line: 60, column: 19, scope: !149, inlinedAt: !151)
!158 = !DILocation(line: 26, column: 23, scope: !159, inlinedAt: !160)
!159 = distinct !DISubprogram(name: "buffer_load_vec4", scope: !150, file: !150, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!160 = distinct !DILocation(line: 77, column: 39, scope: !149, inlinedAt: !151)
!161 = !DILocation(line: 81, column: 9, scope: !9)
!162 = !DILocation(line: 85, column: 9, scope: !9)
!163 = !DILocation(line: 133, column: 13, scope: !9)
!164 = !DILocation(line: 96, column: 25, scope: !9)
!165 = !DILocation(line: 26, column: 23, scope: !159, inlinedAt: !166)
!166 = distinct !DILocation(line: 77, column: 39, scope: !149, inlinedAt: !167)
!167 = distinct !DILocation(line: 97, column: 17, scope: !9)
!168 = !DILocation(line: 99, column: 13, scope: !9)
!169 = !DILocation(line: 100, column: 13, scope: !9)
!170 = !DILocation(line: 207, column: 46, scope: !171, inlinedAt: !172)
!171 = distinct !DISubprogram(name: "idx", scope: !50, file: !50, line: 202, type: !10, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!172 = distinct !DILocation(line: 185, column: 63, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "load_async_shared_to_register<kittens::rt<__hip_bfloat16, 32, 16, kittens::ducks::rt_layout::row>, kittens::st_subtile<kittens::st<__hip_bfloat16, 256, 64>, 32, 16> >", scope: !150, file: !150, line: 147, type: !10, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 102, column: 13, scope: !9)
!175 = !DILocation(line: 208, column: 60, scope: !171, inlinedAt: !172)
!176 = !DILocation(line: 209, column: 22, scope: !171, inlinedAt: !172)
!177 = !DILocation(line: 129, column: 5, scope: !178, inlinedAt: !179)
!178 = distinct !DISubprogram(name: "load_shared_vec_async", scope: !150, file: !150, line: 127, type: !10, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!179 = distinct !DILocation(line: 185, column: 37, scope: !173, inlinedAt: !174)
!180 = !{i64 4294495}
!181 = !DILocation(line: 187, column: 47, scope: !173, inlinedAt: !174)
!182 = !DILocation(line: 494, column: 7, scope: !183, inlinedAt: !185)
!183 = distinct !DISubprogram(name: "operator=", scope: !184, file: !184, line: 492, type: !10, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!184 = !DIFile(filename: "/opt/rocm-6.4.1/lib/llvm/bin/../../../include/hip/amd_detail/amd_hip_bf16.h", directory: "")
!185 = distinct !DILocation(line: 188, column: 45, scope: !173, inlinedAt: !174)
!186 = !DILocation(line: 103, column: 13, scope: !9)
!187 = !{i64 4302682}
!188 = !DILocation(line: 207, column: 46, scope: !171, inlinedAt: !189)
!189 = distinct !DILocation(line: 185, column: 63, scope: !173, inlinedAt: !190)
!190 = distinct !DILocation(line: 104, column: 13, scope: !9)
!191 = !DILocation(line: 208, column: 60, scope: !171, inlinedAt: !189)
!192 = !DILocation(line: 209, column: 22, scope: !171, inlinedAt: !189)
!193 = !DILocation(line: 129, column: 5, scope: !178, inlinedAt: !194)
!194 = distinct !DILocation(line: 185, column: 37, scope: !173, inlinedAt: !190)
!195 = !DILocation(line: 187, column: 47, scope: !173, inlinedAt: !190)
!196 = !DILocation(line: 494, column: 7, scope: !183, inlinedAt: !197)
!197 = distinct !DILocation(line: 188, column: 45, scope: !173, inlinedAt: !190)
!198 = !DILocation(line: 105, column: 13, scope: !9)
!199 = !{i64 4302852}
!200 = !DILocation(line: 207, column: 46, scope: !171, inlinedAt: !201)
!201 = distinct !DILocation(line: 185, column: 63, scope: !173, inlinedAt: !202)
!202 = distinct !DILocation(line: 106, column: 13, scope: !9)
!203 = !DILocation(line: 208, column: 60, scope: !171, inlinedAt: !201)
!204 = !DILocation(line: 209, column: 22, scope: !171, inlinedAt: !201)
!205 = !DILocation(line: 129, column: 5, scope: !178, inlinedAt: !206)
!206 = distinct !DILocation(line: 185, column: 37, scope: !173, inlinedAt: !202)
!207 = !DILocation(line: 187, column: 47, scope: !173, inlinedAt: !202)
!208 = !DILocation(line: 494, column: 7, scope: !183, inlinedAt: !209)
!209 = distinct !DILocation(line: 188, column: 45, scope: !173, inlinedAt: !202)
!210 = !DILocation(line: 107, column: 13, scope: !9)
!211 = !{i64 4303018}
!212 = !DILocation(line: 207, column: 46, scope: !171, inlinedAt: !213)
!213 = distinct !DILocation(line: 185, column: 63, scope: !173, inlinedAt: !214)
!214 = distinct !DILocation(line: 108, column: 13, scope: !9)
!215 = !DILocation(line: 208, column: 60, scope: !171, inlinedAt: !213)
!216 = !DILocation(line: 209, column: 22, scope: !171, inlinedAt: !213)
!217 = !DILocation(line: 129, column: 5, scope: !178, inlinedAt: !218)
!218 = distinct !DILocation(line: 185, column: 37, scope: !173, inlinedAt: !214)
!219 = !DILocation(line: 187, column: 47, scope: !173, inlinedAt: !214)
!220 = !DILocation(line: 494, column: 7, scope: !183, inlinedAt: !221)
!221 = distinct !DILocation(line: 188, column: 45, scope: !173, inlinedAt: !214)
!222 = !DILocation(line: 109, column: 13, scope: !9)
!223 = !{i64 4303188}
!224 = !DILocation(line: 207, column: 46, scope: !171, inlinedAt: !225)
!225 = distinct !DILocation(line: 185, column: 63, scope: !173, inlinedAt: !226)
!226 = distinct !DILocation(line: 110, column: 13, scope: !9)
!227 = !DILocation(line: 208, column: 60, scope: !171, inlinedAt: !225)
!228 = !DILocation(line: 209, column: 22, scope: !171, inlinedAt: !225)
!229 = !DILocation(line: 129, column: 5, scope: !178, inlinedAt: !230)
!230 = distinct !DILocation(line: 185, column: 37, scope: !173, inlinedAt: !226)
!231 = !DILocation(line: 187, column: 47, scope: !173, inlinedAt: !226)
!232 = !DILocation(line: 494, column: 7, scope: !183, inlinedAt: !233)
!233 = distinct !DILocation(line: 188, column: 45, scope: !173, inlinedAt: !226)
!234 = !DILocation(line: 111, column: 13, scope: !9)
!235 = !{i64 4303358}
!236 = !DILocation(line: 207, column: 46, scope: !171, inlinedAt: !237)
!237 = distinct !DILocation(line: 185, column: 63, scope: !173, inlinedAt: !238)
!238 = distinct !DILocation(line: 112, column: 13, scope: !9)
!239 = !DILocation(line: 208, column: 60, scope: !171, inlinedAt: !237)
!240 = !DILocation(line: 209, column: 22, scope: !171, inlinedAt: !237)
!241 = !DILocation(line: 129, column: 5, scope: !178, inlinedAt: !242)
!242 = distinct !DILocation(line: 185, column: 37, scope: !173, inlinedAt: !238)
!243 = !DILocation(line: 187, column: 47, scope: !173, inlinedAt: !238)
!244 = !DILocation(line: 494, column: 7, scope: !183, inlinedAt: !245)
!245 = distinct !DILocation(line: 188, column: 45, scope: !173, inlinedAt: !238)
!246 = !DILocation(line: 113, column: 13, scope: !9)
!247 = !{i64 4303528}
!248 = !DILocation(line: 115, column: 13, scope: !9)
!249 = !DILocation(line: 116, column: 13, scope: !9)
!250 = !DILocation(line: 118, column: 13, scope: !9)
!251 = !DILocation(line: 29, column: 27, scope: !252, inlinedAt: !254)
!252 = distinct !DISubprogram(name: "mfma161616", scope: !253, file: !253, line: 25, type: !10, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!253 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/register/tile/mma.cuh", directory: "/workdir/AMD-benchmarking-harness")
!254 = distinct !DILocation(line: 81, column: 5, scope: !255, inlinedAt: !256)
!255 = distinct !DISubprogram(name: "mma_ABt_base", scope: !253, file: !253, line: 77, type: !10, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!256 = distinct !DILocation(line: 216, column: 13, scope: !257, inlinedAt: !258)
!257 = distinct !DISubprogram(name: "mma_ABt<kittens::rt<float, 32, 32, kittens::ducks::rt_layout::col>, kittens::rt<__hip_bfloat16, 32, 16, kittens::ducks::rt_layout::row>, kittens::rt<__hip_bfloat16, 32, 16, kittens::ducks::rt_layout::row>, kittens::rt<float, 32, 32, kittens::ducks::rt_layout::col> >", scope: !253, file: !253, line: 197, type: !10, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!258 = distinct !DILocation(line: 119, column: 13, scope: !9)
!259 = !DILocation(line: 29, column: 27, scope: !252, inlinedAt: !260)
!260 = distinct !DILocation(line: 81, column: 5, scope: !255, inlinedAt: !261)
!261 = distinct !DILocation(line: 216, column: 13, scope: !257, inlinedAt: !262)
!262 = distinct !DILocation(line: 120, column: 13, scope: !9)
!263 = !DILocation(line: 29, column: 27, scope: !252, inlinedAt: !264)
!264 = distinct !DILocation(line: 81, column: 5, scope: !255, inlinedAt: !265)
!265 = distinct !DILocation(line: 216, column: 13, scope: !257, inlinedAt: !266)
!266 = distinct !DILocation(line: 121, column: 13, scope: !9)
!267 = !DILocation(line: 29, column: 27, scope: !252, inlinedAt: !268)
!268 = distinct !DILocation(line: 81, column: 5, scope: !255, inlinedAt: !269)
!269 = distinct !DILocation(line: 216, column: 13, scope: !257, inlinedAt: !270)
!270 = distinct !DILocation(line: 122, column: 13, scope: !9)
!271 = !DILocation(line: 29, column: 27, scope: !252, inlinedAt: !272)
!272 = distinct !DILocation(line: 81, column: 5, scope: !255, inlinedAt: !273)
!273 = distinct !DILocation(line: 216, column: 13, scope: !257, inlinedAt: !274)
!274 = distinct !DILocation(line: 123, column: 13, scope: !9)
!275 = !DILocation(line: 29, column: 27, scope: !252, inlinedAt: !276)
!276 = distinct !DILocation(line: 81, column: 5, scope: !255, inlinedAt: !277)
!277 = distinct !DILocation(line: 216, column: 13, scope: !257, inlinedAt: !278)
!278 = distinct !DILocation(line: 124, column: 13, scope: !9)
!279 = !DILocation(line: 29, column: 27, scope: !252, inlinedAt: !280)
!280 = distinct !DILocation(line: 81, column: 5, scope: !255, inlinedAt: !281)
!281 = distinct !DILocation(line: 216, column: 13, scope: !257, inlinedAt: !282)
!282 = distinct !DILocation(line: 125, column: 13, scope: !9)
!283 = !DILocation(line: 29, column: 27, scope: !252, inlinedAt: !284)
!284 = distinct !DILocation(line: 81, column: 5, scope: !255, inlinedAt: !285)
!285 = distinct !DILocation(line: 216, column: 13, scope: !257, inlinedAt: !286)
!286 = distinct !DILocation(line: 126, column: 13, scope: !9)
!287 = !DILocation(line: 127, column: 13, scope: !9)
!288 = !DILocation(line: 128, column: 13, scope: !9)
!289 = !DILocation(line: 129, column: 13, scope: !9)
!290 = !DILocation(line: 85, column: 49, scope: !9)
!291 = !DILocation(line: 85, column: 35, scope: !9)
!292 = distinct !{!292, !162, !293, !294}
!293 = !DILocation(line: 130, column: 9, scope: !9)
!294 = !{!"llvm.loop.mustprogress"}
!295 = !DILocation(line: 134, column: 13, scope: !9)
!296 = !{i64 4304385}
!297 = !DILocation(line: 17, column: 5, scope: !298, inlinedAt: !299)
!298 = distinct !DISubprogram(name: "store_shared_vec_new", scope: !150, file: !150, line: 16, type: !10, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!299 = distinct !DILocation(line: 119, column: 17, scope: !300, inlinedAt: !301)
!300 = distinct !DISubprogram(name: "store_registers_to_shared<kittens::st_subtile<kittens::st<__hip_bfloat16, 256, 64>, 256, 32>, 256>", scope: !150, file: !150, line: 88, type: !10, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!301 = distinct !DILocation(line: 135, column: 13, scope: !9)
!302 = !{i64 4290521}
!303 = !DILocation(line: 17, column: 5, scope: !298, inlinedAt: !304)
!304 = distinct !DILocation(line: 120, column: 17, scope: !300, inlinedAt: !301)
!305 = !DILocation(line: 17, column: 5, scope: !298, inlinedAt: !306)
!306 = distinct !DILocation(line: 119, column: 17, scope: !300, inlinedAt: !307)
!307 = distinct !DILocation(line: 137, column: 13, scope: !9)
!308 = !DILocation(line: 17, column: 5, scope: !298, inlinedAt: !309)
!309 = distinct !DILocation(line: 120, column: 17, scope: !300, inlinedAt: !307)
!310 = !DILocation(line: 139, column: 9, scope: !9)
!311 = !DILocation(line: 140, column: 9, scope: !9)
!312 = !DILocation(line: 141, column: 9, scope: !9)
!313 = !{i64 4304821}
!314 = !DILocation(line: 142, column: 9, scope: !9)
!315 = !DILocation(line: 74, column: 29, scope: !9)
!316 = distinct !{!316, !140, !317, !294}
!317 = !DILocation(line: 144, column: 5, scope: !9)
!318 = !DILocation(line: 147, column: 9, scope: !9)
!319 = !DILocation(line: 148, column: 5, scope: !9)
!320 = !DILocation(line: 157, column: 32, scope: !9)
!321 = !DILocation(line: 60, column: 34, scope: !322, inlinedAt: !323)
!322 = distinct !DISubprogram(name: "unit_coord<2, 3>", scope: !64, file: !64, line: 51, type: !10, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!323 = distinct !DILocation(line: 192, column: 41, scope: !324, inlinedAt: !326)
!324 = distinct !DISubprogram(name: "store<2, kittens::rt<float, 32, 32, kittens::ducks::rt_layout::col>, kittens::gl<float, -1, -1, -1, -1>, kittens::coord<kittens::rt<float, 32, 32, kittens::ducks::rt_layout::col> > >", scope: !325, file: !325, line: 188, type: !10, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!325 = !DIFile(filename: "ThunderKittens-HIP/include/ops/warp/memory/tile/global_to_register.cuh", directory: "/workdir/AMD-benchmarking-harness")
!326 = distinct !DILocation(line: 212, column: 5, scope: !327, inlinedAt: !328)
!327 = distinct !DISubprogram(name: "store<kittens::rt<float, 32, 32, kittens::ducks::rt_layout::col>, kittens::gl<float, -1, -1, -1, -1>, kittens::coord<kittens::rt<float, 32, 32, kittens::ducks::rt_layout::col> > >", scope: !325, file: !325, line: 211, type: !10, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!328 = distinct !DILocation(line: 154, column: 9, scope: !9)
!329 = !DILocation(line: 61, column: 18, scope: !322, inlinedAt: !323)
!330 = !DILocation(line: 63, column: 54, scope: !331, inlinedAt: !332)
!331 = distinct !DISubprogram(name: "operator[]", scope: !68, file: !68, line: 62, type: !10, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!332 = distinct !DILocation(line: 192, column: 23, scope: !324, inlinedAt: !326)
!333 = !DILocation(line: 63, column: 60, scope: !331, inlinedAt: !332)
!334 = !DILocation(line: 63, column: 68, scope: !331, inlinedAt: !332)
!335 = !DILocation(line: 63, column: 16, scope: !331, inlinedAt: !332)
!336 = !DILocation(line: 203, column: 49, scope: !324, inlinedAt: !326)
!337 = !DILocation(line: 203, column: 13, scope: !324, inlinedAt: !326)
!338 = !DILocation(line: 203, column: 47, scope: !324, inlinedAt: !326)
!339 = !{!340, !340, i64 0}
!340 = !{!"float", !341, i64 0}
!341 = !{!"omnipotent char", !342, i64 0}
!342 = !{!"Simple C++ TBAA"}
!343 = !DILocation(line: 204, column: 49, scope: !324, inlinedAt: !326)
!344 = !DILocation(line: 204, column: 13, scope: !324, inlinedAt: !326)
!345 = !DILocation(line: 204, column: 47, scope: !324, inlinedAt: !326)
!346 = !DILocation(line: 205, column: 49, scope: !324, inlinedAt: !326)
!347 = !DILocation(line: 205, column: 13, scope: !324, inlinedAt: !326)
!348 = !DILocation(line: 205, column: 47, scope: !324, inlinedAt: !326)
!349 = !DILocation(line: 206, column: 49, scope: !324, inlinedAt: !326)
!350 = !DILocation(line: 206, column: 13, scope: !324, inlinedAt: !326)
!351 = !DILocation(line: 206, column: 47, scope: !324, inlinedAt: !326)
!352 = !DILocation(line: 160, column: 1, scope: !9)
