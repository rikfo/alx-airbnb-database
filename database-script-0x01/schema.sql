
CREATE TYPE user_role AS ENUM ('guest', 'host', 'admin');

CREATE TYPE booking_status AS ENUM ('pending', 'confirmed', 'canceled');

CREATE TABLE IF NOT EXISTS users (
user_id UUID PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password_hash VARCHAR(200) NOT NULL,
phone_number VARCHAR(50) NULL,
role user_role NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON users(email);

CREATE TABLE IF NOT EXISTS property (
property_id UUID PRIMARY KEY,
host_id FOREIGN KEY references User(user_id),
name VARCHAR(100) NOT NULL,
description TEXT NOT NULL,
location VARCHAR(200) NOT NULL,
pricepernight DECIMAL NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE INDEX idx_property_id ON property(property_id);

CREATE TABLE IF NOT EXISTS booking (
booking_id UUID PRIMARY KEY,
property_id FOREIGN KEY references Property(property_id),
user_id FOREIGN KEY references User(user_id),
start_date DATE NOT NULL,
end_date DATE NOT NULL,
total_price DECIMAL NOT NULL,
status booking_status NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_booking_id ON booking(booking_id);

CREATE TABLE IF NOT EXISTS payment (
payment_id UUID PRIMARY KEY,
booking_id FOREIGN KEY references Booking(booking_id),
amount DECIMAL NOT NULL,
payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
payment_method ENUM (credit_card, paypal, stripe) NOT NULL
);

CREATE TABLE IF NOT EXISTS review (
review_id UUID PRIMARY KEY,
property_id FOREIGN KEY references Property(property_id),
user_id FOREIGN KEY references User(user_id),
rating INTEGER NOT NULL CHECK (rating >= 1 AND rating <= 5),
comment TEXT, NOT NULL,
created_at TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS message (
message_id UUID PRIMARY KEY,
sender_id FOREIGN KEY references User(user_id),
recipient_id FOREIGN KEY references User(user_id),
message_body TEXT NOT NULL,
sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
