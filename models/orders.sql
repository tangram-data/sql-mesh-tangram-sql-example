-- Seed data containing order orders.
MODEL (
  name raw.orders,
  kind SEED (
    path '../seeds/orders.csv'
  ),
  columns (
    id INT,
    customer_id INT,
    waiter_id INT,   
    start_ts INT, 
    end_ts INT, 
    ds DATE
  )
)
