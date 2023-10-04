%struct.RGB = type { i32, i32, i32, i32 }
%struct.Tile = type { i8, i32, i32, %struct.RGB }

$Tile::Tile() = comdat any

$std::enable_if<__is_swappable<Tile>::value, void>::type std::swap<Tile, 10000ul>(Tile (&) [10000ul], Tile (&) [10000ul]) = comdat any

$std::enable_if<__and_<std::__not_<std::__is_tuple_like<Tile> >, std::is_move_constructible<Tile>, std::is_move_assignable<Tile> >::value, void>::type std::swap<Tile>(Tile&, Tile&) = comdat any

@__const.main_().default_rgb = private unnamed_addr constant %struct.RGB { i32 100, i32 100, i32 100, i32 0 }, align 4

define dso_local void @main_()() #0 !dbg !745 {
  %1 = alloca [10000 x %struct.Tile], align 16
  %2 = alloca [10000 x %struct.Tile], align 16
  %3 = alloca %struct.RGB, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Tile, align 8
  call void @srand(i32 noundef 51) #7, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %1, metadata !748, metadata !DIExpression()), !dbg !752
  %10 = getelementptr inbounds [10000 x %struct.Tile], ptr %1, i32 0, i32 0, !dbg !752
  %11 = getelementptr inbounds %struct.Tile, ptr %10, i64 10000, !dbg !752
  br label %12, !dbg !752

12:
  %13 = phi ptr [ %10, %0 ], [ %14, %12 ], !dbg !752
  call void @Tile::Tile()(ptr noundef nonnull align 4 dereferenceable(28) %13) #7, !dbg !752
  %14 = getelementptr inbounds %struct.Tile, ptr %13, i64 1, !dbg !752
  %15 = icmp eq ptr %14, %11, !dbg !752
  br i1 %15, label %16, label %12, !dbg !752

16:
  call void @llvm.dbg.declare(metadata ptr %2, metadata !753, metadata !DIExpression()), !dbg !754
  %17 = getelementptr inbounds [10000 x %struct.Tile], ptr %2, i32 0, i32 0, !dbg !754
  %18 = getelementptr inbounds %struct.Tile, ptr %17, i64 10000, !dbg !754
  br label %19, !dbg !754

19:
  %20 = phi ptr [ %17, %16 ], [ %21, %19 ], !dbg !754
  call void @Tile::Tile()(ptr noundef nonnull align 4 dereferenceable(28) %20) #7, !dbg !754
  %21 = getelementptr inbounds %struct.Tile, ptr %20, i64 1, !dbg !754
  %22 = icmp eq ptr %21, %18, !dbg !754
  br i1 %22, label %23, label %19, !dbg !754

23:
  call void @llvm.dbg.declare(metadata ptr %3, metadata !755, metadata !DIExpression()), !dbg !757
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 @__const.main_().default_rgb, i64 16, i1 false), !dbg !757
  call void @llvm.dbg.declare(metadata ptr %4, metadata !758, metadata !DIExpression()), !dbg !760
  store i32 0, ptr %4, align 4, !dbg !760
  br label %24, !dbg !761

24:
  %25 = load i32, ptr %4, align 4, !dbg !762
  %26 = icmp slt i32 %25, 100, !dbg !764
  br i1 %26, label %27, label %87, !dbg !765

27:
  call void @llvm.dbg.declare(metadata ptr %5, metadata !766, metadata !DIExpression()), !dbg !769
  store i32 0, ptr %5, align 4, !dbg !769
  br label %28, !dbg !770

28:
  %29 = load i32, ptr %5, align 4, !dbg !771
  %30 = icmp slt i32 %29, 100, !dbg !773
  br i1 %30, label %31, label %83, !dbg !774

31:
  %32 = call i32 @rand() #7, !dbg !775
  %33 = srem i32 %32, 50, !dbg !778
  %34 = icmp eq i32 %33, 0, !dbg !779
  br i1 %34, label %35, label %79, !dbg !780

