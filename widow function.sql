CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);

INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

select * from employees;
select avg(salary) from employees;
select department,avg(salary) from employees group by department;
select avg(salary) over() from employees;
select emp_no,department,salary,avg(salary) over(),min(salary) over(),max(salary) over() from employees;
select emp_no,department,salary,avg(salary) over(partition by department) as dept_avg from employees;
select emp_no,department,salary,avg(salary) over(partition by department) as dept_avg ,avg(salary) over()  as comp_salary from employees;
select emp_no,department,salary,count(*) over(partition by department) as count from employees;
select emp_no,department,salary,sum(salary) over(partition by department) as dept_pay_roll,sum(salary) over() as total_payroll from employees;

select emp_no,department,salary,sum(salary) over(partition by department order by salary desc) as rolling_salary ,sum(salary) over(partition by department) as total_dept_salary from employees;
select emp_no,department,salary,min(salary) over(partition by department) as total_dept_salary from employees;