SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('Do you wish to shop?');
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('(1) Yes');
    DBMS_OUTPUT.PUT_LINE('(2) No');
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
            DBMS_OUTPUT.PUT_LINE('SHOP PRODUCT');
            DBMS_OUTPUT.PUT_LINE('-------------');
            --Shop_input
    
        WHEN opt = 2 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13));
            DBMS_OUTPUT.PUT_LINE('Thank You For Visiting!');

        ELSE
            RAISE WRONG_VALUE;

    END CASE;
        
EXCEPTION

    WHEN WRONG_VALUE THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('Wrong digit pressed! Please press digit according to options.');

END;
/
