SET SERVEROUTPUT ON;
SET VERIFY OFF;

Declare

    I product.p_id%TYPE := 0;
    
Begin
    DBMS_OUTPUT.PUT_LINE(chr(13));
     I := get_Last_Id();
    DBMS_OUTPUT.PUT_LINE(chr(13));
    DBMS_OUTPUT.PUT_LINE(chr(13));
    DBMS_OUTPUT.PUT_LINE('Category Id for Rice is : 1');
    DBMS_OUTPUT.PUT_LINE('Category Id for Lentil is : 2');
    DBMS_OUTPUT.PUT_LINE('Category Id for Oil is : 3');
    DBMS_OUTPUT.PUT_LINE('Category Id for Beverage is : 4');
    DBMS_OUTPUT.PUT_LINE('Category Id for Snack is : 5');
   
End;
/


Declare 
 A product.P_ID%Type:=&Product_Id;
 B product.c_id%type:=&Category_Id;
 C product.category%type:='Category_Name';
 D product.p_name%type:='&Product_Name'; 
 E Supply_Order.Supplier_Name%Type:='&Supplier_Name';
 F Supply_Order.Unit_Buying_price%Type:=&Unit_Buying_Price;
 G Supply_Order.Quantity%Type:=&Quantity;
 H product.price%Type:=&Unit_Selling_Price;
 I Supply_Order.Common%Type:=&Common_Id;
            
Begin
  
     supply.Add_order(A,B,C,D,E,F,G,H,I);
     
End;            
/

select * from supply_order;
select * from Inventory;
select * from product;