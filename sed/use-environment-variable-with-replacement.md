## Use environment variable with replacement

If you have a REPLACE place-holder in a file then to replace it with a value form the  variable invoke:

```shell
sed -e "s|REPLACE|$VAR|g" file.txt
```

The "|" can be used as a separator instead of "/" if e.g. the `$VAR` contains the "/".



