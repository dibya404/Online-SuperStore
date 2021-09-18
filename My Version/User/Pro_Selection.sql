set serveroutput on;
SET VERIFY OFF;
		
DECLARE
	id product.p_id%type;
	Name product.p_name%type;
	P_Price Product.Price%type;
    
begin
	 	
	select p_id,P_name,Price into id,name,P_Price from product where P_name = '&Product_Name';
	DBMS_OUTPUT.PUT_LINE('Product Id : '||id||'     '||'Product Name : '||name||'      '||'Product Price : '||P_price||'Tk');
 
end;
/