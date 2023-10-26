set(CMAKE_CXX_STANDARD 20)

find_package(LLVM CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

add_library(profiler SHARED  src/pass_profile.cpp src/log.c)
target_include_directories(profiler PRIVATE ${LLVM_INCLUDE_DIRS})
target_link_libraries(profiler PRIVATE LLVM)

add_custom_target(run_profiler
    COMMENT "Instrumenting ${SOURCE}"
    COMMAND clang -Xclang -load -Xclang $<TARGET_FILE_DIR:profiler>/$<TARGET_FILE_NAME:profiler> ${SOURCE} /home/tardis3/Novoyaz/MyProfiler/src/log.c -flegacy-pass-manager
)

set(OUT_MAIN_ ${CMAKE_CURRENT_BINARY_DIR}/main_.o)

add_custom_target(profiled_main_
        COMMENT "Instrumenting ${SOURCE}"
        OUTPUT ${OUT_MAIN_}
        COMMAND clang -Xclang -load -Xclang $<TARGET_FILE_DIR:profiler>/$<TARGET_FILE_NAME:profiler> ${CMAKE_SOURCE_DIR}/Atoms/src/main_.cpp ${CMAKE_CURRENT_SOURCE_DIR}/src/log.c -c -O2 -flegacy-pass-manager
        )
