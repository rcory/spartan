cmake_minimum_required(VERSION 2.6.0)
cmake_policy(SET CMP0045 OLD)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

include_directories(${CMAKE_INSTALL_PREFIX})
include_directories(${CMAKE_INSTALL_PREFIX}/include)
link_directories(${CMAKE_INSTALL_PREFIX}/lib)


find_package(drake REQUIRED)
find_package(VTK REQUIRED)


add_executable(demo TestUserShader.cxx)
target_link_libraries(demo drake::drake ${VTK_LIBRARIES})
install(TARGETS demo DESTINATION bin)
