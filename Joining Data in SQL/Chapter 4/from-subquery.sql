-- Ex 10

-- Select code, and language count as lang_num
SELECT code, count(*) AS lang_num
FROM languages
GROUP BY code;

-- Select local_name and lang_num from appropriate tables
SELECT countries.local_name,lang_num
FROM countries,
  (SELECT code, COUNT(*) AS lang_num
  FROM languages
  GROUP BY code) AS sub
-- Where codes match
WHERE countries.code = sub.code
ORDER BY lang_num DESC;

-- Select relevant fields
SELECT code, inflation_rate, unemployment_rate
FROM economies
WHERE year = 2015
  AND code NOT IN
-- Subquery returning country codes filtered on gov_form
  (SELECT code FROM countries WHERE gov_form LIKE '%Republic%' OR gov_form LIKE '%Monarchy%')
ORDER BY inflation_rate;

SELECT name, country_code, city_proper_pop, metroarea_pop,
       city_proper_pop / metroarea_pop * 100 AS city_perc
FROM cities
WHERE name IN (
    SELECT capital
    FROM countries
    WHERE continent = 'Europe' OR continent LIKE '%America'
)
AND metroarea_pop IS NOT NULL
ORDER BY city_perc DESC
LIMIT 10;
