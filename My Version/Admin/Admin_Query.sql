--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('Choose your Option: ');
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
    DBMS_OUTPUT.PUT_LINE('(1) Add an Product');
    DBMS_OUTPUT.PUT_LINE('(2) Remove an Product');
    DBMS_OUTPUT.PUT_LINE('(3) Add an Inventory Record');
    DBMS_OUTPUT.PUT_LINE('(4) Delete an Inventory Record');
    DBMS_OUTPUT.PUT_LINE('(5) Place New Order to Restock');
    DBMS_OUTPUT.PUT_LINE('(6) Delete an Order Record');
    DBMS_OUTPUT.PUT_LINE(chr(13)); 
END;
/


ACCEPT x Number PROMPT "Enter Option: "

DECLARE
    opt Number:=&x;
    WRONG_VALUE EXCEPTION;
    A product.p_id%type := 0;
        
BEGIN
    
        If opt = 1 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Update Order Placement Record to Add an Item');
            DBMS_OUTPUT.PUT_LINE('-------------');
            --Add_order_input
    
        Elsif opt = 2 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Remove an Product');
            DBMS_OUTPUT.PUT_LINE('-------------');
            --Del_product_input
            
        Elsif opt = 3 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Add an Inventory Record');
            DBMS_OUTPUT.PUT_LINE('-------------');
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Update Order Placement Record to Add Inventory Record');
            --Add_order_input
            
        Elsif opt = 4 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Delete an Inventory Record');
            DBMS_OUTPUT.PUT_LINE('-------------');
             --del_inventory_input
            
        Elsif opt = 5 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Place New Order to Restock');
            DBMS_OUTPUT.PUT_LINE('-------------');
            --Add_order_input
            
        Elsif opt = 6 THEN
            DBMS_OUTPUT.PUT_LINE(chr(13)); 
            DBMS_OUTPUT.PUT_LINE('Delete an Order Record');
            DBMS_OUTPUT.PUT_LINE('-------------');
            --Del_order_input
        
        ELSE
            RAISE WRONG_VALUE;

    END If;
        
EXCEPTION

    WHEN WRONG_VALUE THEN
        DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('Wrong digit pressed! Please press digit according to options.');

END;
/

