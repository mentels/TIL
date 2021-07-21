## Work with multiple branches at a time


Sometimes it's useful to have access to more than one branch at a time w/o an additional clone of a repo.

That can be done with the [`worktree`](https://git-scm.com/docs/git-worktree) command.

E.g. if you work on a branch and want to copy-paste contents of a file on another branch you can do:

```bash
# git worktree add <path> <commit-ish>
git worktree add ../my_repo another_branch
# do the work
git worktree remove ../my_repo
```

To easily switch between the worktrees use the [wt](https://github.com/yankeexe/git-worktree-switcher) utility:

```
wt list
wt develop
```