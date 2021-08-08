cmake_minimum_required(VERSION 3.10.0)
if(POLICY CMP0074)
  cmake_policy(SET CMP0074 NEW)  # find_package() ought to search _ROOT variables
endif()
include(cmake/HunterGate.cmake)
set(
    HUNTER_CACHE_SERVERS
    "https://github.com/CHChang810716/hunter-binary-cache"
    CACHE
    STRING
    "Hunter cache servers"
)
HunterGate(
    URL "https://github.com/CHChang810716/hunter/archive/refs/tags/v0.23.312-chc.tar.gz"
    SHA1 "08c490475de7c8d4713defb6f71eb427f1c42c6c"
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
