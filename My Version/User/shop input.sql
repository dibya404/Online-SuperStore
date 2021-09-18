SET SERVEROUTPUT ON;
SET VERIFY OFF;

Declare 
 A PRODUCT.P_ID%Type:=&Product_Id;
 B PRODUCT.AVAILABLE_STOCK%Type:=&Quantity;
            
Begin
  
     Shop_product(A,B);
     
End;            
/

select * from product;