35:
  %36 = load i32, ptr %5, align 4, !dbg !781
  %37 = mul nsw i32 %36, 100, !dbg !782
  %38 = load i32, ptr %4, align 4, !dbg !783
  %39 = add nsw i32 %37, %38, !dbg !784
  %40 = sub nsw i32 %39, 1, !dbg !785
  %41 = sext i32 %40 to i64, !dbg !786
  %42 = getelementptr inbounds [10000 x %struct.Tile], ptr %1, i64 0, i64 %41, !dbg !786
  %43 = getelementptr inbounds %struct.Tile, ptr %42, i32 0, i32 0, !dbg !787
  %44 = load i8, ptr %43, align 4, !dbg !787
  %45 = trunc i8 %44 to i1, !dbg !787
  br i1 %45, label %79, label %46, !dbg !788

46:
  %47 = load i32, ptr %5, align 4, !dbg !789
  %48 = mul nsw i32 %47, 100, !dbg !791
  %49 = load i32, ptr %4, align 4, !dbg !792
  %50 = add nsw i32 %48, %49, !dbg !793
  %51 = sext i32 %50 to i64, !dbg !794
  %52 = getelementptr inbounds [10000 x %struct.Tile], ptr %1, i64 0, i64 %51, !dbg !794
  %53 = getelementptr inbounds %struct.Tile, ptr %52, i32 0, i32 0, !dbg !795
  store i8 1, ptr %53, align 4, !dbg !796
  %54 = load i32, ptr %4, align 4, !dbg !797
  %55 = load i32, ptr %5, align 4, !dbg !798
  %56 = mul nsw i32 %55, 100, !dbg !799
  %57 = load i32, ptr %4, align 4, !dbg !800
  %58 = add nsw i32 %56, %57, !dbg !801
  %59 = sext i32 %58 to i64, !dbg !802
  %60 = getelementptr inbounds [10000 x %struct.Tile], ptr %1, i64 0, i64 %59, !dbg !802
  %61 = getelementptr inbounds %struct.Tile, ptr %60, i32 0, i32 1, !dbg !803
  store i32 %54, ptr %61, align 4, !dbg !804
  %62 = load i32, ptr %5, align 4, !dbg !805
  %63 = load i32, ptr %5, align 4, !dbg !806
  %64 = mul nsw i32 %63, 100, !dbg !807
  %65 = load i32, ptr %4, align 4, !dbg !808
  %66 = add nsw i32 %64, %65, !dbg !809
  %67 = sext i32 %66 to i64, !dbg !810
  %68 = getelementptr inbounds [10000 x %struct.Tile], ptr %1, i64 0, i64 %67, !dbg !810
  %69 = getelementptr inbounds %struct.Tile, ptr %68, i32 0, i32 2, !dbg !811
  store i32 %62, ptr %69, align 4, !dbg !812
  %70 = load i32, ptr %5, align 4, !dbg !813
  %71 = mul nsw i32 %70, 100, !dbg !814
  %72 = load i32, ptr %4, align 4, !dbg !815
  %73 = add nsw i32 %71, %72, !dbg !816
  %74 = sext i32 %73 to i64, !dbg !817
  %75 = getelementptr inbounds [10000 x %struct.Tile], ptr %1, i64 0, i64 %74, !dbg !817
  %76 = getelementptr inbounds %struct.Tile, ptr %75, i32 0, i32 3, !dbg !818
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %76, ptr align 4 %3, i64 16, i1 false), !dbg !819
  %77 = load i32, ptr %5, align 4, !dbg !820
  %78 = add nsw i32 %77, 1, !dbg !820
  store i32 %78, ptr %5, align 4, !dbg !820
  br label %79, !dbg !821

79:
  br label %80, !dbg !822

80:
  %81 = load i32, ptr %5, align 4, !dbg !823
  %82 = add nsw i32 %81, 1, !dbg !823
  store i32 %82, ptr %5, align 4, !dbg !823
  br label %28, !dbg !824

83:
  br label %84, !dbg !828

84:
  %85 = load i32, ptr %4, align 4, !dbg !829
  %86 = add nsw i32 %85, 1, !dbg !829
  store i32 %86, ptr %4, align 4, !dbg !829
  br label %24, !dbg !830

87:
  call void @llvm.dbg.declare(metadata ptr %6, metadata !833, metadata !DIExpression()), !dbg !835
  store i32 0, ptr %6, align 4, !dbg !835
  br label %88, !dbg !836

