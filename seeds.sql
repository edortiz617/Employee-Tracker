-- Departments
INSERT INTO departments (id, name) VALUES
(1, 'Engineering'),
(2, 'Finance'),
(3, 'Human Resources'),
(4, 'Marketing');

-- Roles
INSERT INTO roles (id, title, salary, department_id) VALUES
(1, 'Software Engineer', 80000, 1),
(2, 'Accountant', 60000, 2),
(3, 'HR Manager', 75000, 3),
(4, 'Marketing Coordinator', 50000, 4);

-- Employees
INSERT INTO employees (id, first_name, last_name, role_id, manager_id) VALUES
(1, 'John', 'Doe', 1, NULL),
(2, 'Jane', 'Smith', 2, 1),
(3, 'Emily', 'Jones', 3, 1),
(4, 'Michael', 'Brown', 4, NULL);