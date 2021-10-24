SELECT c.*,
       ca.modal,
       o.amount
FROM `order` o
INNER JOIN customer c ON o.customer_id = c.customer_id
INNER JOIN car ca ON o.car_id = ca.car_id
WHERE `status` = "1"
ORDER BY o.amount;

-- Cau 3
SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER $$
CREATE FUNCTION get_car()  RETURNS VARCHAR(100)
BEGIN 
DECLARE results VARCHAR(100);
SELECT ca.maker INTO results
FROM `order` o 
INNER JOIN car ca 
ON o.car_id = ca.car_id
WHERE YEAR(o.deliverydate) = YEAR(NOW())
GROUP BY ca.maker
ORDER BY SUM(o.amount) DESC
LIMIT 1;
RETURN results;
END $$
DELIMITER ;

SELECT get_car()

-- Cau 4
DELIMITER $$ 
CREATE PROCEDURE cau_4() 
  BEGIN 
  SELECT COUNT(ca.car_id)
  FROM (SELECT * FROM `order`) AS o
    INNER JOIN car ca
    ON o.car_id = ca.car_id
    WHERE o.`status` = "2" AND YEAR(o.orderdate) != YEAR(NOW())
    GROUP BY o.`status`;
  
  DELETE FROM `order` WHERE car_id = (
    SELECT ca.car_id
    FROM (SELECT * FROM `order`) AS o
    INNER JOIN car ca
    ON o.car_id = ca.car_id
    WHERE o.`status` = "2" AND YEAR(o.orderdate) != YEAR(NOW()));
    
  DELETE FROM car WHERE car_id = (
    SELECT ca.car_id
    FROM (SELECT * FROM `order`) AS o
    INNER JOIN car ca
    ON o.car_id = ca.car_id
    WHERE o.`status` = "2" AND YEAR(o.orderdate) != YEAR(NOW()));
    END$$
DELIMITER ;

-- Cau 5
DROP PROCEDURE IF EXISTS cau_5 ;
DELIMITER $$
CREATE PROCEDURE  cau_5 (IN custo_id INT)
 BEGIN 
   SELECT o.*,
          c.`name`,
          ca.maker
  FROM `order` 
  INNER JOIN customer c ON o.customer_id = c.customer_id
  INNER JOIN car ca ON o.car_id = ca.car_id
  WHERE c.customer_id = custo_id;
  END$$
DELIMITER ;
  
 
    
    
    



       


