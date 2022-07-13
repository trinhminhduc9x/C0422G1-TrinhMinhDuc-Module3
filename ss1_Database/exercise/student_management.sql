create database  student_management;
use student_management;
create table teacher (
id int auto_increment,
name varchar(50),
age int,
contry varchar (50),
primary key(id)
);
create table student (
id int auto_increment,
name varchar(50),
primary key(id)
);
insert into student(name) value ( "minh duc"),("minh duc dep trai"),( "minh duc goodboy");
select * from student;
alter table student add age int;
set sql_safe_updates = 0;
update student set student.age = 5 where name ="minh duc";
set sql_safe_updates = 1;
select * from student;
set sql_safe_updates = 0;
delete from student where name ="minh duc dep trai";
set sql_safe_updates = 1;
select * from student;
