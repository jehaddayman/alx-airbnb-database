# Partitioning Performance

## Observation:
Querying bookings for June 2025 before partitioning: ~1.1s  
After partitioning: ~120ms

## Benefit:
Partition pruning reduced full-table scan and improved performance drastically.
