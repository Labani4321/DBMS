Branch
CREATE TABLE Branch (branchNo varchar(5),street varchar(20),city text,postcode varchar(20),primary key (branchNo));
desc Branch;
INSERT INTO BRANCH VALUES ('B005','22 Deer Rd','London','SW1 4EH'),('B007','16 Argyll St','Aberdeen','AB2 3SU'),('B003','163 Main St','Glassg
ow','G11 9QX'),('B004','32 Manse Rd','Bristol','BS99 1NZ'),('B002','56 Clover Dr','London','NW10 6EU');
select * from BRANCH;

Staff
CREATE TABLE Staff (staffNo VARCHAR(5),fName VARCHAR(20),lName VARCHAR(20),position VARCHAR(20),sex CHAR(1),DOB DATE,salary INT,branchNo VARCHAR(5),primary key (staffNo));
desc Staff;
INSERT INTO Staff VALUES ('SL21','John','White','Manager','M','1945-10-01',30000,'B005'),
('SG37','Ann','Beech','Assistant','F','1960-11-10',12000,'B003'),
('SG14','David','Ford','Supervisor','M','1958-03-24',18000,'B003'),
('SA9','Mary','Howe','Assistant','F','1970-02-19',9000,'B007'),
('SG5','Susan','Brand','Manager','F','1940-06-03',24000,'B003'),
('SL41','Julie','Lee','Assistant','F','1965-06-13',9000,'B005');
select * from Staff;

Registration
CREATE TABLE Registration (clientNo VARCHAR(5),branchNo VARCHAR(5),staffNo VARCHAR(5),dateJoined DATE,primary key(clientNo,branchNo));
desc Registration;
INSERT INTO Registration VALUES ('CR76','B005','SL41','2004-01-02'),
('CR56','B003','SG37','2003-04-11'),
('CR74','B003','SG37','2002-11-16'),
('CR62','B007','SA9','2003-03-07');
select * from Registration;

PropertyForRent
CREATE TABLE PropertyForRent (propertyNo VARCHAR(5),street VARCHAR(50),city VARCHAR(20),postcode VARCHAR(10),type VARCHAR(10),rooms INT,rent
DECIMAL(6,2),ownerNo VARCHAR(5),staffNo VARCHAR(5),branchNo VARCHAR(5),primary key (propertyNo));
desc PropertyForRent;
INSERT INTO PropertyForRent VALUES ('PA14','16 Holhead','Aberdeen','AB7 5SU','House',6,650,'CO46','SA9','B007'),
('PL94','6 Argyll St','London','NW2','Flat',3,400,'CO87','SL41','B005'),
('PG4','6 Lawrence St','Glasgow','G11 9QX','Flat',3,350,'CO40','SG37','B003'),
('PG36','2 Manor Rd','Glasgow','G32 4QX','Flat',3,375,'CO40','SG37','B003'),
('PG21','18 Dale Rd','Glasgow','G12','House',5,600,'CO87','SG37','B003'),
('PG16','5 Novar Dr','Glasgow','G12 9AX','Flat',4,450,'CO93','SG14','B003');
select * from PropertyForRent ;

Client
CREATE TABLE Client (clientNo VARCHAR(5),fName VARCHAR(20),lName VARCHAR(20),telNo VARCHAR(15),prefType VARCHAR(10),maxRent DECIMAL(6,2),prim
ary key (clientNo));
desc Client;
INSERT INTO Client VALUES ('CR76','John','Kay','0207-774-5632','Flat',425),
('CR56','Aline','Stewart','0141-848-1825','Flat',350),
('CR74','Mike','Ritchie','01475-392178','House',750),
('CR62','Mary','Tregear','01224-196720','Flat',600);
select * from Client ;

PrivateOwner
CREATE TABLE PrivateOwner (ownerNo VARCHAR(5),fName VARCHAR(20),lName VARCHAR(20),address VARCHAR(50),telNo VARCHAR(15),primary key(ownerNo));
desc PrivateOwner;
INSERT INTO PrivateOwner VALUES ('CO46','Joe','Keogh','2 Fergus Dr,Aberdeen AB2 7SX','01224-861212'),
('CO87','Carol','Farrel','6 Achray St,Glasgow G32 9DX','0141-357-7419'),
('CO40','Tina','Murphy','63 Well St,Glasgow G42','0141-943-1728'),
('CO93','Tony','Shaw','12 Park Pl,Glasgow G4 0QR','0141-225-7025');
select * from PrivateOwner;

Viweing
CREATE TABLE Viewing (clientNo VARCHAR(5),propertyNo VARCHAR(5),viewDate DATE,comment VARCHAR(50),primary key (clientNo,propertyNo));
desc Viewing;
INSERT INTO Viewing VALUES ('CR56','PA14','2004-05-24','too small'),
('CR76','PG4','2004-04-20','too remote'),
('CR56','PG4','2004-04-26',""),
('CR62','PA14','2004-05-14','no dining room'),
('CR56','PG36','2004-04-28','');
select * from Viewing;

#1.List full details of all staff.



