defmodule ProblemModule do
  require IEx
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

  def filter_fun(list) do
    list
    |> Enum.filter_map(fn(x) -> rem(x, 2) == 0 end, &(&1 * 2))
    |> List.first
  end
end

# Anonymous Functions

fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

fb = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

(1 .. 100) |> Enum.map(fb) |> Enum.each(&IO.puts/1)


ProblemModule.filter_fun([1,2,3,4])

one_way = fn(a,b,c) -> (a + b) * c end
another_way = &((&1 + &2) * &3)
one_way.(2,3,5) ## 25
another_way.(2,3,5) ## 25
