SET SERVEROUTPUT ON;
SET VERIFY OFF; 

BEGIN
    DBMS_OUTPUT.PUT_LINE(chr(13));
    DBMS_OUTPUT.PUT_LINE('Search By- ');
    DBMS_OUTPUT.PUT_LINE('(1) Category');
    DBMS_OUTPUT.PUT_LINE('(2) Product Name');

END;
/

ACCEPT x NUMBER PROMPT "Select your option: "

DECLARE
    opt NUMBER:=&x;
    WRONG_VALUE EXCEPTION;
        
BEGIN
    
    IF opt = 1 THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('PRODUCT LIST BY CATEGORY');
        --cat_selection
    
    ELSIF opt = 2 THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('PRODUCT DETAILS BY PRODUCT NAME');
        --pro_selection
        
    ELSE
        RAISE WRONG_VALUE;

    END IF;
    
    
EXCEPTION
    WHEN WRONG_VALUE THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('You have pressed wrong digit! Please select from the options.');

END;
/