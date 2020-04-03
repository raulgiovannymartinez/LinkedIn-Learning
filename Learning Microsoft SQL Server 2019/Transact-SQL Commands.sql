/***** Transact-SQL Commands *****/


select OrderID, CustomerID, OrderDate
from Sales.Orders
where CustomerID = 578
order by OrderDate desc
;


select OrderLineID,
Quantity,
UnitPrice,
TaxRate,
Quantity*UnitPrice as ExtendedPrice,
Quantity*UnitPrice*(TaxRate/100) as TaxDue,
format((Quantity*UnitPrice) + (Quantity*UnitPrice*(TaxRate/100)), 'C') as TotalPrice
from Sales.OrderLines
;


update Sales.SpecialDeals
set EndDate = '12/31/2019', DealDescription='10% 2019 USB Wingtip'
where SpecialDealID = 1
;


insert into dbo.Guests (FirstName, LastName)
values ('Jeremy', 'Kant'), ('Rache', 'Morris')

select * from dbo.Guests
