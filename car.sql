USE BYSJ
GO

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

CREATE TABLE baoxian(
	id int not null IDENTITY(1,1),
	type nvarchar(50) null,
	content nvarchar(250) null
)
GO

DROP TABLE car;

CREATE TABLE car(
	id int not null IDENTITY(1,1),
	name nvarchar(50) null,
	bname nvarchar(50) null,
	price nvarchar(50) null,
	isoff nvarchar(50) null,
	year nvarchar(50) null
);
go