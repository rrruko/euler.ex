defmodule Euler4 do
  def is_palindrome?(s) do
    s == String.reverse(s)
  end

end

x = Enum.reverse(100..999)

y = for a <- x, b <- x, do: {a, b}

result = y
  |> Stream.map(fn {x, y} -> {x, y, x * y} end)
  |> Stream.filter(fn {a, b, c} -> Euler4.is_palindrome? (to_string c) end)
  |> Enum.sort(&(elem(&1, 2) >= elem(&2, 2)))

IO.puts(hd result)