88:
  %89 = load i32, ptr %6, align 4, !dbg !837
  %90 = icmp slt i32 %89, 900, !dbg !839
  br i1 %90, label %91, label %122, !dbg !840

91:
  %92 = call noundef zeroext i1 @interrupt()(), !dbg !841
  br i1 %92, label %93, label %94, !dbg !844

93:
  br label %122, !dbg !845

94:
  call void @llvm.dbg.declare(metadata ptr %7, metadata !847, metadata !DIExpression()), !dbg !849
  store i32 0, ptr %7, align 4, !dbg !849
  br label %95, !dbg !850

95:
  %96 = load i32, ptr %7, align 4, !dbg !851
  %97 = icmp slt i32 %96, 100, !dbg !853
  br i1 %97, label %98, label %116, !dbg !854

98:
  call void @llvm.dbg.declare(metadata ptr %8, metadata !855, metadata !DIExpression()), !dbg !858
  store i32 0, ptr %8, align 4, !dbg !858
  br label %99, !dbg !859

99:
  %100 = load i32, ptr %8, align 4, !dbg !860
  %101 = icmp slt i32 %100, 100, !dbg !862
  br i1 %101, label %102, label %112, !dbg !863

102:
  %103 = load i32, ptr %8, align 4, !dbg !864
  %104 = mul nsw i32 %103, 100, !dbg !866
  %105 = load i32, ptr %7, align 4, !dbg !867
  %106 = add nsw i32 %104, %105, !dbg !868
  %107 = sext i32 %106 to i64, !dbg !869
  %108 = getelementptr inbounds [10000 x %struct.Tile], ptr %1, i64 0, i64 %107, !dbg !869
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %108, i64 28, i1 false), !dbg !869
  call void @putTile(Tile)(ptr noundef byval(%struct.Tile) align 8 %9), !dbg !870
  br label %109, !dbg !871

109:
  %110 = load i32, ptr %8, align 4, !dbg !872
  %111 = add nsw i32 %110, 1, !dbg !872
  store i32 %111, ptr %8, align 4, !dbg !872
  br label %99, !dbg !873

112:
  br label %113, !dbg !876

113:
  %114 = load i32, ptr %7, align 4, !dbg !877
  %115 = add nsw i32 %114, 1, !dbg !877
  store i32 %115, ptr %7, align 4, !dbg !877
  br label %95, !dbg !878

116:
  %117 = getelementptr inbounds [10000 x %struct.Tile], ptr %1, i64 0, i64 0, !dbg !881
  %118 = getelementptr inbounds [10000 x %struct.Tile], ptr %2, i64 0, i64 0, !dbg !882
  call void @loadNext(Tile*, Tile*)(ptr noundef %117, ptr noundef %118), !dbg !883
  call void @std::enable_if<__is_swappable<Tile>::value, void>::type std::swap<Tile, 10000ul>(Tile (&) [10000ul], Tile (&) [10000ul])(ptr noundef nonnull align 4 dereferenceable(280000) %1, ptr noundef nonnull align 4 dereferenceable(280000) %2) #7, !dbg !884
  call void @flush()(), !dbg !885
  br label %119, !dbg !886

119:
  %120 = load i32, ptr %6, align 4, !dbg !887
  %121 = add nsw i32 %120, 1, !dbg !887
  store i32 %121, ptr %6, align 4, !dbg !887
  br label %88, !dbg !888

122:
  ret void, !dbg !891
}

declare void @srand(i32 noundef) #1

declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

