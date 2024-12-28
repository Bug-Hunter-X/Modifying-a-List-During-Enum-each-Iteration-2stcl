```elixir
list = [1, 2, 3, 4, 5]

# Use Enum.filter to create a new list excluding the element
new_list = Enum.filter(list, fn x -> x != 3 end)

IO.inspect new_list # Output: [1, 2, 4, 5]

#Alternative using Enum.reduce
new_list2 = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
IO.inspect new_list2 # Output: [5, 4, 2, 1]
```