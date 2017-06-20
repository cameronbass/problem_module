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

  ## Spawn_process - Practice making 5 concurrent processes
  def add(a, b) do
    IO.puts(a + b)
  end

  ## Purchasing food from the grocery store.
  @list_items %{apples: 2, orange: 1, banana: 3}

  def purchase do
    "You should get FOOD!!!"
  end

  def purchase(items) do
    Enum.sum(for {name, quantity} <- items, do: @list_items[name] * quantity)
  end

  def purchase(items, _) do
    items
    |> Enum.to_list()
    |> List.foldl(0, fn {key, value}, acc -> @list_items[key] * value + acc end)
  end
end

IO.puts ProblemModule.purchase(%{apples: 8, orange: 4})
