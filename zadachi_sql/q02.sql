-- Задача №2. Максимальная зарплата по возрастам.

-- Дана таблица workers с работниками (поля: id, name имя, salary зарплата, age возраст).

-- Составьте SQL запрос, который найдет максимальную зарплату по возрастам. То есть результат должен быть в таком виде:

-- Возраст Максимальная зп для этого возраста
--   20 300
--   21 400
--   22 500

SELECT 
  `age`, MAX(`salary`) AS `salary` 
FROM 
  `workers` 
GROUP BY `age`;