define linkonce_odr dso_local void @Tile::Tile()(ptr noundef nonnull align 4 dereferenceable(28) %0) unnamed_addr #3 comdat align 2 !dbg !892 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !897, metadata !DIExpression()), !dbg !899
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Tile, ptr %3, i32 0, i32 0, !dbg !900
  store i8 0, ptr %4, align 4, !dbg !900
  %5 = getelementptr inbounds %struct.Tile, ptr %3, i32 0, i32 1, !dbg !901
  store i32 0, ptr %5, align 4, !dbg !901
  %6 = getelementptr inbounds %struct.Tile, ptr %3, i32 0, i32 2, !dbg !902
  store i32 0, ptr %6, align 4, !dbg !902
  %7 = getelementptr inbounds %struct.Tile, ptr %3, i32 0, i32 3, !dbg !903
  %8 = getelementptr inbounds %struct.RGB, ptr %7, i32 0, i32 0, !dbg !904
  store i32 0, ptr %8, align 4, !dbg !904
  %9 = getelementptr inbounds %struct.RGB, ptr %7, i32 0, i32 1, !dbg !904
  store i32 0, ptr %9, align 4, !dbg !904
  %10 = getelementptr inbounds %struct.RGB, ptr %7, i32 0, i32 2, !dbg !904
  store i32 0, ptr %10, align 4, !dbg !904
  %11 = getelementptr inbounds %struct.RGB, ptr %7, i32 0, i32 3, !dbg !904
  store i32 0, ptr %11, align 4, !dbg !904
  ret void, !dbg !905
}

declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @rand() #1

declare noundef zeroext i1 @interrupt()() #5

define dso_local void @putTile(Tile)(ptr noundef byval(%struct.Tile) align 8 %0) #0 !dbg !906 {
  call void @llvm.dbg.declare(metadata ptr %0, metadata !910, metadata !DIExpression()), !dbg !911
  %2 = getelementptr inbounds %struct.Tile, ptr %0, i32 0, i32 0, !dbg !912
  %3 = load i8, ptr %2, align 8, !dbg !912
  %4 = trunc i8 %3 to i1, !dbg !912
  br i1 %4, label %5, label %22, !dbg !914

5:
  %6 = getelementptr inbounds %struct.Tile, ptr %0, i32 0, i32 1, !dbg !915
  %7 = load i32, ptr %6, align 4, !dbg !915
  %8 = getelementptr inbounds %struct.Tile, ptr %0, i32 0, i32 2, !dbg !917
  %9 = load i32, ptr %8, align 8, !dbg !917
  %10 = getelementptr inbounds %struct.Tile, ptr %0, i32 0, i32 3, !dbg !918
  %11 = getelementptr inbounds %struct.RGB, ptr %10, i32 0, i32 0, !dbg !919
  %12 = load i32, ptr %11, align 4, !dbg !919
  %13 = trunc i32 %12 to i8, !dbg !920
  %14 = getelementptr inbounds %struct.Tile, ptr %0, i32 0, i32 3, !dbg !921
  %15 = getelementptr inbounds %struct.RGB, ptr %14, i32 0, i32 1, !dbg !922
  %16 = load i32, ptr %15, align 4, !dbg !922
  %17 = trunc i32 %16 to i8, !dbg !923
  %18 = getelementptr inbounds %struct.Tile, ptr %0, i32 0, i32 3, !dbg !924
  %19 = getelementptr inbounds %struct.RGB, ptr %18, i32 0, i32 2, !dbg !925
  %20 = load i32, ptr %19, align 4, !dbg !925
  %21 = trunc i32 %20 to i8, !dbg !926
  call void @putTile(int, int, unsigned char, unsigned char, unsigned char, unsigned char)(i32 noundef %7, i32 noundef %9, i8 noundef zeroext %13, i8 noundef zeroext %17, i8 noundef zeroext %21, i8 noundef zeroext -1), !dbg !927
  br label %22, !dbg !928

22:
  ret void, !dbg !929
}

define dso_local void @loadNext(Tile*, Tile*)(ptr noundef %0, ptr noundef %1) #6 !dbg !930 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.RGB, align 4
  %12 = alloca %struct.RGB, align 4
  %13 = alloca %struct.RGB, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !933, metadata !DIExpression()), !dbg !934
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !935, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata ptr %5, metadata !937, metadata !DIExpression()), !dbg !939
  store i32 0, ptr %5, align 4, !dbg !939
  br label %14, !dbg !940

14:
  %15 = load i32, ptr %5, align 4, !dbg !941
  %16 = icmp slt i32 %15, 100, !dbg !943
  br i1 %16, label %17, label %150, !dbg !944

