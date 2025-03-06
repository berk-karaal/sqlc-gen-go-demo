-- 1. Returning list of model struct example
-- name: ListUsers :many
SELECT * FROM users;

-- 2. Returning single model struct example
-- name: GetUserByID :one
SELECT * FROM users WHERE id = $1;

-- 3. Returning a model file enum example
-- name: GetOrderStatusByID :one
SELECT status FROM orders WHERE id = $1;

-- 4. Returning a model file enum inside return struct example
-- name: GetOrderStatusAndTotalByID :one
SELECT status, total FROM orders WHERE id = $1;

-- 5. Get a model file enum as argument example
-- name: GetOrderIDsByStatus :many
SELECT id FROM orders WHERE status = $1;

-- 6. Get a model file enum inside argument struct example
-- name: GetOrderIDsUserIDAndStatus :many
SELECT id FROM orders WHERE user_id = $1 AND status = $2;

-- 7. No model file depedency example
-- name: GetOrderTotalByID :one
SELECT total FROM orders WHERE id = $1;

-- 8. Batch query enum inside argument struct example
-- name: BatchUpdateOrderStatus :batchexec
UPDATE orders SET status = $1 WHERE id = $2;

-- 9. Batch query return model struct example
-- name: BatchRetrieveOrders :batchone
SELECT * FROM orders WHERE id = $1;

-- 10. Batch query return enum example
-- name: BatchRetrieveOrderStatus :batchone
SELECT status FROM orders WHERE id = $1;

-- 11. Batch query return enum inside return struct example
-- name: BatchRetrieveOrderStatusAndTotal :batchone
SELECT status, total FROM orders WHERE id = $1;

-- 12. Struct embedding
-- name: GetOrderWithUserByOrderId :one
SELECT sqlc.embed(orders), sqlc.embed(users)
FROM orders
LEFT OUTER JOIN users ON orders.user_id = users.id
WHERE orders.id = $1;