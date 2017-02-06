--  Задание 36

--  Перечислите названия головных кораблей, имеющихся в базе данных (учесть корабли в Outcomes).


SELECT 
  name
FROM
  classes c
  JOIN (
    SELECT name FROM ships
    UNION
    SELECT ship FROM outcomes
  ) s ON c.class = s.name;