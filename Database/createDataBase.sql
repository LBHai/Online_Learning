create database [SWP391_OnlineLearning]	
use SWP391_OnlineLearning
create table [User]
(	username varchar(200),
	[password] varchar(255),
	displayName nvarchar(255),
	email nvarchar(255),
	dob date,
	phoneNumber varchar(20),
	createdDate datetime,
	updatedDate datetime,
	constraint PK_User primary key (username)
)

create table [Role](
	id int,
	[name] varchar(255),
	constraint PK_Role primary key (id)

)
create table User_Role(
	username varchar(200) foreign key references [User](username),
	roleId int foreign key references [Role](id),
	constraint PK_User_Role primary key(username, roleID)
) 
