defmodule ProjectEulerTest do
  use ExUnit.Case

  test "for problem 1" do
    assert ProjectEuler.solve(10) == 23
  end
end
