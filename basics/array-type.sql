-- Test db
-- PostgreSQL gives the opportunity to define a column of a table as
-- a variable length multidimensional array. Arrays of any built-in 
-- or user-defined base type, enum type, or composite type can be 
-- created.

DROP TABLE IF EXISTS array_test;

--? Declaration
CREATE TABLE array_test (
   name text,
   values integer ARRAY[4],
   scheme text[][]
);

--? Inserting values
INSERT INTO array_test 
VALUES ('John Doe', '{1, 2, 3, 4}', 
'{{"Key0", "Value0"}, {"Key1", “Value1”}}'),
('Mike', '{0, 0, 5, 1}', 
'{{"Key0", "Value0"}, {"Key1", “Value1”}}'),
('Viktor', '{4, 5, 3, 2}', 
'{{"Key0", "Value0"}, {"Key1", “Value1”}}')

--? Accessing Arrays
SELECT name 
FROM array_test 
WHERE values[2] > values[4]
--* Viktor

--? Modifying Arrays
UPDATE array_test 
SET values = '{3,4,5,3}'
WHERE name = 'John Doe';

-- Or using the ARRAY expression syntax −
UPDATE array_test 
SET values = ARRAY[3,4,5,3]
WHERE name = 'Manisha';

SELECT name 
FROM array_test 
WHERE values[2] > values[4]
--* Viktor
--* John Doe

--? Searching Arrays
SELECT name
FROM array_test 
WHERE values[1] = 1 OR
values[2] = 0 
--* Mike

-- If the size of array is known, the search method given above can be 
-- used. Else use:
SELECT name
FROM array_test 
WHERE 3 = ANY (values)
--* Viktor
--* John Doe
