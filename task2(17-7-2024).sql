create database School_System;
use School_System;
create table Teachers(
TeacherID int PRIMARY KEY,
FirstName VARCHAR (50),
LastName VARCHAR (50),
Subject VARCHAR (50),
);
iNSERT INTO Teachers ([TeacherID], [FirstName], [LastName], [Subject]) VALUES 
(1, 'Doha', 'Al-smadi', 'Math');
iNSERT INTO Teachers ([TeacherID], [FirstName], [LastName], [Subject]) VALUES 
(12, 'Ali', 'Ahmed', 'Science'),
(3, 'Sara', 'Mohamed', 'English'),
(4, 'Omar', 'Khan', 'History'),
(5, 'Laila', 'Ali', 'Geography'),
(6, 'Nora', 'Hassan', 'Biology'),
(7, 'Khalid', 'Farah', 'Chemistry'),
(8, 'Fatima', 'Zahra', 'Physics'),
(9, 'Samir', 'Jamal', 'Art'),
(10, 'Maya', 'El-sayed', 'Music');

use School_System;
CREATE TABLE TeacherDetails(
Salary FLOAT,
TeacherID_Details INT PRIMARY KEY,
Email VARCHAR (50),
PHONE VARCHAR (50),
Teacher_ID INT,
FOREIGN KEY (Teacher_ID) REFERENCES  Teachers(TeacherID)

);
INSERT INTO TeacherDetails ([Salary], [TeacherID_Details], [Email], [PHONE], [Teacher_ID]) VALUES 
(330, 1, 'hala@gmail.com', '077779583', 1),
(450, 2, 'ali@gmail.com', '078888999', 2),
(500, 3, 'sara@gmail.com', '079999000', 3),
(400, 4, 'omar@gmail.com', '077777111', 4),
(350, 5, 'laila@gmail.com', '076666222', 5),
(600, 6, 'nora@gmail.com', '075555333', 6),
(480, 7, 'khalid@gmail.com', '074444444', 7),
(550, 8, 'fatima@gmail.com', '073333555', 8),
(520, 9, 'samir@gmail.com', '072222666', 9),
(300, 10, 'maya@gmail.com', '071111777', 10);

CREATE TABLE Courses(
CourseID INT PRIMARY KEY,
CourseName VARCHAR(30),
InstructorID INT,
FOREIGN KEY( InstructorID ) REFERENCES  Teachers(TeacherID)
);
INSERT INTO Courses ([CourseID], [CourseName], [InstructorID]) VALUES 
(330,'hala', 1),
(450, 'ali', 2),
(500, 'sara', 2),
(400, 'omar', 4),
(350,'laila', 5),
(600,'nora', 3),
(480, 'khalid', 8),
(550,'fatima', 9);
use School_System;
CREATE TABLE Students(
StudentsID INT PRIMARY KEY,
FirstName VARCHAR (50),
LastName VARCHAR (50),
);
INSERT INTO Students ([StudentsID], [FirstName], [LastName]) VALUES 
(400, 'Hala', 'Ahmad'),
(401, 'Ali', 'Mohamed'),
(402, 'Sara', 'Khan'),
(403, 'Omar', 'Abdallah'),
(404, 'Laila', 'Zaid'),
(405, 'Nora', 'El-sayed'),
(406, 'Khalid', 'Farah'),
(407, 'Fatima', 'Ali'),
(408, 'Samir', 'Jamal'),
(409, 'Maya', 'Hassan');

CREATE TABLE Courses_Students(
CourseID INT,
StudentsID INT,
PRIMARY KEY(CourseID,StudentsID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
FOREIGN KEY (StudentsID) REFERENCES Students(StudentsID),

);
use School_System;
INSERT INTO Courses_Students (CourseID, StudentsID) VALUES 
(330, 400),
(330, 401),
(450, 402),
(450, 403),
(500, 404),
(500, 405),
(330, 406),
(450, 407),
(500, 408),
(330, 409);


CREATE TABLE Teachers_Students(
TeacherID INT,
StudentsID INT,
PRIMARY KEY(TeacherID,StudentsID),
FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID),
FOREIGN KEY (StudentsID) REFERENCES Students(StudentsID),

);

INSERT INTO Teachers_Students (TeacherID, StudentsID) VALUES 
(1, 400),
(1, 401),
(2, 402),
(2, 403),
(3, 404),
(3, 405),
(1, 406),
(2, 407),
(3, 408),
(1, 409);
SELECT * FROM Teachers;

SELECT * FROM TeacherDetails;

SELECT * FROM Courses;

SELECT * FROM Students;
