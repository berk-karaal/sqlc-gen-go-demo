-- 10. Batch query return enum example
-- name: BatchRetrieveOrderStatus :batchone
SELECT status FROM orders WHERE id = $1;
