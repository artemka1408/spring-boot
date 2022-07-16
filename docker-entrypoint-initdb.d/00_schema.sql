CREATE TABLE users(
    id BIGSERIAL PRIMARY KEY,
    login TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    role TEXT NOT NULL DEFAULT 'ROLE_USER',
    created TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);