SELECT * FROM [dbo].[Employees]

INSERT INTO [dbo].[Employees] (EmployeeID , FirstName , LastName ,Department , Salary , HireDate)
values (6,'Raj','Ambani','IT',67000,'2023-04-20')

INSERT INTO DBO.Employees (EmployeeID,FirstName,LastName)
VALUES (7,'Rohit','Mehera')

insert into dbo.Employees
values (8,'Mahesh','Narang','HR',73000,'2024-01-21')

SELECT * FROM DBO.Employees

select * from INFORMATION_SCHEMA.COLUMNS
where table_name = 'Employees'  -- THIS WILL PROVIDE THE ORDINAL POSITION WHERE THE VALUES WILL BE GETTING INSERTED

