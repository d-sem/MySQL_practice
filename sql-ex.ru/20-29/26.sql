-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных 
-- производителем A (латинская буква). 

-- Вывести: одна общая средняя цена.

SELECT 
  AVG(price)
FROM
  product p
  JOIN (
    SELECT model, price FROM pc
    UNION ALL
    SELECT model, price FROM laptop
  ) pc ON p.model = pc.model
WHERE maker = 'A';