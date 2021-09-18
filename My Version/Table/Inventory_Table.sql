create table Inventory(P_id int,Initial_Stock int,Current_Stock int,Common int,
constraint Product_fk foreign key (P_id) references Product(P_id));

select * from Inventory;

drop table inventory;


insert into Inventory values(1,50,50,1);
insert into Inventory values(2,30,30,1);
insert into Inventory values(3,40,40,1);
insert into Inventory values(4,65,65,1);
insert into Inventory values(5,100,100,1);
insert into Inventory values(6,50,50,1);
insert into Inventory values(7,40,40,1);