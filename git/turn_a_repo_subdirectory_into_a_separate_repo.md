## Trun a repo subdirectory into a separate repo

The local file structure will be "truncated" to the subdirectory
of choice.

```bash
git  filter-branch --prune-empty  --subdirectory-filter path/to/subdir
```

After running this command the contents of `path/to/subdir` will become the
root of the repo. What is left is to create a new remote for the new repo.

```bash
git remote set-url origin URL
```
