; ModuleID = 'main_.cpp'
source_filename = "main_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Tile = type { i8, i32, i32 }

; Function Attrs: uwtable
define dso_local void @_Z5main_v() local_unnamed_addr #0 {
  %1 = alloca [10000 x %struct.Tile], align 16
  %2 = alloca [10000 x %struct.Tile], align 16
  %3 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i64 0, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 120000, i8* nonnull %3) #5
  %4 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i64 0, i64 0
  %5 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i64 0, i64 10000
  br label %6

6:                                                ; preds = %6, %0
  %7 = phi %struct.Tile* [ %4, %0 ], [ %33, %6 ]
  %8 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 0, i32 0
  store i8 0, i8* %8, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 1, i32 0
  store i8 0, i8* %9, align 4, !tbaa !5
  %10 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 2, i32 0
  store i8 0, i8* %10, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 3, i32 0
  store i8 0, i8* %11, align 4, !tbaa !5
  %12 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 4, i32 0
  store i8 0, i8* %12, align 4, !tbaa !5
  %13 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 5, i32 0
  store i8 0, i8* %13, align 4, !tbaa !5
  %14 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 6, i32 0
  store i8 0, i8* %14, align 4, !tbaa !5
  %15 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 7, i32 0
  store i8 0, i8* %15, align 4, !tbaa !5
  %16 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 8, i32 0
  store i8 0, i8* %16, align 4, !tbaa !5
  %17 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 9, i32 0
  store i8 0, i8* %17, align 4, !tbaa !5
  %18 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 10, i32 0
  store i8 0, i8* %18, align 4, !tbaa !5
  %19 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 11, i32 0
  store i8 0, i8* %19, align 4, !tbaa !5
  %20 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 12, i32 0
  store i8 0, i8* %20, align 4, !tbaa !5
  %21 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 13, i32 0
  store i8 0, i8* %21, align 4, !tbaa !5
  %22 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 14, i32 0
  store i8 0, i8* %22, align 4, !tbaa !5
  %23 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 15, i32 0
  store i8 0, i8* %23, align 4, !tbaa !5
  %24 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 16, i32 0
  store i8 0, i8* %24, align 4, !tbaa !5
  %25 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 17, i32 0
  store i8 0, i8* %25, align 4, !tbaa !5
  %26 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 18, i32 0
  store i8 0, i8* %26, align 4, !tbaa !5
  %27 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 19, i32 0
  store i8 0, i8* %27, align 4, !tbaa !5
  %28 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 20, i32 0
  store i8 0, i8* %28, align 4, !tbaa !5
  %29 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 21, i32 0
  store i8 0, i8* %29, align 4, !tbaa !5
  %30 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 22, i32 0
  store i8 0, i8* %30, align 4, !tbaa !5
  %31 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 23, i32 0
  store i8 0, i8* %31, align 4, !tbaa !5
  %32 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 24, i32 0
  store i8 0, i8* %32, align 4, !tbaa !5
  %33 = getelementptr inbounds %struct.Tile, %struct.Tile* %7, i64 25
  %34 = icmp eq %struct.Tile* %33, %5
  br i1 %34, label %35, label %6

