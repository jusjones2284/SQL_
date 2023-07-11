-- INSERT INTO dogs(name, age)
-- VALUES ("Jetson", 7);

INSERT INTO dogs(name, breed, age, birthplace)
VALUES("Skylaa", "Golden Doodles", 5, "Nuevenamenamedogs");

SHOW databases;
USE tea_shop;
show tables;

CREATE TABLE contacts(
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
    );
    
SHOW tables;
INSERT INTO contacts(name, phone)
values('justinjones', '5042358898');

INSERT INTO contacts(name, phone)
values('justinjones', '5042358898');

CREATE TABLE users(
	username VARCHAR(20), 
    age INT CHECK (age > 18)
    );
    
INSERT INTO users(username, age) 
VALUES('jusjones21', 20);

INSERT INTO users(username, age)
VALUES('mickaljones22', 25),('jusinvestments', 36);

CREATE TABLE palindromes(
	word VARCHAR(100) CHECK(REVERSE(word) = word));
    
insert INTO palindromes(word)
values('racecar');

CREATE TABLE users2(
	username VARCHAR(20) NOT NULL,
    age INT, 
    CONSTRAINT age_not_negative CHECK (age <= 0));
    
    INSERT INTO users2(username, age) 
		VALUES('jusjones21', -9);
        
SELECT DATABASE();
SHOW TABLES;
SELECT * FROM users2;
desc users;

CREATE TABLE palindromes2(
	word VARCHAR(100) 
    CONSTRAINT not_a_palindromes CHECK(REVERSE(word) = word));
    
INSERT INTO palindromes2(word) VALUES('MICKAL');






CREATE TABLE companies(
	supplier_id INT AUTO_INCREMENT, 
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE, 
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (supplier_id),
    CONSTRAINT name_address UNIQUE (name, address));
	

CREATE TABLE companies2(
	name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL, 
    CONSTRAINT name_address UNIQUE (name, address));
    
INSERT INTO companies2(name, address)
VALUES('jus_jones', '2978_Ashlyns');


CREATE TABLE houses(
	purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
    );

INSERT INTO houses(purchase_price, sale_price)
					VALUE(10, 9);

ALTER TABLE companies
	ADD COLUMN city VARCHAR(25);
    
SELECT * FROM companies2;
ALTER TABLE companies2 
ADD COLUMN phone VARCHAR(15);
DESC companies2;

ALTER TABLE companies2
ADD COLUMN employee_count1 INT NOT NULL DEFAULT 1;

ALTER TABLE companies2
DROP COLUMN phone;

SHOW TABLES;
SELECT * FROM company;
RENAME TABLE companies TO suppliers;

ALTER TABLE suppliers rename company;

ALTER TABLE company
RENAME COLUMN name TO surname;

ALTER TABLE company 
RENAME COLUMN surname TO name;

DESC company;

ALTER TABLE company 
MODIFY name VARCHAR(100) DEFAULT 'JUS';

SHOW DATABASES;

CREATE DATABASE movies_and_reviews;

USE movies_and_reviews;

CREATE TABLE reviewers(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL
    );
    
    INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
    
CREATE TABLE series (
	id INT PRIMARY KEY auto_increment, 
    title VARCHAR(100), 
    released_year YEAR,
    genre VARCHAR(100) 
);
INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');

    
CREATE TABLE reviews(
	id INT PRIMARY KEY auto_increment,
    rating DECIMAL(2,1),
    series_id INT, 
    reviewer_id INT, 
    foreign key (series_id) REFERENCES series(id), 
    foreign key (reviewer_id) references reviewers(id)
);

INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);


show tables;
SELECT * FROM reviewers;
SELECT title from series;
SELECT rating from reviews; 

SELECT title, rating from series
JOIN reviews ON series.id = reviews.series_id;

SELECT * from reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id;

