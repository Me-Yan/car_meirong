USE BYSJ
GO

CREATE TABLE car(
	id int not null IDENTITY(1,1),
	name nvarchar(50) null
);
go

CREATE TABLE shop (
	id int not null IDENTITY(1,1),
	name nvarchar(50) null,
	contactPerson nvarchar(50) null,
	contactNo nvarchar(50) null,
	address nvarchar(50) null,
	description nvarchar(250) null
)
GO

INSERT INTO shop(name,contactPerson,contactNo,address,description)
VALUES('','','','','')
GO