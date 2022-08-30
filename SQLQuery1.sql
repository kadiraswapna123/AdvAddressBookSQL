---create address book service
---UC1
create database Address_Book_Service;
---UC2
use Address_Book_service;
create table Address_Book(FName varchar(200),LName varchar(200),Address varchar(200),City varchar(200),State varchar(200),Zip varchar(200),PhoneNumber varchar(200),email varchar(200);
---UC3
select* from Address_Book;
---UC4
insert into Address_Book values('Swapna','Yadav','GaneshNagar','Nalgonda','Telangana',508001,9182303656,'kadiraswapna@gmail.com');
insert into Address_Book values('Srilatha','Yadav','GaneshNagar','Nalgonda','Telangana',508001,9014011713,'kadirasrilatha@gmail.com');
insert into Address_Book values('Santhosh','Yadav','GaneshNagar','Nalgonda','Telangana',508001,9493710041,'santhoshkumar@gmail.com');
insert into Address_Book values('Sahastra','Yadav','GaneshNagar','Nalgonda','Telangana',508001,8688714004,'sahastrayadav@gmail.com');
insert into Address_Book values('Chinni','Yadav','GaneshNagar','Nalgonda','Telangana',508001,7286974623,'chinniyadav@gmail.com');
---UC5 Edit data
Update Address_Book set FName = 'Sakhi' where FName = 'Chinni'
---UC6 
select count (state) from Address_Book
---UC7 ability to retrieve all data of city or state from address book
select *from Address_Book where City ='Hyderabad' or State='Telangana';
---UC8 ability to sort data find a city of person name
select FName,City from Address_Book order By City asc;
---UC9	
alter table Address_Book add BookName varchar(200),type varchar(200)
update Address_Book set BookName='One',type='friend'where FName='Swapna'
update Address_Book set BookName='Two',type='family'where FName='Srilatha'
update Address_Book set BookName='Three',type='friend'where FName='Santhosh'
update Address_Book set BookName='Four',type='family'where FName='Sahastra'
update Address_Book set BookName='Five',type='friend'where FName='Sakhi'
select* from Address_Book;
---UC10
insert into Address_Book values
('Sathvika','Yadav','ShantiNagar','Nalgonda','Telangana','508001','9912672544','sathviksree@gmail.com','one','friend')
select count(type) as counting from Address_Book where type ='friend'
select count(type) as counting from Address_Book
---UC11 add same person as both friend and family
insert into Address_Book values
('Sathvika','Yadav','ShantiNagar','Nalgonda','Telangana','508001','9912672544','sathviksree@gmail.com','one','family')
--UC12
