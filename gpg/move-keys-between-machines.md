## Move keys between machines

Export key from the keyring:

```shell
# list the keys and copy the key id
gpg --list-secret-keys user@example.com
# export
gpg --export-secret-keys YOUR_ID_HERE > private.key
```

Import key into the keyring at another machines:

```shell
gpg --import private.key
```

Based on: https://makandracards.com/makandra-orga/37763-gpg-extract-private-key-and-import-on-different-machine
