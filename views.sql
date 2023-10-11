create view full_reviews as
select title,released_year,genre,rating,first_name,last_name from reviews join series on series.id = reviews.series_id join reviewers on reviewers.id = reviews.reviewer_id;
select * from full_reviews;
select genre,avg(rating) from full_reviews group by genre;

create view  order_series as
select * from series order by released_year;
select * from order_series;
insert into order_series (title,released_year,genre) values ('The Wall',2020,'animation');