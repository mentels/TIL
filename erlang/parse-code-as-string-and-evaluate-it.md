# Parse Code as String and Evaluate it

```erlang
2> {ok, Tokens, _} = erl_scan:string("(fun() -> true end)().").
{ok,[{'(',1},
     {'fun',1},
     {'(',1},
     {')',1},
     {'->',1},
     {atom,1,true},
     {'end',1},
     {')',1},
     {'(',1},
     {')',1},
     {dot,1}],
    1}
3> {ok, Parsed} = erl_parse:parse_exprs(Tokens).
{ok,[{call,1,
           {'fun',1,{clauses,[{clause,1,[],[],[{atom,1,true}]}]}},
           []}]}
4> {value, Result, _} = erl_eval:exprs(Parsed, []).
{value,true,[]}
```
