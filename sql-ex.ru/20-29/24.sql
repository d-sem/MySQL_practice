-- Задание: 24 (Serge I: 2003-02-03)
-- Перечислите номера моделей любых типов, 
-- имеющих самую высокую цену по всей имеющейся в базе данных продукции.

WITH mass AS (
  SELECT model, price FROM laptop
  UNION
  SELECT model, price FROM PC
  UNION
  SELECT model, price FROM printer
)
SELECT model FROM mass
WHERE price = (SELECT MAX(price) FROM mass);
