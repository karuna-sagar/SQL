CREATE database ig_clone;
use ig_clone;

create table users(
id integer auto_increment primary key,
username varchar(255) not null,
created_at timestamp default now()
);

create table photos(
id integer auto_increment primary key,
image_url varchar(255) not null,
user_id integer not null,
created_at timestamp default now(),
foreign key(user_id) references users(id));










show tables ;
desc comments;
drop table comments;