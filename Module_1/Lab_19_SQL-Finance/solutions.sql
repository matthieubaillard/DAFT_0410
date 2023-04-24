-- 1. From the `order_items` table, find the price of the highest priced order and lowest price order.

select price from olist.order_items
order by price asc
limit 1;

-- Lowest price order: 0.85

select price from olist.order_items
order by price desc
limit 1;

-- highest priced order: 6735

-- or in one single request:
select min(price), max(price)
from olist.order_items;

-- 2. From the `order_items` table, what is range of the shipping_limit_date of the orders?
select min(shipping_limit_date), max(shipping_limit_date),
datediff(max(shipping_limit_date), min(shipping_limit_date)) as ship_date_range
from olist.order_items;

-- range: 1299 days

-- 3. From the `customers` table, find the states with the greatest number of customers.
select distinct customer_state, count(customer_state)
from olist.customers
group by customer_state order by count(customer_state) desc
limit 1;

-- 4. From the `customers` table, within the state with the greatest number of customers, find the cities with the greatest number of customers.
select distinct customer_city, count(customer_unique_id), customer_state
from olist.customers
where customer_state = 'SP'
group by customer_city
order by count(customer_unique_id) desc
;
-- Within the SP state, Sao Paulo has the greatest number of customers (15540), followed by Campinas (1444) and Guarulhos (1189)

-- 5. From the `closed_deals` table, how many distinct business segments are there (not including null)?
select distinct business_segment, count(distinct business_segment)
from olist.closed_deals
group by business_segment
order by business_segment;
-- returns 34 rows, incl 1 null, thus 33 business segments

-- or
select count(distinct business_segment) as num_business_segments
from olist.closed_deals
where business_segment is not null;

-- returns 33

-- 6. From the `closed_deals` table, sum the declared_monthly_revenue for duplicate row values in business_segment and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).
select distinct business_segment, sum(declared_monthly_revenue)
from olist.closed_deals
group by business_segment
order by sum(declared_monthly_revenue) desc
limit 3;

-- Business segments with highest revenue:
-- 1 - Constrauction Tools, House & Garden (50695006)
-- 2 - Phone & Mobile (8000000)
-- 3 - Home Decor (710000)

-- 7. From the `order_reviews` table, find the total number of distinct review score values.
select distinct review_score, count(review_id)
from olist.order_reviews
group by review_score
order by review_score asc
;
-- There are 5 review score values (from 1 to 5)

-- 8. In the `order_reviews` table, create a new column with a description that corresponds to each number category for each review score from 1 - 5, then find the review score and category occurring most frequently in the table.
select distinct review_score, count(review_id),
		case when review_score = 1 then "terrible"
			 when review_score = 2 then "bad"
			 when review_score = 3 then "average"
			 when review_score = 4 then "good"
			 when review_score = 5 then "excellent"
        end as review
from olist.order_reviews
group by review_score
order by count(review_id) desc
;
-- Reviews with a score of 5 "excellent" are the most frequent

-- 9. From the `order_reviews` table, find the review value occurring most frequently and how many times it occurs.

-- 57420 orders receieved a 5-star review.