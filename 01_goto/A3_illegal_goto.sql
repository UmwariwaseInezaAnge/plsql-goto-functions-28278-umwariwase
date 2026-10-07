SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 500000;

BEGIN
    IF v_salary > 400000 THEN
        GOTO high_salary;
    END IF;

    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is high');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Program completed.');

END;
/