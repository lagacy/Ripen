
cmake_minimum_required (VERSION 3.8)

file(GLOB_RECURSE SFCollection "*.cpp")
file(GLOB_RECURSE HFCollection "*.h")

add_executable (Ripen ${SFCollection})

target_include_directories(Ripen PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/Public")


