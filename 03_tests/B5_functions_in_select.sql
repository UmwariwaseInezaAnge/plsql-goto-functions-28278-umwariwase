SELECT employee_name,
       salary,
       annual_salary(employee_id) AS annual_salary,
       years_of_service(employee_id) AS years_service,
       calculate_tax(employee_id) AS tax,
       get_department_name(employee_id) AS department
FROM employees;