-- Select the country and distinct count of certification as certification_count
SELECT
    country,
    count(DISTINCT certification) AS certification_count
FROM films
-- Group by country
GROUP BY country
-- Filter results to countries with more than 10 different certifications
HAVING count(DISTINCT certification) > 10;

--- Select the country and average_budget from films
SELECT
    country,
    round(avg(budget),2) AS average_budget
FROM films
-- Group by country
GROUP BY country
-- Filter to countries with an average_budget of more than one billion
HAVING avg(budget) > 1000000000
-- Order by descending order of the aggregated budget
ORDER BY average_budget DESC;

-- Select the release_year for films released after 1990 grouped by year
SELECT release_year
FROM films
WHERE release_year > 1990
GROUP BY release_year;

-- Modify the query to also list the average budget and average gross
SELECT 
    release_year, 
    avg(budget) AS avg_budget,
    avg(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million
HAVING avg(budget) > 60000000;

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;