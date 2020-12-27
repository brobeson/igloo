find_program(clang_tidy clang-tidy)
if(clang_tidy)
  if(NOT DEFINED CMAKE_CXX_CLANG_TIDY)
    set(CMAKE_CXX_CLANG_TIDY "${clang_tidy}" "-p" "${CMAKE_BINARY_DIR}")
  endif()
else()
  message(
    AUTHOR_WARNING
    "I could not find clang-tidy. Clang-tidy checks are disabled."
  )
endif()