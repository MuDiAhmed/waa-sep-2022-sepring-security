INSERT INTO user_table (email, username, password, is_enabled)
VALUES ('test_user@example.com', 'test_user', '$2a$12$IKEQb00u5QpZMx4v5zMweu.3wrq0pS7XLCHO4yHZ.BW/yvWu1feo2', true),
       ('test_user_2@example.com', 'test_user_2', '$2a$12$IKEQb00u5QpZMx4v5zMweu.3wrq0pS7XLCHO4yHZ.BW/yvWu1feo2',
        true),
       ('test_user_3@example.com', 'test_user_3', '$2a$12$IKEQb00u5QpZMx4v5zMweu.3wrq0pS7XLCHO4yHZ.BW/yvWu1feo2',
        false),
       ('admin@example.com', 'admin', '$2a$12$IKEQb00u5QpZMx4v5zMweu.3wrq0pS7XLCHO4yHZ.BW/yvWu1feo2',
        false),
       ('user@example.com', 'user', '$2a$12$IKEQb00u5QpZMx4v5zMweu.3wrq0pS7XLCHO4yHZ.BW/yvWu1feo2',
        false);

INSERT INTO role (name, user_id)
VALUES ('ADMIN', 1),
       ('USER', 1),
       ('USER', 2),
       ('SYS_ADMIN', 3),
       ('ADMIN', 4),
       ('USER', 5);

INSERT INTO category (name)
VALUES ('phones'),
       ('tables'),
       ('grocery'),
       ('laptops');

INSERT INTO product (name, price, user_id, category_id)
VALUES ('iphone', 455, 1, 1),
       ('ipad', 500, 1, 2),
       ('samsung', 650, 2, 1),
       ('tab', 600, 2, 2),
       ('lenovo', 300, 3, 4),
       ('dell', 700, 3, 4);