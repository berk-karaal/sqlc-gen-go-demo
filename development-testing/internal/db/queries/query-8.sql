-- 8. Batch query enum inside argument struct example
-- name: BatchUpdateOrderStatus :batchexec
UPDATE orders SET status = $1 WHERE id = $2;
