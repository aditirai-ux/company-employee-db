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