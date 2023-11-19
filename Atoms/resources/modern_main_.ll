; ModuleID = 'main_.cpp'
source_filename = "main_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RGB = type { i32, i32, i32, i32 }
%struct.Tile = type { i8, i32, i32, %struct.RGB }

$_ZN4TileC2Ev = comdat any

@__const._Z5main_v.default_rgb = private unnamed_addr constant %struct.RGB { i32 100, i32 100, i32 100, i32 0 }, align 4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5main_v() #0 {
  %1 = alloca [10000 x %struct.Tile], align 16
  %2 = alloca [10000 x %struct.Tile], align 16
  %3 = alloca %struct.Tile*, align 8
  %4 = alloca %struct.Tile*, align 8
  %5 = alloca %struct.RGB, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Tile, align 8
  %12 = alloca %struct.Tile*, align 8
  %13 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.Tile, %struct.Tile* %13, i64 10000
  br label %15

15:                                               ; preds = %15, %0
  %16 = phi %struct.Tile* [ %13, %0 ], [ %17, %15 ]
  call void @_ZN4TileC2Ev(%struct.Tile* noundef nonnull align 4 dereferenceable(28) %16) #5
  %17 = getelementptr inbounds %struct.Tile, %struct.Tile* %16, i64 1
  %18 = icmp eq %struct.Tile* %17, %14
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %2, i32 0, i32 0
  %21 = getelementptr inbounds %struct.Tile, %struct.Tile* %20, i64 10000
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi %struct.Tile* [ %20, %19 ], [ %24, %22 ]
  call void @_ZN4TileC2Ev(%struct.Tile* noundef nonnull align 4 dereferenceable(28) %23) #5
  %24 = getelementptr inbounds %struct.Tile, %struct.Tile* %23, i64 1
  %25 = icmp eq %struct.Tile* %24, %21
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %1, i64 0, i64 0
  store %struct.Tile* %27, %struct.Tile** %3, align 8
  %28 = getelementptr inbounds [10000 x %struct.Tile], [10000 x %struct.Tile]* %2, i64 0, i64 0
  store %struct.Tile* %28, %struct.Tile** %4, align 8
  %29 = bitcast %struct.RGB* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.RGB* @__const._Z5main_v.default_rgb to i8*), i64 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %97, %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %33, label %100

33:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %93, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 100
  br i1 %36, label %37, label %96

37:                                               ; preds = %34
  %38 = call noundef i32 @_Z9next_randv()
  %39 = srem i32 %38, 50
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %37
  %42 = load %struct.Tile*, %struct.Tile** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 100
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Tile, %struct.Tile* %42, i64 %48
  %50 = getelementptr inbounds %struct.Tile, %struct.Tile* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 4
  %52 = trunc i8 %51 to i1
  br i1 %52, label %92, label %53

53:                                               ; preds = %41
  %54 = load %struct.Tile*, %struct.Tile** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 100
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.Tile, %struct.Tile* %54, i64 %59
  %61 = getelementptr inbounds %struct.Tile, %struct.Tile* %60, i32 0, i32 0
  store i8 1, i8* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.Tile*, %struct.Tile** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 100
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Tile, %struct.Tile* %63, i64 %68
  %70 = getelementptr inbounds %struct.Tile, %struct.Tile* %69, i32 0, i32 1
  store i32 %62, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.Tile*, %struct.Tile** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 100
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.Tile, %struct.Tile* %72, i64 %77
  %79 = getelementptr inbounds %struct.Tile, %struct.Tile* %78, i32 0, i32 2
  store i32 %71, i32* %79, align 4
  %80 = load %struct.Tile*, %struct.Tile** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 100
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.Tile, %struct.Tile* %80, i64 %85
  %87 = getelementptr inbounds %struct.Tile, %struct.Tile* %86, i32 0, i32 3
  %88 = bitcast %struct.RGB* %87 to i8*
  %89 = bitcast %struct.RGB* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 16, i1 false)
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %53, %41, %37
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %34, !llvm.loop !6

96:                                               ; preds = %34
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %30, !llvm.loop !8

100:                                              ; preds = %30
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %138, %100
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 200
  br i1 %103, label %104, label %141

104:                                              ; preds = %101
  %105 = call noundef zeroext i1 @_Z9interruptv()
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  br label %141

107:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %129, %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 100
  br i1 %110, label %111, label %132

111:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %125, %111
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 100
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load %struct.Tile*, %struct.Tile** %3, align 8
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 %117, 100
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.Tile, %struct.Tile* %116, i64 %121
  %123 = bitcast %struct.Tile* %11 to i8*
  %124 = bitcast %struct.Tile* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 28, i1 false)
  call void @_Z7putTile4Tile(%struct.Tile* noundef byval(%struct.Tile) align 8 %11)
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %112, !llvm.loop !9

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %108, !llvm.loop !10

