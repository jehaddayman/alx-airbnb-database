# Optimization Report: Airbnb Booking Query

## 🎯 Initial Query

```sql
SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    u.email,
    p.title AS property_title,
    p.price_per_night,
    pay.amount AS payment_amount,
    pay.payment_date
FROM
    bookings b
JOIN
    users u ON b.user_id = u.id
JOIN
    properties p ON b.property_id = p.id
LEFT JOIN
    payments pay ON b.id = pay.booking_id;
