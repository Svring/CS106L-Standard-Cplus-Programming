cmake_minimum_required(VERSION 3.0)
project(wikiracer)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(cpr_DIR /Users/linkling/Code/CS106L/cs106L-assignment1-master/cpr-master)

find_package(cpr CONFIG REQUIRED)

# adding all files
add_executable(main main.cpp wikiscraper.cpp.o error.cpp)

# another apr? I don't really know what I've done cause this is beyond my knowledge
# but it works, nice.
include(FetchContent)

FetchContent_Declare(cpr GIT_REPOSITORY https://github.com/libcpr/cpr.git GIT_TAG 6ea2dec23c3df14ac3b27b7d2d6bbff0cb7ba1b0)

FetchContent_MakeAvailable(cpr)

target_link_libraries(main PRIVATE cpr::cpr)
