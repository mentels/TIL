## Undo rebase

First find the HEAD from before the rebase using `reflog`:

`git reflog`

Once found, reset to that head, e.g.: `git reset --hard HEAD@{14}`

Ref: https://stackoverflow.com/questions/134882/undoing-a-git-rebase


