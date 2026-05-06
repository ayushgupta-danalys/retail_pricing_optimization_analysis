-- discount by avg profit
select
discount_band,
round(avg(profit),2) as avg_profit
from transactions
group by discount_band
order by discount_band;

-- discount by category
select 
p.category,
t.discount_band,
round(avg(t.profit),2) as avg_profit
from transactions t
join product p
on t.product_id = p.product_id
group by p.category, t.discount_band
order by p.category;

-- discount by region
select 
o.region,
t.discount_band,
round(avg(t.profit),2) as avg_profit
from transactions t
join orders o
on t.order_id = o.order_id
group by o.region, t.discount_band
order by o.region;

-- risk analysis by region
select
o.region,
round(avg(t.profit),2) as avg_profit,
rank() over (order by avg(t.profit)) as risk_rank
from transactions t
join orders o
on t.order_id = o.order_id
group by o.region;

-- risky transactions
with risky_transactions as (
select *from transactions
where discount > 0.20
)
select
count(*) as risky_orders,
round(avg(profit),2) as avg_loss
from risky_transactions;

-- top 10 loss making products
select
p.product_name,
round(avg(t.profit),2) as avg_profit
from transactions t
join product p
on t.product_id = p.product_id
group by p.product_name
order by avg_profit
limit 10;

-- total profit by category
select
p.category,
round(sum(t.profit),2) as total_profit
from transactions t
join product p
on t.product_id = p.product_id
group by p.category
order by total_profit;


-- monthly trend
select
month(order_date) as month,
round(avg(t.profit),2) as avg_profit
from transactions t
join orders o
on t.order_id = o.order_id
group by month(order_date)
order by month;
