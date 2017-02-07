-- Задание: 19 (Serge I: 2003-02-13)

-- Для каждого производителя, имеющего модели в таблице Laptop, 
-- найдите средний размер экрана выпускаемых им ПК-блокнотов. 

-- Вывести: maker, средний размер экрана.

SELECT
    maker, AVG(screen)
FROM
    product p
    JOIN laptop l ON p.model = l.model
GROUP BY maker;
