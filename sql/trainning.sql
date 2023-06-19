-- INSERT INTO people(first_name, last_name, age) 
-- VALUES("Linda", "Belcher", 45),
-- 		("Phillip", "Frond", 38),
--         ("Calvin", "Fischoeder", 70);

-- DROP TABLE people;

-- - CREATE TABLE cats2 (
-- name VARCHAR (100) NOT NULL, 
-- AGE int NOT NULL, 
-- HEIGHT int NOT NULL); 

-- INSERT INTO cats2(
-- name, AGE, HEIGHT)
-- VALUES("MIKE", 24, 30);

-- INSERT INTO cats2(
-- name, AGE, HEIGHT) 
-- VALUES("jordan", 8, 10);

-- CREATE TABLE cats3(
-- NAME VARCHAR(50) not null,
-- AGE INT NOT NULL)

-- SELECT * FROM dogs;

-- INSERT INTO dogs(
-- NAME, BREED, AGE)
-- VALUES('MACI', 'YORKIE\'S', 9); 
-- DESC cats2;

-- CREATE TABLE cats4(
--  name VARCHAR(100) DEFAULT 'unnamed', 
--  age INT DEFAULT 99);

-- INSERT INTO cats4(
-- name)
-- VALUES('JUSTIN');
--  
--  DESC cats4;

-- SELECT * FROM cats4;

-- INSERT INTO cats4()
-- VALUE();

-- DESC cats4; 

-- INSERT INTO cats4( 
-- name, age) 
-- VALUES('JAY\'Z', null);

-- SELECT * FROM cats4; 

-- CREATE TABLE unique_cats(
-- cat_id INT NOT NULL PRIMARY KEY,
-- name varchar(100), 
-- age INT );

-- DESC unique_cats;
-- INSERT INTO unique_cats(cat_id, name, age)
-- VALUES(1, "JUS", 9); 

-- DROP TABLE cats4;

-- CREATE TABLE unique_cats3(
-- cat_id INT AUTO_INCREMENT, 
-- name VARCHAR(80), 
-- age INT, 
-- PRIMARY KEY (cat_id));

-- DESC unique_cats3; 

-- INSERT INTO unique_cats3(
-- name, age)
-- VALUES( 'NAS', 19);

-- SELECT * FROM unique_cats3; 

-- CREATE TABLE unique_cats4(
-- 	cat_id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100), 
--     age INT);
--     
-- CREATE TABLE unique_cats(
-- 	cat_id INT AUTO_INCREMENT,
--     name VARCHAR(50), 
--     age INT,
--     PRIMARY KEY(cat_id)
--     )

-- INSERT INTO unique_cats(
-- name, age)
-- VALUE ("GLORRILA", 90);

-- SELECT * FROM unique_cats; 

-- USE work_place;

-- CREATE Table Employees(
-- 	employee_id int auto_increment PRIMARY KEY,
--     last_name varchar(50) NOT NULL, 
--     first_name varchar(50) NOT NULL, 
--     middle_name varchar(50), 
--     age int NOT NULL, 
--     current_status varchar(50) NOT NULL DEFAULT 'employed');

-- DESC Employees;

-- -- INSERT INTO Employees(
-- -- last_name, first_name, middle_name, age)
-- -- VALUES( 'Jones','Justin', 'Mickal', 38);
--     
-- -- SELECT * FROM Employees;

-- INSERT INTO Employees(
-- last_name, first_name, age, current_status)
-- VALUES('JONES', 'KENDALL', 40, 'UNEMPLOYED'),
-- 	  ('PALMER', 'COREY', 39, 'LAYED OFF' ),
--       ('BANKS', 'JAYSEN', 21, 'Student');

