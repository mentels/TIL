## Revert merge commit

A merge commit has two parents. `git log HEAD` (or any other sha) will show `sha`s for these parents on the line starting with `Merge:`, e.g: `Merge: 8989ee0 7c6b236`.

Now with `git log 8989ee0` we can inspect the 1st parent.

If this is the one we want to revert to, `-m` allows us to chose the parent number.

E.g. `git revert HEAD -m 8989ee0`.


