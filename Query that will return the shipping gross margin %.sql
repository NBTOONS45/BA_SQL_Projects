--Write a query that will return the shipping gross margin % (Shipping Gross Margin $/ Shipping Revenues) by order. Remember, the Shipping Gross Margin $ = Shipping Revenues – Shipping Costs. 

select [4P_Order],
Shipping_Revenues-Shipping_Cost as 'Shipping Gross Margin $',
(Shipping_Revenues-Shipping_Cost)/
Shipping_Revenues as 'Shipping Gross Margin %'
from Shipping_Carrier
where Shipping_Revenues <> 0 
