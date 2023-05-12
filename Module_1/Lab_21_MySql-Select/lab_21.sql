-- LAB 21 MYSQL SELECT

-- CHALLENGE 1 - Who Have Published What At Where?
-- In this challenge you will write a MySQL SELECT query that joins various tables to figure out what titles each author has published at which publishers.
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





-- concat(au_fname,' ',au_lname) as FullName