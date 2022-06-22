use earlycodestore;

insert into clothing_tables(ProductID, ProductName, ProductDetails, ProductPrice, ProductLocation, ProductDiscount) values
(1,'Jones Wear Marsh up', 'Jones wear hoodee for men', 5000, 'Abuja and Nigeria',5),
(2,'Oblique Zipper', 'Mens Oblique Zipper', 3899, 'Lagos only', 48),
(3,'VEJARO DO1', 'VEJARO DO1 for Ladies Office Wear', 3640, 'Lagos and Abuja only', 59),
(4,'Vintage','Mens Vintage Shirt Patterned Short', 3280, 'All State',54),
(5,'VEJARO DO2', 'VEJARO DO2 for Ladies Office Wear', 3640, 'Lagos and Abuja Only', 59 ),
(6,'Gown','Women Long Gown office Dress Female Party', 2980, 'All state', 51),
(7,'Navy Blue Dress', 'Detail Flare Navy Blue Dress', 4940, 'Abuja Only', 51),
(8,'Jeans', '2PCs Smart Stock Jeans Mixed Black and Blue', 10015, 'All State', 9),
(9,'Fitted Jeans', '2 in 1 Mens Stretch Slim Fitted Jeans Black and Blue', 7290, 'Abuja Only',43),
(10, 'Gown', 'Red V-neck Bodycon Sleeveless Dress', 3000, 'All State', 5);
select * from clothing_tables; # to show all the table
update clothing_tables set ProductName='VEJARE DOO' where ProductID = 3; #to update if there is a mistake in the table
select*from clothing_tables;
delete from clothing_tables where ProductID = 10; # to delete something from the table
select* from clothing_tables;
select ProductName from clothings; # to show part of the table(here we show only ProductName)
select * from clothing_tables where Productprice <=5000; # when you want to add a condition to the table
#w we have 2 types of index(cluster and non-cluster index)
#Primary key is a cluster index because it gives no room for Duplication
#The purpose of creating an Index is for accessibility and Location
create index secondaryindex on clothing_tables (ProductLocation);
show indexes from clothings;
select * from clothing_tables where ProductLocation = 'Abuja Only';
drop index secondaryindex on clothing_tables;
show indexes from clothing_tables;

insert into clothing_tables(ProductID, ProductName, ProductDetails, ProductPrice, ProductLocation, ProductDiscount) values
(10, 'Buba and sokoto', 'A well sewn traditional wearfor men', 9000, 'Lagos', 5),
(11,'Palazo Wear Marsh up', 'Palazo wear for women', 4900, 'Abuja, Lagos and  Nigeria',5),
(12,'Jordan sport wear', 'Singlet Basketball official wear', 18000, 'Lagos  and Abuja only', 4),
(13,'Barcelona Sportee', 'Official Home Jersey of Barcelona 2020', 9000, 'All states including Ghana',9),
(14,'Rolex','Mens Rolex Swiss Watch', 500000, 'All State',14),
(15,'JohnP Official', 'Coperate Suit for Office', 10000, 'Lagos and Abuja Only', 34 ),
(16,' Free Gown','Women Long Gown casual Female Party', 12000, 'All state', 1),
(17,'Black Performative Dress', 'Detailed Black Dress for casual outing', 3500, 'Abuja Only', 11),
(18,'YSV Traditional', 'Well cut and detailed Traditional wear For Men', 30000, 'Southwest States', 9),
(19,'Northern Fitted Wear', '2 in 1 Mens Traditional with exclusive Cap to fit', 18000, 'Abuja Only',9),
(20, 'Efferv', 'Greenish-Orange  V-neck Bodycon Sleeveless Dress', 5000, 'All State', 5);
select *from clothing_tables