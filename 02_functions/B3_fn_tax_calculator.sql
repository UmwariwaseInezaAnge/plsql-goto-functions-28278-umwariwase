CREATE OR REPLACE FUNCTION calculate_tax (
    v_employee_id employees.employee_id%TYPE
)
RETURN NUMBER
IS
    v_salary employees.salary%TYPE;
    v_tax NUMBER;

BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    IF v_salary <= 400000 THEN
        v_tax := 0;

    ELSIF v_salary <= 600000 THEN
        v_tax := v_salary * 0.10;

    ELSE
        v_tax := v_salary * 0.20;
    END IF;

    RETURN v_tax;
END;
/

SELECT employee_name, salary, calculate_tax(employee_id)
FROM employees;