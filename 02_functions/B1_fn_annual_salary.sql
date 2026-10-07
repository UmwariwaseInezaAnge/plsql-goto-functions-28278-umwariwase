CREATE OR REPLACE FUNCTION annual_salary (
    v_employee_id employees.employee_id%TYPE
)
RETURN NUMBER
IS
    v_salary employees.salary%TYPE;
    v_annual_salary NUMBER;

BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    v_annual_salary := v_salary * 12;

    RETURN v_annual_salary;
END;
/

SELECT annual_salary(6)
FROM dual;