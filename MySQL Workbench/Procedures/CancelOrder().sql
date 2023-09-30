DELIMITER //
CREATE PROCEDURE CancelOrder(OrderIDInput INT)
BEGIN
	DECLARE OrderID_count INT;
    DECLARE OrderStatus VARCHAR(255);
    
    -- check if bookingID exists before deleting
    
    SELECT COUNT(*) INTO OrderID_count
    FROM Orders
    WHERE OrderID = OrderIDInput;
    
    IF OrderID_count = 0 THEN
		SET OrderStatus = CONCAT("OrderID ", OrderIDInput, " does not exist. Please specify existing ID");
	ELSE
		DELETE FROM OrderItem
        WHERE OrderID = OrderIDInput;
        DELETE FROM Orders
        WHERE OrderID = OrderIDInput;
        SET OrderStatus = CONCAT("Order ", OrderIDInput, " is canceled");
	END IF;
    SELECT OrderStatus AS Confirmation;

END //
DELIMITER ;

CALL CancelOrder(5);

