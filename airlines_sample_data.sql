INSERT INTO Customers (first_name, last_name, email, phone) VALUES
('David', 'Clark', 'david.clark@example.com', '1234567890'),
('Eva', 'Green', 'eva.green@example.com', '0987654321');

INSERT INTO Flights (flight_number, departure_city, arrival_city, departure_time, arrival_time) VALUES
('FL101', 'New York', 'Los Angeles', '2024-08-01 08:00:00', '2024-08-01 11:00:00'),
('FL202', 'Chicago', 'Miami', '2024-08-02 09:00:00', '2024-08-02 13:00:00');

INSERT INTO Seats (flight_id, seat_number, class) VALUES
(1, '1A', 'First'),
(1, '1B', 'Business'),
(1, '10C', 'Economy'),
(2, '1A', 'First'),
(2, '1B', 'Business'),
(2, '10C', 'Economy');

INSERT INTO Bookings (customer_id, flight_id, seat_id, booking_date, status) VALUES
(1, 1, 1, '2024-07-20 10:00:00', 'Booked'),
(2, 2, 4, '2024-07-21 11:00:00', 'Booked');