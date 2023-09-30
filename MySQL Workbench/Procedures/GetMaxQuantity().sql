USE littlelemondb;

DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
	SELECT MAX(TotalItems) AS "Max Quantity in Order"
    FROM Orders;
END //
DELIMITER ;

CALL GetMaxQuantity();

