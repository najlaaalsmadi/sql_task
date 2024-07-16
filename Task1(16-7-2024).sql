CREATE DATABASE Library;
/*----------------------------------------*/
USE Library;
  CREATE Table Authors(
  AuthorID INT PRIMARY KEY,
  FirstName VARCHAR(35),
  LastName VARCHAR(35),
  BirthYear DATE,
  
  );

USE Library;
CREATE TABLE Books (
    BookID INT NOT NULL,
    Title VARCHAR(35),
    PublishedYear INT,
    CopiesAvailable INT,
    BookCategory VARCHAR(45),
    AuthorID INT,
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
 
