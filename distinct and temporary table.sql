select * from EmployeeRecords

select distinct FirstName from EmployeeRecords

select distinct firstname from employeerecords

select distinct firstname,lastname from employeerecords

select distinct salary from employeerecords

select distinct * from employeerecords

--temporary tables

select * into #temp1
from [dbo].[Employees]

select * from #temp1

select * from dbo.Employees


select * into ##temp2 
from [dbo].[EmployeeRecords]

select * from ##temp2

select * from dbo.employeerecords


select * from #temp1

select * from ##temp2