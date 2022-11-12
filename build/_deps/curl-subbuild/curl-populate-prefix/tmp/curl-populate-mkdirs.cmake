# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/linkling/Code/CS106L/build/_deps/curl-src"
  "/Users/linkling/Code/CS106L/build/_deps/curl-build"
  "/Users/linkling/Code/CS106L/build/_deps/curl-subbuild/curl-populate-prefix"
  "/Users/linkling/Code/CS106L/build/_deps/curl-subbuild/curl-populate-prefix/tmp"
  "/Users/linkling/Code/CS106L/build/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp"
  "/Users/linkling/Code/CS106L/build/_deps/curl-subbuild/curl-populate-prefix/src"
  "/Users/linkling/Code/CS106L/build/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/linkling/Code/CS106L/build/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/linkling/Code/CS106L/build/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
