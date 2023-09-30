DELIMITER //
CREATE PROCEDURE AddBooking(bookingIDInput INT, customerIDInput INT, TableInput INT, DateInput DATE)
BEGIN
	DECLARE available_spots INT;
    DECLARE BookingStatus VARCHAR(255);
    
    -- check if the table is available on a given date
    
    SELECT COUNT(*) INTO available_spots
    FROM Bookings
    WHERE BookingDate = DateInput AND TableNumber = TableInput;
    
    START TRANSACTION;
    IF available_spots = 0 THEN
		INSERT INTO Bookings (BookingDate, TableNumber)
        VALUES(DateInput, TableInput);
		COMMIT;
        SET BookingStatus = CONCAT("New booking added");
	ELSE
		ROLLBACK;
        SET BookingStatus = CONCAT("Table ", TableInput, " is already booked - booking canceled");
	END IF;
    SELECT BookingStatus AS Confirmation;
    
END //
DELIMITER ;

CALL AddBooking(9, 3, 4, "2022-12-30");

