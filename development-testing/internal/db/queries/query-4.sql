-- 4. Returning a model file enum inside return struct example
-- name: GetOrderStatusAndTotalByID :one
SELECT status, total FROM orders WHERE id = $1;