-- -- INSERT INTO Employees(last_name, first_name,

-- SELECT * FROM Employees;  
-- 

-- USE pet_shop;

-- INSERT INTO cats(name, breed, age)
--      VALUES('Ringo', 'Tabby', 4), 
--      ('Cindy', 'Maine Coon', 10),
--      ('Dumbledore', 'Maine Coon', 8),
--     ('Egg', 'Persian', 10),
--      ('Misty', 'Tabby', 16), 
--     ('George Michael', 'Ragdoll', 9),
--     ('Jackson', 'Sphynx', 7);

-- SELECT name, age 
-- FROM cats
-- WHERE age > 9
-- ; 

-- SELECT name FROM cats
-- WHERE age = 9;

-- SELECT * FROM cats;

-- SELECT name, breed
-- FROM cats 
-- WHERE name = 'Cindy';
 -- CREATE DATABASE book_shop;

-- SHOW DATABASES; 
-- USE book_shop;

-- CREATE TABLE books 
-- 	(
-- 		book_id INT NOT NULL AUTO_INCREMENT,
-- 		title VARCHAR(100),
-- 		author_fname VARCHAR(100),
-- 		author_lname VARCHAR(100),
-- 		released_year INT,
-- 		stock_quantity INT,
-- 		pages INT,
-- 		PRIMARY KEY(book_id)
-- 	);

-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- DESC book_shop.books;
-- SELECT DATABASE();

-- SELECT * FROM book_shop.books;

-- SELECT CONCAT(author_fname," ", author_lname) as 'Full_Name' from books; 
-- SELECT concat_ws(' ', author_fname, author_lname) as 'Full_Name' from books;
-- SELECT * FROM books; 
-- SELECT SUBSTRING(title, 1, 10) from books;
-- SELECT SUBSTRING(title, 1, 15) from books; 
-- SELECT SUBSTR(title, 15) from books; 

-- SELECT substr(author_lname, 1, 1) AS inital from books;
-- SELECT CONCAT(SUBSTRING(title, 1, 10),"...") AS 'title_preview' 
-- FROM books;

-- SELECT * FROM books;

-- SELECT 
--     CONCAT(SUBSTR(author_fname, 1, 1),
--             '.',
--             SUBSTRING(author_lname, 1, 1),
--             '.') AS 'AUTHOR_INITALS'
-- FROM
--     books;

-- SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');

-- SELECT * FROM books;
-- SELECT REPLACE(title, ' ', '-') FROM books;
-- SELECT reverse(title) from books;

-- SELECT CONCAT(reverse(title), author_lname) as 'junk' FROM books; 

-- SELECT * FROM books;

-- SELECT char_length(title) FROM books;

-- SELECT concat(
-- 'I LOVE ', UPPER(title), ' !!') AS 'NEW TITLE'

--  from books;

-- USE book_shop;

-- DESC book_shop.books;

-- SELECT * FROM books;

-- SELECT UPPER(title) FROM books;

-- SELECT CONCAT('I LOVE ', UPPER(title), ' you' ) AS "EDITED VERSION" FROM books;

-- SELECT INSERT('Hello Bobby', 6, 0, ' there')

-- SELECT REVERSE('Why does my cat look at me with such hatred')

SELECT * FROM books;

-- SELECT REPLACE(title, ' ', '->') as title from books;

SELECT title as 'forwards', REVERSE(title) as backwards from books;

SELECT UPPER(concat(author_fname,' ',  author_lname) ) AS 'full name in caps' from books;

SELECT concat(title,' ' ,'was released',' ', released_year) as ' New Label' from books;

SELECT title, length(title) as 'character count'from books;

SELECT 
CONCAT(MID(title, 1, 10), '...' ) AS 'short title' , 
CONCAT(author_fname,', ', author_lname) AS 'author', 
CONCAT(stock_quantity, ' in stock') as 'quantity'

FROM books;

-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);


SELECT distinct author_fname from books;

SELECT DISTINCT released_year FROM books;

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;

SELECT * FROM books;

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname;
SELECT book_id, author_fname, author_lname FROM books ORDER BY author_fname DESC;

SELECT title, pages FROM books ORDER BY pages DESC;

SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 4;

SELECT author_fname, released_year, title from books ORDER BY author_fname, released_year DESC;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'author' from books ORDER BY author;

SELECT * FROM books;

SELECT book_id, title, released_year 
FROM books 
ORDER BY released_year DESC
LIMIT 5
; 

SELECT book_id, title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 6,5;

SELECT * FROM books;

SELECT title, author_fname, author_fname 
FROM books 
WHERE author_fname LIKE '%nd%';

SELECT title, author_fname, author_lname 
FROM books
WHERE author_fname LIKE 'Da%%';

SELECT * FROM books WHERE author_fname LIKE '____'
;
SELECT * FROM books WHERE title LIKE '%\%%' ;

SELECT title FROM books WHERE title LIKE '%tories';

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT  CONCAT(title,' - ', released_year) 
AS summary 
FROM books
ORDER BY released_year DESC
LIMIT 3
;

SELECT title, author_lname from books WHERE author_lname LIKE 'F% W%' ;

SELECT title, released_year, stock_quantity 
FROM books 
ORDER BY stock_quantity
limit 3
;

SELECT title, author_lname FROM books ORDER BY author_lname, title DESC ;

