-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC. 

-- Вывести: maker, максимальная цена.


SELECT 
  maker, MAX(price)
FROM
  product p
  JOIN pc ON p.model = pc.model
GROUP BY maker;
