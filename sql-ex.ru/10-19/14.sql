-- Задание: 14 (Serge I: 2012-04-20)

-- Найти производителей, которые выпускают более одной модели, 
-- при этом все выпускаемые производителем модели являются продуктами одного типа.

--Вывести: maker, type

SELECT 
    DISTINCT maker, type
FROM 
    product
WHERE maker IN(
    SELECT
        maker
    FROM 
        product
    GROUP BY maker
    HAVING count(DISTINCT type) = 1 AND count(model) > 1
);

