# Index Performance Report

## 🎯 Objective

Improve the performance of frequently used queries by adding indexes to high-usage columns.

## 🔍 Before Indexing

Query to retrieve bookings with user and property details:

```sql
SELECT
  b.id, b.start_date, u.name, p.title
FROM
  bookings b
JOIN
  users u ON b.user_id = u.id
JOIN
  properties p ON b.property_id = p.id;
