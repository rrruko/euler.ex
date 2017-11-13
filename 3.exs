defmodule Euler3 do
  def prime(n) do
    2..round(:math.pow(n, 0.5))
      |> Enum.filter(fn x -> rem(n, x) == 0 end)
      |> Enum.empty?
  end
end

1..10
  |> Enum.filter(fn x -> Euler3.prime(x) end)
  |> Enum.map(fn n -> IO.puts n end)
