SET SERVEROUTPUT ON;
SET VERIFY OFF;

Declare 
 A supply_order.P_ID%Type:=&Product_Id;
            
Begin
  
     supply.del_order(A);
     
End;            
/
select * from supply_order; 