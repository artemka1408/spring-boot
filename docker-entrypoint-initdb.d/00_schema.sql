CREATE TABLE users
(
    id       BIGSERIAL PRIMARY KEY,
    login    TEXT        NOT NULL UNIQUE,
    password TEXT        NOT NULL,
    created  TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_roles
(
    user_id BIGINT NOT NULL REFERENCES users,
    role    TEXT   NOT NULL
);

CREATE TABLE posts
(
    id        BIGSERIAL PRIMARY KEY,
    author_id BIGINT      NOT NULL REFERENCES users,
    content   TEXT        NOT NULL,
    geo_lat   FLOAT, -- DOUBLE PRECISION
    geo_lng   FLOAT, -- DOUBLE PRECISION
    created   TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE post_tags
(
    post_id BIGINT NOT NULL REFERENCES posts,
    tag     TEXT   NOT NULL
);