17:
  call void @llvm.dbg.declare(metadata ptr %6, metadata !945, metadata !DIExpression()), !dbg !948
  store i32 0, ptr %6, align 4, !dbg !948
  br label %18, !dbg !949

18:
  %19 = load i32, ptr %6, align 4, !dbg !950
  %20 = icmp slt i32 %19, 100, !dbg !952
  br i1 %20, label %21, label %146, !dbg !953

21:
  %22 = load ptr, ptr %3, align 8, !dbg !954
  %23 = load i32, ptr %6, align 4, !dbg !957
  %24 = mul nsw i32 %23, 100, !dbg !958
  %25 = load i32, ptr %5, align 4, !dbg !959
  %26 = add nsw i32 %24, %25, !dbg !960
  %27 = sext i32 %26 to i64, !dbg !954
  %28 = getelementptr inbounds %struct.Tile, ptr %22, i64 %27, !dbg !954
  %29 = getelementptr inbounds %struct.Tile, ptr %28, i32 0, i32 0, !dbg !961
  %30 = load i8, ptr %29, align 4, !dbg !961
  %31 = trunc i8 %30 to i1, !dbg !961
  br i1 %31, label %32, label %134, !dbg !962

32:
  call void @llvm.dbg.declare(metadata ptr %7, metadata !963, metadata !DIExpression()), !dbg !965
  %33 = load i32, ptr %5, align 4, !dbg !966
  store i32 %33, ptr %7, align 4, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %8, metadata !967, metadata !DIExpression()), !dbg !968
  %34 = load i32, ptr %6, align 4, !dbg !969
  store i32 %34, ptr %8, align 4, !dbg !968
  %35 = call i32 @rand() #7, !dbg !970
  %36 = srem i32 %35, 2, !dbg !972
  %37 = icmp ne i32 %36, 0, !dbg !970
  br i1 %37, label %38, label %47, !dbg !973

38:
  %39 = load i32, ptr %5, align 4, !dbg !974
  %40 = add nsw i32 100, %39, !dbg !976
  %41 = call i32 @rand() #7, !dbg !977
  %42 = srem i32 %41, 2, !dbg !978
  %43 = mul nsw i32 %42, 2, !dbg !979
  %44 = add nsw i32 %40, %43, !dbg !980
  %45 = sub nsw i32 %44, 1, !dbg !981
  %46 = srem i32 %45, 100, !dbg !982
  store i32 %46, ptr %7, align 4, !dbg !983
  br label %56, !dbg !984

47:
  %48 = load i32, ptr %6, align 4, !dbg !985
  %49 = add nsw i32 100, %48, !dbg !987
  %50 = call i32 @rand() #7, !dbg !988
  %51 = srem i32 %50, 2, !dbg !989
  %52 = mul nsw i32 %51, 2, !dbg !990
  %53 = add nsw i32 %49, %52, !dbg !991
  %54 = sub nsw i32 %53, 1, !dbg !992
  %55 = srem i32 %54, 100, !dbg !993
  store i32 %55, ptr %8, align 4, !dbg !994
  br label %56

