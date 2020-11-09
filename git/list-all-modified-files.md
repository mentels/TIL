## List all modified files

`git ls-files -m`

then using grep we can easily just diff one file

```shell
git diff `git ls-files -m | grep view`
```


