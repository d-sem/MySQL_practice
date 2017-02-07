-- Задание: 18 (Serge I: 2003-02-03)
-- Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

SELECT 
    DISTINCT(maker), price
FROM
    product p
    JOIN printer pr ON p.model = pr.model
WHERE color = 'y' AND price = (
    SELECT MIN(price) FROM printer WHERE color = 'y'
);
