-- Trigger to update seat booking status after booking
DELIMITER $$
CREATE TRIGGER update_seat_on_booking
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
    UPDATE Seats
    SET is_booked = TRUE
    WHERE seat_id = NEW.seat_id;
END $$
DELIMITER ;

-- Trigger to revert seat status on booking cancellation
DELIMITER $$
CREATE TRIGGER update_seat_on_cancellation
AFTER UPDATE ON Bookings
FOR EACH ROW
BEGIN
    IF NEW.status = 'Cancelled' THEN
        UPDATE Seats
        SET is_booked = FALSE
        WHERE seat_id = NEW.seat_id;
    END IF;
END $$
DELIMITER ;