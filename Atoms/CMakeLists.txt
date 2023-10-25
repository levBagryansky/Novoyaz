set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include(FetchContent)
FetchContent_Declare(SFML
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_TAG 2.6.x)
FetchContent_MakeAvailable(SFML)

include_directories(includes)

add_library(simlib)
target_sources(simlib PRIVATE
        src/sim.cpp)
target_link_libraries(simlib PRIVATE sfml-graphics)

add_executable(Atoms src/main.cpp src/main_.cpp)
target_link_libraries(Atoms PRIVATE simlib)
target_compile_features(Atoms PRIVATE cxx_std_20)

add_custom_target(run_Atoms
        COMMAND ../bin/Atoms)
add_dependencies(run_Atoms Atoms)

install(TARGETS Atoms)

if (ATOMS_PROFILE)
    string(TIMESTAMP t)
    message(STATUS "local time: ${t}")

    set(DIR_MAIN_ ${CMAKE_BINARY_DIR}/MyProfiler/main_.o)
    set_property(SOURCE ${DIR_MAIN_} PROPERTY GENERATED 1)
    add_executable(Atoms_log src/main.cpp ${DIR_MAIN_} ${CMAKE_SOURCE_DIR}/MyProfiler/src/log.c)
    target_link_libraries(Atoms_log PRIVATE simlib)
    target_compile_features(Atoms_log PRIVATE cxx_std_20)

    if (LOG_NAME)
        set(LOG ${LOG_NAME})
    else()
        set(LOG log_${t})
    endif ()
    add_custom_target(run_Atoms_log
            COMMAND ../bin/Atoms_log > ${CMAKE_BINARY_DIR}/${LOG})

    add_dependencies(Atoms_log profiled_main_)
    add_dependencies(run_Atoms_log Atoms_log)
endif ()
