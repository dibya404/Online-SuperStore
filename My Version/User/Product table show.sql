set serveroutput on;
SET VERIFY OFF;


create view All_Product as
select * from product;
select * from All_product;
commit;