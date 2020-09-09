-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT product.productname, category.categoryname FROM Product
JOIN category on product.categoryid = category.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, CompanyName from [order]
JOIN shipper on [order].shipvia = shipper.id
where [order].orderdate < '2012-08-09'
order by [order].orderdate desc

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Quantity, ProductName
FROM OrderDetail as o
JOIN Product as p
ON o.ProductId = p.id
WHERE o.OrderId = 10251
ORDER BY p.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Id, CompanyName, LastName FROM [Order]
JOIN customer ON [order].customerid = customer.id
JOIN employee ON [order].employeeid = employee.id;