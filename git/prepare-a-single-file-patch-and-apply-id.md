# Prepare a single-file patch and apply it

To create a patch:

```bash
git format-patch 15a034e~1...b9172b2 --stdout > feature.patch
```

The first commit in the range specification is the earlier one.


Without the `--stdout` there would be one file per commit.

To apply it:

```bash
git am feature.patch
```

or with several patch files:

```bash
git am *.patch
```

If the patch doesn't apply fall back on 3-way merge (possibly leaving merge markers):

```bash
git am -3 feature.patch
```
