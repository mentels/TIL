## Fixup and Autosquash

`git commit --fixup <previous commit>`

Creates a commit that is intended to fix another one, previous in the history. Resulting
commit messages looks like `fixup! <previous commit message>`.

Then when rebasing with `git commit rebase -i --autosquash <previous commit that is to be unchanged>`
the _fixup commit_ will be automatically handled.

More at: https://fle.github.io/git-tip-keep-your-branch-clean-with-fixup-and-autosquash.html


