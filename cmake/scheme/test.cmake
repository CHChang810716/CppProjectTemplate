include(${CMAKE_CURRENT_LIST_DIR}/exe.cmake)
target_link_libraries(${AKT_TARGET} PRIVATE GTest::gtest_main)
add_test(
    NAME ${AKT_TARGET}
    COMMAND ${CMAKE_INSTALL_PREFIX}/bin/${AKT_TARGET}
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/workdir 
)