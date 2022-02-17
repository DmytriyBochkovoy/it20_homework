-- 1

SELECT genres.name FROM users 
INNER JOIN books ON books.genre_id = genres.id 
WHERE books.bool_count is NULL;

-- 2

SELECT users.surname, users.name, areas.name FROM users 
INNER JOIN areas ON users.area_id = areas.id 
ORDER BY areas.name;
LIMIT 0, 4

-- 3

SELECT categories.name, COUNT(news.id) FROM categories 
INNER JOIN news ON news.category_id = categories.id 
GROUP BY categories.name;

-- 4

SELECT cities.name, areas.name FROM cities 
INNER JOIN areas ON areas.id = cities.areas_id
ORDER BY cities.name;

-- 5

SELECT schools.name, districts.name FROM schools 
INNER JOIN districts ON schools.district_id = districts.id;


