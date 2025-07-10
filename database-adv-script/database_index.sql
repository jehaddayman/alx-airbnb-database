-- Create index on user_id in bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on property_id in bookings table
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on booking_id in payments table
CREATE INDEX idx_payments_booking_id ON payments(booking_id);

-- Create index on property_id in reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
