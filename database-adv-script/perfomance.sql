-- Original complex query (before optimization)
SELECT b.*, u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON u.id = b.user_id
JOIN properties p ON p.id = b.property_id
LEFT JOIN payments pay ON pay.booking_id = b.id;
