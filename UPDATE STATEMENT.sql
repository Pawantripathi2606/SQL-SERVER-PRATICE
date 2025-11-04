-- WE WILL MAKE HASH TABLE THIS HELP TO NOT TO INTRUPT THE MAIN DATA TABLE JUST BY MAKING THE COPY OF THE TABLE 

SELECT * FROM DBO.Employees

SELECT * INTO  #1 FROM DBO.Employees   -- we use INTO while making copy of the data table 
select * from #1  -- duplicate of the table 

update #1 
set Department = 'HR'
where Department is null

update #1 
set FirstName = 'PAWAN' , LastName = 'TRIPATHI'
WHERE FirstName =  'JOHN' and LastName =  'Doe'  -- where clause condition is important when we use update / delete

update #1
set Salary = 89000,HireDate = '2023-01-01'
where EmployeeID = 7

select * from #1 where EmployeeID = 7

select * into #2 from dbo.Employees

select * from #2

update #2
set Department = 'Finance'