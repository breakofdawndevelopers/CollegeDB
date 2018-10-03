CREATE DATABASE College;  
GO  

use College;
Go


create table Students
(ID int identity(1,1) Primary Key Clustered,
 FName varchar(15),
 LName varchar(15),
 Ssn int,
 Address varchar(15),
 City varchar(15),
 State varchar(15),
 Zip int,
 phone varchar(15)
);

insert into Students (Fname, LName, Ssn, Address, City, State, Zip, phone)
values ('John', 'Wilson', 111111111, '123 Broad St', 'Cleveland', 'Ohio', 44111, '216-222-1234'),
('Rose', 'Brown', 222112233, '2909 Main St', 'Euclid', 'Ohio', 44101, '440-232-4433'),
('Mark', 'Hays', 322234425, '1268 Local St', 'Beachwood', 'Ohio', 44128, '216-345-2345');


CREATE TABLE Classes
(ID int identity(1,1) Primary Key Clustered,
 Title varchar(15),
 Number int,
 Department varchar(15),
 StudentsID int NOT NULL REFERENCES dbo.Students(ID)
);  

insert into Classes (Title, Number, Department, StudentsID)
values ('Algebra', 110, 'Mathematics', 1),
('English', 120, 'English', 2),
('Chemistry', 115, 'Science', 3);


CREATE TABLE Scores
(ID int identity(1,1) Primary Key Clustered,
ScoreType varchar(15),
 Description varchar(15),
 DateAssigned datetime,
 DateDue datetime,
 DateSubmitted datetime,
 PointsEarned int,
 PointsPossible int,
 ClassesID int NOT NULL REFERENCES dbo.Classes(ID)
);  


insert into Scores(ScoreType, Description, DateAssigned, DateDue, DateSubmitted, PointsEarned, PointsPossible, ClassesID)
values('Quiz', 'HW1Quiz', 8/30/2018, 8/30/2018, 8/30/2018, 10, 10, 2),
('Homework', 'HW1', 9/1/2018, 9/3/2018, 9/3/2018, 5, 5, 1),
('Test', 'Test1', 9/10/2018, 9/10/2018, 9/10/2018, 95, 100, 3);

select * from Students
select * from Classes
select * from Scores