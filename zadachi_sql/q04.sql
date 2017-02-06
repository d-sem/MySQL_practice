-- Задача №4. Страны с городами.

-- Дана таблица с городами city (поля: id, name имя, country_id айди страны) и странами country (поля: id, name имя).

-- Составьте SQL запрос, который
-- 1. выведет список стран и для каждой страны количество городов в ней.
-- 2. выведет список тех стран, в которых количество городов больше трех.

-- РЕШЕНИЕ

-- 1. Выведет список стран и для каждой страны количество городов в ней.

SELECT 
    `country`.`name` AS `country`, 
    IFNULL(COUNT(`city`.`id`), 0) AS `cnt` 
FROM 
    `country` 
    LEFT JOIN `city` ON `city`.`country_id` = `country`.`id` 
GROUP BY `country`.`id`;

-- 2. выведет список тех стран, в которых количество городов больше трех.

SELECT 
    `country`.`name` AS `country`, COUNT(*) AS `cnt`
FROM 
    `country` 
    INNER JOIN `city` ON `city`.`country_id` = `country`.`id`
GROUP BY `country`.`id`
HAVING `cnt` > 3;