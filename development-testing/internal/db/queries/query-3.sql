-- 3. Returning a model file enum example
-- name: GetOrderStatusByID :one
SELECT status FROM orders WHERE id = $1;
