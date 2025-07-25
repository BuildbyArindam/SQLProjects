-- Query: Search available flights between two cities
SELECT * FROM Flights
WHERE departure_city = 'New York' AND arrival_city = 'Los Angeles';

-- Query: Available seats for a flight
SELECT s.seat_number, s.class
FROM Seats s
WHERE s.flight_id = 1 AND s.is_booked = FALSE;

-- Query: Booking details for a customer
SELECT b.booking_id, f.flight_number, s.seat_number, b.status
FROM Bookings b
JOIN Flights f ON b.flight_id = f.flight_id
JOIN Seats s ON b.seat_id = s.seat_id
WHERE b.customer_id = 1;