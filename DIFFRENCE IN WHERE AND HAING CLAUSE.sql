

select * from dbo.Sales
where TotalAmount>=161

select * from dbo.Sales

select productid, sum(totalamount) [Sum of sales] from dbo.Sales
group by ProductID
having sum(totalamount)<700

select productid,sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCTid desc

select productid,sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by sum(totalamount) asc

-- WHERE CLAUSE IS USED BEFORE THE GROUP BY IN ENTIRE TABLE 
-- HAVING CLAUSE IS USED AFTER THE GROUP BY IN NEW FILTERED GROUPED TABLE