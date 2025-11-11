CREATE DATABASE WindowFunctionPractice;


USE WindowFunctionPractice;


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY IDENTITY(1,1),
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

INSERT INTO Employees (EmpName, Department, Salary) VALUES
('Amit', 'IT', 75000),
('Riya', 'IT', 90000),
('Sahil', 'IT', 90000),
('Meena', 'HR', 60000),
('Pooja', 'HR', 75000),
('Vikas', 'Finance', 85000),
('Anjali', 'Finance', 85000),
('Rohan', 'Finance', 95000),
('Nitin', 'Sales', 70000),
('Divya', 'Sales', 70000),
('Kiran', 'Sales', 88000);

SELECT * FROM Employees;

SELECT 
    EmpName, 
    Department, 
    Salary,
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS RowNum
FROM Employees;


SELECT * , 
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS RowNum
FROM Employees;

select * , rank () over ( partition by department order by salary desc) as ranknum from Employees

SELECT 
    EmpName, 
    Department, 
    Salary,
    RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS RankNo
FROM Employees;


SELECT 
    EmpName, 
    Department, 
    Salary,
    DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS DenseRankNo
FROM Employees;


SELECT 
    EmpName,
    Department,
    Salary,
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS RowNum,
    RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS RankNo,
    DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS DenseRankNo
FROM Employees
ORDER BY Department, Salary DESC;



