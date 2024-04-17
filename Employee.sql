
USE Facebook;
CREATE TABLE Student(
roll_Number INT NOT NULL UNIQUE,
Name VARCHAR(255)
);
DROP TABLE Student;
SELECT * FROM Student;
INSERT INTO Student(roll_Number, Name)
VALUES ('1', 'Avinash'),
       ('2', 'Ashis'),
       ('3', 'Animesh'),
       ('4', 'Ajay'),
       ('5', 'Rahul');
SELECT * FROM Student;       
ALTER TABLE Student Add adress VARCHAR(255);
DESC Student;
ALTER TABLE Student MODIFY roll_Number DOUBLE; 
ALTER TABLE Student CHANGE Name student_Name VARCHAR(255); 
DROP TABLE Student;

CREATE TABLE IF NOT EXISTS Student(
student_id INT NOT NULL UNIQUE,
dept_id INT,
student_name VARCHAR(255) NOT NULL,
marks DOUBLE,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE Department (
dep_id INT,
dep_name VARCHAR(250)
);
SELECT * FROM Department;

INSERT INTO Department(dep_id, dep_name)
VALUES (101, 'HR'),
	    (101, 'Sales'),
        (101, 'IT'),
		(101, 'Finance'),
        (101, 'Marketing');

CREATE TABLE Employee(
emp_id INT,
dep_id INT,
emp_name VARCHAR(255),
emp_city VARCHAR(255)
);
SELECT * FROM Department;
SELECT * FROM Employee;
INSERT INTO Employee(emp_id, dep_id, emp_name, emp_city)
VALUES (1, 101, 'Avinash', 'Delhi'),
       (2, 102, 'Ashis', 'Purnia'),
       (3, 103, 'ravin', 'Patna'),
       (4, 104, 'Animesh', 'Kolkata'),
       (5, 105, 'raj', 'Mumbai');
      
      SELECT Employee.emp_id, Employee.emp_name, Department.dep_name
       FROM Employee INNER JOIN Department ON Employee.dep_id = Department.dep_id;


























SELECT * FROM Department;
SELECT * FROM Employee;