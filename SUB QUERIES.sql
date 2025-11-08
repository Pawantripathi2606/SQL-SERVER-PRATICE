CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



-- Insert data into Customers table
INSERT INTO Customers (customer_id, customer_name, email)
VALUES 
(1, 'Alice Smith', 'alice@example.com'),
(2, 'Bob Johnson', 'bob@example.com'),
(3, 'Charlie Brown', 'charlie@example.com');

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, amount)
VALUES 
(101, 1, '2024-07-15', 250.00),
(102, 1, '2024-08-05', 300.00),
(103, 2, '2024-08-10', 150.00),
(104, 3, '2024-06-25', 100.00);

SELECT * FROM Customers
SELECT * FROM Orders

-- THIS WILL TELL THE CUSTOMER NAME WHERE THEY HAVE TAKEN THE ORDERS IN BETWEEN  THE DURATION 
SELECT * FROM Customers
WHERE customer_id IN (
SELECT DISTINCT customer_id FROM ORDERS WHERE ORDER_DATE BETWEEN '2024-08-01' AND '2024-08-31'
)


SELECT * FROM Customers
WHERE customer_id IN (
SELECT DISTINCT customer_id FROM ORDERS WHERE ORDER_DATE NOT BETWEEN '2024-08-01' AND '2024-08-31'
)


SELECT * FROM Employees

-- FATCH THE DETAILS THAT HOW MANY PEOPLES HAVING HIGHER SALARY THEN AVG SALARY 

SELECT * FROM Employees WHERE Salary > (
SELECT AVG(SALARY) FROM Employees
)

SELECT AVG(SALARY) AS[AVG SALARY] FROM Employees 


