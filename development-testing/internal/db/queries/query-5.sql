-- 5. Get a model file enum as argument example
-- name: GetOrderIDsByStatus :many
SELECT id FROM orders WHERE status = $1;
