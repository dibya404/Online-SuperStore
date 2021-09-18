create table Profit_Loss(P_id int,P_Name Varchar2(20),Unit_Buying_price int,Unit_Selling_Price int,Sold_Out int,Profit int,Loss int,Common int,
constraint Product_fk3 foreign key (P_id) references Product(P_id));

select * from Profit_Loss;

insert into Profit_Loss values(1,'Mustard Oil(1L)',220,300,0,0,0,1);
insert into Profit_Loss values(2,'Basmati Rice(1Kg)',142,150,0,0,0,1);
insert into Profit_Loss values(3,'Moshur Dal(1Kg)',82,90,0,0,0,1);
insert into Profit_Loss values(4,'Coke(1L)',58,65,0,0,0,1);
insert into Profit_Loss values(5,'Cheesepuff(1P)',7,10,0,0,0,1);
insert into Profit_Loss values(6,'Canola Oil(1L)',120,170,0,0,0,1);
insert into Profit_Loss values(7,'Mug Dal(1Kg)',131,140,0,0,0,1);

drop table profit_loss;