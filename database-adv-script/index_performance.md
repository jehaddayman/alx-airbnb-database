# Index Performance Report

## Before Indexing:
Query time to retrieve bookings by user: ~700ms

## After Indexing:
Query time reduced to ~95ms

## Conclusion:
Adding indexes to `user_id`, `property_id`, and `owner_id` dramatically improved join performance.
