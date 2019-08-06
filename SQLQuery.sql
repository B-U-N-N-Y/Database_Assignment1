
create database Employee1
use Employee1
--create Table
create table employee_tb1
(
 EmpID INT primary key , 
        EmpName VARCHAR(50) NOT NULL, 
	    Designation VARCHAR(50) NULL, 
        Department VARCHAR(50) NULL, 
        Salary float not null,
	   
    )

	--insert the values in table
INSERT INTO employee_tb1 
	(EmpID, EmpName, Designation, Department, Salary)
VALUES 
	(1, 'CHIN YEN', 'LAB ASSISTANT', 'LAB', 20000),
	(2, 'MIKE PEARL', 'SENIOR ACCOUNTANT', 'ACCOUNTS', 34400),
	(3, 'GREEN FIELD', 'ACCOUNTANT', 'ACCOUNTS', 23330),
	(4, 'DEWANE PAUL', 'PROGRAMMER', 'IT', 18500),
	(5, 'MATTS', 'SR. PROGRAMMER', 'IT', 15350.00),
	(6, 'PLANK OTO', 'ACCOUNTANT', 'ACCOUNTS', 16300.50)
	select * from employee_tb1

create table employee_audit
(LastUpdateTime datetime null)

INSERT INTO employee_tb1
VALUES (7,'Arjun','Programmer','IT',20350);
select * from employee_audit
INSERT INTO employee_tb1
VALUES (8,'rishav','Programmer','IT',22500);
INSERT INTO employee_tb1
VALUES (9,'saurab','Programmer','IT',21200);
delete from employee_tb1 where EmpID=9;
INSERT INTO employee_tb1
VALUES (9,'saurab','Programmer','IT',20000);
ALTER TABLE employee_audit
ALTER COLUMN LastUpdateTime datetime;
INSERT INTO employee_tb1
VALUES (10,'Ajit','Tester','IT',18500);

-- create index and execute the query using index
create index Emp_name
on employee_tb1(EmpName);

select * from employee_tb1 with(index(Emp_name)) where EmpName='rishav';


-- create new table 2
create  table employee_tb2
( EmpID int foreign key references employee_tb1(EmpID),
	City varchar(20), Mobile varchar(10),Gender varchar(10));

-- insert the values in table2
	insert into employee_tb2 values(1,'Hyderabad','1234567890','male'),
	(7,'westbengal','2345678901','male'),
	(8,'jharkhand','3456789012','male'),
	(9,'madhyapradesh','4567890123','male'),
	(10,'tamilnadu','5678901234','male');
	select * from employee_tb2,employee_tb1
	where employee_tb1.EmpID=employee_tb2.EmpID;