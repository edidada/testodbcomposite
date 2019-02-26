cmake_minimum_required(VERSION 3.13)
project(testodbcomposite)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -DDATABASE_MYSQL")

add_executable(testodbcomposite driver.cxx person-odb.cxx)

target_link_libraries(testodbcomposite libodb-mysql.so)

target_link_libraries(testodbcomposite libodb.so)
