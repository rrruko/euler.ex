require Integer

defmodule Euler2 do
  def fib(n) do
    case n do
      0 -> 0
      1 -> 1
      x -> fib(x-1) + fib(x-2)
    end
  end
end

Stream.unfold(0, fn n -> {n + 1, n + 1} end)
  |> Stream.map(&Euler2.fib/1)
  |> Stream.filter(fn n -> Integer.is_even(n) end)
  |> Stream.take_while(fn n -> n < 4_000_000 end)
  |> Enum.sum()
  |> IO.puts
