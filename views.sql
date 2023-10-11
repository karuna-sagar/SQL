use book_shop;
create view full_reviews as
select title,released_year,genre,rating,first_name,last_name from reviews join series on series.id = reviews.series_id join reviewers on reviewers.id = reviews.reviewer_id;
select * from full_reviews;
select genre,avg(rating) from full_reviews group by genre;

create view  order_series as
select * from series order by released_year;
select * from order_series;
insert into order_series (title,released_year,genre) values ('The Wall',2020,'animation');
create or replace view ordered_series as select * from series  order by released_year desc;
select * from ordered_series;
select title,avg(rating) from full_reviews group by title having title='Archer';
select title,avg(rating),count(rating) as 'rating count'  from full_reviews group by title having count(rating)>1;
select title,count(rating) from full_reviews group by title with rollup;
select released_year,genre,avg(rating) from full_reviews group by released_year,genre with rollup;


