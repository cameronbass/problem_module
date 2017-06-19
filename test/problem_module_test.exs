defmodule ProblemModuleTest do
  use ExUnit.Case
  doctest ProblemModule

  test "#fib" do
    assert ProblemModule.fib(10) == 55
  end

  test "#Fact" do
    assert ProblemModule.fact(5) == 120
  end

  test "#purchase/1" do
    assert ProblemModule.purchase(%{apples: 4, orange: 3}) == 11
  end

  test "#purchase/2" do
    assert ProblemModule.purchase(%{orange: 2, banana: 10}, %{}) == 32
  end
end
