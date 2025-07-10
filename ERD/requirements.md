# ERD – Entity Relationship Diagram

تم إنشاء مخطط الكيانات والعلاقات لنظام Airbnb مصغر يحتوي على الكيانات التالية:

- **User**
- **Property**
- **Booking**
- **Payment**
- **Review**

## الكيانات الرئيسية وخصائصها

### User
- id (PK)
- name
- email
- created_at

### Property
- id (PK)
- title
- description
- price_per_night
- owner_id (FK → User)

### Booking
- id (PK)
- user_id (FK → User)
- property_id (FK → Property)
- start_date
- end_date
- status

### Payment
- id (PK)
- booking_id (FK → Booking)
- amount
- payment_date
- method

### Review
- id (PK)
- user_id (FK → User)
- property_id (FK → Property)
- rating
- comment

## العلاقات

- User 1️⃣⟶🔁 Booking
- Property 1️⃣⟶🔁 Booking
- Booking 1️⃣⟶1️⃣ Payment
- User 1️⃣⟶🔁 Review
- Property 1️⃣⟶🔁 Review

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/b9f60db5-8786-4751-9b2a-b9cf6b505889" />
