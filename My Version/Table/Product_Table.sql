create table Product(P_id int,C_id int, P_name varchar2(20), Category varchar2(20),Available_Stock int, Price int,Common int,
constraint Product_pk primary key (P_id),
constraint cat_fk foreign key (c_id) references Cat(Cat_id));

select * from product;

drop table product;


insert into Product values(1,3,'Mustard Oil(1L)','Oil',50,300,1);
insert into Product values(2,1,'Basmati Rice(1Kg)','Rice',30,150,1);
insert into Product values(3,2,'Moshur Dal(1Kg)','Lentil',40,90,1);
insert into Product values(4,4,'Coke(1L)','Beverage',65,65,1);
insert into Product values(5,5,'Cheesepuff(1P)','Snack',100,10,1);
insert into Product values(6,3,'Canola Oil(1L)','Oil',50,170,1);
insert into Product values(7,2,'Mug Dal(1Kg)','Lentil',40,140,1);



