-- Write your code below this line
-- You can run this file with the command sqlite3 world_cities.db < world_cities.sql
-- If you don't run this file before running the tests, some tests will fail even though your queries may be correct!

DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
    id INTEGER PRIMARY KEY,
    name TEXT,
    population INTEGER,
    country TEXT
);

-- Insert the 10 cities into the cities table
INSERT INTO cities (id, name, population, country) VALUES
(1, 'New York', 8398748, 'United States'),
(2, 'Tokyo', 13515271, 'Japan'),
(3, 'Cairo', 9500000, 'Egypt'),
(4, 'Sydney', 5312163, 'Australia'),
(5, 'Sao Paulo', 12252023, 'Brazil'),
(6, 'Paris', 2140526, 'France'),
(7, 'Lagos', 14368332, 'Nigeria'),
(8, 'Mumbai', 12442373, 'India'),
(9, 'Osaka', 2752123, 'Japan'),
(10, 'Beijing', 21542000, 'China');

-- Select all cities in the table
SELECT * FROM cities;

-- Select all cities located in Japan
SELECT * FROM cities
WHERE country = 'Japan';

-- Update Beijing's population to 19,400,000
UPDATE cities
SET population = 19400000
WHERE name = 'Beijing';

-- Delete New York, Cairo, and Paris from the cities table
DELETE FROM cities
WHERE name IN ('New York', 'Cairo', 'Paris');