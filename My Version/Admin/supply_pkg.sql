SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE DIBBA.supply AS 
   -- Adds order 
   PROCEDURE add_order(
   pr_id in product.p_id%type,
   cat_id in product.c_id%type,
   cat in product.category%type,
   pro_name in product.p_name%type,
   s_name in supply_order.supplier_name%type,
   buy_price in supply_order.unit_buying_price%type,
   quan in supply_order.quantity%type,
   sell_price in product.price%type,   
   com in supply_order.common%type); 
   
   -- Removes order 
   PROCEDURE del_order(pr_id in supply_order.p_id%TYPE); 
   
    -- Removes stock 
   PROCEDURE del_stock(pr_id in inventory.p_id%TYPE);
   
     -- Removes product 
   PROCEDURE del_product(pr_id in product.p_id%TYPE);
  
END Supply;
/





CREATE OR REPLACE PACKAGE BODY DIBBA.supply AS 

   PROCEDURE add_order(
   pr_id in product.p_id%type,
   cat_id in product.c_id%type,
   cat in product.category%type,
   pro_name in product.p_name%type,
   s_name in supply_order.supplier_name%type,
   buy_price in supply_order.unit_buying_price%type,
   quan in supply_order.quantity%type,
   sell_price in product.price%type,   
   com in supply_order.common%type)  
      
   is   
   
   I product.p_id%TYPE := 0;
    
   BEGIN 
    
    I := getLastId();
    I := I+1; 
   
   UPDATE Product SET Available_stock = Available_stock+quan WHERE p_id = pr_id;
   If SQL%Found Then 
      DBMS_OUTPUT.PUT_LINE(chr(13)); 
      --DBMS_OUTPUT.PUT_LINE('Stock Count Has Been Updated');
      
   Else
      INSERT INTO product VALUES(pr_id,cat_id,pro_name,cat,Quan,sell_price,Com);
      
   End If;
   
   INSERT INTO Supply_order VALUES (pr_id,I,S_Name,Buy_price,Quan,Com);
   UPDATE inventory SET Initial_stock = Initial_stock+quan WHERE p_id = pr_id;
   UPDATE inventory SET Current_stock = Current_stock+quan WHERE p_id = pr_id;
   
   If SQL%Found Then 
      DBMS_OUTPUT.PUT_LINE(chr(13)); 
      --DBMS_OUTPUT.PUT_LINE('Stock Count Has Been Updated');
      
   Else
      INSERT INTO inventory VALUES(pr_id,Quan,Quan,Com);
      
   End If;  
      
   END add_order; 
   
   PROCEDURE del_order(pr_id in supply_order.p_id%type) IS 
   
   BEGIN 
   
      DELETE FROM supply_order WHERE p_id = pr_id; 
       
   END del_order; 
      
   PROCEDURE del_stock(pr_id in inventory.p_id%type) IS 
   
   BEGIN 
   
      DELETE FROM Inventory WHERE p_id = pr_id;     
       
   END del_stock;
   
   PROCEDURE del_product(pr_id in product.p_id%type) IS 
   
   BEGIN 
   
      DELETE FROM product WHERE p_id = pr_id;     
       
   END del_product;
   
END Supply;
/