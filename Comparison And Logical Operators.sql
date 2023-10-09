select * from books where released_year !=2017;
select title from books where title not like '% %';
select title from books where title not like '%e%';
select * from books where released_year >2005;
select * from books where pages >500; 
select 50>100;
select 100 > 50;
select * from books where released_year <2000;
select * from books where released_year >= 2005;
select * from books where released_year <= 2005;
select title ,author_lname,released_year from books where released_year > 2005 and author_lname='eggers';
select title ,author_lname,released_year from books where author_lname='Eggers' and released_year > 2005 and title like '%novel%';
select title ,author_lname,released_year,pages from books where char_length(title) > 30 and pages > 500;
select title ,author_lname,released_year from books where  released_year > 2010 or author_lname='eggers';
select title,pages from books where pages <200 or title like '%stories%'; 
select title ,author_lname,released_year from books where released_year between 2004 and 2015;
select title ,author_lname,released_year from books where released_year not between 2004 and 2015;
select title,author_lname from books where author_lname in ('carver','lahiri','smith');
select title,released_year from books where released_year>= 2000 and released_year not in (2000,2002,2004,2006,2008,2010,2012,2014,2016) order by released_year;
select title,released_year from books where released_year>= 2000 and released_year %2 != 0 order by released_year;
select title,released_year ,case when released_year >=2000 then 'Modern Lit' else '20th century lit' end as genre  from books;
select title,stock_quantity,case when stock_quantity between 0 and 50 then '*' when stock_quantity between 51 and 100 then '**' else '***' end as stpck from books order by stpck;

-- EXERCISE 

select 10!= 10;
select 15 > 10 and 99-5 <=94;
select 1 in (1,3) or 9 between 8 and 10;
select 1 in (1,3) ;
select title from books where released_year <1980;
select * from books where author_lname='eggers' or author_lname ='chabon';
select * from books where author_lname='lahiri' and released_year>=2000;
select * from books where pages between 100 and 200;
select * from books where author_lname like 'c%' or author_lname  like 's%';
select title,author_lname,case when title like '%stories%' then 'Short Stories' when title like '%just kids%' or title like '%A Heartbreaking work%' then 'memoir' else 'novel'  end as type from books;
select author_fname,author_lname,concat(count(*),' ','books') as count from books group by author_fname,author_lname

