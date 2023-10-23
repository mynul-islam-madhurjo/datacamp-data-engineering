--Ex 7
-- Select country and language names, aliased
SELECT c.name AS country,l.name AS language
-- From countries (aliased)
FROM countries as c
-- Join to languages (aliased)
INNER JOIN languages as l
-- Use code as the joining field with the USING keyword
USING (code);

-- Rearrange SELECT statement, keeping aliases
SELECT l.name AS language , c.name AS country
FROM countries AS c
INNER JOIN languages AS l
USING(code)
-- Order the results by language
ORDER BY language

--There are at least three languages spoken in Armenia.
WITH CountryLanguage AS
(SELECT c.name AS country, l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
ORDER BY country);

SELECT * FROM CountryLanguage WHERE country='Armenia'
--Alsatian is spoken in more than one country.
SELECT * FROM CountryLanguage WHERE language='Alsatlan'
--Bhojpuri is spoken in two countries.
SELECT * FROM CountryLanguage WHERE language='Bhojpuri'