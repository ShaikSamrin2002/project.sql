create database Inventory_Management;

create table manufacture_(
manufacture_id int not null,
num_of_items int not null,
defective_items int,
company varchar(40)
);

insert into manfacture_ values(100,23,3,'Mycare'),
(101,34,4,'MyKids'),
(102,27,5,'MyBottle'),
(103,31,2,'MyHome'),
(104,27,5,'Mywood');

select * from manufacture_;


create table Goods(
item_name varchar(40) not null,
goods_id int not null,
manufacture_date date not null);

insert into Goods values('red toys',1201,'2023-09-03'),
('green toys',1202,'2023-02-04'),
('wooden chair', 1203,'2023-04-23'),
('wooden cot',1204,'2023-06-30'),
('fridge',1205,'2023-01-24'),
('bottle',1206,'2023-07-17'),
('skin care',1208,'2023-03-15');

select * from Goods;


create table purchase(
purchase_id int not null,
purchase_amount int not null,
purchase_mode varchar(20) not null);


insert into purchase values(20,1200,'online'),
(21,1300,'offline'),
(22,1450,'online'),
(23,12000,'offline'),
(24,1700,'online'),
(25,2000,'offline');

select * from purchase;


create table sale(
sale_date date not null,
profit_margin int not null,
store_sold varchar(40) not null);

insert into sale values('2023-02-12',5637,'tiny'),
('2022-03-08',2324,'AASHIANA'),
('2023-09-28',4789,'UMPIRE'),
('2021-02-20',8937,'LOLO');

select * from sale;
update sale set store_sold='TINY' where store_sold='tiny';

delete from Goods where item_name='bottle' and store_sold='LOLO' ;

select item_name,manufacture_date from goods where item_name='wooden chair' and manufacture_date<'2023-05-01';

update goods set manufacture_date='2023-05-03' where item_name='red toys';
select * from goods;

select store_sold,profit_margin from sale where store_sold='umpire';
