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

    IF v_salary < 400000 THEN
        GOTO review;
    ELSE
        GOTO acceptable;
    END IF;

    <<review>>
    DBMS_OUTPUT.PUT_LINE('Your salary needs review: ' || v_salary);
    GOTO finish;

    <<acceptable>>
    DBMS_OUTPUT.PUT_LINE('Your salary is acceptable: ' || v_salary);

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

END;
/