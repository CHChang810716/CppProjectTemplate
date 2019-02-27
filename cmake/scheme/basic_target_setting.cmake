target_include_directories(${AKT_TARGET} PUBLIC 
    $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/src>
    $<INSTALL_INTERFACE:include>
)
target_link_libraries(${AKT_TARGET} PRIVATE Threads::Threads)
target_compile_options(${AKT_TARGET} PUBLIC -ftemplate-backtrace-limit=0)
if(UNIX)
    target_link_libraries(${AKT_TARGET} PRIVATE ${CMAKE_DL_LIBS} rt)
endif()