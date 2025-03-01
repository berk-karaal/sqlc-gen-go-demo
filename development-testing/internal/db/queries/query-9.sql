-- 9. Batch query return model struct example
-- name: BatchRetrieveOrders :batchone
SELECT * FROM orders WHERE id = $1;
