-- Comments in SQL Start with dash-dash --
--1
SELECT * FROM analytics WHERE ID = 1880
--2
SELECT * FROM analytics WHERE last_updated = '2018-08-01';
--3
SELECT category, COUNT(*) FROM analytics GROUP BY category;
--4
SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;
--5
SELECT app_name, reviews FROM analytics WHERE rating >4.8 LIMIT 1;
--6
SELECT category, avg(rating) AS average FROM analytics GROUP BY category ORDER BY average desc;
--7
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;
--8
SELECT app_name, rating, min_installs FROM analytics WHERE min_installs < 50 AND rating >0;
--9
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews >=10000;
--10
SELECT app_name, price, reviews FROM analytics WHERE price BETWEEN .1 AND 1 ORDER BY reviews desc LIMIT 10;
--11
SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;
--12
SELECT app_name, price FROM analytics ORDER BY price desc LIMIT 1;
--13
SELECT SUM(reviews) FROM analytics;
--14
SELECT category, COUNT(*) FROM analytics WHERE count > 300 GROUP BY category ORDER BY count desc;
--15
SELECT app_name, max(min_installs/reviews) FROM analytics WHERE min_installs >= 100000 GROUP BY app_name ORDER BY max desc LIMIT 1;