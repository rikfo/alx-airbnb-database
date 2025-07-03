# Database Normalization Explanation

## Objective
Ensure the database schema is normalized to Third Normal Form (3NF).

## Normalization Steps

1. **First Normal Form (1NF)**  
   - All tables have atomic columns (no repeating groups or arrays).  
   - Each table has a primary key to uniquely identify each row.

2. **Second Normal Form (2NF)**  
   - All non-key columns fully depend on the entire primary key.
   - No partial dependencies exist because all tables use single-column primary keys.

3. **Third Normal Form (3NF)**  
   - All non-key columns depend only on the primary key and not on other non-key columns.
   - There are no transitive dependencies.

## Conclusion
The current schema meets the requirements for 3NF. Each table stores data with minimal redundancy and clear relationships, ensuring data integrity and ease of maintenance.
