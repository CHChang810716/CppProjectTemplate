hunter_add_package(Arkitekto)
find_package(Arkitekto CONFIG REQUIRED)
if(BUILD_TEST)
    hunter_add_package(GTest)
    find_package(GTest CONFIG REQUIRED)
    akt_imported_targets_exclude(GTest::gtest_main GTest::gmock_main)
endif()
find_package(Threads REQUIRED)

# Boost
hunter_add_package(Boost COMPONENTS 
    iostreams
    program_options
    serialization
    system
    filesystem
)
find_package(Boost CONFIG REQUIRED COMPONENTS
    iostreams
    program_options
    serialization
    system
    filesystem
)

# OpenCV
hunter_add_package(OpenCV)
find_package(OpenCV CONFIG REQUIRED)

# json
hunter_add_package(nlohmann_json)
find_package(nlohmann_json CONFIG REQUIRED)