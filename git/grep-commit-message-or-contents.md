## Grep commit message or contents

### Log message

`git log --grep=word`

Will find all commits that contain *word* (no of occurrences of *word* changed).

### Commit contents

`git log -Sword` 

Will find all commits where the no of *word* occurrences changed.

`git log -Gregex`

Will find all commits where the *differences* matches the regex.

More at: https://stackoverflow.com/questions/1337320/how-to-grep-git-commit-diffs-or-contents-for-a-certain-word


