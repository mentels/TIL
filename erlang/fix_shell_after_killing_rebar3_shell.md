# Fix shell after killing rebar3 shell

When we run project with `reabr3 shell` and then kill the shell with `Ctrl^C+Ctrl^C`
the system shell gets broken. To fix it:

```bash
stty sane
```
