-- Seed data containing water names.
MODEL (
  name raw.demographics,
  kind SEED (
    path '../seeds/demographics.csv'
  ),
  columns (
    id INT,
    customer_id INT,
    zip TEXT
  )
)
