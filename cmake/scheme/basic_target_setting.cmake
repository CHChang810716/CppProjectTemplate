target_include_directories(${AKT_TARGET} PUBLIC 
    $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/src>
    $<INSTALL_INTERFACE:include>
)
akt_show_var(AKT_IMPORTED_TARGETS)
target_link_libraries(${AKT_TARGET} PRIVATE ${AKT_IMPORTED_TARGETS} ${AKT_IMPORTED_TARGETS})
if(GCC)
    target_compile_options(${AKT_TARGET} PUBLIC -ftemplate-backtrace-limit=0)
endif()
if(UNIX)
    target_link_libraries(${AKT_TARGET} PRIVATE ${CMAKE_DL_LIBS} rt)
endif()

akt_show_var(AKT_TARGET)