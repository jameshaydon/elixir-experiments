defmodule Simple do

  # Functions can be defined by recursion, and can have multiple heads like in
  # Haskell. They can also have guards, but the expressions are a bit limited.
  def sum_to(0) do
    0
  end
  def sum_to(n) when n > 0 do
    n + sum_to(n - 1)
  end

  # A more compact notation is also available.
  def factorial(0), do: 1
  def factorial(n) when n > 0, do: n * factorial(n-1)

  # Some destructuring niceties. This function is tail-recursive and hence will
  # be compiled to a loop.
  def print_all([]), do: IO.puts("That's all folks!")
  def print_all([x|xs]) do
    IO.puts(x)
    print_all(xs)
  end

end

IO.puts Simple.sum_to(10)
IO.puts Simple.factorial(5)
Simple.print_all([1,2,3,4])
