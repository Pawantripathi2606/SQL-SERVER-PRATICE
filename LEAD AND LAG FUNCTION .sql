
create database [Profit DB]

use [profit db]

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);






select * from ProfitData

--To add a new column that shows next month's profit for each product
select *,lead(Profit) over(partition by product order by monthnumber) [Next Month's Profit]
from ProfitData

--We don't want product column inthe output but we want each month's total profit to be show by monthnumber & monthname,Also a 
--new column should be added to show next month's total profit
select monthnumber,monthname,sum(profit) [Total Profit],
lead(sum(profit)) over(order by monthnumber asc) [Next Month's Total Profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber


-- TO ADD THE COLUMN THAT SHOWS PREVIOUS MONTH PROFIT FOR EACH PRODUCT
SELECT * , LAG(PROFIT) OVER(PARTITION BY PRODUCT  ORDER BY MONTHNUMBER) [PREVIOUS MONTH'S PROFIT]
FROM ProfitData


-- FOR SAME WE DONT WANT PRODUCT COLUMN IN THE OUTPUT BUT WE WANT EACH MONTH TOTAL PROFIT TO BE SHOWN BY MONTHNUMBER & MONTH NAME , ALSO A 
-- NEW COLUMN SHOULD BE ADDED TO SHOW PREVIOS MONTH'S TOTAL PROFIT

SELECT MONTHNUMBER, MONTHNAME , SUM(PROFIT) [ TOTAL PROFIT ] , 
LAG(SUM(PROFIT)) OVER ( ORDER BY MONTHNUMBER) [PREV MONTH'S PROFIT]
FROM ProfitData
GROUP BY MonthNumber , MonthName
ORDER BY MonthNumber

