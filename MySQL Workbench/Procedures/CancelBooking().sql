DELIMITER //
CREATE PROCEDURE CancelBooking(bookingIDInput INT)
BEGIN
	DECLARE bookingID_count INT;
    DECLARE BookingStatus VARCHAR(255);
    
    -- check if bookingID exists before deleting
    
    SELECT COUNT(*) INTO bookingID_count
    FROM Bookings
    WHERE BookingID = bookingIDInput;
    
    IF bookingID_count = 0 THEN
		SET BookingStatus = CONCAT("BookingID ", bookingIDInput, " does not exist. Please specify existing ID");
	ELSE
		DELETE FROM Bookings
        WHERE BookingID = bookingIDInput;
        SET BookingStatus = CONCAT("Booking ", bookingIDInput, " canceled");
	END IF;
    SELECT BookingStatus AS Confirmation;

END //
DELIMITER ;

CALL CancelBooking(7);


