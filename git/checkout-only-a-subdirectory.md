# Checkout only a subdirectory

```
mkdir repo
cd repo
git init
git config core.sparseCheckout true
git remote add -f origin git://... # that will fetch the entire repo
echo "path/to/subdir/*" > .git/info/sparse-checkout
git checkout -b ... # ex: feature/add-button
```

This will checkout only a subtree defined by the `echo` command.
