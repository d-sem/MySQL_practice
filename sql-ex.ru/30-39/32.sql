--  Задание 32

--  Одной из характеристик корабля является половина куба калибра его главных орудий (mw). 
--  С точностью до 2 десятичных знаков определите среднее значение mw для кораблей каждой страны, 
--  у которой есть корабли в базе данных.


SELECT 
  country, CAST(AVG(bore*bore*bore/2) AS DEC(8,2)) mw
FROM 
  classes c
  JOIN (
    SELECT 
      class, ship name
    FROM 
      classes c
      JOIN outcomes o ON c.class = o.ship

    UNION

    SELECT 
      c.class, name
    FROM 
      classes c
      JOIN ships s ON c.class = s.class
  ) s 
  ON c.class = s.class
GROUP BY country;