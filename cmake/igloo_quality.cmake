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

find_program(cppcheck cppcheck)
if(cppcheck)
  if(NOT DEFINED CMAKE_CXX_CPPCHECK)
    set(
      CMAKE_CXX_CPPCHECK
      "${cppcheck}"
      --enable=all
      --error-exitcode=1
      --project=${CMAKE_BINARY_DIR}/compile_commands.json
    )
  endif()
else()
  message(AUTHOR_WARNING "I could not find cppcheck. Cppcheck is disabled.")
endif()

find_program(iwyu iwyu)
if(iwyu)
  if(NOT DEFINED CMAKE_CXX_INCLUDE_WHAT_YOU_USE)
    set(CMAKE_CXX_INCLUDE_WHAT_YOU_USE ${iwyu})
  endif()
else()
  message(
    AUTHOR_WARNING
    "I could not find Include What You Use. IWYU analysis is disabled."
  )
endif()

find_program(lizard lizard)
if(lizard)
  add_custom_target(
    lizard
    ALL
    COMMAND
      ${lizard}
      --CCN 10
      --length 20
      --arguments 5
      --warnings_only
      --modified
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
  )
else()
  message(
    AUTHOR_WARNING
    "I could not find Lizard. Complexity analysis is disabled."
  )
endif()