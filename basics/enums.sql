-- Test db
-- Enumerated (enum) types are data types that comprise a static, 
-- ordered set of values. They are equivalent to the enum types 
-- supported in a number of programming languages.

CREATE TYPE weekday AS ENUM ('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun');

DROP TABLE IF EXISTS todoo;

CREATE TABLE todoo (
    week_day weekday,
    thing_to_do varchar
);

INSERT INTO todoo VALUES
('Mon', 'Stand-Up');

SELECT *
FROM todoo;

INSERT INTO todoo VALUES
('Tu', 'Stand-Up');
--* invalid input value for enum weekday: "Tu"

DROP TYPE weekday;
--* cannot drop type weekday because other objects depend on it
