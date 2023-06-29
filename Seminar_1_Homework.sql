-- 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ

SELECT * FROM lesson_1_homework.phones_table;

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)

SELECT ProductName, Manufacturer, Price
FROM lesson_1_homework.phones_table
WHERE ProductCount>2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”

SELECT * FROM lesson_1_homework.phones_table
WHERE Manufacturer = 'Samsung';

-- 4. Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000

SELECT * FROM lesson_1_homework.phones_table
WHERE (Price*ProductCount)>100000 AND (Price*ProductCount)<145000;

-- 5.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
	-- 5.1. Товары, в которых есть упоминание "Iphone" 
    
SELECT * FROM lesson_1_homework.phones_table
WHERE ProductName LIKE 'iPhone%';
    
	-- 5.2. "Galaxy"
SELECT * FROM lesson_1_homework.phones_table
WHERE ProductName RLIKE 'Galaxy';   

-- 5.3.  Товары, в которых есть ЦИФРЫ

SELECT * FROM lesson_1_homework.phones_table
WHERE ProductName RLIKE '[0-9]';   

-- 5.4.  Товары, в которых есть ЦИФРА "8"  

SELECT * FROM lesson_1_homework.phones_table
WHERE ProductName RLIKE '8';   


