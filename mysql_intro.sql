-- UC 1 --
CREATE DATABASE payroll_service;
SHOW DATABASES;
USE payroll_service;

-- UC 2 --

CREATE TABLE employee_payroll(
	id INT unsigned NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    salary Double NOT NULL,
    start DATE NOT NULL,
    PRIMARY KEY (id)
);

-- UC 3 --

INSERT INTO employee_payroll ( name, salary, start ) VALUES ( 'Deepak Rana', 55000.00, '2022-01-03' );
INSERT INTO employee_payroll ( name, salary, start ) VALUES 
				( 'Deepak Rana', 55000.00, '2022-01-03' ),
                ('Navneet Kumar', 60000.00, '2022-01-04'),
                ('Makarnd developer','65000.00','2022-01-05'),
                ('Manisha','57000.00','2022-01-06'),
                ('Narendra','63000.00','2022-01-07');
                
-- UC 4 --
SELECT * FROM employee_payroll;

-- UC 5 --
SELECT salary FROM employee_payroll WHERE name = 'Deepak Rana';
SELECT salary FROM employee_payroll WHERE start BETWEEN CAST('2022-01-02' AS DATE) AND DATE(NOW());

-- UC 6 --
ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;
UPDATE employee_payroll SET gender = 'M' WHERE id= 1;
UPDATE employee_payroll SET gender = 'F' WHERE id=5;
SELECT * FROM employee_payroll;

-- UC 7 --
SELECT SUM(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;