132:                                              ; preds = %108
  %133 = load %struct.Tile*, %struct.Tile** %3, align 8
  %134 = load %struct.Tile*, %struct.Tile** %4, align 8
  call void @_Z8loadNextP4TileS0_(%struct.Tile* noundef %133, %struct.Tile* noundef %134)
  %135 = load %struct.Tile*, %struct.Tile** %3, align 8
  store %struct.Tile* %135, %struct.Tile** %12, align 8
  %136 = load %struct.Tile*, %struct.Tile** %4, align 8
  store %struct.Tile* %136, %struct.Tile** %3, align 8
  %137 = load %struct.Tile*, %struct.Tile** %12, align 8
  store %struct.Tile* %137, %struct.Tile** %4, align 8
  call void @_Z5flushv()
  br label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %101, !llvm.loop !11

141:                                              ; preds = %106, %101
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4TileC2Ev(%struct.Tile* noundef nonnull align 4 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %struct.Tile*, align 8
  store %struct.Tile* %0, %struct.Tile** %2, align 8
  %3 = load %struct.Tile*, %struct.Tile** %2, align 8
  %4 = getelementptr inbounds %struct.Tile, %struct.Tile* %3, i32 0, i32 0
  store i8 0, i8* %4, align 4
  %5 = getelementptr inbounds %struct.Tile, %struct.Tile* %3, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.Tile, %struct.Tile* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.Tile, %struct.Tile* %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.RGB, %struct.RGB* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.RGB, %struct.RGB* %7, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.RGB, %struct.RGB* %7, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.RGB, %struct.RGB* %7, i32 0, i32 3
  store i32 0, i32* %11, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare noundef i32 @_Z9next_randv() #3

declare noundef zeroext i1 @_Z9interruptv() #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7putTile4Tile(%struct.Tile* noundef byval(%struct.Tile) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.Tile, %struct.Tile* %0, i32 0, i32 0
  %3 = load i8, i8* %2, align 8
  %4 = trunc i8 %3 to i1
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Tile, %struct.Tile* %0, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.Tile, %struct.Tile* %0, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.Tile, %struct.Tile* %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.RGB, %struct.RGB* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.Tile, %struct.Tile* %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.RGB, %struct.RGB* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.Tile, %struct.Tile* %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.RGB, %struct.RGB* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = trunc i32 %20 to i8
  call void @_Z7putTileiihhhh(i32 noundef %7, i32 noundef %9, i8 noundef zeroext %13, i8 noundef zeroext %17, i8 noundef zeroext %21, i8 noundef zeroext -1)
  br label %22

22:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8loadNextP4TileS0_(%struct.Tile* noundef %0, %struct.Tile* noundef %1) #0 {
  %3 = alloca %struct.Tile*, align 8
  %4 = alloca %struct.Tile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.RGB, align 4
  %12 = alloca %struct.RGB, align 4
  %13 = alloca %struct.RGB, align 4
  store %struct.Tile* %0, %struct.Tile** %3, align 8
  store %struct.Tile* %1, %struct.Tile** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %157, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %160

17:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %153, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 100
  br i1 %20, label %21, label %156

21:                                               ; preds = %18
  %22 = load %struct.Tile*, %struct.Tile** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 100
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.Tile, %struct.Tile* %22, i64 %27
  %29 = getelementptr inbounds %struct.Tile, %struct.Tile* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %144

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %8, align 4
  %35 = call noundef i32 @_Z9next_randv()
  %36 = srem i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 100, %39
  %41 = call noundef i32 @_Z9next_randv()
  %42 = srem i32 %41, 2
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %40, %43
  %45 = sub nsw i32 %44, 1
  %46 = srem i32 %45, 100
  store i32 %46, i32* %7, align 4
  br label %56

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 100, %48
  %50 = call noundef i32 @_Z9next_randv()
  %51 = srem i32 %50, 2
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %49, %52
  %54 = sub nsw i32 %53, 1
  %55 = srem i32 %54, 100
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %47, %38
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %57, 100
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.Tile*, %struct.Tile** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.Tile, %struct.Tile* %61, i64 %63
  %65 = getelementptr inbounds %struct.Tile, %struct.Tile* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 4
  %67 = trunc i8 %66 to i1
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %10, align 1
  %69 = load %struct.Tile*, %struct.Tile** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.Tile, %struct.Tile* %69, i64 %71
  %73 = getelementptr inbounds %struct.Tile, %struct.Tile* %72, i32 0, i32 3
  %74 = bitcast %struct.RGB* %11 to i8*
  %75 = bitcast %struct.RGB* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 16, i1 false)
  %76 = load %struct.Tile*, %struct.Tile** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 %77, 100
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.Tile, %struct.Tile* %76, i64 %81
  %83 = load %struct.Tile*, %struct.Tile** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.Tile, %struct.Tile* %83, i64 %85
  %87 = bitcast %struct.Tile* %86 to i8*
  %88 = bitcast %struct.Tile* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 28, i1 false)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.Tile*, %struct.Tile** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.Tile, %struct.Tile* %90, i64 %92
  %94 = getelementptr inbounds %struct.Tile, %struct.Tile* %93, i32 0, i32 1
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.Tile*, %struct.Tile** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.Tile, %struct.Tile* %96, i64 %98
  %100 = getelementptr inbounds %struct.Tile, %struct.Tile* %99, i32 0, i32 2
  store i32 %95, i32* %100, align 4
  %101 = load i8, i8* %10, align 1
  %102 = trunc i8 %101 to i1
  br i1 %102, label %103, label %143

