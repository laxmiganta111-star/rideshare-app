CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    password VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE rides (
    id INT PRIMARY KEY AUTO_INCREMENT,
    driver_id INT,
    start_location VARCHAR(255),
    destination VARCHAR(255),
    available_seats INT,
    fuel_cost DECIMAL(10,2),
    ride_date DATE,
    ride_time TIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (driver_id) REFERENCES users(id)
);
CREATE TABLE bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ride_id INT,
    passenger_id INT,
    seats_booked INT,
    cost_share DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);