SET SERVEROUTPUT ON;
SET VERIFY OFF;

Declare 
 A product.P_ID%Type:=&Product_Id;
            
Begin
  
     supply.del_product(A);
     
End;            
/
select * from product; 