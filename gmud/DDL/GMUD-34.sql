-- OBJECT_TYPE: PACKAGE 
-- OBJECT_NAME: ZABBIX.TEST_EMP_PKG 

CREATE OR REPLACE PACKAGE test_emp_pkg AS
    -- Public type definition
    TYPE emp_rec IS RECORD (
        first_name VARCHAR2(50),
        salary     NUMBER
    );

    -- Public function declaration
    FUNCTION get_emp_details(p_emp_id IN NUMBER) RETURN emp_rec;

    -- Public procedure declaration
    PROCEDURE adjust_salary(p_emp_id IN NUMBER, p_bonus IN NUMBER);
END test_emp_pkg;
/
