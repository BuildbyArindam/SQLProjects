-- View: Booking Summary Report
CREATE VIEW Booking_Summary AS
SELECT c.name AS customer_name, f.flight_number, f.departure_city, f.arrival_city, 
       s.seat_number, b.status, b.booking_date
FROM Bookings b
JOIN Customers c ON b.customer_id = c.customer_id
JOIN Flights f ON b.flight_id = f.flight_id
JOIN Seats s ON b.seat_id = s.seat_id;

-- View: Flight Availability Overview
CREATE VIEW Flight_Seat_Availability AS
SELECT f.flight_number, COUNT(s.seat_id) AS total_seats,
       SUM(CASE WHEN s.is_booked = FALSE THEN 1 ELSE 0 END) AS available_seats
FROM Flights f
JOIN Seats s ON f.flight_id = s.flight_id
GROUP BY f.flight_number;