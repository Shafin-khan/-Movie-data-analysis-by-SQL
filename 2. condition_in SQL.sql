 
-- SELECT * FROM moviesdb.financials;
#lets make the same currency
-- select*,   if(currency = "USD", revenue*77, revenue) as revenue_inr
-- from moviesdb.financials;
-- ## here if contion is used . the statement is 
-- if(condition, true, false)

#2 lets make it into same unit
## find the distinct value
-- select distinct unit from moviesdb.financials

select*, 
 case
     when unit="thousands" then revenue/1000
     when unit="Billions" then revenue*1000
     else revenue
     
 end as revenue_mln
from moviesdb.financials
 