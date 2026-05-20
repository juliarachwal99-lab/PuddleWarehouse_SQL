create database PuddleWarehouse							
-- Creating a database for an e-commerce warehouse selling dog products

use PuddleWarehouse										-- Using the PuddleWarehouse database

create table Products(									-- Creating the products table
ProductID int not null identity(1,1) primary key,
ProductName varchar(255),
CategoryID int,
LocationID int,
SupplierID int,
Price Decimal(7,2),										-- Maximum price
Quantity int check (Quantity >= 0),						-- Quantity cannot be negative
ROP int check (ROP >= 0)								-- Reorder Point cannot be negative
)
create table Orders(									-- Creating the orders table
OrderID int not null identity(1,1) primary key,
OrderDate date,
ShipmentDate date,
ShipperID int,
CustomerID int
)
create table OrderDetails(								-- Creating the order details table
OrderID int,
Quantity int check (Quantity >= 0),						-- Quantity cannot be negative
ProductID int
)
create table Customer(									-- Creating the customers table
CustomerID int not null identity(1,1) primary key,
FirstName varchar(255),
LastName varchar(255),
AddressID int
)
create table Supplier(									-- Creating the suppliers table
SupplierID int not null identity(1,1) primary key,
CompanyName varchar(255),
AddressID int
)
create table Locations(									-- Creating the product locations table
LocationID int not null identity(1,1) primary key,
Storeroom varchar(255),
Aisle varchar(255)
)
create table Category(									-- Creating the product categories table
CategoryID int not null identity(1,1) primary key,
CategoryName varchar(255)
)
create table Shipper(									-- Creating the shippers table
ShipperID int not null identity(1,1) primary key,
CompanyName varchar(255)
)
create table Addresses(									-- Creating the addresses table
AdressID int not null identity(1,1) primary key,
Street varchar(255),
BuildingNumber varchar(255),
FlatNumber varchar(255),
PostCode int,
City varchar(255),
Country varchar(255)
)


-- Inserting records into the table
Insert into Products (ProductName,CategoryID,LocationID,SupplierID,Price,Quantity,ROP)
values 
	('Dog food',1,5,1,67.56,229,8),
	('Toy bone',2,4,2,12.5,182,10),
	('Dog bed',3,2,3,163.24,62,5),
	('Training treats',1,1,3,34.62,128,10),
	('Dog shampoo',3,6,3,38.05,80,6),
	('Dog brush',3,8,2,15.87,123,8)



Insert into Orders (OrderDate,ShipmentDate,ShipperID,CustomerID)
values 
	('20240129','20240131',1,12),
	('20240211','20240213',3,11),
	('20240211','20240213',2,6),
	('20240213','20240215',1,14),
	('20240214','20240216',3,10),
	('20240224','20240226',2,10),
	('20240512','20240514',3,15),
	('20240520','20240523',2,4),
	('20240523','20240526',2,5),
	('20240524','20240527',2,13),
	('20240702','20240705',2,1),
	('20240912','20240915',2,9),
	('20240921','20240924',1,14),
	('20241106','20241108',2,16),
	('20241120','20241122',3,7),
	('20241212','20241214',2,6),
	('20250110','20250112',2,8),
	('20250221','20250225',3,3),
	('20250326','20250328',2,2),
	('20250514','20250516',2,12),
	('20250618','20250620',1,8),
	('20250621','20250623',1,15),
	('20250713','20250715',1,13),
	('20250906','20250908',1,9),
	('20250926','20250928',3,2),
	('20250930','20251002',3,16),
	('20251008','20251010',1,4),
	('20251012','20251014',2,5),
	('20251209','20251211',3,11),
	('20251226','20251228',1,14)

Insert into OrderDetails (ProductID,Quantity,OrderID)
values
	(1,1,1),
	(2,1,1),
	(3,1,1),
	(4,1,1),
	(3,4,2),
	(4,1,3),
	(2,1,4),
	(1,1,6),
	(3,1,6),
	(4,5,6),
	(5,1,7),
	(1,1,8),
	(3,1,8),
	(6,1,8),
	(3,1,9),
	(1,1,10),
	(3,1,11),
	(4,1,11),
	(4,1,12),
	(5,1,16),
	(5,1,17),
	(6,1,18),
	(3,1,21),
	(2,1,22),
	(3,1,22),
	(6,1,22),
	(2,1,23),
	(3,1,23),
	(5,1,26),
	(6,1,26),
	(4,1,27),
	(6,1,27),
	(5,1,28),
	(4,1,29),
	(2,1,30)

Insert into Shipper (CompanyName)
values
	('UPS'), ('InPost'), ('DHL')

Insert into Category (CategoryName)
values
	('Food'), ('Toys'), ('Care')

Insert into Locations (Storeroom,Aisle)
values
	('A','1A'),
	('A','2A'),
	('A','1B'),
	('A','2B'),
	('B','1C'),
	('B','2C'),
	('B','1D'),
	('B','2D')

