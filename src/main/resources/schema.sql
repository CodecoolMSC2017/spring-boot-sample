drop table if exists lucky_numbers;
drop table if exists authorities;
drop table if exists users;

create table users (
    id serial primary key,
    username varchar(50) not null unique,
    email varchar(100) unique,
    password varchar(60) not null,
    enabled boolean not null
);

create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    foreign key (username) references users (username),
    unique (username, authority)
);

create table lucky_numbers (
    id serial primary key,
    user_id int not null,
    number int not null check (number >= 0 and number <= 9),
    foreign key (user_id) references users (id),
    unique (user_id, number)
);
