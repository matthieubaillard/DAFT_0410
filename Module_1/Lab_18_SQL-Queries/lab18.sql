-- create database lab18_applestore_database

-- 1. What are the different genres?

SELECT distinct prime_genre from lab18_applestore_database.applestore2
 order by prime_genre asc;

-- 2. Which is the genre with the most apps rated?
 
SELECT prime_genre, sum(rating_count_tot)
from lab18_applestore_database.applestore2
group by prime_genre
order by sum(rating_count_tot);

-- 3. Which is the genre with most apps?
-- 4. Which is the one with least?


SELECT prime_genre, count(id)
from lab18_applestore_database.applestore2
group by prime_genre
order by count(id);

-- 5. Find the top 10 apps most rated.

SELECT track_name, rating_count_tot
from lab18_applestore_database.applestore2
order by rating_count_tot desc
limit 10;

-- 6. Find the top 10 apps best rated by users.

SELECT track_name, user_rating, rating_count_tot
from lab18_applestore_database.applestore2
where user_rating = 5
order by rating_count_tot desc
limit 10;

-- 7. Take a look at the data you retrieved in question 5. Give some insights.

SELECT track_name, rating_count_tot, prime_genre, price,cont_rating,`lang.num`, ver, `sup_devices.num`
from lab18_applestore_database.applestore2
order by rating_count_tot desc
limit 10;

-- 8. Take a look at the data you retrieved in question 6. Give some insights.

SELECT track_name, user_rating, rating_count_tot, prime_genre, price, cont_rating,`lang.num`, ver,`sup_devices.num`
from lab18_applestore_database.applestore2
where user_rating = 5
order by rating_count_tot desc
limit 10;

SELECT user_rating, rating_count_tot, prime_genre, price, cont_rating,`lang.num`,ver,`sup_devices.num`
from lab18_applestore_database.applestore2
where user_rating = 5
order by rating_count_tot desc
limit 10;

-- 9. Now compare the data from questions 5 and 6. What do you see?

-- 10. How could you take the top 3 regarding both user ratings and number of votes?

SELECT track_name, user_rating, rating_count_tot,price
from lab18_applestore_database.applestore2
where user_rating = 5
order by rating_count_tot desc
limit 3;

-- 11. Do people care about the price of an app?

SELECT distinct price, avg(user_rating), avg(rating_count_tot)
from lab18_applestore_database.applestore2
group by price
order by price desc