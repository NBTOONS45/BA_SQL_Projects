--list the order number, items, deptartment and class
--only show Masks, Rings, and Bath
--sort order by highest to lowests

select Order#, Item_No, Dept_, Class_
from shipped_09
where class_ = 'MASKS' or class_= 'RINGS' or class_ = 'BATH'
order by Order# desc

--list the order date, 4P Order, revenues, and costs
-- revenue is greater than 10 and costs are less than 10
-- sort 4P Order from lowest to highest

select order_date, [4P_Order], shipping_revenues, shipping_cost
from shipping_carrier
where shipping_revenues > 10 and shipping_cost < 10
order by [4P_Order] asc

-- list zipcode, state, and city
-- only show Georgia
-- sort by city from lowest to highest

select zipcode, state, city
from zip
where state = 'GEORGIA'
order by city asc
