SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PROCEDURE Prod_call(P_com in product.common%type)
  IS  
	id product.p_id%type;
    ca_id product.p_id%type;
	Name product.p_name%type;
	P_category product.Category%type;
	Available product.Available_stock%type;
	P_Price Product.Price%type;
  
BEGIN

	FOR i IN (select p_id,c_id,P_name,category,Available_stock,Price from product where P_com = common) LOOP  
		id := i.p_id;
        ca_id := i.c_id;
		name:=i.p_name;
		P_category:=i.category;
		Available:=i.Available_stock;
		P_Price:=i.Price;
		DBMS_OUTPUT.PUT_LINE('Product Id : '||id||'     '||
                                'Category Id : '||ca_id||'     '||
                                'Product Name : '||Name||'     '||
                                'Product Category : '||P_category||'     '||
                                'Available Stock'||Available||' 	'||
                                'Product Price : '||P_Price);
        DBMS_OUTPUT.PUT_LINE(chr(13));
        DBMS_OUTPUT.PUT_LINE('-------------');
        DBMS_OUTPUT.PUT_LINE('You Can Add an Item to Display or Remove an Item');        
	
	END LOOP;
    
END Prod_call;
/




--P_id int,O_id int,Initial_Stock int,Current_Stock int,Common int
CREATE OR REPLACE PROCEDURE inven_call(I_com in Inventory.common%type)
  IS  
	id Inventory.p_id%type;
	I_Stock Inventory.Initial_Stock%type;
	c_stock Inventory.Current_stock%type;
  
BEGIN

	FOR i IN (select p_id,Initial_Stock,Current_stock from Inventory where I_com = common) LOOP  
		id := i.p_id;
		I_Stock:=i.Initial_stock;
        c_Stock:=i.current_stock;
        DBMS_OUTPUT.PUT_LINE('Product Id : '||id||'     '||
                                'Initial Stock : '||i_stock||'     '||
                                'Current Stock : '||c_stock);
        DBMS_OUTPUT.PUT_LINE(chr(13));
        DBMS_OUTPUT.PUT_LINE('-------------');
        DBMS_OUTPUT.PUT_LINE('Updated with Recent Supply Order placement');        
	
	END LOOP;
    
END inven_call;
/




--O_id int,P_id int,Supplier_Name Varchar2(20),Unit_Buying_price int,Quantity int
CREATE OR REPLACE PROCEDURE Supply_call(S_com in Supply_Order.common%type)
  IS  
	id Supply_Order.p_id%type;
    or_id Supply_Order.o_id%type;
	Name Supply_Order.Supplier_name%type;
    buy_price Supply_Order.unit_buying_price%type;
	quantities Supply_Order.quantity%type;
    
BEGIN

	FOR i IN (select p_id,o_id,Supplier_name,unit_buying_price,Quantity from Supply_Order where S_com = common) LOOP  
		id:=i.P_id;
        or_id:=i.o_id;
		Name:=i.Supplier_name;
		Quantities := i.quantity;
        Buy_Price := i.unit_buying_price;
        DBMS_OUTPUT.PUT_LINE('Product Id : '||id||'     '||
                                 'Order Id : '||or_id||'     '||
                                'Product Name : '||Name||'     '||
                                'Unit Buying Price : '||buy_price||'     '||
                                'Bought Quantity'||quantities);
        DBMS_OUTPUT.PUT_LINE(chr(13));
        DBMS_OUTPUT.PUT_LINE('-------------');
        DBMS_OUTPUT.PUT_LINE('You Can Add/Remove Order Placement Record');        
	
	END LOOP;
    
END Supply_call;
/

create or replace procedure profit(A product.p_id%TYPE,B supply_order.o_id%TYPE)
  is
  
  I Inventory.Initial_Stock%type := 0;
  S Inventory.Current_stock%type := 0;
  Pr Product.Price%type := 0;
  X Inventory.Initial_Stock%type := 0;
  buy Supply_Order.unit_buying_price%type := 0;
  Y Product.Price%type := 0;
  Result Product.Price%type := 0;
  Name product.p_name%type;

begin

    select p_name,price into name,pr from product where P_id=A;
    select unit_buying_price into Buy from supply_order where o_id=B;
    Select Initial_stock,Current_Stock into I,S from Inventory where p_id=A;
    X := I-S;
    Y := Pr-Buy;
    Result :=X*Y;
    DBMS_OUTPUT.PUT_LINE('Product Name : '||Name||'     '||'Profit : '||Result||'Tk');
    


end profit;
/


