-- Задание: 17 (Serge I: 2003-02-03)
-- Найдите модели ПК-блокнотов, скорость которых меньше скорости любого из ПК. 

-- Вывести: type, model, speed

SELECT 
    DISTINCT(type), p.model, speed
FROM 
    laptop l
    JOIN product p ON l.model = p.model
WHERE speed < ALL(
    SELECT DISTINCT(speed) FROM PC
);