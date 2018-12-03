# Keep going when a target fails or ignore specific errors of a recipe

To let specific commands in a recepie crash prefix them with `-`, e.g.

```make
clean:
        -rm -f *.o
```

To let the whole targets crash run make with `-k` (`--keep-going`), e.g.

`make -k`

More at https://www.gnu.org/software/make/manual/html_node/Options-Summary.html#Options-Summary.