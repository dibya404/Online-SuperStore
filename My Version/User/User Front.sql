--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;


BEGIN
    DBMS_OUTPUT.PUT_LINE(chr(10));
    DBMS_OUTPUT.PUT_LINE('Welcome to "DAILY SHOP" ');
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('Choose you option: ');
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('(1) View All The Items');
    DBMS_OUTPUT.PUT_LINE('(2) Search');
    DBMS_OUTPUT.PUT_LINE('(3) Shop');
END;
/


ACCEPT x NUMBER PROMPT "Type your option: "

DECLARE
    opt NUMBER:=&x;
    WRONG_VALUE EXCEPTION;
        
BEGIN
    
    IF opt = 1 THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('VIEW ALL ITEMS');
            --product table show
    
    ELSIF opt = 2 THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('SEARCH CATEGORY/ITEM');
            --Search By
    ELSIF opt = 3 THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('SHOP ITEM');
            --Shop
    
    ELSE
        RAISE WRONG_VALUE;

    END IF;
    
    
EXCEPTION
    WHEN WRONG_VALUE THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('You have pressed wrong digit!');

END;
/