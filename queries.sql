-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName from Product
JOIN Category ON Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT "Order".Id AS "Order ID", CompanyName AS "Shipped By", OrderDate FROM "Order"
JOIN Shipper ON "Order".ShipVia = Shipper.Id
WHERE "Order".OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity, OrderDetail.Id from OrderDetail
JOIN ProductDetails_V ON OrderDetail.ProductId = ProductDetails_V.Id
WHERE OrderDetail.OrderId = 10251
ORDER BY ProductName


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT "Order".Id AS "Order ID", Customer.CompanyName AS "Buyer", Employee.LastName AS "Seller" FROM "Order"
JOIN Employee ON "Order".EmployeeId = Employee.Id
JOIN Customer ON "Order".CustomerId = Customer.Id