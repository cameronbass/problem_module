defmodule ProjectEuler do

  # Problem 1 - Multiples Of 3 and 5

  def solve(limit) do
    range = 1..limit
    multiple_of_3_or_5? = fn(n) -> (rem(n, 3) == 0 || rem(n, 5) == 0) end
    for(n <- range, multiple_of_3_or_5?.(n), do: n) |> Enum.reduce(0, fn(x, y) -> (x + y) end)
  end

  def print do
    IO.puts solve(999)
  end

  # ---------------------------------

  # Problem 2 - Even Fibonacci Numbers
  # def fib(n) when n <= 1, do: n
  # def fib(n) do
  #   Enum.each(fib(n - 1) + fib(n - 2))
  # end


  # problem 4 - Largest Palindrome Product
    def is_palindrome?(n) do
      Integer.to_string(n) == Integer.to_string(n)|> String.reverse
    end

    def multiply do
      range_1 = 100..999
      range_2 = 100..999

      Enum.max(for n <- range_1, m <- range_2, is_palindrome?(n * m), do: n * m)
    end
end
