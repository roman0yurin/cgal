include_directories(${CMAKE_CGAL_SOURCE_DIR}/src/)

file(GLOB_RECURSE SRCS ./*.cpp)
file(GLOB_RECURSE HDRS ./*.h)

add_library(surface_mesh STATIC ${SRCS} ${HDRS})

