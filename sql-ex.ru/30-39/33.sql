--  Задание 33

--  Укажите корабли, потопленные в сражениях в Северной Атлантике (North Atlantic). 
--  Вывод: ship.

SELECT
  ship
FROM
  outcomes
WHERE
  battle = 'North Atlantic' and result = 'sunk';