--Ex 13

-- Self join is joining a table with itself for pairing two values
-- AND compare values on the same table value
-- Select aliased fields from populations as p1
SELECT p1.size AS size2010,p2.size AS size2015,p1.country_code
-- Join populations as p1 to itself, alias as p2, on country code
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code=p2.country_code

SELECT
	p1.country_code,
    p1.size AS size2010,
    p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code
WHERE p1.year = 2010
-- Filter such that p1.year is always five years before p2.year
    AND p2.year = p1.year + 5;