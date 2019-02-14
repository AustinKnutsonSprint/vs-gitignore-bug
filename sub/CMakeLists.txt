cmake_minimum_required(VERSION 3.8)

project(example)

# Use C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Add source files
file(GLOB SOURCES 
   "src/*.cpp"
)

# Add executable
add_executable(example ${SOURCES})

# Add include dirs
target_include_directories(example PRIVATE
   "include"
)
