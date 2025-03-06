# Simple project for sqlc-gen-go demo

Running sqlc generate will export models file to the `models` directory and other files to the
`sqlcrepo` directory.

```console
$ # To test using sqlc-gen-go fork
$ sqlc -f sqlc-gen-go-plugin.yaml generate

$ # To test from sqlc fork
$ sqlc-dev -f sqlc-gen.yaml generate
```


See `sqlc.yaml` file for the configuration.

More: [github.com/berk-karaal/sqlc-gen-go](https://github.com/berk-karaal/sqlc-gen-go)