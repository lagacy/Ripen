
cmake_minimum_required (VERSION 3.8)

project(Ripen)
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY  ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY  ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY  ${CMAKE_BINARY_DIR}/lib)
set(EXTERN_DIR_PATH "${PROJECT_SOURCE_DIR}/extern" CACHE PATH "Path to the external directory")

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/build_files")
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/build_files/cmake_scripts")

include(prepdef)
include(functions)

# avoid having empty buildtype
if(NOT DEFINED CMAKE_BUILD_TYPE_INIT)
  set(CMAKE_BUILD_TYPE_INIT "Release")
endif()

# See cmakelists in src folder
add_subdirectory("source")

########################################################
#--------------------GTEST SETUP-----------------------#
########################################################

option(WITH_TESTS "Setup and build all unit test from projects" ON)

if(WITH_TESTS)
add_subdirectory("${EXTERN_DIR_PATH}/googletest/")
enable_testing()
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

add_subdirectory("tests")
endif(WITH_TESTS)
#------------------------------------------------------#

########################################################
#--------------------External Dep----------------------#
########################################################

add_subdirectory("${EXTERN_DIR_PATH}/cxxopts")

########################################################
#--------------------Create Executable-----------------#
########################################################
add_executable (Ripen ${RIPEN_SF})


