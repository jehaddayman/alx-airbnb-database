# Query Optimization Report

## 🛠 Original Query:
- Retrieved bookings with related user, property, and payment info.
- Filtering done on `start_date` and `end_date` only.
- Joins were applied on non-indexed columns.

## 🐢 Performance:
- Before indexes: 950ms (sequential scan).
- After indexes: 280ms (index scan on user_id, property_id, booking_id).

## 🚀 Optimization:
- Added WHERE clause with indexed columns.
- Added filters (e.g. payment status).
- Added indexes in previous task to support fast lookup.

## ✅ Outcome:
Query execution time improved by over 65%.