SELECT title, round(avg(rating), 2)  as avg_rating from series
JOIN reviews ON series.id =reviews.reviewer_id  
GROUP BY title 
ORDER BY avg_rating
 ;

SELECT first_name, last_name, rating from reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id
LIMIT 10
;

SELECT * from reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id
LIMIT 10
;

select * from reviewers;
select * from series;
SELECT * FROM reviews; 

select title as 'unreviewed series'  from series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating is null
;
SELECT rating FROM reviews;

SELECT genre, round(avg(rating), 2)  AS avg_rating
FROM series
JOIN reviews ON series.id = series_id
group by genre
ORDER BY avg_rating 
; 

SELECT 
	first_name, 
    last_name, 
    count(rating) as COUNT, 
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    round(IFNULL(avg(rating), 0)) AS average,
    CASE 
		WHEN count(rating) >= 10 THEN 'POWERUSER'
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
		ELSE 'INACTIVE'
    END AS status
from reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

SELECT rating, rating from reviews; 

SELECT
	first_name,
    last_name, 
    COUNT(rating) AS count,
	IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
	ROUND(IFNULL(AVG(rating), 0), 2) AS average,avg,
    IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS status
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;


SELECT title from series; 
SELECT rating from reviews;
SELECT first_name, last_name from  reviewers;

SELECT title, 
	rating as rating, 
	concat(first_name,' ', last_name) as reviewer 
	from series
JOIN reviews ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SHOW DATABASES;
USE movies_and_reviews;


CREATE VIEW full_reviews AS 
SELECT title, 
	rating as rating, genre, 
	concat(first_name,' ', last_name) as reviewer 
	from series
JOIN reviews ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SHOW TABLES;

SELECT * 
from full_reviews
WHERE genre = 'Animation'
; 

SHOW TABLES;

SELECT * 
from full_reviews
WHERE genre = 'Animation'
; 

SELECT genre, avg(rating) 
FROM full_reviews
group by genre;

CREATE OR REPLACE VIEW ordered_series AS
SELECT * 
FROM series
ORDER BY released_year
;

CREATE OR REPLACE VIEW ordered_series AS
SELECT *
FROM series
order by released_year DESC
;

ALTER VIEW ordered_series AS 
SELECT * FROM series ORDER BY released_year;

SHOW TABLES;

DROP VIEW full_reviews;

SELECT title,
 avg(rating),
 COUNT(rating)
FROM full_reviews
GROUP BY title
HAVING COUNT(rating) > 4
;

SELECT 
	title,
    COUNT(rating)
FROM full_reviews
GROUP BY title WITH ROLLUP;

SELECT released_year, genre, AVG(rating) 
FROM full_reviews
GROUP BY released_year, genre WITH ROLLUP; 

SELECT * FROM full_reviews;

SELECT @@GLOBAL.sql_mode;

CREATE DATABASE window_funcs;
USE window_funcs;
CREATE TABLE companies (
    supplier_id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (supplier_id)
);


CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT);

INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

SELECT * FROM employees;

SELECT department, 
AVG(salary) 
FROM employees
GROUP BY department
; 

SELECT AVG(salary) 
FROM employees;


SELECT 
	emp_no,
    department,
    salary,
    MIN(salary) OVER(),
    MAX(salary) OVER()
FROM employees;

SELECT 
	emp_no,
    department,
    salary, 
    MIN(salary) OVER(),
    MAX(salary) OVER()
FROM employees;

SELECT 
	emp_no, department, salary, 
	AVG(salary) OVER(PARTITION BY department) as dept_avg
FROM employees;

SELECT
	emp_no,
    department,
    salary,
		AVG(salary) OVER(partition by department) AS dept_avg,
        AVG(salary) OVER() AS company_avg
	FROM employees;
    

SELECT 
	emp_no, department, salary, 
    COUNT(*) OVER(PARTITION BY department) as dept_count
    FROM employees;

SELECT 
	emp_no,
    department,
    salary, 
    SUM(salary) OVER(partition by department) AS dept_payroll,
    SUM(salary) OVER() AS total_payroll
