insert into users (username, email, password, enabled) values
    ('admin', 'admin@admin', '$2a$10$2Gi3G9XaKalERoIa74OYruEHZyqSUqn10uSiOzk4PvOgL49vejna.', true),
    ('user', 'user@user', '$2a$10$FKtRACKTCAsvoiV6XhCUtuff31QpzfdzSjM1JgyXWRAy9APgTW5la', true);

insert into authorities (username, authority) values
    ('admin', 'ROLE_ADMIN'),
    ('user', 'ROLE_USER');

insert into lucky_numbers (user_id, number) values
    (1, 7), -- admin
    (2, 1), -- user
    (2, 2),
    (2, 3);
