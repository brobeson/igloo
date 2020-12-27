#define CATCH_CONFIG_MAIN
#include "igloo/shader.h"
#include <catch2/catch.hpp>

SCENARIO("A user can construct a shader object.")
{
  WHEN("A shader is constructed")
  {
    const igloo::shader shader;
    THEN("The ID is correct.") { CHECK(shader.id() == 0); }
  }
}