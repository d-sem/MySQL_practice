-- Задание: 12 (Serge I: 2002-11-02)

-- Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

SELECT 
    AVG(speed)
FROM 
    laptop
WHERE price > 1000;