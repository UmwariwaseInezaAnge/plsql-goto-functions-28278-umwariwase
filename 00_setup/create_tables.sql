```sql
-- Employee Payroll System
-- Database setup

-- Create department table
CREATE TABLE department (
    department_id VARCHAR2(3) PRIMARY KEY,
    department_name VARCHAR2(20)
);

-- Create employees table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100),
    department_id VARCHAR2(3),
    salary NUMBER(10,2),
    hire_date DATE,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);

-- Insert departments
INSERT INTO department (department_id, department_name)
VALUES ('D01', 'IT');

INSERT INTO department (department_id, department_name)
VALUES ('D02', 'Finance');

INSERT INTO department (department_id, department_name)
VALUES ('D03', 'HR');

INSERT INTO department (department_id, department_name)
VALUES ('D04', 'Marketing');

INSERT INTO department (department_id, department_name)
VALUES ('D05', 'Sales');

-- Insert employees
INSERT INTO employees
(employee_id, employee_name, department_id, salary, hire_date)
VALUES
(1, 'Alice Mukamana', 'D01', 450000, DATE '2022-03-15');

INSERT INTO employees
(employee_id, employee_name, department_id, salary, hire_date)
VALUES
(2, 'Brian Niyonzima', 'D02', 650000, DATE '2020-07-10');

INSERT INTO employees
(employee_id, employee_name, department_id, salary, hire_date)
VALUES
(3, 'Claudine Uwase', 'D03', 380000, DATE '2024-01-20');

INSERT INTO employees
(employee_id, employee_name, department_id, salary, hire_date)
VALUES
(4, 'David Habimana', 'D01', 800000, DATE '2019-05-12');

INSERT INTO employees
(employee_id, employee_name, department_id, salary, hire_date)
VALUES
(5, 'Emma Irakoze', 'D04', 550000, DATE '2021-09-01');

INSERT INTO employees
(employee_id, employee_name, department_id, salary, hire_date)
VALUES
(6, 'Frank Tuyisenge', 'D05', 300000, DATE '2025-02-14');

INSERT INTO employees
(employee_id, employee_name, department_id, salary, hire_date)
VALUES
(7, 'Grace Ingabire', 'D02', 720000, DATE '2018-11-05');

INSERT INTO employees
(employee_id, employee_name, department_id, salary, hire_date)
VALUES
(8, 'Henry Bizimana', 'D03', 470000, DATE '2023-06-18');

-- Save all inserted data
COMMIT;
```
n