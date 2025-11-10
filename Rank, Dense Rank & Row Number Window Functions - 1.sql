

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);


SELECT * FROM StudentS
--> in row number the ranks are assigned rendomly 
SELECT * , ROW_NUMBER() OVER (ORDER BY MARKS DESC) AS [ROW NUMBER]
FROM STUDENTS

-- > IN RANK/RANKS FUNCTION IF THERE IS A TIE THERE WILL WE A SKIPPED 

SELECT * , RANK() OVER ( ORDER BY MARKS DESC) AS [RANK FUNCTION ]
FROM StudentS


--> in dense rank if there is a tie there will no skipped
SELECT * , DENSE_RANK() over(order by marks desc) as [dense rank ] 
from Students


-----------------------------------------


--> in row number the ranks are assigned rendomly 
SELECT * , ROW_NUMBER() OVER (ORDER BY MARKS asc) AS [ROW NUMBER]
FROM STUDENTS

-- > IN RANK/RANKS FUNCTION IF THERE IS A TIE THERE WILL WE A SKIPPED 

SELECT * , RANK() OVER ( ORDER BY MARKS asc) AS [RANK FUNCTION ]
FROM StudentS


--> in dense rank if there is a tie there will no skipped
SELECT * , DENSE_RANK() over(order by marks asc) as [dense rank ] 
from Students