defmodule ProblemModule do
  ## Fibonacci Sequence
  def fib(0), do: 0
  def fib(1), do: 1

  def fib(n), do: fib(n - 1) + fib(n - 2)

  ## iex(n)> ProblemModule.fib(10) = 55

  ## Factorial
  def fact(0), do: 1
  def fact(n) when n > 0 do
    n * fact(n - 1)
  end

  ## iex(n)> ProblemModule.fact(5) = 120
end
