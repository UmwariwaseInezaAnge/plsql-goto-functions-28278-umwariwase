CREATE OR REPLACE FUNCTION get_department_name (
    v_employee_id employees.employee_id%TYPE
)
RETURN VARCHAR2
IS
    v_department_name department.department_name%TYPE;

BEGIN
    SELECT d.department_name
    INTO v_department_name
    FROM employees e
    JOIN department d
        ON e.department_id = d.department_id
    WHERE e.employee_id = v_employee_id;

    RETURN v_department_name;
END;
/
SELECT employee_name, get_department_name(employee_id)
FROM employees;