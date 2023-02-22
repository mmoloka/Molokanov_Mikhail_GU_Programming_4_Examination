/* 9. Заполнить низкоуровневые таблицы именами (животных), 
командами которые они выполняют и датами рождения. */

INSERT animals
VALUES
	(1, "pets"),
    (2, "sumpters");

INSERT pets(kind, animal_id)
VALUES
	("dogs", 1),
    ("cats", 1),
    ("hamsters", 1);
    
INSERT sumpters(kind, animal_id)
VALUES
	("horses", 2),
    ("camels", 2),
    ("donkeys", 2);
    
INSERT dogs
VALUES
		(1, "Muhtar", "bark", '2021-02-15', 1),
        (2, "Lassie", "seat", '2018-07-04', 1);

INSERT cats
VALUES
		(1, "Murka", "meow", '2017-11-25', 2),
        (2, "Barsik", "lay", '2022-01-06', 2);
        
INSERT hamsters
VALUES
		(1, "Bunny", "run", '2022-10-13', 3),
        (2, "Brut", "play", '2022-10-13', 3);
        
INSERT horses
VALUES
		(1, "Vegas", "run", '2021-12-01', 1),
        (2, "Angel", "jump", '2018-05-05', 1);

INSERT camels
VALUES
		(1, "Mahmut", "run", '2022-02-01', 2),
        (2, "Bongo", "walk", '2019-08-03', 2);
        
INSERT donkeys
VALUES
		(1, "Dora", "run", '2021-01-14', 3),
        (2, "Ajax", "walk", '2022-09-10', 3);