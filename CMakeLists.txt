cmake_minimum_required(VERSION 3.19)
project(
  igloo
  VERSION 0.0.0
  DESCRIPTION "A C++ wrapper around OpenGL"
  HOMEPAGE_URL "https://github.com/brobeson/igloo"
  LANGUAGES CXX
)

include(cmake/igloo_quality.cmake)

add_subdirectory(igloo)
include(CTest)
if(BUILD_TESTING)
  add_subdirectory(unit_tests)
endif()

# TODO - Add travis-ci.
# TODO - Add appveyor.
# TODO - Add address sanitizer.
# TODO - Add ub sanitizer.
# TODO - Add unit test coverage.
# TODO - Add sphinx/breathe.
# TODO - Have catch search for unit tests.
# TODO - Add packaging.