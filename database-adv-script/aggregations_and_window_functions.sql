-- Total bookings per user
SELECT u.name, COUNT(b.id) AS total_bookings
FROM users u
JOIN bookings b ON b.user_id = u.id
GROUP BY u.name;

-- Rank properties by total bookings
SELECT p.title, COUNT(b.id) AS booking_count,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank
FROM properties p
LEFT JOIN bookings b ON b.property_id = p.id
GROUP BY p.title;
