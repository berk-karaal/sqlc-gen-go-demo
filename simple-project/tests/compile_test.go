package tests

import (
	"testing"

	"github.com/berk-karaal/sqlc-gen-go-demo/simple-project/sqlcrepo"
)

func TestCompile(t *testing.T) {
	_ = sqlcrepo.New(nil)
}
