# Iterate over pairs of items

This is how to iterate over pairs of items in bash:

```bash
for i in c,3 e,5; do
    IFS=',' read item1 item2 <<< "${i}"
    echo "${item1}" and "${item2}"
done
```
