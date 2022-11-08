/*******************************************************************************
   CarRentSell
   Script: create_CarRentSell_db.sql
   DB Server: MySql
   Author: Taras Kozodoi
********************************************************************************/

/*******************************************************************************
   Drop database if it exists
********************************************************************************/
DROP DATABASE IF EXISTS `CarRentSell`;


/*******************************************************************************
   Create database
********************************************************************************/
CREATE DATABASE `CarRentSell`;


USE `CarRentSell`;


/*******************************************************************************
   Create Tables
********************************************************************************/

CREATE TABLE Car
(
	Id int not null primary key,
    Name varchar(30) not null,
    Make varchar(15),
    Type varchar(20),
    GraduationYear date CHECK(graduationYear > '2000-01-01'),
    VinCode varchar(17) not null CHECK(char_length(vinCode) = 17),
    TechnicalCondition int CHECK((TechnicalCondition > 0 and TechnicalCondition < 101)),
    Price double CHECK(Price > 0),
    UNIQUE(VinCode)
);

CREATE TABLE RegCar
(
	Id int not null primary key,
    CarId int not null, # references Car(Id) on delete cascade 
    LicensePlate varchar(8) not null CHECK(char_length(licensePlate)=8),
    RentalPrice double CHECK(RentalPrice > 0),
    UNIQUE (CarId)
);

CREATE TABLE User
(
	Id int not null primary key,
    Login varchar(30) not null CHECK(char_length(Login) > 4),
    Password varchar(255) not null CHECK(char_length(Password) > 7),
    Role enum('customer','admin'),
    CustomerId int, # referenses Customer(Id) on delete cascade
    UNIQUE(CustomerId)
);

CREATE TABLE Customer 
(
	Id int not null primary key,
    Fullname varchar(100) not null,
    Telephone varchar(16) not null CHECK(char_length(Telephone) > 6 and char_length(Telephone) <17),
    Address varchar(100) not null,
    PassportNumber varchar(16) not null,
    UNIQUE(PassportNumber)
);

CREATE TABLE Rental
(
	Id int not null primary key,
    IssueDate date not null CHECK(IssueDate > '2000-01-01'),
    ReturnDate date not null,
    CustomerId int, # referenses Customer(Id) on delete set null
    RegCarId int, # referenses RegCar(Id) on delete set null
    CHECK(ReturnDate > IssueDate)
);

CREATE TABLE Sales
(
	Id int not null primary key,
    Price double not null CHECK(Price > 0),
    ExecutionDate date not null CHECK(ExecutionDate > '2000-01-01'),
    CarId int, # referenses Customer(Id) on delete set null
    CustomerId int, # referenses Car(ID) on delete set null
    UNIQUE(CarId)
);

/*******************************************************************************
   Add referenses
********************************************************************************/

ALTER TABLE RegCar ADD FOREIGN KEY (CarId) REFERENCES Car(Id) ON DELETE CASCADE;
ALTER TABLE User ADD FOREIGN KEY (CustomerId) REFERENCES Customer(Id) ON DELETE CASCADE;

ALTER TABLE Rental ADD FOREIGN KEY (CustomerId) REFERENCES Customer(Id) ON DELETE SET NULL;
ALTER TABLE Rental ADD FOREIGN KEY (RegCarId) REFERENCES RegCar(Id) ON DELETE SET NULL;

ALTER TABLE Sales ADD FOREIGN KEY (CustomerId) REFERENCES Customer(Id) ON DELETE SET NULL;
ALTER TABLE Sales ADD FOREIGN KEY (CarId) REFERENCES Car(Id) ON DELETE SET NULL;

/*******************************************************************************
   Insert data
********************************************************************************/

INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (1,'Arteon','VW','liftback','2017-01-1','1VWAR7A35CC125684',80,26000);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (2,'Beetle','VW','hatchback','2015-01-1','1VWAR7A35CC125658',35,9000);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (3,'Golf 4','VW','hatchback','2005-01-1','1VWAR7A35CC125877',40,4000);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (4,'Golf 5','VW','hatchback','2013-01-1','1VWAR7A35CC125777',50,2000);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (5,'Passat','VW','universal','2019-01-1','1VWAR7A35CC125481',80,15000);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (6,'Passat','VW','universal','2020-01-1','1VWAR7A35CC125574',95,20000);

INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (7,'Kuga','Ford','crossover','2022-01-1','1FDAR7A35CC125689',100,29000);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (8,'Focus','Ford','hatchback','2014-01-1','1FDAR7A35CC125611',60,9300);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (9,'Focus','Ford','hatchback','2014-01-1','1FDAR7A35CC125620',60,8850);

INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (10,'Camry','Toyota','universal','2018-01-1','1TYAR7A35CC125677',95,28300);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (11,'Corolla','Toyota','hatchback','2013-01-1','1TYAR7A35CC125854',60,9600);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (12,'Rav4','Toyota','crossover','2017-01-1','1TYAR7A35CC125633',80,22000);

INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (13,'Civic','Honda','sedan','2013-01-1','1HDAR7A35CC125584',60,10500);
INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (14,'Acord','Honda','sedan','2018-01-1','1HDAR7A35CC125655',75,12500);

INSERT INTO Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (15,'Cayenne','Porche','crossover','2019-01-1','1PWAR7A35CC125600',100,70000);

INSERT INTO RegCar (Id, CarId, LicensePlate, RentalPrice)
VALUES (1, 1, 'АС5992НА', 40);
INSERT INTO RegCar (Id, CarId, LicensePlate, RentalPrice)
VALUES (2, 9, 'АХ7779ВВ', 28);
INSERT INTO RegCar (Id, CarId, LicensePlate, RentalPrice)
VALUES (3, 4, 'ВС3235МО', 26);
INSERT INTO RegCar (Id, CarId, LicensePlate, RentalPrice)
VALUES (4, 11, 'КІ0880КХ', 47);
INSERT INTO RegCar (Id, CarId, LicensePlate, RentalPrice)
VALUES (5, 13, 'ВС2324РВ', 44);

INSERT INTO Customer (Id, Fullname, Telephone, Address, PassportNumber)
VALUES (1, 'Козодой Тарас Романович', '0978055890', 'Вул.Грушевського 69, Рівне', '008846987');
INSERT INTO Customer (Id, Fullname, Telephone, Address, PassportNumber)
VALUES (2, 'Саврак Богдан Михайлович', '380635488907', 'Вул.Богдана Хмельницького 25, Київ', '008848411');
INSERT INTO Customer (Id, Fullname, Telephone, Address, PassportNumber)
VALUES (3, 'Кравченко Максим Юрійович', '0978548973', 'Вул.Соборна 68, Луцьк', '008846001');
INSERT INTO Customer (Id, Fullname, Telephone, Address, PassportNumber)
VALUES (4, 'Дмитренок Богдан Валентинович', '0978548883', 'Вул. Повстанців 86, Київ', '008841515');
INSERT INTO Customer (Id, Fullname, Telephone, Address, PassportNumber)
VALUES (5, 'Волошин Кіріл Ігорович', '09781795489', 'Вул.Гарматна 50, Київ', '008840025');


INSERT INTO USER (Id, Login, Password, Role, CustomerId)
VALUES (1, 'Kozodoi', '12345678', 'admin', 1);
INSERT INTO USER (Id, Login, Password, Role, CustomerId)
VALUES (2, 'Savrak', '12345678', 'customer', 2);
INSERT INTO USER (Id, Login, Password, Role, CustomerId)
VALUES (3, 'Kravchenko', '12345678', 'customer', 3);
INSERT INTO USER (Id, Login, Password, Role, CustomerId)
VALUES (4, 'Dmitrenok', '12345678', 'customer', 4);
INSERT INTO USER (Id, Login, Password, Role, CustomerId)
VALUES (5, 'Voloshin', '12345678', 'customer', 5);


INSERT INTO Rental ( Id, IssueDate, ReturnDate, CustomerId, RegCarId )
VALUES (1, '2022-10-28', '2022-11-01', 1, 1);
INSERT INTO Rental ( Id, IssueDate, ReturnDate, CustomerId, RegCarId )
VALUES (2, '2022-11-01', '2022-11-15', 1, 2);
INSERT INTO Rental ( Id, IssueDate, ReturnDate, CustomerId, RegCarId )
VALUES (3, '2022-10-20', '2022-11-05', 2, 2);
INSERT INTO Rental ( Id, IssueDate, ReturnDate, CustomerId, RegCarId )
VALUES (4, '2022-09-01', '2022-10-01', 3, 4);
INSERT INTO Rental ( Id, IssueDate, ReturnDate, CustomerId, RegCarId )
VALUES (5, '2022-11-01', '2022-11-25', 4, 5);

INSERT INTO Sales (Id, Price, ExecutionDate, CarId, CustomerId) 
VALUES (1, 9800, '2022-10-25', 2, 5);
INSERT INTO Sales (Id, Price, ExecutionDate, CarId, CustomerId) 
VALUES (2, 16000, '2022-10-28', 5, 3);
INSERT INTO Sales (Id, Price, ExecutionDate, CarId, CustomerId) 
VALUES (3, 73000, '2022-10-29', 15, 2);


