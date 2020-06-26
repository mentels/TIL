## Stage only deleted files

`git ls-files --deleted | xargs git add`

optionally a subfolder  can be added:

`git ls-files --deleted -- lib/foo | xargs git add`

More [here](https://stackoverflow.com/questions/43161383/stage-only-deleted-files-with-git-add)


