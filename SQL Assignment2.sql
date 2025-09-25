--Tasks to be Performed:

/* 1. Add Primary key constraint for SalesmanId column in Salesman table. Add default
constraint for City column in Salesman table. Add Foreign key constraint for SalesmanId
column in Customer table. Add not null constraint in Customer_name column for the
Customer table.*/

Create table Salesman_Table(
SalesmanId int Identity(101,1) Primary Key,
SalesmanName varchar(50),
Commission int,
City varchar(20) Default('NoCityName') ,
Age int )

Insert into Salesman_Table(SalesmanName, Commission, City, Age)
values('joe', 50, 'California', 17),
('Simon', 75, 'Texas', 25),
('Jessie', 105, 'Florida', 35),
('Danny', 100, 'Texas', 22),
('Lia', 65, 'New Jersy', 30)

Select *from Salesman_Table

Create table Customer_Table(
SalesmanId int Identity(101,1) foreign Key References Salesman_Table(SalesmanId),
CustomerId int,
CustomerName varchar(50) Not Null,
PurchaseAmount int)

Insert into Customer_Table(CustomerId, CustomerName, PurchaseAmount)
Values(2345, 'Andrew', 550),
(1575, 'Lucky', 4500),
(2345, 'Andrew', 4000),
(3747, 'Remona', 2700),
(4004, 'Julia', 4545)

Select *from Customer_Table

Create table Orders_Table(
OrderId int,
CustomerId int,
SalesmanId int,
OrderDate Date,
Amount int)

--To format the date
Select orderId, CustomerId, SalesmanId, Amount,
Convert(varchar, OrderDate,105) as OrderDates
from Orders_Table

Insert into Orders_Table(OrderId, CustomerId, SalesmanId,OrderDate, Amount)
Values(5001, 2345, 101, '2021-07-04', 550),
(5003, 1234, 105,'2022-02-15',1500)

Select *from Orders_Table


--2. Insert a new record in your Orders table.
Insert into Orders_Table
Select 5004, 675, 104, '2025-05-12', 400 

/* 3. Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase
amount value greater than 500.*/

Select * from Customer_Table
Where CustomerName Like '%N' and PurchaseAmount > 500

/* 4. Using SET operators, retrieve the first result with unique SalesmanId values from two
tables, and the other result containing SalesmanId with duplicates from two tables.*/

Select SalesmanId from Salesman_Table
Union -- distinct result
Select SalesmanId from Customer_Table

Select SalesmanId from Salesman_Table
Intersect -- including duplicates
Select SalesmanId from Customer_Table

/* 5. Display the below columns which has the matching data.
Orderdate, Salesman Name, Customer Name, Commission, and City which has the
range of Purchase Amount between 500 to 1500.*/

Select OrderDate, SalesmanName, CustomerName, Commission, City
from Orders_Table as orders
Inner Join Customer_Table as cust
On orders.SalesmanId= cust.SalesmanId
Inner Join Salesman_Table as sales
On orders.SalesmanId=sales.SalesmanId
where cust.PurchaseAmount between 500 and 1500

--6. Using right join fetch all the results from Salesman and Orders table.

Select * from Salesman_Table as sales
Right Join Orders_Table as orders
On sales.SalesmanId= orders.SalesmanId
	






