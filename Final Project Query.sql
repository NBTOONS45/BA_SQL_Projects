---Final Project

--Pull the total sales $, total gross margin $, total gross margin %, and total sales units by item for the top 100 non DISC items that sold between 8/7 – 8/27. Be sure to include the departments and classes for these 100 items. 

select  top 100  Order_date,[Carrier Class],Dept,Class,
sum([$_Sold]) as 'Total Sales $',
sum([$_Sold] - Total_Cost) as 'Total Gross Margin $', sum ([$_Sold]/Total_Cost) as 'Total Gross Margin %', sum(Unit_Sold) as 'Total Units Sold'
from Shipping_Carrier, Sales_08_09
where Total_Cost <> 0
and  Order_date between '2019-08-07' and '2019-08-27'
and Dept != 'DISC'
group by [Order_date], [Carrier Class], [Dept],[Class]

