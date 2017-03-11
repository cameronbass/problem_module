defmodule ProblemModuleTest do
  use ExUnit.Case
  doctest ProblemModule

  test "#fib" do
    assert ProblemModule.fib(10) == 55
  end

  test "#Fact" do
    assert ProblemModule.fact(5) == 120
  end
end
