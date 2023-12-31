select * from books;
select count(*) from books;
select  count(distinct author_fname) from books;
select count(title) from books where title like'%the%';
select author_lname,count(*) as books_written from books group by author_lname order by books_written desc;
select released_year,count(*) from books group by released_year;
select min(released_year) from books;
select max(pages) from books;
select min(author_lname),max(author_lname) from books;
select title,pages from books where pages = (select max(pages) from books);
select title,released_year from books where released_year = (select min(released_year) from books);
select  author_fname,author_lname,count(*) from books  group by  author_fname, author_lname;
select concat(author_fname,' ',author_lname) as author,count(*) from books group by author;
select author_lname,count(*) from books  group by author_lname;
select author_fname,author_lname,count(*),min(released_year),max(released_year) from books group by author_fname,author_lname;
select author_lname,count(*),min(released_year),max(released_year),max(pages) from books group by author_lname;
select sum(pages) from books;
select author_lname,sum(pages) from books group by author_lname;
select avg(released_year) from books;
select avg(pages) from books;
select released_year,avg(stock_quantity),count(*) from books group by released_year;

--  EXERCISE
select count(title) from books;
select released_year,count(*) from books group by released_year;
select sum(stock_quantity) from books;
select concat(author_fname,' ',author_lname),avg(released_year) from books group by author_fname,author_lname;
select concat(author_fname,' ' ,author_lname) from books where pages = (select max(pages) from books);
select released_year,count(title) as '# books',avg(pages) as 'avg pages' from books group by released_year order by released_year; 