56:
  call void @llvm.dbg.declare(metadata ptr %9, metadata !995, metadata !DIExpression()), !dbg !996
  %57 = load i32, ptr %8, align 4, !dbg !997
  %58 = mul nsw i32 %57, 100, !dbg !998
  %59 = load i32, ptr %7, align 4, !dbg !999
  %60 = add nsw i32 %58, %59, !dbg !1000
  store i32 %60, ptr %9, align 4, !dbg !996
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1001, metadata !DIExpression()), !dbg !1002
  %61 = load ptr, ptr %4, align 8, !dbg !1003
  %62 = load i32, ptr %9, align 4, !dbg !1004
  %63 = sext i32 %62 to i64, !dbg !1003
  %64 = getelementptr inbounds %struct.Tile, ptr %61, i64 %63, !dbg !1003
  %65 = getelementptr inbounds %struct.Tile, ptr %64, i32 0, i32 0, !dbg !1005
  %66 = load i8, ptr %65, align 4, !dbg !1005
  %67 = trunc i8 %66 to i1, !dbg !1005
  %68 = zext i1 %67 to i8, !dbg !1002
  store i8 %68, ptr %10, align 1, !dbg !1002
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1006, metadata !DIExpression()), !dbg !1007
  %69 = load ptr, ptr %4, align 8, !dbg !1008
  %70 = load i32, ptr %9, align 4, !dbg !1009
  %71 = sext i32 %70 to i64, !dbg !1008
  %72 = getelementptr inbounds %struct.Tile, ptr %69, i64 %71, !dbg !1008
  %73 = getelementptr inbounds %struct.Tile, ptr %72, i32 0, i32 3, !dbg !1010
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %73, i64 16, i1 false), !dbg !1008
  %74 = load ptr, ptr %3, align 8, !dbg !1011
  %75 = load i32, ptr %6, align 4, !dbg !1012
  %76 = mul nsw i32 %75, 100, !dbg !1013
  %77 = load i32, ptr %5, align 4, !dbg !1014
  %78 = add nsw i32 %76, %77, !dbg !1015
  %79 = sext i32 %78 to i64, !dbg !1011
  %80 = getelementptr inbounds %struct.Tile, ptr %74, i64 %79, !dbg !1011
  %81 = load ptr, ptr %4, align 8, !dbg !1016
  %82 = load i32, ptr %9, align 4, !dbg !1017
  %83 = sext i32 %82 to i64, !dbg !1016
  %84 = getelementptr inbounds %struct.Tile, ptr %81, i64 %83, !dbg !1016
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %80, i64 28, i1 false), !dbg !1018
  %85 = load i32, ptr %7, align 4, !dbg !1019
  %86 = load ptr, ptr %4, align 8, !dbg !1020
  %87 = load i32, ptr %9, align 4, !dbg !1021
  %88 = sext i32 %87 to i64, !dbg !1020
  %89 = getelementptr inbounds %struct.Tile, ptr %86, i64 %88, !dbg !1020
  %90 = getelementptr inbounds %struct.Tile, ptr %89, i32 0, i32 1, !dbg !1022
  store i32 %85, ptr %90, align 4, !dbg !1023
  %91 = load i32, ptr %8, align 4, !dbg !1024
  %92 = load ptr, ptr %4, align 8, !dbg !1025
  %93 = load i32, ptr %9, align 4, !dbg !1026
  %94 = sext i32 %93 to i64, !dbg !1025
  %95 = getelementptr inbounds %struct.Tile, ptr %92, i64 %94, !dbg !1025
  %96 = getelementptr inbounds %struct.Tile, ptr %95, i32 0, i32 2, !dbg !1027
  store i32 %91, ptr %96, align 4, !dbg !1028
  %97 = load i8, ptr %10, align 1, !dbg !1029
  %98 = trunc i8 %97 to i1, !dbg !1029
  br i1 %98, label %99, label %133, !dbg !1031

99:
  %100 = getelementptr inbounds %struct.RGB, ptr %11, i32 0, i32 3, !dbg !1032
  %101 = load i32, ptr %100, align 4, !dbg !1032
  %102 = load ptr, ptr %4, align 8, !dbg !1034
  %103 = load i32, ptr %9, align 4, !dbg !1035
  %104 = sext i32 %103 to i64, !dbg !1034
  %105 = getelementptr inbounds %struct.Tile, ptr %102, i64 %104, !dbg !1034
  %106 = getelementptr inbounds %struct.Tile, ptr %105, i32 0, i32 3, !dbg !1036
  %107 = getelementptr inbounds %struct.RGB, ptr %106, i32 0, i32 3, !dbg !1037
  %108 = load i32, ptr %107, align 4, !dbg !1037
  %109 = icmp sgt i32 %101, %108, !dbg !1038
  br i1 %109, label %110, label %111, !dbg !1039

110:
  br label %117, !dbg !1039

111:
  %112 = load ptr, ptr %4, align 8, !dbg !1040
  %113 = load i32, ptr %9, align 4, !dbg !1041
  %114 = sext i32 %113 to i64, !dbg !1040
  %115 = getelementptr inbounds %struct.Tile, ptr %112, i64 %114, !dbg !1040
  %116 = getelementptr inbounds %struct.Tile, ptr %115, i32 0, i32 3, !dbg !1042
  br label %117, !dbg !1039