SELECT title FROM books WHERE title LIKE '%stories%' ;

SELECT title, author_lname FROM books
WHERE author_lname LIKE '% %';

DELETE FROM books WHERE title = 'Oblivion: Stories';

SELECT UPPER(
CONCAT('my favorite author is ', author_fname, ' ', author_lname, '!')) as 'YELL'
FROM books ORDER BY author_lname;

SELECT DATABASE();

SELECT COUNT(*) FROM books;

SELECT COUNT(author_fname) FROM books;

SELECT COUNT(distinct(author_fname)) FROM books;

SELECT distinct author_fname FROM books;

SELECT count( distinct released_year) FROM books;

SELECT count(DISTINCT author_lname) FROM books;

SELECT count(*) FROM books WHERE title LIKE '%the%';

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

SELECT author_lname,
COUNT(*) AS books_written 
FROM books
GROUP BY author_lname
ORDER BY books_written DESC;

SELECT released_year, count(*) as 'released in same year'
FROM books
 GROUP BY released_year
 ORDER BY 'released in same year';

SELECT MIN(released_year) FROM books;
SELECT MAX(pages) FROM books;
SELECT MIN(author_lname) FROM books;
SELECT MAX(author_lname) FROM books;

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT title, pages 
FROM books 
WHERE pages = (SELECT MAX(pages) FROM books);



SELECT title, released_year FROM books
WHERE released_year = (SELECT MIN(released_year) FROM books);

SELECT author_fname, author_lname, COUNT(*) 
FROM books 
GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS FULL_NAME , COUNT(*) AS mulp
FROM books
GROUP BY FULL_NAME;

SELECT author_fname, author_lname,
		Min(released_year) AS earliest_release, max(released_year) as latest_release,
        COUNT(*) as 'number of books',
        max(pages) AS longest_page_count
 FROM books
 GROUP BY author_fname, author_lname;
 
 SELECT  author_lname, sum(pages)
 FROM books
 GROUP BY  author_lname;
 
 SELECT AVG(released_year) FROM books;
 
 SELECT author_fname, author_lname, AVG(pages)
 from books
 GROUP BY author_lname, author_fname
 ;

SELECT author_fname, author_lname, pages from books;

-- SELECT avg(pages) from books;

SELECT released_year, count(*), AVG (stock_quantity)
FROM books
GROUP BY released_year;

SELECT sum(stock_quantity) FROM books;

SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year;

SELECT sum(stock_quantity) FROM books;

SELECT author_fname, author_lname, avg(released_year)
FROM books
GROUP BY author_fname, author_lname;

SELECT concat(author_fname, ' ', author_lname) 
AS full_name, 
pages
FROM books
ORDER BY pages DESC
LIMIT 1
;

SELECT concat(author_fname, ' ', author_lname) as full_name, pages
FROM books
WHERE pages = (SELECT max(pages) FROM books)
group by full_name, pages;

SELECT released_year, COUNT(*) as '# books', avg(pages) as 'avg pages'
 FROM books
 GROUP BY released_year
 ORDER BY released_year;
 
 USE shirts_db;
 
 SELECT database();
 
 CREATE TABLE products(price decimal(5,2)); 
 
 INSERT INTO products(price) 
 VALUES(4.50);
 
 SELECT * FROM products;
 
 INSERT INTO products(price) VALUE(456.77);
 
 
 CREATE TABLE people(
		name VARCHAR(100), 
        birthdate DATE, 
        birthTime Time, 
        birthdt DATETIME);
 
 DESC people;
 
 INSERT INTO people(name, birthdate, birthTime, birthdt)
	VALUES('Justin', '1984-12-22', '11:00:00', '2000-12-25 11:00:00');

INSERT INTO people(name, birthdate, birthTime, birthdt) 
			VALUE('Kendall', '1982-10-11', '12:00:00', '2002-11-11 04:00:00');

INSERT INTO people(name, birthdate, birthTime, birthdt) 
			VALUE('Dad', '1959-08-21', '09:00:00', '2002-08-04 05:00:00');
SELECT * FROM people;
 
SELECT CURDATE();
SELECT CURTIME() AS curtime;
SELECT NOW();
SELECT CURRENT_TIME();
SELECT CURRENT_TIMESTAMP();

SELECT * FROM people; 

INSERT INTO people(name, birthdate, birthTime, birthdt)
	values('Hazel', curdate(), current_time(), current_timestamp());

DESC people;
SELECT birthdate, day(birthdate) FROM people;

SELECT birthdate, dayofweek(birthdate) FROM people;

