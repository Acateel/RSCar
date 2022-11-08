/***************************************************************
 Car requests 
****************************************************************/
insert into Car (Id, Name, Make, Type, GraduationYear, VinCode, TechnicalCondition, Price)
values (?, ?, ?, ?, ?, ?, ?, ?);

select * from car;

select * from car where id=?;

update car set Name=?, Make=?, Type=?, GraduationYear=?, VinCode=?, TechnicalCondition=?, Price=? where id=?;

delete from car where id=?;

select car.*  
from car 
left join regcar on regcar.CarId=car.id 
left join sales on sales.CarId=car.id
where regcar.id is null  and sales.id is null;

select car.*  
from car 
left join regcar on regcar.CarId=car.id 
left join sales on sales.CarId=car.id
where regcar.id is null  and sales.id is null
order by car.Price;

select car.*  
from car 
left join regcar on regcar.CarId=car.id 
left join sales on sales.CarId=car.id
where regcar.id is null  and sales.id is null
order by car.Price desc;

select * from car where Name like '%?%';

select * from car where Type like '%?%';

select car.*  
from car 
left join regcar on regcar.CarId=car.id 
left join sales on sales.CarId=car.id
where regcar.id is null  and sales.id is null and car.Price>?-? and car.Price<?+?;

/***************************************************************
  RegCar requests 
****************************************************************/

insert into RegCar (Id, CarId, LicensePlate, RentalPrice)
values (?, ?, ?, ?);

select * from RegCar;

select * from RegCar where id=?;

update RegCar set CarId=?, LicensePlate=?, RentalPrice=? where id=?;

delete from RegCar where id=?;

select car.Id, car.Name, car.Make, car.Type, car.GraduationYear, 
car.VinCode, car.TechnicalCondition, rental.ReturnDate
from car
right join regcar on regcar.CarId = car.Id
right join rental on rental.RegCarId = regcar.Id
where ReturnDate > now();

select car.Id, car.Name, car.Make, car.Type, car.GraduationYear, 
car.VinCode, car.TechnicalCondition, regcar.RentalPrice
from car
right join regcar on regcar.CarId = car.Id
left join rental on rental.RegCarId = regcar.Id
where ReturnDate < now() or ReturnDate is null;

/***************************************************************
  User requests 
****************************************************************/
insert into User (Id, Login, Password, Role, CustomerId)
values (?, ?, ?, ?, ?);

select * from User;

select * from User where id=?;

select * from User where login=? and password=?;

update User set Login=?, Password=?, Role=?, CustomerId=? where id=?;

delete from User where id=?;

/***************************************************************
  Customer requests 
****************************************************************/

insert into Customer (Id, Fullname, Telephone, Address, PassportNumber)
values (?, ?, ?, ?, ?);

select * from Customer;

select * from Customer where id=?;

update Customer set Fullname=?, Telephone=?, Address=?, PassportNumber=? where id=?;

delete from Customer where id=?;

/***************************************************************
  Rental requests 
****************************************************************/
insert into Rental (Id, IssueDate, ReturnDate, CustomerId, RegCarId)
values (?, ?, ?, ?, ?);

select * from Rental;

select * from Rental where id=?;

update Rental set IssueDate=?, ReturnDate=?, CustomerId=?, RegCarId=? where id=?;

delete from Rental where id=?;
/***************************************************************
  Sales requests 
****************************************************************/
insert into Sales (Id, Price, ExecutionDate, CarId, CustomerId)
values (?, ?, ?, ?, ?);

select * from Sales;

select * from Sales where id=?;

update Sales set Price=?, ExecutionDate=?, CarId=?, CustomerId=? where id=?;

delete from Sales where id=?;
