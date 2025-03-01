CREATE TYPE member_type AS ENUM ('standard', 'gold', 'diamond');

CREATE TABLE
    users (
        id SERIAL PRIMARY KEY,
        name TEXT,
        email TEXT NOT NULL,
        password TEXT NOT NULL,
        mtype member_type NOT NULL DEFAULT 'standard'
    );

CREATE TABLE
    comments (
        id SERIAL PRIMARY KEY,
        user_id INTEGER REFERENCES users (id),
        content TEXT NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    );