-- 2. Returning single model struct example
-- name: GetUserByID :one
SELECT * FROM users WHERE id = $1;
