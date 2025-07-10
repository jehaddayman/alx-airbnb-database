# Database Schema (DDL)

يحتوي هذا المجلد على ملف `schema.sql` الذي يُعرّف جداول قاعدة البيانات الخاصة بتطبيق Airbnb.

## المحتوى
- users
- properties
- bookings
- payments
- reviews

## تعليمات التشغيل
```bash
psql -d your_database_name -f schema.sql
