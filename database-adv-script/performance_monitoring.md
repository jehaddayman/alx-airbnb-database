# Database Performance Monitoring

## Tools Used:
- EXPLAIN
- ANALYZE

## Example:
Query to fetch all bookings in August 2025:
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned WHERE start_date BETWEEN '2025-08-01' AND '2025-08-31';
