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
    SHA1 b476e026c5e6a5b81e27e1e2a7d62d92e2d28d90
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
include(cmake/test.cmake)
include(cmake/ide.cmake)
include(cmake/install.cmake)
