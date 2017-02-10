-- Найдите производителей принтеров, которые производят ПК 
-- с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, 
-- имеющих наименьший объем RAM. 

-- Вывести: Maker

SELECT 
  DISTINCT(maker)
FROM product
WHERE type = 'printer' 
  AND maker IN(
    SELECT DISTINCT(maker)
    FROM product p
      JOIN pc ON p.model = pc.model
    WHERE ram = (
      SELECT MIN(ram) FROM pc
    ) 
   AND speed =  (
      SELECT MAX(speed) FROM pc
      WHERE ram = ( 
        SELECT MIN(ram) FROM pc
     )
  )
);