35:                                               ; preds = %6
  %36 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %2, i64 0, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 120000, i8* nonnull %36) #5
  %37 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %2, i64 0, i64 0
  %38 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %2, i64 0, i64 10000
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi %struct.Tile* [ %37, %35 ], [ %66, %39 ]
  %41 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 0, i32 0
  store i8 0, i8* %41, align 4, !tbaa !5
  %42 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 1, i32 0
  store i8 0, i8* %42, align 4, !tbaa !5
  %43 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 2, i32 0
  store i8 0, i8* %43, align 4, !tbaa !5
  %44 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 3, i32 0
  store i8 0, i8* %44, align 4, !tbaa !5
  %45 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 4, i32 0
  store i8 0, i8* %45, align 4, !tbaa !5
  %46 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 5, i32 0
  store i8 0, i8* %46, align 4, !tbaa !5
  %47 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 6, i32 0
  store i8 0, i8* %47, align 4, !tbaa !5
  %48 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 7, i32 0
  store i8 0, i8* %48, align 4, !tbaa !5
  %49 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 8, i32 0
  store i8 0, i8* %49, align 4, !tbaa !5
  %50 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 9, i32 0
  store i8 0, i8* %50, align 4, !tbaa !5
  %51 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 10, i32 0
  store i8 0, i8* %51, align 4, !tbaa !5
  %52 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 11, i32 0
  store i8 0, i8* %52, align 4, !tbaa !5
  %53 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 12, i32 0
  store i8 0, i8* %53, align 4, !tbaa !5
  %54 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 13, i32 0
  store i8 0, i8* %54, align 4, !tbaa !5
  %55 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 14, i32 0
  store i8 0, i8* %55, align 4, !tbaa !5
  %56 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 15, i32 0
  store i8 0, i8* %56, align 4, !tbaa !5
  %57 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 16, i32 0
  store i8 0, i8* %57, align 4, !tbaa !5
  %58 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 17, i32 0
  store i8 0, i8* %58, align 4, !tbaa !5
  %59 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 18, i32 0
  store i8 0, i8* %59, align 4, !tbaa !5
  %60 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 19, i32 0
  store i8 0, i8* %60, align 4, !tbaa !5
  %61 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 20, i32 0
  store i8 0, i8* %61, align 4, !tbaa !5
  %62 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 21, i32 0
  store i8 0, i8* %62, align 4, !tbaa !5
  %63 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 22, i32 0
  store i8 0, i8* %63, align 4, !tbaa !5
  %64 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 23, i32 0
  store i8 0, i8* %64, align 4, !tbaa !5
  %65 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 24, i32 0
  store i8 0, i8* %65, align 4, !tbaa !5
  %66 = getelementptr inbounds %struct.Tile, %struct.Tile* %40, i64 25
  %67 = icmp eq %struct.Tile* %66, %38
  br i1 %67, label %68, label %39

68:                                               ; preds = %39, %70
  %69 = phi i32 [ %71, %70 ], [ 0, %39 ]
  br label %73

70:                                               ; preds = %92
  %71 = add nuw nsw i32 %69, 1
  %72 = icmp eq i32 %71, 100
  br i1 %72, label %96, label %68, !llvm.loop !11

73:                                               ; preds = %68, %92
  %74 = phi i32 [ 0, %68 ], [ %94, %92 ]
  %75 = call noundef i32 @_Z9next_randv()
  %76 = srem i32 %75, 50
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = mul nsw i32 %74, 100
  %80 = add nsw i32 %79, %69
  %81 = add nsw i32 %80, -1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i64 0, i64 %82, i32 0
  %84 = load i8, i8* %83, align 4, !tbaa !5, !range !13
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = sext i32 %80 to i64
  %88 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i64 0, i64 %87, i32 0
  store i8 1, i8* %88, align 4, !tbaa !5
  %89 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i64 0, i64 %87, i32 1
  store i32 %69, i32* %89, align 4, !tbaa !14
  %90 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i64 0, i64 %87, i32 2
  store i32 %74, i32* %90, align 4, !tbaa !15
  %91 = add nsw i32 %74, 1
  br label %92

92:                                               ; preds = %73, %78, %86
  %93 = phi i32 [ %74, %78 ], [ %91, %86 ], [ %74, %73 ]
  %94 = add nsw i32 %93, 1
  %95 = icmp slt i32 %93, 99
  br i1 %95, label %73, label %70, !llvm.loop !16

96:                                               ; preds = %70, %145
  %97 = phi %struct.Tile* [ %99, %145 ], [ %4, %70 ]
  %98 = phi i32 [ %146, %145 ], [ 0, %70 ]
  %99 = phi %struct.Tile* [ %97, %145 ], [ %37, %70 ]
  %100 = call noundef zeroext i1 @_Z9interruptv()
  br i1 %100, label %166, label %101

