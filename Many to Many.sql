use book_shop;
create table reviewers(
id int auto_increment primary key,
first_name varchar(100) not null ,
last_name varchar(100) not null 	
);

create table series(
id int auto_increment primary key,
title varchar(100),
released_year year,
genre varchar(50)
);

create table reviews(
id int auto_increment primary key,
rating decimal(2,1),
series_id int,
reviewer_id int,
foreign key(series_id) references series(id),
foreign key(reviewer_id) references reviewers(id)
);
