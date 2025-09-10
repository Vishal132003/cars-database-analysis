CREATE DATABASE cars_price_analysis;
USE cars_price_analysis;

-- 1. Retrieve the total number of cars available
SELECT COUNT(*) AS total_cars
FROM cars;

-- 2. Find the average price of all cars
SELECT AVG(price) AS avg_price
FROM cars;

-- 3. List the most expensive car
SELECT name, company, price
FROM cars
ORDER BY price DESC
LIMIT 1;

-- 4. List the cheapest car
SELECT name, company, price
FROM cars
ORDER BY price ASC
LIMIT 1;

-- 5. Count the number of cars by fuel type
SELECT fuel_type, COUNT(*) AS total_cars
FROM cars
GROUP BY fuel_type;

-- 6. Retrieve cars manufactured after 2015
SELECT *
FROM cars
WHERE year > 2015;

-- 7. Retrieve cars priced between 5 lakh and 10 lakh
SELECT *
FROM cars
WHERE price BETWEEN 500000 AND 1000000;

-- 8. Show the top 5 newest cars
SELECT name, company, year
FROM cars
ORDER BY year DESC
LIMIT 5;

-- 9. Show the top 5 oldest cars
SELECT name, company, year
FROM cars
ORDER BY year ASC
LIMIT 5;

-- 10. Find the total number of cars for each company
SELECT company, COUNT(*) AS total_cars
FROM cars
GROUP BY company
ORDER BY total_cars DESC;

-- 11. Find the average price of cars by company
SELECT company, AVG(price) AS avg_price
FROM cars
GROUP BY company
ORDER BY avg_price DESC;

-- 12. Find the car with the highest kilometers driven
SELECT name, company, kms_driven
FROM cars
ORDER BY kms_driven DESC
LIMIT 1;

-- 13. Find the car with the lowest kilometers driven
SELECT name, company, kms_driven
FROM cars
ORDER BY kms_driven ASC
LIMIT 1;

-- 14. Show the total number of cars available in each location
SELECT location, COUNT(*) AS total_cars
FROM cars
GROUP BY location
ORDER BY total_cars DESC;

-- 15. Find the average price of diesel cars
SELECT AVG(price) AS avg_diesel_price
FROM cars
WHERE fuel_type = 'Diesel';

-- 16. Find the average price of petrol cars
SELECT AVG(price) AS avg_petrol_price
FROM cars
WHERE fuel_type = 'Petrol';

-- 17. Find the top 3 companies with the most expensive cars on average
SELECT company, AVG(price) AS avg_price
FROM cars
GROUP BY company
ORDER BY avg_price DESC
LIMIT 3;

-- 18. Find the company that has the cheapest car
SELECT company, name, price
FROM cars
ORDER BY price ASC
LIMIT 1;

-- 19. Find the total kilometers driven by all cars combined
SELECT SUM(kms_driven) AS total_kms
FROM cars;

-- 20. Find the company with the highest total value of cars (sum of prices)
SELECT company, SUM(price) AS total_value
FROM cars
GROUP BY company
ORDER BY total_value DESC
LIMIT 1;
