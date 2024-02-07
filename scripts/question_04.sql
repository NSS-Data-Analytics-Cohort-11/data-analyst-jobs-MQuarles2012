-- 1.	How many rows are in the data_analyst_jobs table?

SELECT COUNT(*)
FROM data_analyst_jobs;

--answer: 1793

-- 2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

SELECT *
FROM data_analyst_jobs
LIMIT 10;

--answer: ExxonMobil

-- 3.	How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

SELECT location, COUNT(location) AS loc_count
FROM data_analyst_jobs
WHERE location = 'TN'
	OR location = 'KY'
GROUP BY location;

--answer: TN = 21, KY = 6 (total = 27)

-- 4.	How many postings in Tennessee have a star rating above 4?

SELECT COUNT(star_rating) AS star_rating_count
FROM data_analyst_jobs
WHERE location = 'TN'
	AND star_rating >4;
	
--answer: 3 postings fit the criteria (you can see the specific records with the query below)

SELECT *
FROM data_analyst_jobs
WHERE location = 'TN'
	AND star_rating >4;

-- 5.	How many postings in the dataset have a review count between 500 and 1000?

-- 6.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?

-- 7.	Select unique job titles from the data_analyst_jobs table. How many are there?

-- 8.	How many unique job titles are there for California companies?

-- 9.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

-- 10.	Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

-- 11.	Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 

-- 12.	How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?