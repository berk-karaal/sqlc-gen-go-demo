// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.28.0
// source: query-5.sql

package sqlcrepo

import (
	"context"

	"github.com/berk-karaal/sqlc-gen-go-demo/development-testing/internal/business/entities"
)

const getOrderIDsByStatus = `-- name: GetOrderIDsByStatus :many
SELECT id FROM orders WHERE status = $1
`

// 5. Get a model file enum as argument example
func (q *Queries) GetOrderIDsByStatus(ctx context.Context, status entities.OrderStatus) ([]int32, error) {
	rows, err := q.db.Query(ctx, getOrderIDsByStatus, status)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var items []int32
	for rows.Next() {
		var id int32
		if err := rows.Scan(&id); err != nil {
			return nil, err
		}
		items = append(items, id)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}
