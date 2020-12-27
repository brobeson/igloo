add_library(
  igloo
  igloo/shader.cpp
  igloo/shader.h
)
add_library(igloo::igloo ALIAS igloo)
target_include_directories(
  igloo
  PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>"
)