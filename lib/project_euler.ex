defmodule ProjectEuler do

  # Problem 1

  def solve(limit) do
    range = 1..limit
    multiple_of_3_or_5? = fn(n) -> (rem(n, 3) == 0 || rem(n, 5) == 0) end
    for(n <- range, multiple_of_3_or_5?.(n), do: n) |> Enum.reduce(0, fn(x, y) -> (x + y) end)
  end

  def print do
    IO.puts solve(999)
  end

  # ---------------------------------

  # Problem 2

  
end
