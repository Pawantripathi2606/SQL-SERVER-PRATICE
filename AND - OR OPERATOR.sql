SELECT * FROM EmployeeRecords 
WHERE LastName = 'MILLER'

SELECT * FROM EmployeeRecords 
WHERE LastName = 'MILLER'AND EmployeeID= 3


SELECT * FROM EmployeeRecords 
WHERE Department = 'HR' OR Department= 'FINANCE'

SELECT * FROM EmployeeRecords 
WHERE FirstName='EMILY' OR Department= 'FINANCE'


SELECT * FROM EmployeeRecords 
WHERE (Department = 'HR' OR Department= 'FINANCE') AND Salary = 60000