101:                                              ; preds = %96, %148
  %102 = phi i64 [ %149, %148 ], [ 0, %96 ]
  br label %151

103:                                              ; preds = %148, %106
  %104 = phi i64 [ %107, %106 ], [ 0, %148 ]
  %105 = trunc i64 %104 to i32
  br label %109

106:                                              ; preds = %142
  %107 = add nuw nsw i64 %104, 1
  %108 = icmp eq i64 %107, 100
  br i1 %108, label %145, label %103, !llvm.loop !17

109:                                              ; preds = %142, %103
  %110 = phi i64 [ 0, %103 ], [ %143, %142 ]
  %111 = mul nuw nsw i64 %110, 100
  %112 = add nuw nsw i64 %111, %104
  %113 = getelementptr inbounds %struct.Tile, %struct.Tile* %97, i64 %112, i32 0
  %114 = load i8, i8* %113, align 4, !tbaa !5, !range !13
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %109
  %117 = call noundef i32 @_Z9next_randv()
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  %120 = call noundef i32 @_Z9next_randv()
  %121 = srem i32 %120, 2
  %122 = shl nsw i32 %121, 1
  br i1 %119, label %128, label %123

123:                                              ; preds = %116
  %124 = add nsw i32 %122, 99
  %125 = add i32 %124, %105
  %126 = srem i32 %125, 100
  %127 = trunc i64 %110 to i32
  br label %133

128:                                              ; preds = %116
  %129 = trunc i64 %110 to i32
  %130 = add nsw i32 %122, 99
  %131 = add i32 %130, %129
  %132 = srem i32 %131, 100
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi i32 [ %126, %123 ], [ %105, %128 ]
  %135 = phi i32 [ %127, %123 ], [ %132, %128 ]
  %136 = mul nsw i32 %135, 100
  %137 = add nsw i32 %136, %134
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Tile, %struct.Tile* %99, i64 %138, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %139, i8* noundef nonnull align 4 dereferenceable(12) %113, i64 12, i1 false), !tbaa.struct !18
  %140 = getelementptr inbounds %struct.Tile, %struct.Tile* %99, i64 %138, i32 1
  store i32 %134, i32* %140, align 4, !tbaa !14
  %141 = getelementptr inbounds %struct.Tile, %struct.Tile* %99, i64 %138, i32 2
  store i32 %135, i32* %141, align 4, !tbaa !15
  br label %142

142:                                              ; preds = %133, %109
  store i8 0, i8* %113, align 4, !tbaa !5
  %143 = add nuw nsw i64 %110, 1
  %144 = icmp eq i64 %143, 100
  br i1 %144, label %106, label %109, !llvm.loop !21

145:                                              ; preds = %106
  call void @_Z5flushv()
  %146 = add nuw nsw i32 %98, 1
  %147 = icmp eq i32 %146, 200
  br i1 %147, label %166, label %96, !llvm.loop !22

148:                                              ; preds = %163
  %149 = add nuw nsw i64 %102, 1
  %150 = icmp eq i64 %149, 100
  br i1 %150, label %103, label %101, !llvm.loop !23

151:                                              ; preds = %101, %163
  %152 = phi i64 [ 0, %101 ], [ %164, %163 ]
  %153 = mul nuw nsw i64 %152, 100
  %154 = add nuw nsw i64 %153, %102
  %155 = getelementptr inbounds %struct.Tile, %struct.Tile* %97, i64 %154, i32 0
  %156 = load i8, i8* %155, align 4, !tbaa !5, !range !13
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.Tile, %struct.Tile* %97, i64 %154, i32 1
  %160 = load i32, i32* %159, align 4, !tbaa !14
  %161 = getelementptr inbounds %struct.Tile, %struct.Tile* %97, i64 %154, i32 2
  %162 = load i32, i32* %161, align 4, !tbaa !15
  call void @_Z7putTileiiiiii(i32 noundef %160, i32 noundef %162, i32 noundef 100, i32 noundef 100, i32 noundef 100, i32 noundef 255)
  br label %163

