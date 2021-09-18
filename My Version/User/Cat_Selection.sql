--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('Choose your Category: ');
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('(1) Rice');
    DBMS_OUTPUT.PUT_LINE('(2) Lentil');
    DBMS_OUTPUT.PUT_LINE('(3) Oil');
    DBMS_OUTPUT.PUT_LINE('(4) Beverage');
    DBMS_OUTPUT.PUT_LINE('(5) Snack');
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
END;
/


ACCEPT x Number PROMPT "Enter Option: "

DECLARE
    opt Number:=&x;
    WRONG_VALUE EXCEPTION;
        
BEGIN
    
    CASE
        WHEN opt = 1 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Rice');
            DBMS_OUTPUT.PUT_LINE('-------------');
            Cat_Searches('1');
    
        WHEN opt = 2 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Lentil');
            DBMS_OUTPUT.PUT_LINE('-------------');
            Cat_searches('2');
            
        WHEN opt = 3 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Oil');
            DBMS_OUTPUT.PUT_LINE('-------------');
            Cat_searches('3');
            
        WHEN opt = 4 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Beverage');
            DBMS_OUTPUT.PUT_LINE('-------------');
            Cat_searches('4');
            
        WHEN opt = 5 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Snack');
            DBMS_OUTPUT.PUT_LINE('-------------');
            Cat_searches('5');
            
        ELSE
            RAISE WRONG_VALUE;

    END CASE;
        
EXCEPTION

    WHEN WRONG_VALUE THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('Wrong digit pressed! Please press digit according to options.');

END;
/

