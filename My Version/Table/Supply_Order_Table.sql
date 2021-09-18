create table Supply_Order(P_id int,O_id int,Supplier_Name Varchar2(20),Unit_Buying_price int,Quantity int,Common int,
constraint Product_fk2 foreign key (P_id) references Product(P_id));

select * from Supply_Order;

Drop table supply_order;


insert into Supply_order values(1,1,'Minhaj',7,100,1);
insert into Supply_order values(2,2,'Sunil',142,30,1);
insert into Supply_order values(3,3,'Gohor',82,40,1);
insert into Supply_order values(4,4,'Amin',58,65,1);
insert into Supply_order values(5,5,'Abdullah',220,50,1);
insert into Supply_order values(6,6,'Sunil',120,50,1);
insert into Supply_order values(7,7,'Dhiman',131,40,1);