117:
  %118 = phi ptr [ %11, %110 ], [ %116, %111 ], !dbg !1039
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %118, i64 16, i1 false), !dbg !1039
  %119 = getelementptr inbounds { i64, i64 }, ptr %13, i32 0, i32 0, !dbg !1043
  %120 = load i64, ptr %119, align 4, !dbg !1043
  %121 = getelementptr inbounds { i64, i64 }, ptr %13, i32 0, i32 1, !dbg !1043
  %122 = load i64, ptr %121, align 4, !dbg !1043
  %123 = call { i64, i64 } @nextRGB(RGB)(i64 %120, i64 %122), !dbg !1043
  %124 = getelementptr inbounds { i64, i64 }, ptr %12, i32 0, i32 0, !dbg !1043
  %125 = extractvalue { i64, i64 } %123, 0, !dbg !1043
  store i64 %125, ptr %124, align 4, !dbg !1043
  %126 = getelementptr inbounds { i64, i64 }, ptr %12, i32 0, i32 1, !dbg !1043
  %127 = extractvalue { i64, i64 } %123, 1, !dbg !1043
  store i64 %127, ptr %126, align 4, !dbg !1043
  %128 = load ptr, ptr %4, align 8, !dbg !1044
  %129 = load i32, ptr %9, align 4, !dbg !1045
  %130 = sext i32 %129 to i64, !dbg !1044
  %131 = getelementptr inbounds %struct.Tile, ptr %128, i64 %130, !dbg !1044
  %132 = getelementptr inbounds %struct.Tile, ptr %131, i32 0, i32 3, !dbg !1046
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %132, ptr align 4 %12, i64 16, i1 false), !dbg !1047
  br label %133, !dbg !1048

133:
  br label %134, !dbg !1049

134:
  %135 = load ptr, ptr %3, align 8, !dbg !1050
  %136 = load i32, ptr %6, align 4, !dbg !1051
  %137 = mul nsw i32 %136, 100, !dbg !1052
  %138 = load i32, ptr %5, align 4, !dbg !1053
  %139 = add nsw i32 %137, %138, !dbg !1054
  %140 = sext i32 %139 to i64, !dbg !1050
  %141 = getelementptr inbounds %struct.Tile, ptr %135, i64 %140, !dbg !1050
  %142 = getelementptr inbounds %struct.Tile, ptr %141, i32 0, i32 0, !dbg !1055
  store i8 0, ptr %142, align 4, !dbg !1056
  br label %143, !dbg !1057

143:
  %144 = load i32, ptr %6, align 4, !dbg !1058
  %145 = add nsw i32 %144, 1, !dbg !1058
  store i32 %145, ptr %6, align 4, !dbg !1058
  br label %18, !dbg !1059

146:
  br label %147, !dbg !1062

147:
  %148 = load i32, ptr %5, align 4, !dbg !1063
  %149 = add nsw i32 %148, 1, !dbg !1063
  store i32 %149, ptr %5, align 4, !dbg !1063
  br label %14, !dbg !1064

150:
  ret void, !dbg !1067
}

define linkonce_odr dso_local void @std::enable_if<__is_swappable<Tile>::value, void>::type std::swap<Tile, 10000ul>(Tile (&) [10000ul], Tile (&) [10000ul])(ptr noundef nonnull align 4 dereferenceable(280000) %0, ptr noundef nonnull align 4 dereferenceable(280000) %1) #6 comdat !dbg !1068 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1082, metadata !DIExpression()), !dbg !1083
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1086, metadata !DIExpression()), !dbg !1090
  store i64 0, ptr %5, align 8, !dbg !1090
  br label %6, !dbg !1091

6:
  %7 = load i64, ptr %5, align 8, !dbg !1092
  %8 = icmp ult i64 %7, 10000, !dbg !1094
  br i1 %8, label %9, label %19, !dbg !1095

