select * from [dbo].[Customers]
	select * from [dbo].[geography]

select c.customerid, c.customername,c.email,c.Gender,  c.age, g.country, g.city 
from [dbo].[Customers] as c
left join 
dbo.geography as g
on
c.GeographyID = g.GeographyID;