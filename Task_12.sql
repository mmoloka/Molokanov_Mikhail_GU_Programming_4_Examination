# 12. Объединить все таблицы в одну, при этом сохраняя поля, 
#     указывающие на прошлую принадлежность к старым таблицам.

CREATE TABLE common
SELECT s.*, a.kind AS type
FROM animals a JOIN
(SELECT d.name, d.skill, d.birth, p.kind, p.animal_id
FROM dogs d JOIN pets p ON d.pet_id = p.id) s ON s.animal_id = a.id
UNION
SELECT s1.*, a.kind AS type
FROM animals a JOIN
(SELECT c.name, c.skill, c.birth, p.kind, p.animal_id
FROM cats c JOIN pets p ON c.pet_id = p.id) s1 ON s1.animal_id = a.id
UNION
SELECT s2.*, a.kind AS type
FROM animals a JOIN
(SELECT h.name, h.skill, h.birth, p.kind, p.animal_id
FROM hamsters h JOIN pets p ON h.pet_id = p.id) s2 ON s2.animal_id = a.id
UNION
SELECT s3.*, a.kind AS type
FROM animals a JOIN
(SELECT hd.name, hd.skill, hd.birth, su.kind, su.animal_id
FROM horses_donkeys hd JOIN sumpters su ON hd.sumpter_id = su.id) s3 ON s3.animal_id = a.id;

ALTER TABLE common
DROP COLUMN animal_id;