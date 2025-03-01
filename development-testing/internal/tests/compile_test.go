package tests

import (
	"testing"

	"github.com/berk-karaal/sqlc-gen-go-demo/development-testing/internal/db/sqlcrepo"
)

func TestCompile(t *testing.T) {
	_ = sqlcrepo.New(nil)
}
