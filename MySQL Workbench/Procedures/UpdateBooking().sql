DELIMITER //
CREATE PROCEDURE UpdateBooking(bookingIDInput INT, DateInput DATE)
BEGIN
	DECLARE bookingID_count INT;
    DECLARE BookingStatus VARCHAR(255);
    
    -- check if bookingID exists before updating
    
    SELECT COUNT(*) INTO bookingID_count
    FROM Bookings
    WHERE BookingID = bookingIDInput;
    
    IF bookingID_count = 0 THEN
		SET BookingStatus = CONCAT("BookingID ", bookingIDInput, " does not exist, please create a new booking ID");
	ELSE
		UPDATE Bookings
        SET BookingDate = DateInput
        WHERE BookingID = bookingIDInput;
        SET BookingStatus = CONCAT("Booking ", bookingIDInput, " updated");
	END IF;
    SELECT BookingStatus AS Confirmation;

END //
DELIMITER ;

CALL UpdateBooking(6, "2022-12-17");

