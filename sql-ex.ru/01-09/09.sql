-- Задание: 9 (Serge I: 2002-11-02)
-- Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

SELECT 
    DISTINCT(maker)
FROM 
    product p
    JOIN pc ON p.model = pc.model
WHERE speed >= 450;