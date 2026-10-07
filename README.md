# PL/SQL GOTO Statements and Functions

Student Name:umwariwase Ineza Ange
Student ID:28278
Course: Database Development with PL/SQL (INSY 8311)

## Project Description

This project is an individual PL/SQL assignment about GOTO statements and functions.

The project uses a small Employee Payroll System with employees, departments, salaries, and hire dates.

The assignment covers:

* GOTO statements
* IF and ELSIF statements
* Rewriting a program without GOTO
* Creating PL/SQL functions
* Using functions in SQL SELECT statements
* Payroll validation
* Exception handling

## Database Tables

The project uses two tables:

### Department

Stores department information such as department ID and department name.

### Employees

Stores employee information including:

* Employee ID
* Employee name
* Department ID
* Salary
* Hire date

## Project Structure

```text
plsql-goto-functions-YOUR_STUDENT_ID-YOUR_NAME/
│
├── README.md
├── .gitignore
│
├── 00_setup/
│   └── create_tables.sql
│
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
│
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
│
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
│
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
│
└── docs/
    └── REFLECTION.md
```

## How to Run

1. Connect to the Oracle database.
2. Make sure the correct PDB is open.
3. Run `00_setup/create_tables.sql` if the database tables have not already been created.
4. Run the functions in the `02_functions` folder.
5. Run the GOTO programs in the `01_goto` folder.
6. Run the test files in the `03_tests` folder.
7. Check the output and compare it with the screenshots.

## Tools Used

* Oracle Database
* SQL*Plus
* PL/SQL
* GitHub
* Visual Studio Code

## Learning

Through this assignment, I practiced using GOTO statements, labels, IF/ELSIF conditions, PL/SQL functions, SQL SELECT statements, and exception handling.

## AI Usage

AI was used for learning support, understanding PL/SQL concepts, checking syntax, and correcting errors during development. The code was tested and understood before submission.
