## Skip a test in ExUnit

To skip a test in ExUnit it has to be tagged with `@tag :skip`.

E.g:

```elixir
@tag :skip
  test "the truth" do
    true == true
  end
```
