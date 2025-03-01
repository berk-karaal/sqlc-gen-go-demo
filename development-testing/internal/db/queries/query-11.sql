-- 11. Batch query return enum inside return struct example
-- name: BatchRetrieveOrderStatusAndTotal :batchone
SELECT status, total FROM orders WHERE id = $1;
