-- Create partitioned Booking table (PostgreSQL style)
CREATE TABLE bookings_partitioned (
  id SERIAL PRIMARY KEY,
  user_id INTEGER,
  property_id INTEGER,
  start_date DATE,
  end_date DATE
) PARTITION BY RANGE (start_date);

CREATE TABLE bookings_2025_1 PARTITION OF bookings_partitioned
  FOR VALUES FROM ('2025-01-01') TO ('2025-07-01');

CREATE TABLE bookings_2025_2 PARTITION OF bookings_partitioned
  FOR VALUES FROM ('2025-07-01') TO ('2026-01-01');
