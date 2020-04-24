## `nil` can give unexpected results combined with the Access protocol

```elixir
kw = [ala: 11, ela: 12]
# => [ala: 11, ela: 12]
kw[:ola]
# => nil # that's fine
kw[nil]
# => nil # that's not bad
nil[:ola]
# => nil # that can be painful
```

The last case can be problematic when:

```elixir
Application.get_env(:logger, :translators)[Logger.Translator]
# => :translate
# but when a type sneaks in (see `translator**x**`)
Application.get_env(:logger, :translatorsx)[Logger.Translator]
# => nil # we get nil and it may seem that simply the Logger.Translator is missing
```

