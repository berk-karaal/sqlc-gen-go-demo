# Example sqlc code generation

I use this setup to test the sqlc output while developing the "separating models to a different package"
feature on sqlc-gen-go.

## Usage

If you are interested in using this setup, you can follow the steps below.

1. Add your queries to `queries_script/queries.sql` file following the format of the file.
2. Run `go run queries_script/main.go` to generate the files under `internal/db/queries/` directory.
3. Run `sqlc generate` to generate the code.
4. Inspect the generated code.
