--  Задание 34

--  По Вашингтонскому международному договору от начала 1922 г. 
--  запрещалось строить линейные корабли водоизмещением более 35 тыс.тонн. 

--  Укажите корабли, нарушившие этот договор (учитывать только корабли c известным 
--  годом спуска на воду). Вывести названия кораблей.
 
 
SELECT
  name
FROM 
  classes c
  JOIN ships s ON c.class = s.class
WHERE type = 'bb' AND launched >= 1922 AND displacement > 35000;