163:                                              ; preds = %151, %158
  %164 = add nuw nsw i64 %152, 1
  %165 = icmp eq i64 %164, 100
  br i1 %165, label %148, label %151, !llvm.loop !24

166:                                              ; preds = %96, %145
  call void @llvm.lifetime.end.p0i8(i64 120000, i8* nonnull %36) #5
  call void @llvm.lifetime.end.p0i8(i64 120000, i8* nonnull %3) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare noundef i32 @_Z9next_randv() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare noundef zeroext i1 @_Z9interruptv() local_unnamed_addr #2

declare void @_Z7putTileiiiiii(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8loadNextP4TileS0_(%struct.Tile* nocapture noundef %0, %struct.Tile* nocapture noundef writeonly %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %2, %9
  %4 = phi i64 [ 0, %2 ], [ %10, %9 ]
  %5 = trunc i64 %4 to i32
  %6 = trunc i64 %4 to i32
  %7 = add i32 %6, 99
  br label %12

8:                                                ; preds = %9
  ret void

9:                                                ; preds = %44
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 100
  br i1 %11, label %8, label %3, !llvm.loop !17

12:                                               ; preds = %3, %44
  %13 = phi i64 [ 0, %3 ], [ %45, %44 ]
  %14 = mul nuw nsw i64 %13, 100
  %15 = add nuw nsw i64 %14, %4
  %16 = getelementptr inbounds %struct.Tile, %struct.Tile* %0, i64 %15, i32 0
  %17 = load i8, i8* %16, align 4, !tbaa !5, !range !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %12
  %20 = tail call noundef i32 @_Z9next_randv()
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = tail call noundef i32 @_Z9next_randv()
  %24 = srem i32 %23, 2
  %25 = shl nsw i32 %24, 1
  br i1 %22, label %30, label %26

26:                                               ; preds = %19
  %27 = add i32 %7, %25
  %28 = srem i32 %27, 100
  %29 = trunc i64 %13 to i32
  br label %35

30:                                               ; preds = %19
  %31 = trunc i64 %13 to i32
  %32 = add i32 %31, 99
  %33 = add i32 %32, %25
  %34 = srem i32 %33, 100
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i32 [ %28, %26 ], [ %5, %30 ]
  %37 = phi i32 [ %29, %26 ], [ %34, %30 ]
  %38 = mul nsw i32 %37, 100
  %39 = add nsw i32 %38, %36
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Tile, %struct.Tile* %1, i64 %40, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %41, i8* noundef nonnull align 4 dereferenceable(12) %16, i64 12, i1 false), !tbaa.struct !18
  %42 = getelementptr inbounds %struct.Tile, %struct.Tile* %1, i64 %40, i32 1
  store i32 %36, i32* %42, align 4, !tbaa !14
  %43 = getelementptr inbounds %struct.Tile, %struct.Tile* %1, i64 %40, i32 2
  store i32 %37, i32* %43, align 4, !tbaa !15
  br label %44

44:                                               ; preds = %35, %12
  store i8 0, i8* %16, align 4, !tbaa !5
  %45 = add nuw nsw i64 %13, 1
  %46 = icmp eq i64 %45, 100
  br i1 %46, label %9, label %12, !llvm.loop !21
}

declare void @_Z5flushv() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTS4Tile", !7, i64 0, !10, i64 4, !10, i64 8}
!7 = !{!"bool", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i8 0, i8 2}
!14 = !{!6, !10, i64 4}
!15 = !{!6, !10, i64 8}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = !{i64 0, i64 1, !19, i64 4, i64 4, !20, i64 8, i64 4, !20}
!19 = !{!7, !7, i64 0}
!20 = !{!10, !10, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
