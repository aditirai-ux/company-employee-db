-- view all departments, view all roles, view all employees

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;

-- add a department, add a role, add an employee
UPDATE department
SET name = 'Human Resources'
WHERE id = 1;
INSERT INTO department(name)
VALUES ('Human Resources')

UPDATE role
SET title = 'HR Manager', salary = 150000, department_id = 6
WHERE id = 1;
INSERT INTO role(title, salary, department_id)
VALUES ('HR Manager', 150000, 6);

UPDATE employee
SET first_name = 'Olivia', last_name = 'Smith', role_id = 1, manager_id = 1
WHERE id = 1;
INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ('Olivia', 'Smith', 1, 1);
