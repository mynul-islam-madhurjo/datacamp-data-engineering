-- Ex 2

-- All records from both tables, dropping duplicate records (if any)
SELECT *
FROM languages
UNION
SELECT *
FROM currencies;


-- An unordered list of each country including duplicates
SELECT code FROM
languages
UNION ALL
SELECT code FROM
currencies;

-- A SQL error, because  are not of the same data type
SELECT code
FROM languages
UNION
SELECT curr_id
FROM currencies;

-- Select all fields from economies2015
SELECT * FROM economies2015
-- Set operation no return duplicates
UNION
-- Select all fields from economies2019
SELECT * FROM economies2019
ORDER BY code, year;

-- Query that determines all pairs of code and year from economies and populations, without duplicates
SELECT year,code FROM economies
UNION
SELECT year,country_code FROM populations
ORDER BY code,year

SELECT code, year
FROM economies
-- Set theory clause including duplicates
UNION ALL
SELECT country_code, year
FROM populations
ORDER BY code, year;