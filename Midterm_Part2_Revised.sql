-- Yanira Manzano
-- 03/25/2022
-- Midterm Part 2

use ap;

-- Q1
SELECT
	*
FROM
	heather_design.columns;

-- Q2
SELECT 
	* 
FROM 
	invoices;
    
-- Q3
SELECT 
	invoice_date AS 'mm-dd-yyyy'
FROM 
	invoices;
    
-- Q4
SELECT
	CONCAT(FirstName, ' ', LastName) AS FullName,
    CONCAT(LEFT(FirstName, 1),('.'),
    LEFT(LastName, 1),('.')) AS Initials,
    CONCAT(StreetAddress,', ', City,', ', State,', ', ZIP) as Address
FROM 
	heather_design.customer;
    
-- Q5
SELECT
	FirstName,
    LastName
FROM
	heather_design.customer
WHERE
	LastName LIKE 'E%' AND 'n%';
    
-- Q6
SELECT
	FirstName,
    LastName,
    EmailAddress,
    City
FROM
    heather_design.customer
WHERE
	City LIKE 'San%' and
    FirstName like 'S%';
    
-- Q7
SELECT
	InvoiceNumber
FROM
	heather_design.line_item;
    
-- Q8
SELECT
	SUM(SubTotal) AS Invoice_SubTotal,
    AVG(SubTotal) AS InvoiceAvg_SubTotal
FROM
	heather_design.invoice;
    
-- Q9
SELECT
	InvoiceNumber,
    PaymentType,
    SUM(SubTotal - Shipping) AS 'PriceBeforeTax'
FROM 
	heather_design.invoice;
    
-- Q10
SELECT
	InvoiceDate,
    SUM(Total) AS 'Sales'
FROM
	heather_design.invoice
WHERE
	InvoiceDate BETWEEN '01/01/2019' AND '12/31/2019'
GROUP BY
	InvoiceDate, Total WITH ROLLUP
    
	
	