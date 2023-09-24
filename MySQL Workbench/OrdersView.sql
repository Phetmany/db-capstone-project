CREATE VIEW `OrdersView` AS
SELECT OrderID, TotalItems AS Quantity, TotalCost AS Cost
FROM Orders;