Insert into Addresses (Street,BuildingNumber,FlatNumber,PostCode,City,Country)
values
	('White Street',12,2,'23516','London','United Kingdom'),
	('Rodeo Drive',341,56,'56743','Los Angeles','United States'),
	('Baker Street',221,1,'56701','London','United Kingdom'),
	('Fifth Avenue',711,22,'10022','New York','United States'),
	('Champs-Élysées',50,10,'75008','Paris','France'),
	('Alexanderplatz',4,15,'10178','Berlin','Germany'),
	('Via Roma',88,7,'100','Rome','Italy'),
	('Gran Via',120,18,'28013','Madrid','Spain'),
	('Queen Street',45,9,'643545','Manchester','United Kingdom'),
	('Sunset Blvd',900,33,'90028','Los Angeles','United States'),
	('Orchard Road',230,12,'238854','Singapore','Singapore'),
	('Yonge Street',500,20,'545346','Toronto','Canada'),
	('George Street',78,6,'2000','Sydney','Australia'),
	('Sheikh Zayed Rd',310,25,'65203','Dubai','United Arab Emirates'),
	('MG Road',150,14,'560001','Bangalore','India'),
	('Nathan Road',60,8,'999077','Hong Kong','China'),
	('Rua Augusta',200,11,'1305000','São Paulo','Brazil'),
	('Karl Johans gate',10,3,'154','Oslo','Norway'),
	('Ringstrasse',25,5,'1010','Vienna','Austria'),
	('Damrak',90,16,'35245','Amsterdam','Netherlands'),
	('O''Connell Street',33,4,'45452','Dublin','Ireland'),
	('Laugavegur',70,2,'101','Reykjavik','Iceland')

Insert into Customer (FirstName,LastName,AddressID)
values
	('Anna','Kruś',19),
	('Augustyn','Bomba',5),
	('Gerard','Rudy',18),
	('Bożena','Janczyk',12),
	('Alfred','Ścigała',9),
	('Piotr','Kubisz',15),
	('Wacław','Wiercigroch',8),
	('Alojzy','Kwiatek',13),
	('Maryna','Majtyka',11),
	('Cecylia','Matacz',14),
	('Anna','Rams',16),
	('Nikodem','Budnik',2),
	('Iwona','Majkut',21),
	('Edyta','Kuśnierek',6),
	('Zenon','Ciołkowski',10),
	('Augustyn','Gajewski',20)

Insert into Supplier (CompanyName,AddressID)
values
	('Pefect dogs',3),
	('Puppy paradise',1),
	('Dogs R Us',22)


-- Analysis

-- 1. Order value (total)
Select sum(od.Quantity*p.Price) as [Wartość zamówień]
From OrderDetails od
	Left join Products p on (od.ProductID = p.ProductID)

-- 2. How many orders were placed from the 'United Kingdom' location
Select count(OrderID) as [Zamówienia z UK]
From Addresses a
	left join Customer c on (a.AdressID = c.AddressID)
	left join Orders o on (c.CustomerID = o.CustomerID)
Group by Country 
Having Country like 'United Kingdom'

-- 3. United Arab Emirates order address - customer's full name + full address 
Select o.OrderID, c.FirstName, c.LastName, a.Street, a.BuildingNumber, a.FlatNumber, a.City, a.PostCode, a.Country
From Customer c
	left join Addresses a on (c.AddressID = a.AdressID)
	left join Orders o on (c.CustomerID = o.CustomerID)
Where a.Country like 'United Arab Emirates'

-- 4. List of products from the "Care" category along with their warehouse location
Select p.ProductName, c.CategoryName, l.Storeroom, l.Aisle
From Products p
	left join Category c on (p.CategoryID = c.CategoryID)
	left join Locations l on (p.LocationID = l.LocationID)
Where c.CategoryName like 'Care'

-- 5. Value of each order
Select o.OrderID, sum(od.Quantity*p.Price) as [Wartość zamówienia]
From Orders o
	left join OrderDetails od on (o.OrderID = od.OrderID)
	left join Products p on (od.ProductID = p.ProductID)
Group by o.OrderID

-- 6. How many deliveries were made by each shipper
Select sh.CompanyName, count(o.OrderID) as [Ilość dostaw]
From Shipper sh
	left join Orders o on (sh.ShipperID = o.ShipperID)
Group by sh.CompanyName

-- 7. Quantity of each product in storeroom A
Select p.ProductName, p.Quantity, l.Storeroom
From Products p 
	left join Locations l on (p.LocationID = l.LocationID)
Where l.Storeroom like 'A'

-- 8. Suppliers of individual products and their addresses
Select p.ProductName, su.CompanyName, a.Street, a.BuildingNumber, a.FlatNumber, a.City, a.PostCode, a.Country
From Products p
	left join Supplier su on (p.SupplierID = su.SupplierID)
	left join Addresses a on (su.AddressID = a.AdressID)
