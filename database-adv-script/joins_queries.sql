-- INNER JOIN: Get all bookings and respective users
SELECT b.id AS booking_id, u.name, u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Get all properties and their reviews (even if no review)
SELECT p.id AS property_id, p.title, r.rating
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- FULL OUTER JOIN: All users and bookings (even if unmatched)
SELECT u.id AS user_id, u.name, b.id AS booking_id, b.start_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;