SELECT birthdate, DAY(birthdate), 
				dayofweek(birthdate), 
                dayofyear(birthdate) from people;
                
SELECT birthdate, MONTHNAME(birthdate) FROM people; 

SELECT * FROM people;

DESC people;

SELECT name, YEAR(birthdt), month(birthdt) from people;

SELECT * FROM people; 

SELECT name, birthtime, HOUR(birthtime) FROM people;
SELECT name, birthtime, minute(birthtime) FROM people;
SELECT name, birthtime, second(birthtime) FROM people;
SELECT name, birthtime, DATE(birthtime) FROM people;
SELECT name, birthtime, TIME(birthtime) FROM people;

SELECT birthdt, month(birthdt), date(birthdt), YEAR(birthdt) FROM people;

SELECT CONCAT(monthname(birthdt), "", day(birthdt), " ", YEAR(birthdt)) FROM people;

SELECT date_format(birthdate, '%a-%b ') FROM people;
SELECT date_format(birthdate, '%b') FROM people;
SELECT birthdate FROM people;

SELECT date_format(birthdate, '%D %a %b %e') from people;
SELECT time_format(birthdt, '%H %k %h') from people;
SELECT birthdt, date_format(birthdt, ' Born on: %H:%i') from people;

-- DATEDIFF(expr1,expr2)

SELECT birthdate FROM people;

SELECT birthdate FROM people;

SELECT birthdate, datediff(now(), birthdate) from people;
SELECT birthdt, datediff(birthdt, now()) from people;
SELECT birthdt, DATE_SUB(birthdt, INTERVAL 5 YEAR) FROM people;
SELECT DATE_ADD(now(), interval 10 DAY); 

SELECT birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR) FROM people;
SELECT timediff(CURTIME(), '15:00:00');

SELECT NOW() - interval 18 YEAR;

SELECT name, birthdate, YEAR(date_add(birthdate, INTERVAL 21 YEAR)) FROM people;

SELECT name, birthdate, timestamp(birthdt, 500) from people;

SELECT timestamp(now(), 100);

CREATE TABLE captions(
	text VARCHAR(150),
    created_at timestamp default CURRENT_TIMESTAMP);
    
INSERT INTO captions(
text
) VALUE( 'justme and the girl') ;

SHOW DATABASES;
SELECT database();

SELECT * FROM captions2;
	


CREATE TABLE captions2(
	text VARCHAR(150) default 'new student',
    created_at timestamp default CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );
    
INSERT INTO captions2(text) values('');
UPDATE captions2 SET text= 'i love life!!';

CREATE TABLE inventory(
	item_name varchar(50), 
    price decimal(7, 2),
    quantity int);
    
    
SELECT time(now());
SELECT curtime();
SELECT current_time();
SELECT curdate();
SELECT current_date();
SELECT date(now());
SELECT dayofweek(now());
SELECT dayname(now());
SELECT date_format(now(), '%W');
SELECT date_format(now(), '%M/%e/%Y ');
SELECT concat(date_format(now(), '%M %D at '), time(now()));
SELECT date_format(NOW(), '%M %D at %k:%i');




CREATE TABLE tweets(
	Tweet_content VARCHAR(180),
    userName varchar(40),
    time_tweet_created timestamp default CURRENT_TIMESTAMP()
);

INSERT INTO tweets(
	Tweet_content) Values('I will become a software engineer and get married and have a beautiful family');
    
    SELECT * FROM tweets;

SELECT database();
SHOW databases;
USE book_shop;

SELECT * FROM books;
SELECT title, 
author_lname 
FROM books 
WHERE author_lname != 'Gaiman';

SELECT title FROM books WHERE title LIKE '% %';
SELECT title FROM books WHERE title NOT LIKE '% %';

SELECT title, author_fname, author_lname FROM books
WHERE author_fname LIKE 'da%%';
SELECT title, author_fname, author_lname FROM books 
WHERE author_lname NOT LIKE 'f%%';

SELECT title FROM books WHERE title NOT LIKE '%e%';

SELECT * FROM books WHERE pages > 500;

SELECT 60 > 140;

SELECT title, pages, released_year FROM books WHERE pages > 500;
/* returns true (1) or false (2) */ 

SELECT title, released_year FROM books WHERE released_year < 2000;

SELECT title, released_year 
FROM books 
WHERE released_year < 2000
ORDER BY released_year;

SELECT title, 
released_year 
FROM books 
WHERE released_year >= 2010;

SELECT title, released_year 
FROM books 
WHERE released_year <= 1995
ORDER BY released_year desc;

