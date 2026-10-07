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
        GOTO low_salary;

    ELSIF v_salary <= 600000 THEN
        GOTO medium_salary;

    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is LOW: ' || v_salary);
    GOTO finish;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is MEDIUM: ' || v_salary);
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is HIGH: ' || v_salary);

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Classification completed.');

END;
/