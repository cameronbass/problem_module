defmodule ProjectEulerTest do
  use ExUnit.Case

  test "for problem 1" do
    assert ProjectEuler.solve(9) == 23
  end

  # test "for problem 2" do
  #   assert ProjectEuler.fib(1) == 1
  #   assert ProjectEuler.fib(0) == 0
  #   assert ProjectEuler.fib(7) == 10
  # end

  test "for problem 4" do
    assert ProjectEuler.multiply == 906609
  end
end
