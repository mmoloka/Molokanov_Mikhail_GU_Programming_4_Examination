# 10. Удалить из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку.
#     Объединить таблицы лошади, и ослы в одну таблицу.

DROP TABLE camels;
 
DELETE FROM sumpters WHERE kind = "camels";

CREATE TABLE horses_donkeys
SELECT * FROM horses UNION SELECT * FROM donkeys;

ALTER TABLE horses_donkeys
DROP COLUMN id,
ADD id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
ADD FOREIGN KEY (sumpter_id) REFERENCES sumpters(id);


# 11. Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, 
# но младше 3 лет и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице.

CREATE TABLE young_animals 
SELECT `name`, skill, birth 
FROM dogs
WHERE DATEDIFF(CURDATE(), birth) > 365 AND DATEDIFF(CURDATE(), birth) < 1095
UNION 
SELECT `name`, skill, birth
FROM cats
WHERE DATEDIFF(CURDATE(), birth) > 365 AND DATEDIFF(CURDATE(), birth) < 1095
UNION
SELECT `name`, skill, birth
FROM hamsters
WHERE DATEDIFF(CURDATE(), birth) > 365 AND DATEDIFF(CURDATE(), birth) < 1095
UNION
SELECT `name`, skill, birth
FROM horses_donkeys
WHERE DATEDIFF(CURDATE(), birth) > 365 AND DATEDIFF(CURDATE(), birth) < 1095;

ALTER TABLE young_animals
ADD id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
ADD age_months INT ;

UPDATE young_animals
SET age_months = TIMESTAMPDIFF(MONTH, birth, CURDATE());