SELECT * 
FROM books
WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT title, author_lname, released_year 
FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers';
;

SELECT title, author_lname, released_year 
FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers'
AND title LIKE '%novel%';

SELECT title, author_lname, released_year
FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers'
AND title LIKE '%novel%';

SELECT title, author_lname, released_year
FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers'
AND title like '%novel%';

SELECT title, LENGTH(title), pages
FROM books
WHERE LENGTH(title) > 15
AND pages > 275
;
SELECT title, pages FROM books
WHERE pages < 200
OR title LIKE '%stories%';

SELECT title, released_year 
FROM books
WHERE released_year >= 2004 
AND released_year <= 2015
ORDER BY released_year;

SELECT title, released_year FROM books 
WHERE released_year BETWEEN 2004 AND 2015;

SELECT title, pages FROM books
WHERE pages BETWEEN 200 AND 300;

SELECT title, pages FROM books
WHERE pages NOT between 200 AND 300;

USE shirts_db;
SELECT * FROM people;
DESC people;
SELECT * FROM people WHERE birthdate < '2005-01-01';
SELECT * FROM people WHERE birthTime < '10:00:00';
SELECT * FROM people WHERE YEAR(birthdate) < 2005;
SELECT * FROM people WHERE month(birthdate) < 10;
SELECT * FROM people WHERE hour(birthTime) < 10;

SELECT CAST('9:00:00' AS TIME);
SELECT CAST('05-12-01' AS DATE);

SELECT * FROM people WHERE birthtime
BETWEEN CAST('12:00:00' AS TIME) 
AND CAST('16:00:00' AS TIME); 

SELECT * FROM people WHERE HOUR(birthtime)
between 12 and 16;

USE book_shop;

SELECT title, author_lname 
from books
WHERE author_lname = 'Carver'
OR author_lname = 'Harris'
OR author_lname = 'Smith'
;
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, author_lname FROM books
WHERE author_lname NOT IN('Carver', 'Lahiri','Smith');

SELECT title, released_year 
FROM books 
WHERE released_year IN (2000, 2002, 2004, 2006,2016, 2003);

SELECT title, released_year
FROM books
WHERE released_year NOT IN(2000,2002,2004,2006,2008,2010,2012,2014,2016);

SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN(2000,2002,2004,2006,2008,2010,2012,2014,2016);

SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year % 2 = 0
order by released_year;

SELECT title, released_year, 
CASE
	WHEN released_year >= 2000
    THEN 'modern lit'
    ELSE '20th century lit'
END AS genre
FROM books;

SELECT title, stock_quantity, 
CASE
	WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
    WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
    WHEN stock_quantity BETWEEN 101 AND 105 THEN '*&*&'
    ELSE '***'
    END AS STOCK
FROM books;

SELECT title, stock_quantity, 
	CASE
		WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock 
    FROM books;

SELECT * FROM books WHERE author_lname IS NULL;
SELECT * FROM books WHERE author_lname IS NULL;

SELECT * FROM books;

DELETE FROM books WHERE title is NULL;

SELECT 10 != 10 ;
SELECT 15 > 14 AND 99 - 5 <= 94;
SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10 AS 'TRUE';

SELECT title, released_year
 FROM books
 WHERE released_year < 1980
 ;
 
 SELECT title, author_lname
 from books
 WHERE author_lname = 'Eggers' OR author_lname = 'Chabon'
 ;
 
 SELECT title, author_lname, released_year
 FROM books
 WHERE author_lname = 'Lahiri' AND
 released_year > 2000
 ;
 
 SELECT title, pages 
 FROM books
 WHERE pages BETWEEN 100 AND 200
 ; 
 
 SELECT title, author_lname 
 FROM books
 WHERE author_lname LIKE 'C%%'
 or author_lname LIKE 'S%%'
 ;
 
 SELECT 
 title, author_lname,
 CASE 
	WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title LIKE '%just kids%' THEN 'Memoir'
    WHEN title LIKE '%Heartbreaking Work%' THEN 'Memoir'
    ELSE 'Novel'
 END AS 'type'
 FROM books;


SELECT  author_lname , author_fname, 
CASE
	WHEN COUNT(*) = 1 THEN '1 book'
  --   WHEN COUNT(*) = 2 THEN '2 books'
--     WHEN COUNT(*) = 3 THEN '3 books'
		ELSE concat(COUNT(*), ' books')
END as COUNT
FROM books
GROUP BY author_lname, author_fname;



