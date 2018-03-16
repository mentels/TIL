# Print a range of commands from history

Run `history` to find the range beginning and end:

```bash
$ history
11593  edocker150 help volume create
11594  edocker150 volume create cassandra-1
11595  edocker150 volume create cassandra-2
11596  edocker150 volume create cassandra-3
11597  edocker150 volume inspect cassandra-1
11598  man fc
```

Select only the range you want and get rid of the numbers:

```
fc -l 11594 11597 | sed -e 's/^[0-9]*  //'
```
