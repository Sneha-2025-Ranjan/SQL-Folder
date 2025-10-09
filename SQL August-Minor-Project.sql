CREATE DATABASE Project_August
use Project_August


--Gross Margin = Total Income - Total expenses
   --          =5000- (
create table role(
Id int primary key, 
Role_Name varchar(500)
)

--EXEC sp_rename 'role.Name', 'Role_name', 'COLUMN';

select * from role

-- You can define contraint like 'constraint role_id_pk primary key (Id)'

Create table Status(
Id int Primary Key, 
status_name varchar(100), 
is_user_working bit  -- bit takes 0, 1
)

select * from Status
-- You can define contraint like 'constraint status_id_pk primary key (Id)'

Create table User_account(
Id int primary key ,
User_Name varchar(100),
Email varchar(254),
Password varchar(200),
Password_Salt varchar(50) not null, 
Password_hash_algorithm varchar(50)
)

select * from User_account

  -- You can define contraint like 'constraint User_account_id_pk primary key (Id), '
  --constraint User_account_Password_Salt_pk not null (Password_Salt)'

 Create table User_has_role(
  Id int Primary Key, 
  role_start_time datetime,
  role_end_time datetime,
  user_account_id int foreign key References user_account(Id),
  role_id int foreign key references role(id)
  )

  
select * from User_has_role

  create table User_has_status(
  Id int primary key, 
  status_start_time datetime,
  status_end_time datetime not null,
  user_account_id int foreign key references user_account(id),
  status_id int foreign key references status(id)
  )

  
select * from User_has_status

Insert into role(Id, Role_Name)
values(1, 'sale'),
(2, 'Technical')

Insert into status(Id, status_name, is_user_working)
values(1, 'new status', 1),
(2, 'new status', 1)

Insert into User_account(Id, User_Name, Email, Password, Password_Salt, Password_hash_algorithm)
values(1, 'abc', 'abc@gmail.com', 'abc', 'abcs', 'abcph'),
(2, 'def','def@gmail.com', 'def', 'defg', 'dcfudc')

Insert into User_has_role(Id, role_start_time, role_end_time, user_account_id, role_id)
values(1, '2025-04-10', '2025-09-01', 2,1),
(2,'2025-01-09', '2025-03-12', 1,2)

Insert into User_has_status(Id, status_start_time, status_end_time, user_account_id, status_id)
values(1, '2025-08-23', '2025-06-19', 1, 1),
(2, '2025-10-12', '2025-11-12', 2,2)



--ist method to delete the constraint by selecting meta data
Alter table user_has_status
drop constraint FK__User_has___statu__3E52440B

Alter table user_has_status
drop constraint FK__User_has___user___3D5E1FD2

Alter table user_has_status
drop constraint PK__User_has__3214EC0715DC5B28

Delete from User_has_status

select * from User_has_status

--2nd method to delete all constraint'
Alter table user_has_status NOCHECK CONSTRAINT All
Delete from User_has_status


