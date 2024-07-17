CREATE DATABASE Library;
/*----------------------------------------*/
USE Library;
  CREATE Table Authors(
  AuthorID INT PRIMARY KEY,
  FirstName VARCHAR(35),
  LastName VARCHAR(35),
  BirthYear DATE,
  
  );
  use Library;
  drop table Books;
USE Library;
CREATE TABLE Books (
    BookID INT NOT NULL,
    Title VARCHAR(35),
    PublishedYear INT,
    CopiesAvailable INT,
    BookCategory VARCHAR(45),
    AuthorID INT ,
    PRIMARY KEY(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors (AuthorID)
);

SELECT * FROM Books;
/**************************************************/
INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (1, 'A Beautiful and Respectful Book', 2022, 50, 'Children', 1);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (2, 'Learning is Fun', 2021, 45, 'Education', 2);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (3, 'Adventures in the Forest', 2013, 30, 'Adventure', 3);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (4, 'The Magic Garden', 2008, 25, 'Fantasy', 4);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (5, 'Under the Sea', 2004, 40, 'Nature', 5);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (6, 'Space Explorers', 2012, 35, 'Science Fiction', 6);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (7, 'Friendly Animals', 2016, 60, 'Animals', 7);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (8, 'Mystery Island', 2005, 20, 'Mystery', 8);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (9, 'Journey to the Past', 2009, 55, 'History', 9);

INSERT INTO Books( [BookID], [Title], [PublishedYear], [CopiesAvailable], [BookCategory], [AuthorID])
VALUES (10, 'The World of Dinosaurs', 2023, 50, 'Science', 10);


INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(1, 'ALI', 'AHMAD', '2005-05-02');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(2, 'SARA', 'KHAN', '2001-08-15');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(3, 'MOHAMMED', 'HASSAN', '1998-11-25');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(4, 'FATIMA', 'AL-SHAMI', '2000-03-10');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(5, 'OMAR', 'NAJI', '1999-07-30');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(6, 'AYESHA', 'JAMIL', '2002-12-05');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(7, 'KHALID', 'MANSOUR', '1997-04-22');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(8, 'LAILA', 'SADIQ', '2003-09-14');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(9, 'HUSSEIN', 'QADIR', '2001-06-18');

INSERT INTO Authors ([AuthorID], [FirstName], [LastName], [BirthYear]) VALUES
(10, 'NOURA', 'BAKR', '2004-01-29');

 /***************************************************/
SELECT MAX(CopiesAvailable)
FROM Books;

SELECT MIN(CopiesAvailable)
FROM Books;
/*****************************************************/
DROP TABLE Authors;
/*****************************************************/
--ALTER TABLE Books 
--ALTER COLUMN PublishedYear INT;
SELECT AVG(PublishedYear) AS AveragePublishedYear
FROM Books
WHERE PublishedYear > 2000;

/*****************************************************/
SELECT COUNT(BookID)
FROM Books;
 /*************************************************************/
 USE Library;
 create table Employees(
EmployeesID int PRIMARY KEY,
FirstName VARCHAR (50),
LastName VARCHAR (50),
EMAIL VARCHAR (50),
);

INSERT INTO Employees (EmployeesID, FirstName, LastName, EMAIL) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com'),
(4, 'Bob', 'Brown', 'bob.brown@example.com'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com');

/**************************************************************/
 create table USERS(
USERSID int PRIMARY KEY,
FirstName VARCHAR (50),
LastName VARCHAR (50),
EMAIL VARCHAR (50),
DATE_Time_borrowed DATE,
);

INSERT INTO USERS (USERSID, FirstName, LastName, EMAIL, DATE_Time_borrowed) VALUES
(1, 'Tom', 'Hanks', 'tom.hanks@example.com', '2024-01-15'),
(2, 'Emma', 'Watson', 'emma.watson@example.com', '2024-02-20'),
(3, 'Liam', 'Neeson', 'liam.neeson@example.com', '2024-03-05'),
(4, 'Natalie', 'Portman', 'natalie.portman@example.com', '2024-04-10'),
(5, 'Chris', 'Evans', 'chris.evans@example.com', '2024-05-25');
/******************************************************************************************/
USE Library;
 create table Employees_USERS(
 EmployeesID int, 
 USERSID int, 
 PRIMARY KEY(EmployeesID,USERSID),
 FOREIGN KEY (EmployeesID) REFERENCES EmployeeS(EmployeesID),
FOREIGN KEY (USERSID) REFERENCES USERS(USERSID),
 );

 INSERT INTO Employees_USERS (EmployeesID, USERSID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
 /*************************************************************************/

 CREATE TABLE Sections(
ID_Sections INT PRIMARY KEY,
NAME_Sections VARCHAR ,
Employees_ID INT,
FOREIGN KEY(Employees_ID) REFERENCES Employees(EmployeesID)

 );
ALTER TABLE Sections
ALTER COLUMN NAME_Sections VARCHAR(100);
 INSERT INTO Sections (ID_Sections, NAME_Sections, Employees_ID) VALUES
(1, 'Fiction', 1),
(2, 'Non-Fiction', 2),
(3, 'Science', 3),
(4, 'History', 4),
(5, 'Technology', 5);
 /***************************************************************************/
 use Library;
 CREATE TABLE Categories(
 ID_Categories INT PRIMARY KEY,
NAME_Categories VARCHAR ,
Sections_ID INT,
BookID int,
FOREIGN KEY(Sections_ID) REFERENCES Sections(ID_Sections),
FOREIGN KEY(BookID) REFERENCES Books(BookID),

);
INSERT INTO Categories (ID_Categories, NAME_Categories, Sections_ID, BookID) VALUES
(1, 'Mystery', 1, 1),
(2, 'Biography', 2, 2),
(3, 'Physics', 3, 3),
(4, 'World History', 4, 4),
(5, 'Programming', 5, 5);
/******************************************************************************/

 use Library;
 CREATE TABLE BOOKS_USERS(
 BookID int,
  USERSID int,
  PRIMARY KEY(BookID,USERSID),
 FOREIGN KEY (BookID) REFERENCES Books(BookID),
FOREIGN KEY (USERSID) REFERENCES USERS(USERSID),

);
INSERT INTO BOOKS_USERS (BookID, USERSID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
/*------------------------------------------------------------*/
--ONE TO MANY--
SELECT Books.*
FROM Books
FULL JOIN Authors ON Books.AuthorID = Books.AuthorID;

SELECT Books.*
FROM Books
INNER JOIN Authors ON Books.AuthorID = Books.AuthorID;

SELECT Books.*
FROM Books
LEFT JOIN Authors ON Books.AuthorID = Books.AuthorID;

SELECT Books.*
FROM Books
RIGHT JOIN Authors ON Books.AuthorID = Books.AuthorID;

SELECT Authors.*
FROM Authors
LEFT JOIN Books ON Authors.AuthorID = Authors.AuthorID;

SELECT Authors.*
FROM Authors
RIGHT JOIN Books ON Authors.AuthorID = Authors.AuthorID;
SELECT * FROM Authors;
SELECT Authors.*
FROM Authors
INNER JOIN Books ON Authors.AuthorID = Authors.AuthorID;

SELECT Authors.*
FROM Authors
FULL JOIN Books ON Authors.AuthorID = Authors.AuthorID;
/*****************************************************************/
--MANY TO MANY --
USE Library;
SELECT U.USERSID,U.FirstName, U.LastName, B.BookCategory, B.Title,B.BookID
FROM USERS U
JOIN BOOKS_USERS BU ON U.USERSID = BU.USERSID
JOIN Books B ON BU.BookID = B.BookID;


USE Library;
SELECT U.USERSID,U.FirstName, U.LastName, B.BookCategory, B.Title,B.BookID
FROM USERS U
LEFT JOIN BOOKS_USERS BU ON U.USERSID = BU.USERSID
LEFT JOIN Books B ON BU.BookID = B.BookID;

USE Library;
SELECT U.USERSID,U.FirstName, U.LastName, B.BookCategory, B.Title,B.BookID
FROM USERS U
FULL JOIN BOOKS_USERS BU ON U.USERSID = BU.USERSID
FULL JOIN Books B ON BU.BookID = B.BookID;

USE Library;
SELECT U.USERSID,U.FirstName, U.LastName, B.BookCategory, B.Title,B.BookID
FROM USERS U
RIGHT JOIN BOOKS_USERS BU ON U.USERSID = BU.USERSID
RIGHT JOIN Books B ON BU.BookID = B.BookID;


