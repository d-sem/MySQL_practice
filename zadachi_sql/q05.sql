-- Задача №5. Страны и их города через запятую.

-- Дана таблица с городами city (поля: id, name имя, country_id айди страны) и странами country (поля: id, name имя).

-- Составьте SQL запрос, который выведет список стран и для каждой страны ее города через запятую 
-- (считаем, что городов в каждой стране достаточно мало для этого).

SELECT 
    `country`.`name` as `country`, 
    IFNULL(GROUP_CONCAT(`city`.`name`), '') as `cities` 
FROM 
    `country` LEFT JOIN `city` ON `country`.`id` = `city`.`country_id` 
GROUP BY `country`.`name`;