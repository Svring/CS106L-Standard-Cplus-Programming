cmake_minimum_required(VERSION 3.0)
project(wikiracer)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(FetchContent)

FetchContent_Declare(cpr GIT_REPOSITORY https://github.com/libcpr/cpr.git GIT_TAG 6ea2dec23c3df14ac3b27b7d2d6bbff0cb7ba1b0)

FetchContent_MakeAvailable(cpr)

# adding all files
add_executable(main main.cpp wikiscraper.cpp.o error.cpp)

# another cpr? I don't really know what I've done cause this is beyond my knowledge
# but it works, nice.

target_link_libraries(main PRIVATE cpr::cpr)
