-- SQL BASICS TABLE CREATING & DATA INSERTION


-- Table for college relation
CREATE TABLE college
(
	[cName] varchar(255),
	[state] char(2),
	[enrollment] int
);

-- Inserting data in college relation
INSERT INTO college(cName, state, enrollment)
VALUES
('IIT', 'IL', 7000),
('UIC', 'IL', 30000),
('CMU', 'PA', 15000),
('MIT', 'MA', 20000);

-- Table for student relation
create table student
(
	[sID] int,
	[sName] varchar(255),
	[GPA] decimal,
	[sizeHS] int
);

-- Inserting data in the student relation
insert into student(sID, sName, GPA, sizeHS)
values
(1234567,'Anwar Adam', 3.3, 8000),
(2134839,'Roman Abramovich', 3.82, 550),
(9381093,'Stan Kreonke', 2.73, 330),
(4688302,'Isha Shah', 4.0, 2500),
(3839023, 'Sakeenah Amatul', 3.8, 2000),
(2909381,'Sajitha Shaik', 2.8, 1500),
(2838102, 'Edwyn Fingerle', 3.6, 2000),
(7381992, 'Susan Boyle', 2.2, 1200),
(3821883,'Paul Pogba', 3.1, 2700),
(8192039, 'Mesut Ozil', 3.5, 421);

-- Creating a table for the apply relation
create table apply
(
[sID] int,
[cName] varchar(255),
[major] varchar(255),
[decision] char(1)
);

-- Inserting the data for the apply relation
insert into apply(sID, cName,major, decision)
values
(1234567, 'IIT', 'Artificial Intelligence', 'Y'),
(2134839, 'CMU', 'Engineering', 'Y'),
(9381093, 'MIT', 'Real Estate', 'Y'),
(4688302, 'UIC', 'Business', 'Y'),
(3839023, 'MIT', 'Physics', 'Y' ),
(2909381, 'CMU', 'Biology', 'N'),
(2838102, 'IIT', 'Engineering', 'N'),
(7381992, 'CMU', 'Biology','Y' ),
(3821883, 'CMU', 'Biology', 'N'),
(8192039, 'MIT', 'Physics', 'N');

-- This statement will give an output of all the students in the 
-- student relation with a GPA > 3.6

-- select sID, sName, GPA
-- from student
-- where GPA > 3.6;

-- This statement will give an output of the names of the students 
-- who applied and their majors from the student and apply relations
-- using the sID's.

-- select sName, major
-- from student, apply
-- where student.sID = apply.sId;

-- This statement will give an output of the names, GPA, and the decision
-- of the students based on the input being the sId's
-- and the conditions being highschool size, major, and college name

-- select sName, GPA, decision
-- from student, apply
-- where student.sId = apply.ID
--	and sizeHS < 1000 and major = 'Physics' and cName = 'CMU';

-- This statement will join all the relations

select Student.sID, sName, GPA, apply.cName, enrollment
from student, college, apply
where apply.sID = student.sID and apply.cName = college.cName;