--  Задание 39

--  Найдите корабли, "сохранившиеся для будущих сражений"; т.е. выведенные из 
--  строя в одной битве (damaged), они участвовали в другой, произошедшей позже.

-- 1ый вариант решения --

SELECT 
  DISTINCT a.ship
FROM
  (
    SELECT 
      *
    FROM
      outcomes o
    JOIN battles b ON o.battle = b.name
  ) a
  JOIN(
    SELECT 
      *
    FROM
      outcomes o
    JOIN battles b ON o.battle = b.name
  ) b ON a.ship = b.ship
WHERE a.result = 'damaged' 
  AND a.battle <> b.battle 
  AND a.date < b.date;
  
-- 2ой вариант решения

SELECT 
  DISTINCT a.ship
FROM
  (
    SELECT 
      *
    FROM
      outcomes o
    JOIN battles b ON o.battle = b.name
  ) a
  JOIN(
    SELECT 
      *
    FROM
      outcomes o
    JOIN battles b ON o.battle = b.name
  ) b ON a.ship = b.ship
WHERE a.result = 'damaged'
  AND a.date < b.date;