set(AKT_SRC_ROOT_DIR "${CMAKE_SOURCE_DIR}/src")
if(BUILD_TEST)
    enable_testing()
endif()
if(NOT BUILD_TEST)
    akt_exclude_targets_in(${CMAKE_SOURCE_DIR}/src/test)
endif()
akt_cmake_based_add_targets_in(${CMAKE_SOURCE_DIR}/src/CppProjectTemplate/cmakeBasedAddTargetsIn)
akt_cmake_based_add_targets_in(${CMAKE_SOURCE_DIR}/src/test)
akt_src_based_add_targets_in(${CMAKE_SOURCE_DIR}/src/CppProjectTemplate/srcBasedAddTargetsIn ${CMAKE_SOURCE_DIR}/cmake/scheme/exe.cmake)