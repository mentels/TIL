## Checkout a file from another branch

If you need a file's version from another branch you can do:

`git checkout SOURCE_BRANCH -- FILENAME`

e.g. if you want `router.ex` from the `experimental` branch to be checkout in the current branch: 

`git checkout experimental -- router.ex`

Ref: https://stackoverflow.com/questions/2364147/how-to-get-just-one-file-from-another-branch/2364223


