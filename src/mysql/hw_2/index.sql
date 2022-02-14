-- создаем таблицу с названием столбцов:

CREATE TABLE `users` ( 
  id INT NOT NULL AUTO_INCREMENT, 
  name VARCHAR(100), 
  surname VARCHAR(100), 
  address VARCHAR(100), 
  PRIMARY KEY (id)
);

-- Одним запросом добовляем сразу несколько записей в таблицу:

INSERT INTO `users`(`name`, `surname`, `address`) 
VALUES ('Дмитрий', 'Бочковой', 'ул.Академическая'), 
  ('Петр', 'Дмитриенко', 'ул.Социалистическая'), 
  ('Анатолий', 'Алегров', 'ул.Южная'), 
  ('Станислав', 'Мигренко', 'ул.Парковая');

-- Удаляем запись c id=1 из таблицы cars:

DELETE FROM `cars` WHERE id=1;

-- Удаляем все записи из таблицы cars:

TRUNCATE TABLE `cars`;

-- Выводим значения двух полей из таблицы cars:

SELECT `name`, `power` FROM `cars`

-- Выбираем все записи из таблицы cars:

SELECT `id`, `name`, `power` FROM `cars`;

-- Обновляем значение полей `name` и `power` по условию id < 2:

UPDATE `cars` SET `name`='Volvo',`power`='200 лс' WHERE `name`='Mazda-6'

-- Выбираем записи по условию id<3:

SELECT `id`, `name`, `power` FROM `cars` WHERE id<3;