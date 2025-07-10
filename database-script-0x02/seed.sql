
---

## 📊 Task 3: seed.sql

```sql
-- Insert Users
INSERT INTO users (name, email) VALUES
('Ahmed Tarek', 'ahmed@example.com'),
('Sara Youssef', 'sara@example.com');

-- Insert Properties
INSERT INTO properties (title, description, price_per_night, owner_id) VALUES
('Cozy Studio', 'Close to city center', 400.00, 1),
('Beach House', 'Sea view property', 1200.00, 2);

-- Insert Bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, status) VALUES
(1, 2, '2025-08-01', '2025-08-05', 'confirmed'),
(2, 1, '2025-09-10', '2025-09-12', 'pending');

-- Insert Payments
INSERT INTO payments (booking_id, amount, payment_date, method) VALUES
(1, 4800.00, '2025-07-15', 'credit_card');

-- Insert Reviews
INSERT INTO reviews (user_id, property_id, rating, comment) VALUES
(1, 2, 5, 'Amazing place with great view!'),
(2, 1, 4, 'Clean and comfortable.');
