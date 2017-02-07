-- Задание: 13 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК, выпущенных производителем A.

SELECT 
    AVG(speed)
FROM
  product p
  JOIN pc ON p.model = pc.model
WHERE maker = 'A';
