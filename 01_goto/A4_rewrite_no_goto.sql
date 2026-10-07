SET SERVEROUTPUT ON;

DECLARE
    v_employee_id employees.employee_id%TYPE;
    v_salary employees.salary%TYPE;

BEGIN
    v_employee_id := &employee_id;

    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    IF v_salary <= 400000 THEN
        DBMS_OUTPUT.PUT_LINE('Your salary needs review');

    ELSIF v_salary > 400000 AND v_salary < 500000 THEN
        DBMS_OUTPUT.PUT_LINE('Medium');

    ELSIF v_salary >= 500000 THEN
        DBMS_OUTPUT.PUT_LINE('Higher');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Cannot be classified');

    END IF;

END;
/