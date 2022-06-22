use earlycodestore;

select *  from clothing_tables where ProductLocation = 'abuja' and ProductDiscount = 51;
select * from dairyproducts where productName = 'cowbell' and ProductLocation = 'All over Nigeria';
select *  from clothing_tables where productdetails = 'Men' or 'Female';
select * from clothing_tables where (ProductDiscount > 2 and Productprice > 2000) or (ProductLocation = 'Lagos');
select ProductName, productdetails from clothing_tables where Productprice like 'st%';
select ProductName, productdesc from dairyproducts where ProductLocation like  '%d';
select ProductName, productdesc from dairyproducts where ProductLocation like  '%ed';
select * from clothing_tables where ProductDiscount in (productName); # IN is a replacement for OR
select * from dairyproducts where ProductDiscount <> 5; #<> means not equal in sql
select * from clothing_tables where  Productprice = null; # null is to get missing table
select * from dairyproducts where productdiscount is not null;
select * from clothing_tables where ProductDiscount between 50 and 75;  #between works for numeric value
select clothing_tables.productdetails, clothing_tables.productLocation, clothing_tables.ProductDiscount, dairyproducts.Productdesc, dairyproducts.ProductLocation from  dairyproducts inner join clothing_tables on dairyproducts.ProductID;
select clothing_tables.productdetails, clothing_tables.productLocation, clothing_tables.ProductDiscount, dairyproducts.Productdesc, dairyproducts.ProductLocation from  dairyproducts left join clothing_tables on dairyproducts.ProductID;
select clothing_tables.productdetails, clothing_tables.productLocation, clothing_tables.ProductDiscount, dairyproducts.Productdesc, dairyproducts.ProductLocation from  dairyproducts right join clothing_tables on dairyproducts.ProductID;