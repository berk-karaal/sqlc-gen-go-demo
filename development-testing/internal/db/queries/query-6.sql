-- 6. Get a model file enum inside argument struct example
-- name: GetOrderIDsUserIDAndStatus :many
SELECT id FROM orders WHERE user_id = $1 AND status = $2;
