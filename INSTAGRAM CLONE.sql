CREATE database ig_clone;
use ig_clone;

create table users(
id integer auto_increment primary key,
username varchar(255) not null,
created_at timestamp default now()
);









show tables ;
desc comments;
drop table comments;