-- 12. Struct embedding
-- name: GetOrderWithUserByOrderId :one
SELECT sqlc.embed(orders), sqlc.embed(users)
FROM orders
LEFT OUTER JOIN users ON orders.user_id = users.id
WHERE orders.id = $1;
