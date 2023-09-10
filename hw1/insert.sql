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