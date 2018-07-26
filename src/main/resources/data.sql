insert into users (username, password, enabled) values
    ('admin', '$2a$10$2Gi3G9XaKalERoIa74OYruEHZyqSUqn10uSiOzk4PvOgL49vejna.', true),
    ('user', '$2a$10$FKtRACKTCAsvoiV6XhCUtuff31QpzfdzSjM1JgyXWRAy9APgTW5la', true);

insert into authorities (username, authority) values
    ('admin', 'ROLE_ADMIN'),
    ('user', 'ROLE_USER');
