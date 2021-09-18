SET SERVEROUTPUT ON;
SET VERIFY OFF;

select P_Id,O_id,Supplier_name from supply_order;

Declare 
 A product.P_ID%Type:=&Product_Id;
 B supply_order.O_ID%Type:=&Order_Id;
            
Begin
  
     profit(A,B);
     
End;            
/