## Remove remote git tag

Pull tags: `git pull --tags`
Remove tag locally `git tag --delete 1.8`
Remove tag on remote:

```shell
git push --delete origin 1.8 # more expersive way
git push :1.8 # just push an empty reference
```


