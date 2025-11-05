

use [Sales Database]

--Creating Table1 & insertinting records in Table1
create table table1 (C1 int, C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating Table2 & insertinting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')


SELECT * FROM TABLE1 
SELECT * FROM TABLE2

SELECT * FROM table1 INNER JOIN table2 ON table1.C1 = table2.C1

select table1.C1,table1.C2,table2.C3 from table1 
inner join table2 on table1.C1 = table2.C1

SELECT * FROM TABLE1 A INNER JOIN TABLE2 B ON A.C1=B.C1   -- JUST GIVING ALIAS NAME

select a.C1,a.C2,b.C3 from table1 a 
inner join table2 b on
a.C1 = b.C1

select a.C1,a.C2,b.C3 from table1 a 
join table2 b on
a.C1 = b.C1   --IF YOU ARE NOT WRITING INNER JOIN THE INNER JOIN WILL AUTOMATICALY PERFORM
