---Create Database
CREATE DATABASE IF NOT EXISTS libraryDB ;

--Create Tables
--Barrower TABLE
CREATE TABLE Borrower 
(
    BorrowID SERIAL PRIMARY KEY,
    ClientID INTEGER, 
    BookID INTEGER, 
    BorrowDate Date,
    FOREIGN KEY(ClientID) REFERENCES Client(ClientID),
    FOREIGN KEY(BookID) REFERENCES BooK(BookID)
);

--Client TABLE
CREATE TABLE Client
(
    ClientID SERIAL PRIMARY KEY,
    ClientFirstName VARCHAR(30),
    ClientLastName VARCHAR(30),
    ClientDOB INTEGER, 
    Occupation VARCHAR(50)
);

--Book TABLE
CREATE TABLE Book
(
    BookID SERIAL PRIMARY KEY,
    BookTitle VARCHAR(50),
    BookAuthor INTEGER, 
    Genre VARCHAR(30),
    FOREIGN KEY(BookAuthor) REFERENCES Author(AuthorID)
);


--Author TABLE
CREATE TABLE Author
(
    AuthorID SERIAL PRIMARY KEY,
    AuthorFirstName VARCHAR(30),
    AuthorLastName VARCHAR(30),
    AuthorNationality VARCHAR(50));
  


--populate TABLE's

-- populate Borrower table:

INSERT INTO Borrower (BorrowID, ClientID, BookID, BorrowDate)
VALUES
    (1, 35, 17,   '2016-07-20'),  
    (2, 1,   3,   '2016-07-21'),  
    (3, 42,  8,   '2016-07-22'),  
    (4, 62, 16,   '2016-07-23'),  
    (5, 53, 13,   '2016-07-24'),  
    (6, 33, 15,   '2016-07-25'),  
    (7, 40, 14,   '2016-07-26'),  
    (8, 64,  2,   '2016-07-27'),  
    (9, 56, 30,   '2016-07-28'),  
    (10, 23, 2,   '2016-07-29'),  
    (11, 46, 19,  '2016-07-30'),  
    (12, 61, 20,  '2016-07-31'),  
    (13, 58,  7,  '2016-08-01'),  
    (14, 46, 16,  '2016-08-02'),  
    (15, 80, 21,  '2016-08-03'),  
    (16, 51, 23,  '2016-08-04'),
    (17, 49, 18,  '2016-08-05'),  
    (18, 43, 18,  '2016-08-06'),  
    (19, 30,  2,  '2016-08-07'),  
    (20, 48, 24,  '2016-08-08'),  
    (21, 71,  5,  '2016-08-09'),  
    (22, 35,  3,  '2016-08-10'),  
    (23, 57,  1,  '2016-08-11'),  
    (24, 23, 25,  '2016-08-12'),  
    (25, 20, 12,  '2016-08-13'),  
    (26, 25,  7,  '2016-08-14'),  
    (27, 72, 29,  '2016-08-15'),  
    (28, 74, 20,  '2016-08-16'), 
    (29, 53, 14,  '2016-08-17'), 
    (30, 32, 10,  '2016-08-18') ;

INSERT INTO Book (BookID, BookTitle, BookAuthor, Genre)
VALUES
    (1, 'Build your database system', 1, 'Science'),
	(2, 'The red wall', 2, 'Fiction'),
	(3, 'The perfect match', 3, 'Fiction'),
	(4, 'Digital Logic', 4, 'Science'),
	(5, 'How to be a great lawyer', 5, 'Law'),
	(6, 'Manage successful negotiations', 6, 'Society'),
	(7, 'Pollution today', 7, 'Science'),
	(8, 'A gray park', 2, 'Fiction'),
	(9, 'How to be rich in one year', 8, 'Humor'),
	(10, 'Their bright fate', 9, 'Fiction');
    
-- Populate Client table:

INSERT INTO Client(ClientID, ClientFirstName, ClientLastName, Occupation, ClientDOB)
VALUES
    (1, 'Kaiden', 'Hill', 'Student', 2006),
	(2, 'Alina', 'Morton','Student', 2010),
	(3, 'Fania', 'Brooks', 'Food Scientist', 1983),
	(4, 'Courtney', 'Jensen', 'Student', 2006),
	(5, 'Brittany', 'Hill', 'Firefighter', 1983),
	(6, 'Max', 'Rogers', 'Student', 2005),
	(7, 'Margaret', 'McCarthy', 'School Psychologist', 1981),
	(8, 'Julie', 'McCarthy', 'Professor', 1973),
	(9, 'Ken', 'McCarthy', 'Securities Clerk', 1974),
	(10, 'Britany', 'O Quinn', 'Violinist', 1984),
	(11, 'Conner', 'Gardner', 'Licensed Massage Therapist', 1998),
	(12, 'Mya', 'Austin', 'Parquet Floor Layer', 1960),
	(13, 'Thierry', 'Rogers', 'Student', 2004),
	(14, 'Eloise', 'Rogers', 'Computer Security Manager', 1984),
	(15, 'Gerard', 'Jackson', 'Oil Exploration Engineer', 1979),
	(16, 'Randy', 'Day', 'Aircraft Electrician', 1986);
    
 --populate Author TABLE
 
INSERT INTO Author (AuthorID, AuthorFirstName, AuthorLastName, AuthorNationality) 
VALUES 
     (1,'Sofia','Smith','Canada'), 
	 (2, 'Maria','Brown','Brazil'), 
	 (3, 'Elena','Martin','Mexico'), 
	 (4, 'Zoe', 'Roy','France'), 
	 (5, 'Sebastian','Lavoie','Canada'), 
	 (6, 'Dylan', 'Garcia', 'Spain'), 
	 (7, 'Ian', 'Cruz', 'Mexico'), 
	 (8, 'Lucas', 'Smith', 'USA'), 
	 (9, 'Fabian', 'Wilson', 'USA'), 
	 (10, 'Liam', 'Taylor', 'Canada'), 
	 (11, 'William', 'Thomas', 'Great Britain'), 
	 (12, 'Logan', 'Moore', 'Canada'); 
     

--Write the following SQL statements to retrieve data:

-- Select all borrowers
  SELECT *
  FROM Borrower;
  
-- Select all books borrowed by borrowers, order by borrow date
SELECT *
FROM book
JOIN Borrower USING(bookID)
ORDER BY borrowID;

-- Select all books and include the author first and last name
SELECT AuthorFirstName, AuthorLastName
FROM AUTHOR AS a
JOIN book AS b ON a.AuthorID = b.bookAuthor;

-- Insert a new client with an occupation of pilot
INSERT INTO client
VALUES(1, 'Kaiden', 'Hill', 'piolt', 2006);