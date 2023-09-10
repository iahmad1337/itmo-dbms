-- 1
-- create table Groups (
--     group_id int,
--     group_no char(6)
-- );
-- create table Students (
--     student_id int
--     name varchar(30),
--     group_id int
-- );

-- 2 (slide 81)
-- alter table Groups
--     add constraint group_id_unique unique (group_id);

-- 3 (slide 82)
alter table Students add foreign key (group_id)
    references Groups (group_id);