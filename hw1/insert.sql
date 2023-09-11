-- 1
-- insert into Groups
--     (group_id, group_no) values
--     (1, 'M34371'),
--     (2, 'M34391');
-- insert into Students
--     (student_id, name, group_id) values
--     (1, 'Maksim Alzhanov', 2),
--     (2, 'Artem Koton', 1),
--     (3, 'Anna Suris', 1);

-- 2 (slide 81)
-- insert into Groups (group_id, group_no) values
--     (1, 'M34381');
-- 3 (slide 81)
delete from Groups where group_no = 'M34381';

-- 4 (in class)
insert into Students (student_id, name, group_id) values
    (4, 'Кучма Андрей Андреевич', 2),
    (5, 'Шехунов Максим Александрович', 2),
    (6, 'Дзестелов Хетаг Артурович', 2),
    (7, 'Жогова Мария Сергеевна', 2);
    

insert into Groups
    (group_id, group_no) values
    (1, 'M34361'),
    (2, 'M34371'),
    (3, 'M34381'),
    (4, 'M34391');

insert into Students (student_id, name, group_id) values
    (1, 'Каданцев Георгий Владимирович', 1),
    (2, 'Ахметов Марсель Ренатович', 2),
    (3, 'Бородин Ярослав Алексеевич', 2),
    (4, 'Гарманов Кирилл Николаевич', 2),
    (5, 'Ибрагимов Саид Исаевич', 2),
    (6, 'Белодедова Алина Сергеевна', 3),
    (7, 'Бессонницын Евгений Сергеевич', 3),
    (8, 'Карпенко Андрей Сергеевич', 3),
    (9, 'Нагибин Вадим Алексеевич', 4),
    (10, 'Смаглий Владимир Владимирович', 4);