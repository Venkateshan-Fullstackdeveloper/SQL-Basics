-- TODO: INNER JOIN  (two tables)
-- SELECT orders.OrderID  , customers.CustomerID ,orders.OrderDate FROM orders 
-- INNER JOIN customers on orders.CustomerID = customers.CustomerID LIMIT 5;

-- TODO: JOINING OF THREE TABLES 
-- SELECT orders.OrderID,customers.CustomerName,shippers.ShipperName 
-- FROM ((orders
-- INNER JOIN customers ON orders.CustomerID = customers.CustomerID)
-- INNER JOIN shippers ON orders.ShipperID = shippers.ShipperID) LIMIT 5;

-- TODO: LEFT JOIN

-- SELECT customers.CustomerName,orders.OrderID from customers
-- LEFT JOIN orders ON orders.CustomerID = customers.CustomerID;

-- TODO: RIGHT JOIN is ismilar to left join where as it will all the data from the right table

-- TODO: FULL OUTER JOIN , IT WILL RETRIEVE ALL THE DATA WHICH WILL BE MATHED OR UNMATCHED

-- TODO: UNION
-- SELECT City from customers
-- UNION 
-- SELECT City from suppliers;























