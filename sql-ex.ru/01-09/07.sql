-- Задание: 7 (Serge I: 2002-11-02)
-- Найдите номера моделей и цены всех продуктов (любого типа), выпущенных производителем B (латинская буква).

SELECT 
    p.model, price
FROM 
    product p
    JOIN laptop l   ON p.model = l.model
WHERE maker = 'B'

UNION

SELECT 
    p.model, price
FROM 
    product p
    JOIN pc ON p.model = pc.model
WHERE maker = 'B'

UNION

SELECT 
    p.model, price
FROM 
    product p
    JOIN printer pr ON p.model = pr.model
WHERE maker = 'B';