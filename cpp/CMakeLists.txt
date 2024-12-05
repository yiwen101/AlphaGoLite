cmake_minimum_required(VERSION 3.10)  # 指定最低 CMake 版本
project(alphaGoLite)                   # 定义项目名称

# 设置 C++ 标准为 C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加可执行文件
add_executable(alphaGoLite game/board.cpp)