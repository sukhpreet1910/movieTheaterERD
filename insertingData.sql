insert into bookings(booking_id, booking_type, booking_date, pay_via)
VALUES
(1, 'online', '2024-01-13', 'Credit Card'),
(2, 'online', '2024-01-14', 'PayPal'),
(3, 'Box Office', '2024-01-15', 'Debit Card'),
(4, 'online', '2024-01-16', 'Cash'),
(5, 'In Theater', '2024-01-17', 'Credit Card');


INSERT INTO customers(customer_id, first_name, last_name, email, booking_id)
values
(1, 'John', 'Doe', 'john.doe@example.com', 1),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 2),
(3, 'Bob', 'Johnson', 'bob.johnson@example.com', 3),
(4, 'Alice', 'Williams', 'alice.williams@example.com', 4),
(5, 'Charlie', 'Brown', 'charlie.brown@example.com', 5);


INSERT INTO concessions(concession_id, product_name, price, purchase_time)
VALUES
(1, 'Popcorn', 5.99, '2024-01-13 12:30:00'),
(2, 'Soda', 2.49, '2024-01-13 13:45:00'),
(3, 'Hot Dog', 4.99, '2024-01-13 15:00:00'),
(4, 'Candy', 1.99, '2024-01-13 16:15:00'),
(5, 'Nachos', 6.99, '2024-01-13 17:30:00');

SELECT * 
from concessions

INSERT INTO movies (movie_id, movie_name, genre, release_date)
VALUES
(1, 'Inception', 'Sci-Fi', '2010-07-16'),
(2, 'The Shawshank Redemption', 'Drama', '1994-09-10'),
(3, 'The Dark Knight', 'Action', '2008-07-18'),
(4, 'Pulp Fiction', 'Crime', '1994-10-14'),
(5, 'Forrest Gump', 'Drama', '1994-07-06');


INSERT INTO theaterHalls(hall_id, hall_name, capacity)
VALUES
(1, 'Hall A', 150),
(2, 'Hall B', 120),
(3, 'Hall C', 100),
(4, 'Hall D', 180),
(5, 'Hall E', 200);

INSERT INTO tickets(ticket_id, customer_id, movie_id, hall_id, seat_num, price)
VALUES
(1, 1, 1, 1, 'A1', 10.99),
(2, 2, 3, 2, 'B3', 12.99),
(3, 3, 2, 3, 'C5', 9.99),
(4, 4, 4, 4, 'D2', 11.99),
(5, 5, 5, 5, 'E4', 14.99);

INSERT INTO showtimes(showtime_id, movie_id, hall_id, start_time, end_time)
VALUES
(1, 1, 1, '2024-01-13 18:00:00', '2024-01-13 21:00:00'),
(2, 2, 2, '2024-01-13 15:30:00', '2024-01-13 18:30:00'),
(3, 3, 3, '2024-01-13 14:00:00', '2024-01-13 17:00:00'),
(4, 4, 4, '2024-01-13 19:45:00', '2024-01-13 22:45:00'),
(5, 5, 5, '2024-01-13 17:15:00', '2024-01-13 20:15:00');