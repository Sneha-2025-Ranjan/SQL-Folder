/*Tasks To Be Performed:
1.Create an ‘Orders’ table which comprises of these columns:
‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’.*/

Create  table OrdersTable(
OrderId int,
OrderDate date,
Amount int,
CustomerId int )

--2.Insert 5 new records.
Insert into OrdersTable
Values(1002, '2025-04-12', 1200, 2),
(1004, '2025-12-24', 2111, 1),
(1009, '2021-10-13', 3000, 2),
(1005, '2021-03-04', 4500, 5),
(1008, '2022-04-13', 6000, 4)

/* 3.Make an inner join on ‘Customer’ and ‘OrdersTable’ tables on the
‘customer_id’ column.*/

Select * from Customer as cust
Inner Join OrdersTable as orders
On cust.CustomerId = orders.CustomerId

-- 4.Make left and right joins on ‘Customer’ and ‘Orders’
-- tables on the ‘customer_id’ column.

Select * from Customer as cust
Left Join OrdersTable as orders
On cust.CustomerId = orders.CustomerId

Select * from Customer as cust
Right  Join OrdersTable as orders
On cust.CustomerId = orders.CustomerId

-- 5.Make a full outer join on ‘Customer’ and ‘Orders’ table on the
-- ‘customer_id’ column.

Select * from Customer as cust
Full Join OrdersTable as orders
On cust.CustomerId = orders.CustomerId

-- 6.Update the ‘Orders’table and set the amount to
-- be 100 where ‘customer_id’ is 4.

Update orders
Set Amount =100
from OrdersTable as orders
where CustomerId = 4

Select * from OrdersTable