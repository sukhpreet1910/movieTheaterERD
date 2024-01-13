create table customers 
(
    customer_id serial PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    booking_id INTEGER,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

create table bookings
(
    booking_id serial PRIMARY KEY,
    booking_type VARCHAR(100),
    booking_date DATE,
    pay_via VARCHAR(100)
);


create table concessions
(
    concession_id serial PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC(10, 2),
    purchase_time TIME
);


create TABLE movies
(
    movie_id serial PRIMARY KEY,
    movie_name VARCHAR(200),
    genre VARCHAR(200),
    release_date date
);

create table tickets
(
    ticket_id serial PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),

    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),

    hall_id INTEGER,
    FOREIGN KEY (hall_id) REFERENCES theaterHalls(hall_id),

    seat_num VARCHAR(100),
    price NUMERIC(10, 2)
);


create TABLE theaterHalls
(
    hall_id serial PRIMARY KEY,
    hall_name VARCHAR(100),
    capacity integer
);

create table showtimes
(
    showtime_id serial PRIMARY KEY,
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),

    hall_id INTEGER,
    FOREIGN KEY(hall_id) REFERENCES theaterHalls(hall_id),

    start_time time,
    end_time time
);
