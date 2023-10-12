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


create table comments(
id integer auto_increment primary key,
comment_taxt varchar(255) not null,
user_id integer not null,
photo_id integer not null ,
created_at timestamp default now(),
foreign key(user_id) references users(id),
foreign key(photo_id) references photos(id));

create table likes(

user_id integer not null,
photo_id integer not null,
created_at timestamp default now(),
foreign key(user_id) references users(id),
foreign key(photo_id) references photos(id),
primary key(user_id,photo_id)
);







show tables ;
desc likes;
drop table comments;