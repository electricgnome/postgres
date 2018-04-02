-- CREATE TABLE restaurant(
--   id SERIAL NOT NULL PRIMARY KEY,
--   name VARCHAR,
--   distance NUMERIC (5,2),
--   stars INTEGER,
--   category VARCHAR,
--   fav_dish VARCHAR,
--   takeout BOOLEAN,
--   last_ate DATE
-- );

-- INSERT INTO restaurant VALUES(
--   DEFAULT, 'Torchys', 7.1, 4, 'Mexican', 'The Crossroads', TRUE, '2018-03-05');

-- INSERT INTO restaurant VALUES(
--   DEFAULT, 'Majaraja Bhog', 16, 4, 'Indian Vegetarian', 'all you can eat', False, '2018-01-08');


-- INSERT INTO restaurant VALUES(
--   DEFAULT, 'Peking Cuisine', 16, 5, 'Chinese', 'Mapo Tofu', False, '2018-02-18');

-- INSERT INTO restaurant VALUES(
--   DEFAULT, 'Pho Binh 59 South', 16, 2, 'Vietnamese', 'Beef Pho', False, '2018-01-15');

-- INSERT INTO restaurant VALUES(
--   DEFAULT, 'Cane Rosso', 6.4, 5, 'Pizza', 'Joan Marie', TRUE, '2018-03-20');

-- INSERT INTO restaurant VALUES(
--   DEFAULT, 'Lupe Tortilla', 5.9, 5, 'Mexican', 'Fajitas', FALSE, '2018-03-28');

-- SELECT name FROM restaurant WHERE stars = 5;

-- SELECT name, fav_dish FROM restaurant WHERE stars=5;

-- SELECT id, name FROM restaurant WHERE name LIKE '%Cane Rosso%';

-- SELECT name FROM restaurant WHERE category ILIKE '%mexican%';

-- SELECT name FROM restaurant WHERE takeout = TRUE;

-- UPDATE restaurant set takeout = TRUE WHERE name ilike '%lupe%'

-- SELECT name FROM restaurant WHERE takeout = TRUE AND category ILIKE '%mexican%';

-- SELECT name FROM restaurant WHERE distance < 10;

-- SELECT name FROM restaurant WHERE last_ate < '2018-03-20';

-- SELECT name FROM restaurant WHERE last_ate < '2018-03-20' AND stars =5;



