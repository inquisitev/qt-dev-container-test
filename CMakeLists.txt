cmake_minimum_required(VERSION 3.16)

project(qt_qml_tox_example
    VERSION 0.1.0
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)

find_package(fmt CONFIG REQUIRED)
find_package(Qt6 REQUIRED COMPONENTS Quick Test)

qt_add_executable(qt_qml_tox_example
    src/main.cpp
        src/main.qml
)


target_link_libraries(qt_qml_tox_example
    PRIVATE Qt6::Quick
    fmt::fmt
)

qt_add_executable(basicTest
    tests/test_testing.h
    tests/test_testing.cpp
)

target_link_libraries(basicTest
    PRIVATE Qt6::Quick
    Qt6::Test
)


enable_testing()
add_test(
    NAME basicTest
    COMMAND basicTest 
)

