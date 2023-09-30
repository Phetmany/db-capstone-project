DELIMITER //
CREATE PROCEDURE CheckBooking(DateInput DATE, TableInput INT)
BEGIN
	DECLARE available_spots INT;
    DECLARE BookingStatus VARCHAR(255);
    
    -- check if the table is available on a given date
    
    SELECT COUNT(*) INTO available_spots
    FROM Bookings
    WHERE BookingDate = DateInput AND TableNumber = TableInput;
    
    IF available_spots = 0 THEN
        SET BookingStatus = CONCAT("Table ", TableInput, " is available");
	ELSE
        SET BookingStatus = CONCAT("Table ", TableInput, " is already booked");
	END IF;
    SELECT BookingStatus;
    
END //
DELIMITER ;

CALL CheckBooking("2022-11-12", 3);


