-- Задача №3. Города вместе со странами.

-- Дана таблица с городами city (поля: id, name имя, country_id айди страны) и странами country (поля: id, name имя).
--
-- Составьте SQL запрос, который
--   1. выведет города вместе со странами.
--   2. выведет страны, в которых есть города.
--   3. выведет страны, в которых нет городов.

-- РЕШЕНИЕ

-- 1. выведет города вместе со странами

SELECT 
  `city`.`name` AS `city`, 
  `country`.`name` AS `country`
FROM 
  `city` 
  INNER JOIN `country` ON `city`.`country_id` = `country`.`id`;

-- 2. выведет страны, в которых есть города.

SELECT 
  `contry`.`name` AS `country` 
FROM 
  `city` 
  INNER JOIN `country` ON `city`.`country_id` = `country`.`id` 
GROUP BY `country`.`ID`;

-- 3. выведет страны, в которых нет городов.

SELECT 
  `country`.`name` AS `country`
FROM 
  `country` 
  LEFT JOIN `city` ON `country`.`ID` = `city`.`country_id` 
WHERE `city`.`id` IS NULL;