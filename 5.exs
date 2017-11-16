defmodule Euler5 do
  def lcm(a, b) do
    Integer.floor_div(abs(a * b), Integer.gcd(a, b))
  end
  def lcms(n) do
    Enum.reduce(1..n, &lcm/2)
  end
end

IO.puts(Euler5.lcms 20)
