SELECT employee_id,
       employee_name,
       salary,
       validate_payroll(employee_id) AS payroll_status
FROM employees;

SELECT validate_payroll(99) FROM dual;