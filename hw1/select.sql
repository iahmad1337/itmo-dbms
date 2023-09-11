select group_id, group_no from Groups;

select student_id, name, group_id from Students;

select name, group_no
    from Students natural join Groups;

select Students.name, Groups.group_no
from Students
        inner join Groups
        on Students.group_id = Groups.group_id;

select count(*) from Groups;

select count(*) from Students;

select count(*)
from Students
where group_id in (select group_id from Groups where group_no = 'M34391');

select count(*)
from Students natural join Groups
where name like '%зе%' or group_no like '%7%';

select count(*)
from Students natural join Groups
where name like '%v' and group_no like '%7%';

select group_no, count(*)
from Groups g inner join Students s on g.group_id = s.group_id
group by group_no
order by group_no desc;

select group_no, count(*)
from Groups g inner join Students s on g.group_id <> s.group_id
where group_no not like '%7%'
group by group_no
order by group_no;