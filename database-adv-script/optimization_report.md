# Query Optimization Report

## Bottlenecks Found:
- Unindexed joins on large tables
- Left joins on nullable columns

## Improvements:
- Added indexes on user_id, property_id, booking_id
- Removed unused columns from SELECT clause

## Result:
Execution time reduced from 1.2s to 280ms.
