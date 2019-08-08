/* 1 */

Select * 
from Customer
right join [Order]
on Customer.Id=[Order].CustomerId;

/* 2 */

Select Product.ProductName,OrderItem.Quantity,OrderItem.UnitPrice
from Product
right join [OrderItem]
on [OrderItem].ProductId=Product.Id;

/* 3 */

select *
from customer
left join [Order]
on Customer.id=[Order].CustomerId
order by [Order].TotalAmount

/* 4  */

Select *
from Customer
left join [Order]
on customer.id=[Order].CustomerId
where OrderNumber is null;

/* 5 */
select * 
from Customer
inner join Supplier
on Customer.country=Supplier.Country;