cmake_minimum_required(VERSION 3.10.0)
include(cmake/HunterGate.cmake)
set(
    HUNTER_CACHE_SERVERS
    "https://github.com/CHChang810716/hunter-binary-cache"
    CACHE
    STRING
    "Hunter cache servers"
)
HunterGate(
    URL "git@github.com:CHChang810716/hunter.git"
    SHA1 9e6a69835e0bd9fb6ed6d031434e2162f83648e8
    FILEPATH ${CMAKE_CURRENT_LIST_DIR}/cmake/hunter_config.cmake
)

project(CppProjectTemplate
    LANGUAGES C CXX 
    VERSION 0.1.0.0
)
option(BUILD_TEST   "Build project with test"   OFF)
option(INSTALL_DEPS "Install dependensies"      OFF)

include(cmake/packages.cmake)
include(cmake/src.cmake)
include(cmake/ide.cmake)
include(cmake/install.cmake)
