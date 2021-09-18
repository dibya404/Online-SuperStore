/*<TOAD_FILE_CHUNK>*/
SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PROCEDURE cat_searches(c_cat in product.c_id%TYPE)
  IS
  C_id product.p_id%type;
  C_name product.p_name%TYPE;
  C_price product.price%TYPE;

BEGIN
      FOR i IN (Select p_id,p_name,price from product where c_id=c_cat) LOOP
        c_id:=i.p_id;
        c_name:=i.p_name;
        c_price:=i.price;
        DBMS_OUTPUT.PUT_LINE('Product Id : '||c_id||'     '||'Product Name : '||c_name||'      '||'Product Price : '||c_price||'Tk');
    
    END LOOP;
END cat_searches;
/

/*<TOAD_FILE_CHUNK>*/
Create or replace procedure Shop_product(A in Product.p_id%TYPE,B in Product.available_stock%TYPE)
is    
a_price Product.price%TYPE;
total product.price%TYPE;
    
BEGIN

    Select price into a_price from product where p_id=A;
    Total:=B*A_Price;
   -- DBMS_OUTPUT.PUT_LINE('Total: '||Total||'Tk');   
    UPDATE product SET available_stock = available_stock-B WHERE p_id = A;
    UPDATE inventory SET current_stock = current_stock-B WHERE p_id = A;
    DBMS_OUTPUT.PUT_LINE('Total: '||Total||'Tk');
    
END Shop_Product;

/

