-- Cau 2
DELIMITER $$
CREATE PROCEDURE cau_2()
  BEGIN 
    SELECT COUNT(*)
    FROM project_modules WHERE project_id = (SELECT project_id
	                                         FROM project_modules
											 GROUP BY project_id
											 HAVING DATE_ADD(MAX(project_modules_compled_on), INTERVAL 90 DAY) < NOW());
    
    DELETE FROM project_modules WHERE project_id = (SELECT project_id
	                                         FROM project_modules
											 GROUP BY project_id
											 HAVING DATE_ADD(MAX(project_modules_compled_on), INTERVAL 90 DAY) < NOW());
    DELETE FROM projects WHERE project_id = (SELECT project_id
	                                         FROM project_modules
											 GROUP BY project_id
											 HAVING DATE_ADD(MAX(project_modules_compled_on), INTERVAL 90 DAY) < NOW());
  END$$
  DELIMITER ;
  
  -- Cau 3
  -- chua hieu sao phai them parameter
  DELIMITER $$
CREATE PROCEDURE cau_3()
  BEGIN 
    SELECT module_id
    FROM project_modules
    WHERE project_modules_compled_on > NOW();
  END$$
  DELIMITER ;
  
  
    
           
	
           