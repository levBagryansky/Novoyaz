cmake_minimum_required(VERSION 3.16)
project(Atoms LANGUAGES CXX)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include(FetchContent)
FetchContent_Declare(SFML
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_TAG 2.6.x)
FetchContent_MakeAvailable(SFML)

include_directories(includes)
add_executable(Atoms src/main.cpp)
target_link_libraries(Atoms PRIVATE sfml-graphics)
target_compile_features(Atoms PRIVATE cxx_std_17)
install(TARGETS Atoms)

add_custom_target(run_Atoms
    COMMAND bin/Atoms)
