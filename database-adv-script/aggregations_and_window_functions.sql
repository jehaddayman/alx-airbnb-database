-- 1. Get total number of bookings made by each user using COUNT + GROUP BY
SELECT
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM
    users u
JOIN
    bookings b ON u.id = b.user_id
GROUP BY
    u.id, u.name
ORDER BY
    total_bookings DESC;

-- 2. Rank properties based on total number of bookings using RANK()
SELECT
    p.id AS property_id,
    p.title AS property_title,
    COUNT(b.id) AS booking_count,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS property_rank
FROM
    properties p
LEFT JOIN
    bookings b ON p.id = b.property_id
GROUP BY
    p.id, p.title;
