INSERT INTO department(name)
VALUES
('IT'), 
('Sales'), 
('Engineering'), 
('Finance'), 
('Legal');

INSERT INTO role(title, salary, department_id)
VALUES
('Software Engineer', 150000, 1),
('IT Support', 60000, 1),
('IT Manager', 200000, 1),
('Sales Director', 180000, 2),
('Sales Manager', 100000, 2),
('Salesperson', 50000, 2),
('Lead Engineer', 150000, 3),
('Machinist', 80000, 3),
('Accountant', 70000, 4),
('Account Manager', 150000, 4),
('Finance Analyst', 75000, 4),
('Finance Manager', 150000, 4),
('General Counsel', 250000, 5),
('Lawyer', 120000, 5),
('Paralegal', 60000, 5);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES
('Alice', 'Smith', 1, NULL),
('Bob', 'Johnson', 2, 1),
('Charlie', 'Brown', 3, 2),
('David', 'White', 4, 3),
('Eve', 'Black', 5, 4),
('Frank', 'Green', 6, 5),
('Grace', 'Blue', 7, 6),
('Hannah', 'Red', 8, 7),
('Isaac', 'Orange', 9, 8),
('Jenny', 'Yellow', 10, 9),
('Kevin', 'Purple', 11, 10),
('Linda', 'Pink', 12, 11),
('Michael', 'Grey', 13, 12),
('Nancy', 'Brown', 14, 13),
('Oscar', 'White', 15, 14);