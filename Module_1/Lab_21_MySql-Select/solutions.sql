-- LAB 21 MYSQL SELECT

-- CHALLENGE 1 - Who Have Published What At Where?
-- Write a MySQL SELECT query that joins various tables to figure out what titles each author has published at which publishers.
-- Your output should have at least the following columns:
-- AUTHOR ID - the ID of the author
-- LAST NAME - author last name
-- FIRST NAME - author first name
-- TITLE - name of the published title
-- PUBLISHER - name of the publisher where the title was published
-- If your query is correct, the total rows in your output should be the same as the total number of records in Table titleauthor.

-- count number of records in Table titleauthor
select * from `publications`.`titleauthor`;
-- 25 rows

SELECT pa.`au_id`, concat(pa.`au_fname`,' ',pa.`au_lname`) AS FullName,
pt.`title`, pp.`pub_name`
FROM `publications`.`authors` pa
INNER JOIN `publications`.`titleauthor` ta on pa.`au_id` = ta.`au_id`
LEFT JOIN `publications`.`titles` pt on ta.`title_id` = pt.`title_id`
LEFT JOIN `publications`.`publishers` pp on pt.`pub_id` = pp.`pub_id`
;

-- Challenge 2 - Who Have Published How Many At Where?

SELECT pa.`au_id`, CONCAT(pa.`au_fname`,' ',pa.`au_lname`) AS FullName,
pp.`pub_name`, COUNT(pt.`title`) AS 'Count'
FROM `publications`.`authors` pa
INNER JOIN `publications`.`titleauthor` ta on pa.`au_id` = ta.`au_id`
LEFT JOIN `publications`.`titles` pt on ta.`title_id` = pt.`title_id`
LEFT JOIN `publications`.`publishers` pp on pt.`pub_id` = pp.`pub_id`
GROUP BY pa.`au_id`, pp.`pub_name`;

-- Challenge 3 - Best Selling Authors

SELECT pa.`au_id`, CONCAT(pa.`au_fname`,' ',pa.`au_lname`) AS FullName,
ps.`qty` AS TOTAL
FROM `publications`.`authors` pa
INNER JOIN `publications`.`titleauthor` ta on pa.`au_id` = ta.`au_id`
LEFT JOIN `publications`.`sales` ps on ta.`title_id` = ps.`title_id`
GROUP BY pa.`au_id`
ORDER BY TOTAL DESC
LIMIT 3;

## Challenge 4 - Best Selling Authors Ranking

SELECT pa.`au_id`, CONCAT(pa.`au_fname`,' ',pa.`au_lname`) AS FullName,
ps.`qty` AS TOTAL
FROM `publications`.`authors` pa
INNER JOIN `publications`.`titleauthor` ta on pa.`au_id` = ta.`au_id`
LEFT JOIN `publications`.`sales` ps on ta.`title_id` = ps.`title_id`
GROUP BY pa.`au_id`
ORDER BY TOTAL DESC;