--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;


BEGIN
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('Choose option to get according information:  ');
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('(1) Product Information');
    DBMS_OUTPUT.PUT_LINE('(2) Inventory Track');
    DBMS_OUTPUT.PUT_LINE('(3) Supply Information');
    DBMS_OUTPUT.PUT_LINE('(4) Profit Check');
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
            DBMS_OUTPUT.PUT_LINE('PRODUCT TABLE');
            DBMS_OUTPUT.PUT_LINE('-------------');
			prod_call(1);
            --
					
    
        WHEN opt = 2 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('INVENTORY TABLE');
            DBMS_OUTPUT.PUT_LINE('-------------');
			Inven_Call(1);
           
            
        WHEN opt = 3 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('SUPPLY/ORDER TABLE');
            DBMS_OUTPUT.PUT_LINE('-------------');
            Supply_call(1);
            
            
        WHEN opt = 4 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('PROFIT/LOSS TABLE');
            DBMS_OUTPUT.PUT_LINE('-------------');
            --profit_input
            
        ELSE
            RAISE WRONG_VALUE;

    END CASE;
        
EXCEPTION

    WHEN WRONG_VALUE THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('Wrong digit pressed! Please press digit according to options.');

END;
/

