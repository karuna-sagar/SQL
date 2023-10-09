create table partiers(
name varchar(50),
age int check(age>0)
);
insert into partiers(name,age) values ('sagar',20);
insert into partiers(name,age) values ('sagar',-10);

create table palindrome(
word varchar(100) check(reverse(word)=word));
insert into palindrome (word) values ('racecar');
insert into palindrome (word) values ('mommy');

create table partiers2(
name varchar(50),
age int 
constraint age_not_neg check(age>0)
);
insert into partiers(name,age) values ('sagar',-1);

create table companies(
name varchar(100) not null,
address varchar(255) not null,
constraint name_address unique(name,address));

insert into companies(name,address) values ('sagar','jag');
insert into companies(name,address) values ('sagars','jag');
select  * from companies;
alter table companies add column phone varchar(50);
alter table companies add column employee_count int not null default 1;
alter table companies drop column phone;
rename table companies to suppliers;
select * from suppliers;
alter table company rename to companies;
alter table companies rename column name to company_name;
alter table companies modify company_name varchar(100) default 'unknown';
insert into companies(address) values ('100 lane shop');
