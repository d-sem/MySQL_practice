--  Задание 37 
  
--  Найдите классы, в которые входит только один корабль из базы данных (учесть также корабли в Outcomes).  
  
SELECT
  c.class
FROM
  classes c
  JOIN
  (
    SELECT class, name FROM ships
    
    UNION 
  
    SELECT ship,  ship FROM outcomes
  ) AS ss ON c.class = ss.class
GROUP BY c.class
HAVING COUNT(*) = 1