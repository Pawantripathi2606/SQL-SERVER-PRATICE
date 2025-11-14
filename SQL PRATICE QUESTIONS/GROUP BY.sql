CREATE TABLE EMP9 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_no INT,
    salary INT,
    job VARCHAR(50),
    manager_id INT
);

INSERT INTO EMP9 VALUES
(101, 'Amit',   10, 50000, 'Developer',   NULL),
(102, 'Riya',   20, 70000, 'Manager',     NULL),
(103, 'Arjun',  10, 45000, 'Tester',      101),
(104, 'Neha',   30, 90000, 'Developer',   102),
(105, 'Sam',    20, 30000, 'Intern',      102),
(106, 'Kiran',  30, 65000, 'Developer',   104),
(107, 'Vicky',  40, 80000, 'Analyst',     NULL),
(108, 'Meera',  40, 55000, 'Tester',      107),
(109, 'Kabir',  10, 72000, 'Manager',     NULL),
(110, 'Isha',   20, 48000, 'Developer',   102);

CREATE TABLE DEPT (
    dept_no INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO DEPT VALUES
(10, 'IT',        'Delhi'),
(20, 'Finance',   'Mumbai'),
(30, 'HR',        'Bangalore'),
(40, 'Marketing', 'Chennai');


SELECT * FROM EMP9
SELECT * FROM DEPT


-- WRITE A QUERY TO DISPLAY SALARY MORE THEN KIRAN 

SELECT EMP_NAME FROM EMP9 WHERE salary > (SELECT salary FROM EMP9 WHERE EMP_NAME = 'KIRAN')
SELECT * FROM EMP9

-- TO FIND DEPARTMENT NO WHERE AVG SALARY OF DEVELOPER IS GREATER THEN 70 K ++

SELECT DEPT_NO , SALARY [AVG SALARY]  FROM EMP9
WHERE JOB = 'DEVELOPER'
GROUP BY dept_no , salary
HAVING AVG(salary) > 70000
SELECT * FROM EMP9

--WHAT IS THE TOTAL SALARY GROUP BY EACH DEPARTMENT 

SELECT DEPT_NO , SUM(SALARY) [ TOTAL SALARY BY EACH GROUP ]  FROM EMP9 
GROUP BY dept_no

-- Find average salary of each department.

SELECT DEPT_NO , AVG(SALARY) [ AVG SALARY BY DEPT] FROM EMP9
GROUP BY dept_no


-- Count employees in each department.
SELECT * FROM EMP9
SELECT DEPT_NO , COUNT(*) [TOTAL COUNT OF EMPLOYE NAME] FROM EMP9
GROUP BY dept_no

SELECT * FROM EMP9
SELECT DEPT_NO , COUNT(EMP_NAME) [TOTAL COUNT OF EMPLOYE NAME] FROM EMP9
GROUP BY dept_no

--Find total salary per job role.
SELECT SUM(SALARY)[ TOTAL SALARY AS PER JOB ROLE] , JOB FROM EMP9
GROUP BY JOB 


--Highest salary in each department.
SELECT MAX(SALARY) , DEPT_NO FROM EMP9
GROUP BY DEPT_NO 

--DEPARTMENT WHERE AVG SALARY IS GREATER THEN 60 K 

SELECT  DEPT_NO , AVG(SALARY) FROM EMP9 
--WHERE AVG(SALARY) > 60000
GROUP BY dept_no
HAVING AVG(SALARY) > 60000

--: Count of managers per department.
SELECT COUNT(*), DEPT_NO FROM EMP9

WHERE JOB = 'MANAGER'
GROUP BY dept_no


--: Find min, max, avg salary per department.

SELECT MIN(SALARY) , MAX(SALARY) , AVG(SALARY) , DEPT_NO FROM EMP9
GROUP BY DEPT_NO 

--List departments with more than 2 employees
SELECT * FROM EMP9
SELECT DEPT_NO , COUNT(*) FROM EMP9
GROUP BY dept_no
HAVING COUNT(*) > 2

--Total salary per department, sorted by highest salary.

SELECT SUM(SALARY) , DEPT_NO FROM EMP9
GROUP BY dept_no
ORDER BY SUM(SALARY) DESC

-- SUBQUERY (Nested Query)
--Employees who earn more than average salary.

SELECT * FROM EMP9

SELECT EMP_NAME FROM EMP9 WHERE salary  > (SELECT AVG(SALARY) FROM EMP9)

--Employees who work in the department where salary is highest

SELECT * FROM EMP9
WHERE dept_no = (
    SELECT dept_no 
    FROM EMP9 
    GROUP BY dept_no 
    ORDER BY AVG(salary) DESC 
    OFFSET 0 ROWS FETCH NEXT 1 ROW ONLY
)
--Get employee(s) with highest salary
SELECT * FROM EMP9
WHERE salary = (SELECT MAX(salary) FROM EMP9);


--List departments where total salary > overall avg salary.

select dept_no from emp9
group by dept_no
having sum(salary) > (select avg(salary) from emp9)

--List employees who work in 'Finance' department
select emp_name from emp9 
where dept_no = (select dept_no from dept where dept_name = 'finance')

--Find second highest salary

select max(salary) from emp 
where salary < (select max(salary) from emp )

--Employees in departments located in Mumbai.

select * from emp9 
where emp_name IN ( select emp_name from emp9 where job = 'developer')

