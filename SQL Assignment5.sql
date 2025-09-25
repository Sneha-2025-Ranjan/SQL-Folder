-- Tasks To Be Performed:
-- 1.Use the inbuilt functions and find the minimum, maximum
-- and average amount from the orders table

Select min(Amount)
from OrdersTable

Select max(Amount)
from OrdersTable

Select avg(Amount)
from OrdersTable


-- 2.Create a user-defined function which will multiply the given
-- number with 10

Create or alter Function fn_Multiply(
@Number int
)
Returns int
As
Begin
	Return(@Number *10)
End

Select dbo.fn_Multiply(41) as Multi 
Select dbo.fn_Multiply(239) as Multi 

-- 3.Use the case statement to check if 100 is less than 200,
-- greater than 200 or equal to 200 and print the
-- corresponding value.

Select 
	Case 
	    when 100 < 200 Then '100 is less than 200'
		when 100 > 200 Then '100 is Greater than 200'
		Else '100 is equal to 200' 
	End as CompareResult

-- 4.Using a case statement, find the status of the amount. Set
-- the status of the amount as high amount, low amount or
-- medium amount based upon the condition.

Select Amount,
	case
		 when Amount <= 2000 Then 'Low Amount'
		 when Amount >=2000 and Amount <= 3000 Then 'Medium Amount'
		 Else 'High Amount'
		 End as AmountStatus
	from OrdersTable

-- 5.Create a user-defined function, to fetch the amount greater
-- than then given input

Create function fn_CheckAmount(
@MinInput int
)
Returns Table
As
	Return(
		Select Amount from OrdersTable
		where Amount> @MinInput
	);

Select Amount from dbo.fn_CheckAmount(2500)
Select Amount from dbo.fn_CheckAmount(200)