DROP DATABASE IF EXISTS duy;
CREATE DATABASE IF NOT EXISTS duy;
USE duy;
-- TAO BANG 1
CREATE TABLE IF NOT EXISTS deparment (
department_id  INT AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(100)
);

-- TAO BANG 2
CREATE TABLE IF NOT EXISTS position (
positon_id INT AUTO_INCREMENT PRIMARY KEY,
position_name VARCHAR(100)
);

-- TAO BANG 3
CREATE TABLE IF NOT EXISTS account1 (
account_id INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(100),
usename VARCHAR(100),
fullname VARCHAR(100),
department_id INT,
position_id VARCHAR(100),
create_date VARCHAR(100)
);

-- TAO BANG 4
CREATE TABLE IF NOT EXISTS group1 (
group_id INT AUTO_INCREMENT PRIMARY KEY,
group_name VARCHAR(100),
creater_id VARCHAR(100),
creater_date VARCHAR(100)
);


-- TAO BANG 5
CREATE TABLE IF NOT EXISTS groupaccount (
group_id VARCHAR(100) PRIMARY KEY,
account_id VARCHAR(100),
joindate VARCHAR(100)
);

-- TAO BANG 6
CREATE TABLE IF NOT EXISTS typequestion (
typeid INT AUTO_INCREMENT PRIMARY KEY,
typename VARCHAR(100)
);

-- TAO BANG 7
CREATE TABLE IF NOT EXISTS category_questiom (
category_id INT AUTO_INCREMENT PRIMARY KEY,
categoryname VARCHAR(100)
);

-- TAO BANG 8
CREATE TABLE IF NOT EXISTS question (
question_id INT AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(100),
category_id VARCHAR(100),
typeid VARCHAR(100),
creator_id INT,
creator_date VARCHAR(100)
);

-- TAO BANG 9
CREATE TABLE IF NOT EXISTS answer (
answer_id INT AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(100),
question_id INT,
iscorrect VARCHAR(10)
);

-- TAO BANG 10
CREATE TABLE IF NOT EXISTS exam (
exam_id INT AUTO_INCREMENT PRIMARY KEY,
code_ INT,
title VARCHAR(100),
category_id VARCHAR(100),
duration VARCHAR(100),
creator_id INT,
create_date VARCHAR(100)
);

-- TAO BANG 11
CREATE TABLE IF NOT EXISTS examquestion (
exam_id INT PRIMARY KEY,
question_id VARCHAR(100)
);









