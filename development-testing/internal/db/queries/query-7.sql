-- 7. No model file depedency example
-- name: GetOrderTotalByID :one
SELECT total FROM orders WHERE id = $1;
