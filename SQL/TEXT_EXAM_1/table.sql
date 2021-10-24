DROP DATABASE IF EXISTS bai_tap_1;
CREATE DATABASE IF NOT EXISTS bai_tap_1;
USE bai_tap_1;
DROP TABLE IF EXISTS customer,
                     `order`,
					 car;
CREATE TABLE IF NOT EXISTS customer
( 
   customer_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   `name` VARCHAR(100),
   phone INT UNIQUE NOT NULL,
   email VARCHAR(100) UNIQUE NOT NULL,
   address VARCHAR(100),
   note TEXT
);

CREATE TABLE IF NOT EXISTS `order` 
(
    order_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNSIGNED,
    car_id INT UNSIGNED,
    amount INT DEFAULT 1,
    saleprice INT,
    orderdate DATE,
    deliverydate DATE,
    `status` ENUM("0", "1", "2") DEFAULT "0",
	note TEXT,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(car_id) REFERENCES car(car_id)
);
    
CREATE TABLE IF NOT EXISTS car
(
  car_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  maker ENUM("HONDA", "TOYOTA", "NISSAN"),
  modal VARCHAR(100),
  `year` INT,
  color VARCHAR(100),
  note TEXT
  )
  

   
   
  