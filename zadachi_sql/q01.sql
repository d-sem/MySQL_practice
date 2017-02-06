-- Задача №1. Максимальная зарплата.

-- Дана таблица workers с работниками (поля: id, name имя, salary зарплата). 

-- Составьте SQL запрос, который
--   1. найдет максимальную зарплату в таблице.
--   2. найдет всех работников с максимальной зарплатой.

SELECT 
    `name`, `salary` 
FROM 
    `workers` 
WHERE `salary` = ( SELECT MAX(`salary`) FROM `workers` );