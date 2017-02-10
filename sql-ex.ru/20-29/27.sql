-- Найдите средний размер диска ПК каждого из тех производителей, 
-- которые выпускают и принтеры. Вывести: maker, средний размер HD.

SELECT 
  maker, AVG(hd)
FROM 
  product p
  JOIN pc ON p.model = pc.model
WHERE maker IN(
  SELECT 
    maker
  FROM
    product p
  WHERE type = 'printer'

  INTERSECT

  SELECT 
    maker
  FROM
    product p
  WHERE type = 'PC' 
)
GROUP BY maker;