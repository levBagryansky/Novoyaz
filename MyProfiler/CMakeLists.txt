set(CMAKE_CXX_STANDARD 20)

find_package(LLVM CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

add_library(profiler SHARED src/pass_start.cpp)
target_include_directories(profiler PRIVATE ${LLVM_INCLUDE_DIRS})
#target_sources(profiler PRIVATE
#    resources/c_examples/hello.c
#)
target_link_libraries(profiler PRIVATE LLVM)

add_custom_target(run_profiler
    COMMENT "Instrumenting ${SOURCE}"
    COMMAND clang -Xclang -load -Xclang $<TARGET_FILE_DIR:profiler>/$<TARGET_FILE_NAME:profiler> ${SOURCE} -flegacy-pass-manager
)
