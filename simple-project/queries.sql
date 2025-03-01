-- name: ListUsers :many
SELECT * FROM users;

-- name: ListUsersByMemberType :many
SELECT * FROM users WHERE mtype = $1;

-- name: ListCommentsByUserId :many
SELECT * FROM comments WHERE user_id = $1;

-- name: GetUserMemberType :one
SELECT mtype FROM users WHERE id = $1;