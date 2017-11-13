multiple3or5 = fn n -> rem(n, 3) == 0 or rem(n, 5) == 0 end

1..999
  |> Enum.filter(multiple3or5) 
  |> Enum.sum 
  |> IO.puts
