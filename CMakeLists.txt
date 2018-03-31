# Top level CMakeLists.txt for CGAL-branchbuild
message( "== CMake setup ==" )
project(CGAL CXX C)
project(PostgisС60 C CXX)
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

# option for branch build

option( CGAL_BRANCH_BUILD "Create CGAL from branch" ON)
mark_as_advanced( CGAL_BRANCH_BUILD )

include(${CMAKE_CGAL_SOURCE_DIR}/Installation/cmake/modules/CGAL_SCM.cmake)

# add option for duplicate file detection
option( CGAL_REPORT_DUPLICATE_FILES "Switch on to start (naive) detection of duplicate source- and headerfiles in packages" OFF)

message( "== CMake setup (DONE) ==\n" )
# and finally start actual build
add_subdirectory( Installation )
add_subdirectory( Documentation/doc)
