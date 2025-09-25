/*Tasks To Be Performed:
1.Create a customer table which comprises of these columns:
‘customer_id’, ‘first_name’, ‘last_name’, ‘email’, ‘address’,
‘city’,’state’,’zip’*/

Create table Customer(
CustomerId int,
FirstName char(20),
LastName char(20),
Email nvarchar(100),
Address nvarchar(100),
City varchar(20),
State char(20),
zip int
)
-- 2.Insert 5 new records into the table

Insert into Customer
values(1, 'Sneha', 'Kumari', 'sneha@gmail.com', 'Mahalpar', 'Bihar Sharif', 'Bihar', 234212),
(2, 'Riya', 'Kumari', 'riya@outlook.com', 'Rau', 'Indore', 'MP', 452102),
(3, 'Rehan', 'Verma', 'rehan@gmail.com', 'Electronic City', 'Bangalore', 'Karnataka', 45673),
(4, 'Aryan', 'Jha', 'aryan@yahoo.com', 'chandani chowk', 'Delhi', 'New Delhi',345123),
(5, 'Maira', 'Gupta', 'maira@outlook.com', 'Geeta Bhavan', 'Indore', 'MP',345654)

/* 3.Select only the ‘first_name’ and ‘last_name’ columns from
the customer table*/

Select FirstName, LastName
from Customer

/* 4.Select those records where ‘first_name’ starts with “R”
and city is ‘indore’.*/

Select *
from Customer
where FirstName like 'R%' and city ='Indore'

--5.Select those records where Email has only ‘gmail’.

Select * from Customer
where Email like '%gmail%'

/*6.Select those records where the ‘last_name’ doesn't end with
“A”.*/

Select * from Customer 
where LastName Not like '%a'
Select *from Customer