9:
  %10 = load ptr, ptr %3, align 8, !dbg !1096
  %11 = load i64, ptr %5, align 8, !dbg !1097
  %12 = getelementptr inbounds [10000 x %struct.Tile], ptr %10, i64 0, i64 %11, !dbg !1096
  %13 = load ptr, ptr %4, align 8, !dbg !1098
  %14 = load i64, ptr %5, align 8, !dbg !1099
  %15 = getelementptr inbounds [10000 x %struct.Tile], ptr %13, i64 0, i64 %14, !dbg !1098
  call void @std::enable_if<__and_<std::__not_<std::__is_tuple_like<Tile> >, std::is_move_constructible<Tile>, std::is_move_assignable<Tile> >::value, void>::type std::swap<Tile>(Tile&, Tile&)(ptr noundef nonnull align 4 dereferenceable(28) %12, ptr noundef nonnull align 4 dereferenceable(28) %15) #7, !dbg !1100
  br label %16, !dbg !1100

16:
  %17 = load i64, ptr %5, align 8, !dbg !1101
  %18 = add i64 %17, 1, !dbg !1101
  store i64 %18, ptr %5, align 8, !dbg !1101
  br label %6, !dbg !1102

19:
  ret void, !dbg !1105
}

declare void @flush()() #5

define dso_local { i64, i64 } @nextRGB(RGB)(i64 %0, i64 %1) #6 !dbg !1106 {
  %3 = alloca %struct.RGB, align 4
  %4 = alloca %struct.RGB, align 4
  %5 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %5, align 4
  %6 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 1
  store i64 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1109, metadata !DIExpression()), !dbg !1110
  %7 = getelementptr inbounds %struct.RGB, ptr %3, i32 0, i32 0, !dbg !1111
  %8 = getelementptr inbounds %struct.RGB, ptr %4, i32 0, i32 0, !dbg !1112
  %9 = load i32, ptr %8, align 4, !dbg !1112
  %10 = add nsw i32 %9, 19, !dbg !1113
  store i32 %10, ptr %7, align 4, !dbg !1111
  %11 = getelementptr inbounds %struct.RGB, ptr %3, i32 0, i32 1, !dbg !1111
  %12 = getelementptr inbounds %struct.RGB, ptr %4, i32 0, i32 1, !dbg !1114
  %13 = load i32, ptr %12, align 4, !dbg !1114
  %14 = add nsw i32 %13, 18, !dbg !1115
  store i32 %14, ptr %11, align 4, !dbg !1111
  %15 = getelementptr inbounds %struct.RGB, ptr %3, i32 0, i32 2, !dbg !1111
  %16 = getelementptr inbounds %struct.RGB, ptr %4, i32 0, i32 2, !dbg !1116
  %17 = load i32, ptr %16, align 4, !dbg !1116
  %18 = add nsw i32 %17, -12, !dbg !1117
  store i32 %18, ptr %15, align 4, !dbg !1111
  %19 = getelementptr inbounds %struct.RGB, ptr %3, i32 0, i32 3, !dbg !1111
  %20 = getelementptr inbounds %struct.RGB, ptr %4, i32 0, i32 3, !dbg !1118
  %21 = load i32, ptr %20, align 4, !dbg !1118
  %22 = add nsw i32 %21, 1, !dbg !1119
  store i32 %22, ptr %19, align 4, !dbg !1111
  %23 = load { i64, i64 }, ptr %3, align 4, !dbg !1120
  ret { i64, i64 } %23, !dbg !1120
}

declare void @putTile(int, int, unsigned char, unsigned char, unsigned char, unsigned char)(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #5

define linkonce_odr dso_local void @std::enable_if<__and_<std::__not_<std::__is_tuple_like<Tile> >, std::is_move_constructible<Tile>, std::is_move_assignable<Tile> >::value, void>::type std::swap<Tile>(Tile&, Tile&)(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %1) #6 comdat !dbg !1121 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.Tile, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1128, metadata !DIExpression()), !dbg !1129
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1132, metadata !DIExpression()), !dbg !1133
  %6 = load ptr, ptr %3, align 8, !dbg !1134
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 28, i1 false), !dbg !1134
  %7 = load ptr, ptr %4, align 8, !dbg !1135
  %8 = load ptr, ptr %3, align 8, !dbg !1136
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %7, i64 28, i1 false), !dbg !1137
  %9 = load ptr, ptr %4, align 8, !dbg !1138
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %5, i64 28, i1 false), !dbg !1139
  ret void, !dbg !1140
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
