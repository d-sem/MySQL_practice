-- Задача №9. Автобусы и маршруты.

-- Есть автобусы, есть маршруты. 
-- Один автобус имеет несколько маршрутов. Имеются автобусы с 2 маршрутами, автобусы с 3 маршрутами. 
-- Необходимо вывести количество автобусов, у которых количество маршрутов равно максимальному. 

-- Таблицы в базе данных продумайте самостоятельно.

-- РЕШЕНИЕ

-- Если сильно не уходить в фанатизм творчества, то нам нужно две таблицы:
-- buses (id , name) 
-- routes (id, bus_id, from (откуда), to (куда)) 

-- Создание таблиц 

CREATE TABLE `buses`( 
    `id` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT, 
    `name` VARCHAR(20) NOT NULL, 

    PRIMARY KEY(`id`) 
); 

CREATE TABLE `routes`( 
    `id` INT(5) UNSIGNED NOT NULL AUTO_INCREMENT, 
    `bus_id` INT(5) UNSIGNED DEFAULT NULL, 

    `from` VARCHAR(30) NOT NULL, 
    `to` VARCHAR(30) NOT NULL, 

    PRIMARY KEY(`id`), 

    FOREIGN KEY(`bus_id`) 
    REFERENCES `buses`(`id`) 
    ON DELETE SET NULL 
);

-- Заполняем тестовыми данными

INSERT INTO `buses`(`name`) VALUES 
('автобус 1'), ('автобус 2'), ('автобус 3'), ('автобус 4'), ('автобус 5'); 

INSERT INTO `routes`(`bus_id`, `from`, `to`) VALUES 
('1', 'A', 'B'), 
('2', 'C', 'A'), 
('1', 'B', 'C'), 
('1', 'D', 'E'), 
('3', 'A', 'E'), 
('2', 'A', 'D'), 
('1', 'F', 'G'), 
('2', 'D', 'F'), 
('3', 'A', 'F'), 
('4', 'A', 'C');

-- И собственно сам запрос

SELECT 
    `buses`.`id`, 
    `buses`.`name`, 
    COUNT(*) AS `cnt_routes` 
FROM 
    `buses` 
    JOIN `routes` ON `buses`.`id` = `routes`.`bus_id` 
GROUP BY `buses`.`id` 
ORDER BY `cnt_routes` DESC 
LIMIT 1;