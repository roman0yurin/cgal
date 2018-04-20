# Top level CMakeLists.txt for CGAL-branchbuild
message( "== CMake setup ==" )
project(CGAL CXX C)
project(PostgisC60 C CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_C_STANDARD 11)


#Устанавливаем корневые папки для модуля CGAL
set(CMAKE_CGAL_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(CMAKE_CGAL_BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR})

# Minimal version of CMake:
cmake_minimum_required(VERSION 3.5)

set( CGAL_BRANCH_BUILD ON CACHE INTERNAL "Create CGAL from a Git branch" FORCE)

include(${CMAKE_CGAL_SOURCE_DIR}/Installation/cmake/modules/CGAL_SCM.cmake)

# add option for duplicate file detection
option( CGAL_REPORT_DUPLICATE_FILES "Switch on to start (naive) detection of duplicate source- and headerfiles in packages" OFF)

message( "== CMake setup (DONE) ==\n" )

# Enable testing with BUILD_TESTING
option(BUILD_TESTING "Build the testing tree." OFF)
include(CTest)

# and finally start actual build
add_subdirectory( Installation )
add_subdirectory( Documentation/doc)
