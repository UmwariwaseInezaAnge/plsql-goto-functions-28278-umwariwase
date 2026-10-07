CREATE OR REPLACE FUNCTION years_of_service (
    v_employee_id employees.employee_id%TYPE
)
RETURN NUMBER
IS
    v_hire_date employees.hire_date%TYPE;
    v_years NUMBER;

BEGIN
    SELECT hire_date
    INTO v_hire_date
    FROM employees
    WHERE employee_id = v_employee_id;

    v_years := MONTHS_BETWEEN(SYSDATE, v_hire_date) / 12;

    RETURN TRUNC(v_years);
END;
/
SELECT employee_name, years_of_service(employee_id)
FROM employees;