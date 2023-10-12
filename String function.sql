create database book_shop;
use book_shop;

create table books(
book_id int auto_increment primary key,
title varchar(100),
author_fname varchar(100),
author_lname varchar(100),
released_year int,
stock_quantity int,
pages int
);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier &amp; Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT *FROM books;

select concat('h','e','l');
select concat(author_fname,' ', author_lname) as author_name from books;
select concat_ws('-',title,author_fname,author_lname) from books;
select substring('Hello World',2,3);
select substring('Hello World',7);
select substring('Hello World',-3);

use book_shop;

select concat(substr(author_fname,1,1),'...') from books;
select concat(substr(author_fname,1,1),'.' ,substr(author_lname,1,1),'.') as author_initials from books;

select replace(title,' ','-') from books;
select reverse(author_fname) from books;
select concat(reverse(author_fname),' ' ,reverse(author_lname)) from books;
select char_length(title),title from books;
select upper(title),title from books;
select lower(title)as author_title ,title from books;

select insert('Hello World',6,6,'there');
select left('Hello World',6);
select right('Hello World',3);
select left(author_lname,1) from books;
select trim(Trailing  '.'  from'.....sagar...');
select trim(leading  '.'  from'.....sagar...');
select trim(both  '.'  from'.....sagar...');
use book_shop;
select reverse(upper('Why does my cat look at me with such hatred'));
select replace(concat('I',' ' ,'like' ' ','cats'),' ' , '-');
select replace(title,' ', '->') as title from books;
select author_lname as forward,reverse(author_lname) as backward from books;
select concat(upper(author_fname),' ' ,upper(author_lname)) as ' full name in caps '  from books;
select concat(title,' ' ,'was released in',' ',released_year) as blurb from books;
select title,char_length(title) as 'character count' from books;
select concat(substr(title,1,10),'...') as 'short title',concat(author_lname,',',author_fname) as author,concat(stock_quantity,' ','in stock') as quantity  from books;


