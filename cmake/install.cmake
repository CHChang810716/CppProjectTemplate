include(GNUInstallDirs)
akt_cmake_package()
configure_package_config_file(
    cmake/Config.cmake.in
    ${AKT_PROJECT_CONFIG}
    INSTALL_DESTINATION ${AKT_CONFIG_INSTALL_DIR}
)
write_basic_package_version_file(
    ${AKT_CONFIG_VERSION} COMPATIBILITY SameMajorVersion
)
if(INSTALL_DEPS)
    akt_hunter_get_install_root(hunter_install_dir)
    list(APPEND BUNDLE_RT_DIRS ${hunter_install_dir}/bin)
    list(APPEND BUNDLE_RT_DIRS ${hunter_install_dir}/lib)
    configure_file(cmake/bundle.cmake.in ${CMAKE_BINARY_DIR}/bundle.cmake @ONLY)
endif()



install(
    FILES ${AKT_PROJECT_CONFIG}
    DESTINATION ${AKT_CONFIG_INSTALL_DIR}
)
install(
    TARGETS ${exe_targets} ${lib_targets} ${test_targets}
    EXPORT ${AKT_TARGETS_EXPORT}
    BUNDLE DESTINATION . COMPONENT Runtime
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR} COMPONENT Runtime
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} COMPONENT Library
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR} COMPONENT Develop
)
file(GLOB_RECURSE headers 
    ${CMAKE_SOURCE_DIR}/src/*.h 
    ${CMAKE_SOURCE_DIR}/src/*.hpp 
)
foreach(header ${headers})
    string(REPLACE 
        "${CMAKE_SOURCE_DIR}/src" "include" 
        dest_header 
        ${header}
    )
    get_filename_component(inst_des ${dest_header} DIRECTORY)
    install(FILES ${header}
        DESTINATION ${inst_des})
endforeach()

# install(
#     DIRECTORY include 
#     DESTINATION ${CMAKE_INSTALL_PREFIX} COMPONENT Develop
# )
install(
    EXPORT ${AKT_TARGETS_EXPORT}
    NAMESPACE ${AKT_NAMESPACE}
    DESTINATION ${AKT_CONFIG_INSTALL_DIR}
)
if(INSTALL_DEPS)
    install(
        SCRIPT ${CMAKE_BINARY_DIR}/bundle.cmake
        COMPONENT Dependencies
    )
endif()

unset(exe_targets CACHE) 
unset(lib_targets CACHE) 
unset(test_targets CACHE)