-- Seed data containing marketing data.
MODEL (
  name raw.marketing,
  kind SEED (
    path '../seeds/marketing.csv'
  ),
  columns (
    id INT,
    customer_id INT,
    status TEXT
  )
)
