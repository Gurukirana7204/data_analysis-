select reviewid, customerid, productid, reviewdate, rating,
REPLACE(reviewtext, '  ',' ') as reviewtext
from dbo.customer_reviews;