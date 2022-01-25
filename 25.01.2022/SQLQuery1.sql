--CREATE DATABASE LIBRARYdb

--USE LIBRARYdb

--CREATE TABLE AUTHORS(
--ID int primary key identity,
--Name nvarchar(50) NOT NULL,
--SURNAME nvarchar(50) NOT NULL
--)

--CREATE TABLE GENRES(
--ID int primary key identity,
--Name nvarchar(50) NOT NULL,
--)

--CREATE TABLE authorsgenres(
--Id int primary key identity,
--AuthorId int references AUTHORS(Id),
--GenreId int references GENRES(Id)
--)

--CREATE TABLE BOOKS(
--ID int primary key identity,
--Name nvarchar(50) NOT NULL,
--PRICE decimal(5,3) NOT NULL,
--AuthorId int references AUTHORS (ID),
--GenreId int references GENRES(ID)
--)

--CREATE TABLE Customers(
--ID int primary key identity,
--Name nvarchar(30) not null,
--Surname nvarchar(60)
--)

--CREATE TABLE CustomerBooks(
--ID int primary key identity,
--CustomerId int references Customers(ID),
--BookId int references BOOKS(ID),
--GettingDate datetime default getdate(),
--ReturnDate datetime
--)


--INSERT INTO GENRES VALUES
--('Fantasy'),
--('Horror'),
--('Action'),
--('Detective'),
--('Dram')

--INSERT INTO AUTHORS VALUES
--('Paulo','Coelho'),
--('Mustafa','Kutlu'),
--('Victor','Hugo'),
--('Jack','London')

--INSERT INTO authorsgenres VALUES
--(1,1),
--(1,3),
--(2,5),
--(2,2),
--(4,5),
--(3,4)

--INSERT INTO BOOKS VALUES
--('As Good As Dead',10.2,1,1),
--('Billy Summers',15.3,1,3),
--('If It Bleeds',19.99,2,5),
--('Chain',29.99,2,2),
--('Ottoman Secret',20.50,4,5),
--('Three Beths',22.50,3,4)

--INSERT INTO Customers VALUES
--('Elcin','Bayramov'),
--('Ilyas','Abiyev'),
--('Nicat','Talibli'),
--('Aytac','Ramazanli')

--INSERT INTO CustomerBooks (BookId, CustomerId) VALUES 
--(1,1),
--(2,4),
--(3,2),
--(4,2),
--(1,3)

--SELECT * FROM BOOKS
--JOIN GENRES
--ON BOOKS.GenreId=GENRES.ID

--SELECT a.NAME 'Author',b.NAME 'Book' FROM Books b
--JOIN Authors a
--ON b.AuthorId=a.Id

--SELECT a.NAME , g.Name 'Genre' FROM authorsgenres 
--JOIN Genres g
--on authorsgenres.GenreId = g.Id
--JOIN Authors a
--on authorsgenres.AuthorId=a.Id