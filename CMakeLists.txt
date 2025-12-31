cmake_minimum_required(VERSION 3.16)

project(qt_qml_tox_example
    VERSION 0.1.0
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick Test)
find_package(GTest CONFIG REQUIRED)

qt_add_executable(qt_qml_tox_example
    src/main.cpp
    src/main.qml
)

install(TARGETS qt_qml_tox_example
  RUNTIME DESTINATION bin
)

target_link_libraries(qt_qml_tox_example
    PRIVATE Qt6::Quick
)

add_executable(basicTest
    tests/basic_test.cpp
)

target_link_libraries(basicTest
    PRIVATE Qt6::Quick
    GTest::gtest
    GTest::gtest_main
)

enable_testing()
include(GoogleTest)
gtest_discover_tests(basicTest)

set(CPACK_OUTPUT_FILE_PREFIX "${CMAKE_BINARY_DIR}/dist")
include(CPack)

set(CPACK_PACKAGE_NAME "qt-qml-tox-example")
set(CPACK_PACKAGE_VERSION "0.1.0")
set(CPACK_PACKAGE_VENDOR "YourCompany")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Qt6 QML example application")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "qt-qml-tox-example")

set(CPACK_GENERATOR "TGZ")

