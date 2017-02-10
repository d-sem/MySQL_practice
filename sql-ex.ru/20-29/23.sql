-- Найдите производителей, которые производили бы как ПК
-- со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.

-- Вывести: Maker

SELECT DISTINCT(maker)
FROM
  product p
  JOIN pc ON p.model = pc.model
WHERE speed >= 750

INTERSECT

SELECT DISTINCT(maker)
FROM
  product p
  JOIN laptop l ON p.model = l.model
WHERE speed >= 750;