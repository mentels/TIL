# Get the last match in a file and the following lines

Given the following file:

```
ala
11
12
ala
igi
szimi
ala
$
£
```

If we want to get the last occurrence of `ala` and the following lines
we can:

1. reverse the file with `tac` (or `tail -r` on OS X)
2. `grep` only the first occurrence of `ala` with `-m1` switch
3. get the previous lines with `-B2` switch:
4. get back the original order with `tail -r` if needed

```bash
tail -r tmp.txt | grep -m1 ala -B2 | tail -r
ala
$
£
```