FROM employees;

SELECT
	emp_no,
    department,
    salary, 
    SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS total_dept_salary
FROM employees;

SELECT 
	emp_no,
    department,
    salary,
    MIN(salary) OVER(partition by department order by salary desc) as rolling_min
FROM employees;

SELECT 
	emp_no,
    department,
    salary,
    RANK() OVER(order by salary DESC) as overall_salary_rank
FROM employees;

SELECT
	emp_no,
    department,
    salary, 
    RANK() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) as overall_salary_rank
FROM employees ORDER BY department;


SELECT 
	emp_no, 
    department,
    salary,
    ROW_NUMBER() OVER(partition by department ORDER BY SALARY DESC) AS dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY SALARY DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) as overall_salary_dense_rank
FROM employees ORDER BY department;
    
SELECT 
	emp_no,
    department,
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;

SELECT 
	emp_no,
    department,
    salary,
    salary - LAG(salary) OVER(ORDER BY salary DESC)
FROM employees;


DROP DATABASE ig_clone;

show databases;

CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users(
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL, 
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE users(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,  
	username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
    );

INSERT INTO users(username) 
  VALUES('BlueTheCat'), ('CharlieBrown'), ('ColtSteele');
  
  INSERT INTO users(username) 
  VALUES('BlueTheCat'), ('CharlieBrown'), ('ColtSteele');
  
  show databases;
  SELECT DATABASE();

CREATE TABLE photos(
id INTEGER auto_increment PRIMARY KEY, 
image_url varchar(255) NOT NULL,
user_id INTEGER NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (user_id) REFERENCES users(id));

CREATE TABLE photos(
id INTEGER AUTO_INCREMENT PRIMARY KEY, 
image_url VARCHAR(255) NOT NULL,
user_id INTEGER NOT NULL, 
created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (user_id) REFERENCES users(id)
);


show tables;
SELECT * FROM users; 
SELECT * FROM users;
DESC photos;
SELECT * FROM photos;

INSERT INTO photos(
image_url, user_id) 
VALUES
('fdajkdla', 1),
('fdal;jkda', 2),
('fadjkldaj', 2),
('eyuiwe', 3);



SELECT username, image_url FROM photos
JOIN users on photos.user_id = users.id
;

CREATE TABLE comments(
id INTEGER AUTO_INCREMENT PRIMARY KEY, 
comment_text VARCHAR(255) NOT NULL, 
user_id INTEGER NOT NULL,
photo_id INTEGER NOT NULL, 
create_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY(user_id) REFERENCES users(id),
FOREIGN KEY (photo_id) REFERENCES photos(id) 
);

INSERT INTO comments
	(comment_text,user_id, photo_id)
    VALUES('you\'re crazy', 3, 3);

SELECT * FROM comments;

	
CREATE TABLE likes(
	
	user_id INTEGER NOT NULL, 
    photo_id INTEGER NOT NULL, 
    created_at TIMESTAMP DEFAULT NOW(), 
    FOREIGN KEY (user_id) REFERENCES users(id), 
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    primary key(user_id, photo_id)
);

INSERT INTO likes(user_id, photo_id)
	VALUES(2, 1), (1,2), (3, 3), (1,3);

















CREATE TABLE comments(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text varchar(255) NOT NULL,
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL, 
    created_at timestamp default NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id)
    );
    
INSERT INTO comments(
	comment_text,
    user_id, 
    photo_id) 
    VALUES('mooo!', 2, 6)
         
    ;
    
    
    SELECT * FROM photos;

CREATE TABLE likes(
	user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL, 
    create_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id)
    );
    
INSERT INTO likes(user_id, photo_id)
	VALUES(1, 2);
    
SELECT * FROM users;
    















DELETE FROM photos WHERE image_url = '';

       
SELECT username, image_url FROM photos
JOIN users ON photos.user_id = users.id;

