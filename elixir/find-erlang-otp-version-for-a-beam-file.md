# Find Erlang/OTP version for a BEAM file

Given we have `Elixir.Kernel.beam` and want to find out the version it was compiled with:

```erlang
7> {ok, {_, [{compile_info, Info}]}} = beam_lib:chunks('Elixir.Kernel', [compile_info]).
{ok,{'Elixir.Kernel',[{compile_info,[{options,[debug_info]},
                                     {version,"7.0.4"},
                                     {source,"/Users/szymonmentel/.kiex/builds/elixir-git/lib/elixir/lib/kernel.ex"}]}]}}
8> CompilerVersion = proplists:get_value(version, Info).
"7.0.4"
```

Now we know that the file was compile with compiler version `7.0.4` which comes from Erlang/OTP 20.0.
