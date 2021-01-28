## Row-level locking

To prevent a selected row from being locked, modified or deleted by other transactions until the current transaction ends, `FOR UPDATE` lock is required.

E.g.

```elixir
import Ecto.Query

def get_for_update(data)
    %User{}
    |> q_by_data()
    |> lock("FOR UPDATE")
    |> Repo.one() 
end

# until this finishes none take the same lock
Repo.transaction(fn ->
    user_data
    |> get_for_update()
    |> manipulate_user()
    |> Repo.insert!()
end)
```

More at: https://www.postgresql.org/docs/current/explicit-locking.html#LOCKING-ROWS


