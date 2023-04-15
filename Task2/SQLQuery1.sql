create database Shop

use Shop


create table Users (
	[Id] int primary key identity(1,1),
	[FullName] nvarchar (50),
)

create table Roles (
	[Id] int primary key identity(1,1),
	[Name] nvarchar (50),
)

create table UserRoles (
    [Id] int primary key identity(1,1),
    [UserId] int FOREIGN KEY REFERENCES Users(Id),
	[RoleId] int FOREIGN KEY REFERENCES Roles(Id)
)

INSERT INTO Users (FullName)
VALUES ('Nicat'),
('Musa'),
('Murad'),
('Resul'),
('Ramil')

INSERT INTO Roles (Name)
VALUES ('Mellim'),
('Hekim'),
('Muhendis'),
('Hakim'),
('Idman mellimi')



INSERT INTO UserRoles (UserId,RoleId)
VALUES (1,1),
(2,2),
(3,3),
(4,4),
(5,5)

Select us.FullName as 'Fullname', ro.Name as 'Role' from Users us
inner join UserRoles ur
on us.Id = ur.UserId
inner join Roles ro
on ro.Id = ur.RoleId