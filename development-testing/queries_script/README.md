# Queries

I needed to check if imports and type assignments by `sqlc-gen-go` is made correctly for each query. But
maintaining queries in separate files is a pain. So I decided to keep all queries in a single file and
generate separate files for each query.

Add queries to `queries.sql` file and run `go queries_script/main.go` to generate files under `internal/db/queries/`
directory. SQLC will read queries under `internal/db/queries/` directory and generate code for each query.

After the generation sql files you can simply select a query in sqlc.yaml to test generated code for that
query.
