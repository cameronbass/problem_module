defmodule ProjectEuler do
  def solve(limit) do
    multiple_of_3_or_5? = fn(n) -> (rem(n, 3) == 0 || rem(n, 5) == 0) end
    Enum.sum(for n <- limit, multiple_of_3_or_5?.(n), do: n)
  end

  def print do
    IO.puts solve(1000)
  end
end
