# Print Lines From a File Between Patterns

To print lines between patterns `19-Sep-2018::00:00:00` and `19-Oct-2018::00:01:02`
the following command can be used:

```bash
awk '/19-Sep-2018::00:00:00/{flag=1}/19-Oct-2018::00:01:02/{flag=0;next}flag' RABBIT\~2.LOG > tmp.txt
```

`{flag=1}` assings 1 to `flag` variable and includes the line that matched the first pattern. The `{flag=0;next}` set the `flag` to 0 and skips the matched line. The last occurence of `flag` is print a line if the `flag` variable is set.
