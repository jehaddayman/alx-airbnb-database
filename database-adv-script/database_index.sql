-- 🔍 BEFORE INDEXING: Analyze query performance
EXPLAIN ANALYZE
SELECT
  b.id,
  b.start_date,
  u.name,
  p.title
FROM
  bookings b
JOIN
  users u ON b.user_id = u.id
JOIN
  properties p ON b.property_id = p.id;

-- ✅ CREATE INDEXES
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_payments_booking_id ON payments(booking_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- 🚀 AFTER INDEXING: Analyze query performance again
EXPLAIN ANALYZE
SELECT
  b.id,
  b.start_date,
  u.name,
  p.title
FROM
  bookings b
JOIN
  users u ON b.user_id = u.id
JOIN
  properties p ON b.property_id = p.id;
