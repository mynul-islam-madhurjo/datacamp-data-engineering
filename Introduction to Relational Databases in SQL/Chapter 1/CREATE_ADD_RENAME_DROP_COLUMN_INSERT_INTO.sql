-- Create a table for the professors entity type
CREATE TABLE professors (
 firstname text,
 lastname text
);

-- Print the contents of this table
SELECT *
FROM professors

-- Create a table for the universities entity type
CREATE TABLE universities(
    university_shortname text,
    university text,
    university_city text
);


-- Print the contents of this table
SELECT *
FROM universities

-- ADD a COLUMN with ALTER TABLE

-- Add the university_shortname column
ALTER TABLE professors
ADD COLUMN university_shortname text;

-- Print the contents of this table
SELECT *
FROM professors

-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

-- Delete the university_shortname column
ALTER TABLE affiliations
DROP COLUMN university_shortname;

-- Insert unique professors into the new table
INSERT INTO professors
SELECT DISTINCT firstname, lastname, university_shortname
FROM university_professors;

-- Doublecheck the contents of professors
SELECT *
FROM professors;

-- Insert unique affiliations into the new table
INSERT INTO affiliations
SELECT DISTINCT firstname, lastname, function, organization
FROM university_professors;

-- Doublecheck the contents of affiliations
SELECT *
FROM affiliations;

-- Delete the university_professors table
DROP TABLE university_professors;





