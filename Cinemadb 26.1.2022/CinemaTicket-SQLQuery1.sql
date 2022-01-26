--CREATE DATABASE CINEMA
--USE CINEMA

--CREATE TABLE GENRES(
--ID int primary key identity,
--NAME NVARCHAR(50) NOT NULL
--)

--CREATE TABLE MOVIES(
--ID int primary key identity,
--NAME NVARCHAR(50) NOT NULL
--)

--CREATE TABLE MOVIESGENRE(
--MOVIEID int references MOVIES(ID),
--GENREID int references GENRES(ID)
--)

--CREATE TABLE ACTORS(
--ID int primary key identity,
--FULLNAME NVARCHAR(50) NOT NULL,
--AGE int NOT NULL
--)

--CREATE TABLE ACTORSMOVIES(
--ID int primary key identity,
--ACTORID int references ACTORS (ID),
--MOVIEID int references MOVIES (ID)
--)


--CREATE TABLE HALLS(
--ID int primary key identity,
--NAME NVARCHAR(50) NOT NULL,
--CAPACITY int NOT NULL
--)

--CREATE TABLE SESSIONS(
-- ID int primary key identity,
-- MOVIEID int references MOVIES (ID),
-- HALLID int references HALLS (ID)
--)

--CREATE TABLE CUSTOMERS(
--ID int primary key identity,
--NAME NVARCHAR(50) NOT NULL,
--SURNAME NVARCHAR(50)
--)


--CREATE TABLE TICKETS(
--ID int primary key identity,
--SESSIONID int references SESSIONS (ID),
--CUSTOMERID int references CUSTOMERS (ID)
--)

--INSERT INTO MOVIES VALUES
--('HARRY POTTER'),
--('PLATFORM'),
--('MATRIX'),
--('I AM LEGEND')

--INSERT INTO GENRES VALUES
--('FANTASTIC'),
--('DRAM'),
--('ACTION'),
--('COMEDI'),
--('HORROR')

--INSERT INTO ACTORS VALUES
--('TOM HARDY',30),
--('BRAD PITT',43),
--('Sylvester Stallone',75),
--('Dolph Lundgren',64),
--('Ida Lundgren',25),
--('Jason Statham',54),
--('Arnold Schwarzenegger',74),
--('Chuck Norris',81)


--INSERT INTO MOVIESGENRE VALUES
--(1,1),
--(1,3),
--(2,1),
--(2,2),
--(3,1),
--(3,3),
--(4,1)


--INSERT INTO ACTORSMOVIES VALUES
--(1,1),
--(2,3),
--(3,2),
--(4,1),
--(5,4),
--(6,2),
--(7,2),
--(8,4)

--INSERT INTO HALLS VALUES
--('PlatiniumHall',200),
--('DaimonHall',300),
--('YupiterHall',150),
--('MarsHall',100),
--('GoldHall',350)

--INSERT INTO SESSIONS VALUES
--(1,1),
--(2,5),
--(3,2),
--(4,4),
--(2,3),
--(4,1)

--INSERT INTO CUSTOMERS VALUES
--('ELCIN','BAYRAMOV'),
--('ILYAS','ABIYEV'),
--('AYTAC','RAMAZANLI'),
--('EVEZ','MEMMEDZADE'),
--('ORXAN','ABDULLAYEV'),
--('ELVIN','AZILADE')

--INSERT INTO TICKETS VALUES
--(6,1),
--(10,3),
--(7,4),
--(6,2),
--(9,6),
--(8,5)

--SELECT  C.NAME,C.SURNAME, M.Name 'Movie', G.Name 'Genre',FULLNAME 'Actor Name',AGE 'Actor Age',H.Name 'Hall' FROM TICKETS T
--JOIN CUSTOMERS C
--ON T.CUSTOMERID=C.ID

--JOIN SESSIONS S
--ON T.SESSIONID=S.ID

--JOIN HALLS H
--ON S.HALLID=H.ID

--JOIN MOVIES M
--ON S.MOVIEID=M.ID

--JOIN MOVIESGENRE MG
--ON M.ID=MG.MOVIEID

--JOIN GENRES G
--ON G.ID=MG.GENREID

--JOIN ACTORSMOVIES AM
--ON M.ID=AM.MOVIEID

--JOIN ACTORS A
--ON A.ID=AM.ACTORID

