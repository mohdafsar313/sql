use task10;
Create table Student_info (
    stud_id int,
    stud_name Varchar(20),
    stud_sem Varchar(10),
    stud_dob date,
    Year_of_passout year
);

alter table Student_info add constraint 
    stud_pk primary key (stud_id);

alter table Student_info add constraint 
    dob_chk check (Year_of_passout > 2000);

Insert into Student_info values (1001, 'Afsar', '4VK21CS059', '2002-12-23', 2025);
Insert into Student_info values (1001, 'Damish', '4VK21CS057', '2003-12-23', 2025);
Insert into Student_info values (1002, 'Samuel', '4VK21CS061', '2003-03-18', 2025);
Insert into Student_info values (1003, 'Nagesh', '4EG21CS014', '2002-12-21', 2025);
Insert into Student_info values (1004, 'Pusphikanth', '4EG21CS030', '2002-10-23', 2025);
Insert into Student_info values (1005, 'Hemanthotta', '4EG21CS035', '2002-12-21', 2025);
Insert into Student_info values (1006, 'Surya', '4VK21CS068', '2003-12-21', 2025);
Insert into Student_info values (1007, 'Sai', '4VK21CS067', '2003-12-21', 2025);
Insert into Student_info values (1008, 'Sihi', '4VK21CS066', '2003-03-04', 2025);
Insert into Student_info values (1009, 'Meghana', '4VK21CS009', '2003-12-21', 2025);
Insert into Student_info values (1010, 'Kumar', '4VK21CS010', '2003-07-11', 2025);
Insert into Student_info values (1011, 'Ruksa', '4VK21CS022', '2003-09-21', 2025);
Insert into Student_info values (1012, 'Zayed', '4VK21CS011', '2002-12-23', 2025);
Insert into Student_info values (1013, 'Santosh', '4EG21CS017', '2002-10-10', 2025);
Insert into Student_info values (1014, 'Shibafalima', '4VK21CS055', '2003-02-06', 2025);

alter table Student_info add column no_of_backlogs int;

alter table Student_info rename column stud_id to student_id;
alter table Student_info rename column stud_name to student_name;
alter table Student_info rename column stud_usn to student_usn;

update Student_info set no_of_backlogs = 1 
where student_id = 100;

update Student_info set no_of_backlogs = 2 
where student_id = 101;

update Student_info set no_of_backlogs = 2 
where student_id = 102;

update Student_info set no_of_backlogs = 3 
where student_id = 103;

update Student_info set no_of_backlogs = 4 
where student_id = 104;

delete from Student_info where student_id = 110;
delete from Student_info where student_id = 111;
delete from Student_info where student_id = 112;
delete from Student_info where student_id = 113;

select * from Student_info where student_id >= 100 and year_of_passout = 2025;

select student_name from Student_info 
where year_of_passout = 2025 or no_of_backlogs = 3;

select * from Student_info where student_id in (1011, 1013, 106, 110, 105);

select * from Student_info where student_id not in (108, 109, 110, 105);

select student_usn from Student_info where student_id between 103 and 106;

select student_name from Student_info 
where student_id not between 100 and 105;

select count(student_id) from Student_info;

select max(no_of_backlogs) as highest_backlogs from Student_info;

select min(no_of_backlogs) as lowest_backlogs from Student_info;

select avg(no_of_backlogs) as avg_backlogs from Student_info;

select sum(no_of_backlogs) as total_backlogs from Student_info;

create table college_info (
    college_id int,
    stud_id int,
    college_name varchar(100),
    college_loc varchar(50),
    est_year int,
    college_no int
);

alter table college_info add constraint
college_pk primary key (college_id);

alter table college_info add constraint
est_chk check (est_year > 1990);

alter table college_info add constraint
for_key foreign key (stud_id) references student_info (student_id);

alter table college_info modify column stud_id int;

INSERT INTO college_info  VALUES
(201, 1001, 'KVG College of Engineering', 'Sullia', 2000, 401),
(202, 1014, 'KVG College of Engineering', 'Sullia', 2000, 402),
(203, 1002, 'GEC Koppala', 'Koppala', 2000, 403),
(204, 1003, 'JSS MTE', 'Chitradurga', 2000, 404),
(205, 1004, 'GEC Challekere', 'Challekere', 2001, 404),
(206, 1005, 'Adarsh College', 'Ballary', 2001, 404),
(207, 1006, 'KVG College of Engineering', 'Sullia', 2000, 401),
(208, 1007, 'GEC Challekere', 'Challekere', 2001, 408),
(209, 1008, 'Adarsh College', 'Ballary', 2001, 409),
(210, 1009, 'KVG College of Engineering', 'Sullia', 2000, 410),
(211, 1010, 'BIT college', 'Bangalore', 1998, 413),
(212, 1011, 'KVG College of Engineering', 'Sullia', 2000, 411),
(213, 1012, 'KVG College of Engineering', 'Sullia', 2000, 412),
(214, 1013, 'KVG College of Engineering', 'Sullia', 2000, 414);



ALTER TABLE college_info ADD COLUMN princi_name VARCHAR(30);
ALTER TABLE college_info RENAME COLUMN college_id TO col_id;
ALTER TABLE college_info RENAME COLUMN college_name TO col_name;
ALTER TABLE college_info RENAME COLUMN college_loc TO col_loc;

ALTER TABLE college_info MODIFY COLUMN college_id INT;
ALTER TABLE student_info MODIFY COLUMN student_id BIGINT;
ALTER TABLE college_info MODIFY COLUMN college_no BIGINT;


UPDATE college_info SET princi_name = 'Suresh' WHERE college_id = 201;
UPDATE college_info SET princi_name = 'Raghav' WHERE college_id = 202;
UPDATE college_info SET princi_name = 'Siddharth' WHERE college_id = 203;
UPDATE college_info SET princi_name = 'Narayan' WHERE college_id = 205;
UPDATE college_info SET princi_name = 'Kantara Narayana' WHERE college_id = 210;

DELETE FROM college_info WHERE college_id = 209;
DELETE FROM college_info WHERE college_id = 208;
DELETE FROM college_info WHERE college_id = 210;
DELETE FROM college_info WHERE college_id = 213;
DELETE FROM college_info WHERE college_id = 214;

SELECT * FROM student_info s 
INNER JOIN college_info c ON s.student_id = c.student_id;

SELECT * FROM student_info s 
LEFT JOIN college_info c ON s.student_id = c.student_id;

SELECT * FROM student_info s 
RIGHT JOIN college_info c ON s.student_id = c.student_id;

SELECT * FROM college_info 
WHERE college_id = 210 OR college_id = 201;

SELECT * FROM college_info 
WHERE college_id IN (201, 202, 203, 209, 210);

SELECT * FROM college_info 
WHERE college_id NOT IN (208, 209, 213, 214);

SELECT * FROM college_info 
WHERE college_id BETWEEN 203 AND 208;

SELECT * FROM college_info 
WHERE college_id NOT BETWEEN 210 AND 214;

SELECT COUNT(college_id) FROM college_info;

SELECT MAX(est_year) AS Recent_college 
FROM college_info;

SELECT MIN(est_year) AS Old_college 
FROM college_info;

SELECT AVG(est_year) AS avg_year 
FROM college_info;

