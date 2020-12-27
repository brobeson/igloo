find_package(Catch2)
if(NOT Catch2_FOUND)
  message(
    FATAL_ERROR
    "I couldn't find Catch2. Install Catch2, or disable unit tests by setting"
    "BUILD_TESTING to false."
  )
endif()

set(tests shader_test)
foreach(test IN LISTS tests)
  add_executable(${test} ${test}.cpp)
  target_link_libraries(${test} PRIVATE igloo::igloo)
  add_test(NAME ${test} COMMAND ${test})
endforeach()