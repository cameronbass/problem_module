defmodule ProblemModule do
  ## Fibonacci Sequence
  def fib(0), do: 0
  def fib(1), do: 1

  def fib(n), do: fib(n - 1) + fib(n - 2)

  ## iex(n)> ProblemModule.fib(10) = 55
end
