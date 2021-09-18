SET SERVEROUTPUT ON;
SET VERIFY OFF;

Declare 
 A inventory.P_ID%Type:=&Product_Id;
            
Begin
  
     supply.del_Stock(A);
     
End;            
/

select * from inventory;