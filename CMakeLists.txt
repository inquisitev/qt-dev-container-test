cmake_minimum_required(VERSION 3.16)

project(qt_qml_tox_example
    VERSION 0.1.0
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(fmt CONFIG REQUIRED)
find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_add_executable(qt_qml_tox_example
    src/main.cpp
        src/main.qml
)


target_link_libraries(qt_qml_tox_example
    PRIVATE Qt6::Quick
    fmt::fmt
)

enable_testing()
add_test(
    NAME build_only
    COMMAND qt_qml_tox_example --help
)

