-- 🔍 Initial complex query (before optimization)
EXPLAIN ANALYZE
SELECT
  b.id AS booking_id,
  b.start_date,
  b.end_date,
  u.name AS user_name,
  p.title AS property_title,
  pay.amount AS payment_amount
FROM
  bookings b
JOIN
  users u ON b.user_id = u.id
JOIN
  properties p ON b.property_id = p.id
JOIN
  payments pay ON b.id = pay.booking_id
WHERE
  b.start_date >= '2025-01-01'
  AND b.end_date <= '2025-12-31';

-- ✅ Refactored optimized query (after creating indexes, filters narrowed)
EXPLAIN ANALYZE
SELECT
  b.id AS booking_id,
  b.start_date,
  b.end_date,
  u.name AS user_name,
  p.title AS property_title,
  pay.amount AS payment_amount
FROM
  bookings b
JOIN
  users u ON b.user_id = u.id
JOIN
  properties p ON b.property_id = p.id
JOIN
  payments pay ON b.id = pay.booking_id
WHERE
  b.start_date BETWEEN '2025-01-01' AND '2025-12-31'
  AND pay.status = 'completed'; -- assuming a status field exists for better filtering
