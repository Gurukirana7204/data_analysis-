select * from dbo.products

SELECT
	ProductID,
	ProductName,
	Price,

	CASE
		When Price < 50 THEN 'Low'
		When Price BETWEEN 50 AND 200 THEN 'Medium'
		else 'High'
	END AS Price
FROM 
	[dbo].[products];