set serveroutput on;
set verify off;

create or replace function get_Last_Id
  return product.p_id%TYPE
  is
  
  A product.p_id%TYPE;


begin

    select max(p_id) into A from product;
    
    return A;
    
exception
    when no_data_found then 
        --return null;
        dbms_output.put_line('No data found!'); 
        
end get_Last_Id;
/



create or replace function getLastId
  return supply_order.o_id%TYPE
  is
  
  A supply_order.o_id%TYPE;


begin

    select max(o_id) into A from supply_order;
    
    return A;
    
exception
    when no_data_found then 
        --return null;
        dbms_output.put_line('No data found!'); 

end getLastId;
/
