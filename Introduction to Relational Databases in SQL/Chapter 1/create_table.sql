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










