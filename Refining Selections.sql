INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

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