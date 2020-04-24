## Use `with` to pattern match only on a success case

To pattern match only on a success case like `{:ok, res}` without
matching on `{:error, error}` with can be used:

```elixir
with {:ok, "cool!"} <- Enum.random([{:ok, "cool!"}, {:error, "boom!"}]) do
 :haha
end
# => {:error, "boom!"} or :haha
```

vs

```elixir
case Enum.random([{:ok, "cool!"}, {:error, "boom!"}]) do
  {:ok, "cool!"} -> 
    :haha
  {:error, _} = err -> 
    err
end
```
