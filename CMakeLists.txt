cmake_minimum_required(VERSION 3.16)
project(NOVOYAZ LANGUAGES C CXX)

if (ATOMS_PROFILE)
    add_subdirectory(MyProfiler)
endif()
add_subdirectory(Atoms)
