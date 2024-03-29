-- 1. Необходимо выбрать всех пользователей из таблицы users,которые зарегистрировали
-- свои почтовые ящики (email) в сервисе gmail.com.

SELECT * FROM `users` WHERE `email` LIKE '%gmail.com';

-- 2. Необходимо выбрать номер сертификата (number), владельца сертификата (fio) из таблицы 
-- сертификатов (certificates), где не указан год выпуска year ( по умолчанию поле year имеет
-- значение NULL).

SELECT `fio`, `number` FROM `certificates` WHERE `year` is NULL;

-- 3. Обновить таблицу certificates, установить следующие значения: в поле series установить 
-- значение ВН, в поле number – 25444, где user_id = 7.
Исправлено

UPDATE `certificates` SET `series`='ВН',`number`=25444 WHERE `user_id`= 7 ;

-- 4. Удалить последние 5 записей из таблицы users. 
Исправлено

DELETE FROM users WHERE users.id ORDER BY users.id DESC LIMIT 5

-- 5. Найти минимальное значение из поля count_students в таблице organizations, 
-- где type_id = 5.
Исправлено

SELECT MIN(`count_students`) FROM `organizations` WHERE `type_id` = 5;

-- 6. Посчитать сумму оценок rating из таблицы practice, где
-- practice_id = 1888.
Исправлено

SELECT SUM(`rating`) FROM `practice` WHERE `practice_id`=1888;

-- 7. Подсчитать количество записей в таблице organizations.

SELECT COUNT(*) FROM `organizations`;

-- 8. Необходимо вывести 10 новостей из таблицы news, отсортировать по дате 
-- добавления created_at.

SELECT * FROM `news` ORDER BY `created_at` ASC LIMIT 0, 10;

-- 9. Необходимо выбрать номер телефона (phones), и имя (name) из таблицы директоров directors, 
-- у которых название организации (organization) начинается со слова ВУЗ.

SELECT `phones`, `name` FROM `directors` WHERE `organization` LIKE 'ВУЗ%';

-- 10. Вывести surname из таблицы студентов students, которые
-- родились в 1995 году (поле birthday имеет формат DATE).
Исправлено

SELECT users.surname FROM users WHERE YEAR(`birthday`) = 1995;

-- 11. Вывести первые 5 записей из таблицы publishes, результат должен содержать 
-- следующие поля: дата (publish_date) и текст (body).
Исправлено

SELECT `publish_date`, `body` FROM `publishes` LIMIT 0, 5

-- 12. Необходимо подсчитать сколько школ зарегистрированы в каждом  регионе из таблицы schools. 
-- Результат должен содержать количество школ и идентификатор региона region_id.

SELECT `region_id`, COUNT(*) as count FROM `schools` GROUP BY `region_id`;