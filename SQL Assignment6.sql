--Tasks To Be Performed:
--1.Arrange the ‘Orders’ dataset in decreasing order
--of amount

Select * from OrdersTable
Order by OrderId desc

--2.Create a table with the name
--‘Employee_details1’ consisting of these
--columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’.
--Create another table with the name
--‘Employee_details2’ consisting of the same
--columns as the first table.

Create table Employee_Details1(
EmpId int,
EmpName char(50),
EmpSalary int
)

Insert into Employee_Details1
values(101, 'Ayan', 40222),
(102, 'Riya', 3000),
(103, 'Mahira', 40000),
(104, 'Naira', 3000),
(105, 'naina', 5000)

Create table Employee_Details2(
EmpId int,
EmpName char(50),
EmpSalary int
)

Insert into Employee_Details2
values(1, 'Rehan', 9000),
(2, 'Kiyan', 3000),
(3, 'Sheena', 40000),
(4, 'Priya', 6700),
(5, 'Akki', 12000)




--3.Apply the UNION operator on these two tables
Select * from Employee_Details1
Union
Select * from Employee_Details2

--4.Apply the INTERSECT operator on these two tables
Select EmpSalary from Employee_Details1
Intersect
Select EmpSalary from Employee_Details2


--5.Apply the EXCEPT operator on these two tables
Select EmpSalary from Employee_Details1
Except
Select EmpSalary from Employee_Details2

Select * from Employee_Details1
Except
Select * from Employee_Details2