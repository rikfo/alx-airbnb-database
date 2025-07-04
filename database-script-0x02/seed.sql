
-- Insert dummy users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('00000000-0000-0000-0000-000000000001', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest'),
  ('00000000-0000-0000-0000-000000000002', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw2', '0987654321', 'host'),
  ('00000000-0000-0000-0000-000000000003', 'Carol', 'Williams', 'carol@example.com', 'hashed_pw3', NULL, 'admin');

-- Insert dummy properties
INSERT INTO property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Cozy Cottage', 'A cozy cottage in the countryside.', '123 Main St, Springfield', 100.00),
  ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'Urban Loft', 'A modern loft in the city center.', '456 Market St, Metropolis', 150.00),
  ('10000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000002', 'Beach House', 'A sunny beach house with ocean view.', '789 Ocean Dr, Sunnyville', 200.00);

-- Insert dummy bookings
INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '2025-07-10', '2025-07-15', 500.00, 'confirmed'),
  ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', '2025-08-01', '2025-08-05', 600.00, 'pending'),
  ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000001', '2025-09-01', '2025-09-10', 1800.00, 'canceled');

-- Insert dummy payments
INSERT INTO payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 500.00, 'credit_card'),
  ('30000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000002', 600.00, 'paypal'),
  ('30000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000003', 0.00, 'stripe');

-- Insert dummy reviews
INSERT INTO review (review_id, property_id, user_id, rating, comment)
VALUES
  ('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 5, 'Amazing cozy cottage, highly recommend!'),
  ('40000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 4, 'Nice loft, perfect for city trips.'),
  ('40000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000001', 3, 'Beach house was good but needed some maintenance.');

-- Insert dummy messages
INSERT INTO message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Hi Bob, is the Cozy Cottage available next month?'),
  ('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Hi Alice, yes it is! Would you like to book it?'),
  ('50000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Yes please, I just confirmed the booking. Thank you!');