103:                                              ; preds = %56
  %104 = getelementptr inbounds %struct.RGB, %struct.RGB* %11, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.Tile*, %struct.Tile** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.Tile, %struct.Tile* %106, i64 %108
  %110 = getelementptr inbounds %struct.Tile, %struct.Tile* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.RGB, %struct.RGB* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %105, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %121

115:                                              ; preds = %103
  %116 = load %struct.Tile*, %struct.Tile** %4, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.Tile, %struct.Tile* %116, i64 %118
  %120 = getelementptr inbounds %struct.Tile, %struct.Tile* %119, i32 0, i32 3
  br label %121

121:                                              ; preds = %115, %114
  %122 = phi %struct.RGB* [ %11, %114 ], [ %120, %115 ]
  %123 = bitcast %struct.RGB* %13 to i8*
  %124 = bitcast %struct.RGB* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 16, i1 false)
  %125 = bitcast %struct.RGB* %13 to { i64, i64 }*
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 4
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 1
  %129 = load i64, i64* %128, align 4
  %130 = call { i64, i64 } @_Z7nextRGB3RGB(i64 %127, i64 %129)
  %131 = bitcast %struct.RGB* %12 to { i64, i64 }*
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 0
  %133 = extractvalue { i64, i64 } %130, 0
  store i64 %133, i64* %132, align 4
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 1
  %135 = extractvalue { i64, i64 } %130, 1
  store i64 %135, i64* %134, align 4
  %136 = load %struct.Tile*, %struct.Tile** %4, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Tile, %struct.Tile* %136, i64 %138
  %140 = getelementptr inbounds %struct.Tile, %struct.Tile* %139, i32 0, i32 3
  %141 = bitcast %struct.RGB* %140 to i8*
  %142 = bitcast %struct.RGB* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 16, i1 false)
  br label %143

143:                                              ; preds = %121, %56
  br label %144

144:                                              ; preds = %143, %21
  %145 = load %struct.Tile*, %struct.Tile** %3, align 8
  %146 = load i32, i32* %6, align 4
  %147 = mul nsw i32 %146, 100
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Tile, %struct.Tile* %145, i64 %150
  %152 = getelementptr inbounds %struct.Tile, %struct.Tile* %151, i32 0, i32 0
  store i8 0, i8* %152, align 4
  br label %153

153:                                              ; preds = %144
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %18, !llvm.loop !12

156:                                              ; preds = %18
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %14, !llvm.loop !13

160:                                              ; preds = %14
  ret void
}

declare void @_Z5flushv() #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local { i64, i64 } @_Z7nextRGB3RGB(i64 %0, i64 %1) #4 {
  %3 = alloca %struct.RGB, align 4
  %4 = alloca %struct.RGB, align 4
  %5 = bitcast %struct.RGB* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.RGB, %struct.RGB* %3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.RGB, %struct.RGB* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 19
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.RGB, %struct.RGB* %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.RGB, %struct.RGB* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 18
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.RGB, %struct.RGB* %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.RGB, %struct.RGB* %4, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -12
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.RGB, %struct.RGB* %3, i32 0, i32 3
  %21 = getelementptr inbounds %struct.RGB, %struct.RGB* %4, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %20, align 4
  %24 = bitcast %struct.RGB* %3 to { i64, i64 }*
  %25 = load { i64, i64 }, { i64, i64 }* %24, align 4
  ret { i64, i64 } %25
}

declare void @_Z7putTileiihhhh(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
