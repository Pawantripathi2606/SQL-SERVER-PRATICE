SELECT * FROM [dbo].[EmployeeRecords]

SELECT * FROM EmployeeRecords 
WHERE NOT FirstName='EMILY'


SELECT * FROM EmployeeRecords 
WHERE NOT FirstName='EMILY' AND NOT Salary = 60000

SELECT * FROM EmployeeRecords 
WHERE NOT LastName = 'MILLER' OR NOT Department = 'HR'

SELECT * FROM EmployeeRecords
WHERE Salary BETWEEN 75000 AND 85000

select * from dbo.EmployeeRecords
where salary>= 75000 and Salary<=85000

select * from dbo.EmployeeRecords
where salary not between 75000 and 85000

select * from dbo.EmployeeRecords
where not salary between 75000 and 85000

select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'IT'

select * from dbo.EmployeeRecords
where Department in ('HR','IT')

SELECT * FROM DBO.EMPLOYEERECORDS
WHERE DEPARTMENT NOT IN ('HR','IT')
