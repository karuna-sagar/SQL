INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

use book_shop;
select * from books;
select distinct author_fname from books;
select distinct concat(author_fname,' ',author_lname) from books;
select distinct author_fname,author_lname from books;
select author_fname,author_lname from books order by author_lname desc;
select author_fname,author_lname from books order by author_lname asc;
select author_fname,author_lname from books order by author_fname desc;
select author_fname,author_lname,released_year from books order by released_year;
select author_lname,released_year from books order by 2;
select author_lname,released_year from books order by author_lname,released_year;
select author_lname,released_year from books order by author_lname,released_year desc;
select book_id,title,released_year from books order by book_id limit 1,3;
select title,author_lname,author_fname from books where author_fname like '%da%';
select book_id, title from books where title like '%:%';
select * from books where author_fname like '_____';
select title,author_fname,author_lname from books where author_fname like '%n%';
select title from books where title like '%\%%';
select title from books where title like '%\_%';

--  EXERCISE---
select title from books where title like '%stories%';
select title,pages from books order by pages desc limit 1;
select concat(title,'-',released_year) as 'summary' from books order by released_year desc limit 3;
select title,author_lname from books where author_lname like '% %';
select title,released_year,stock_quantity from books order by stock_quantity asc limit 3;
select title,author_lname from books order by author_lname,title;
select concat('my favorite author is',' ',(select author_lname from books order by author_lname)) from books;
select upper(concat('my favorite author is',' ',author_fname,' ' ,author_lname)) as yell  from books order by author_lname;