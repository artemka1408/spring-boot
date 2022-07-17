INSERT INTO users(login, password)
VALUES (
        'vasya',
        '$argon2id$v=19$m=4096,t=3,p=1$4Ut3Zm2r+ZMyTg39tOiD0w$zw614+sn91FJtHuRvkOS7gZMXpK9RRDF7o/NToGrb84'
);

INSERT INTO user_roles(user_id, role) SELECT id, 'ROLE_USER' FROM users WHERE login = 'vasya';
INSERT INTO user_roles(user_id, role) SELECT id, 'ROLE_ADMIN' FROM users WHERE login = 'vasya';
-- INSERT INTO user_roles(user_id, role) VALUES(1, 'ROLE_ADMIN';

INSERT INTO posts(author_id, content, geo_lat, geo_lng) SELECT id, 'first post', 55.0, 45.00 FROM users WHERE login = 'vasya';