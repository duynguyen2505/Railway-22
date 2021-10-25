DROP DATABASE IF EXISTS extra_assigment_6;
CREATE DATABASE IF NOT EXISTS extra_assigment_6;
USE extra_assigment_6;
DROP TABLE IF EXISTS project_modules,
                     projects,
					 work_done,
                     employee;
			
CREATE TABLE IF NOT EXISTS employee
(
  employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  employee_last_name VARCHAR(100),
  employee_first_name VARCHAR(100),
  employee_hire_date DATE,
  employee_status TEXT,
  supervisor_id INT UNSIGNED,
  social_security_number INT,
  FOREIGN KEY(supervisor_id) REFERENCES employee(employee_id)
  );
  
  CREATE TABLE IF NOT EXISTS projects 
(
  project_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  manager_id INT UNSIGNED UNIQUE,
  project_name VARCHAR(100),
  project_start_date DATE,
  project_description TEXT,
  project_detail TEXT,
  project_completed_on DATE,
  FOREIGN KEY(manager_id) REFERENCES employee(employee_id)
  );
  
  CREATE TABLE IF NOT EXISTS project_modules
( 
   module_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   project_id INT UNSIGNED,
   employee_id INT UNSIGNED,
   project_modules_date DATE ,
   project_modules_compled_on DATE,
   project_modules_decription TEXT,
   FOREIGN KEY(project_id) REFERENCES projects(project_id),
   FOREIGN KEY(employee_id) REFERENCES employee(employee_id)
);
                     
                     
CREATE TABLE IF NOT EXISTS work_done 
(
    work_done_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    employee_id INT UNSIGNED,
    module_id INT UNSIGNED,
    workdone_date DATE DEFAULT(NULL),
    workdone_description TEXT,
    workdone_status TEXT,
    FOREIGN KEY(module_id) REFERENCES project_modules(module_id),
    FOREIGN KEY(employee_id) REFERENCES employee(employee_id)
);


    

  
 
