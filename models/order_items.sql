-- Seed data containing order items.
MODEL (
  name raw.order_items,
  kind SEED (
    path '../seeds/order_items.csv'
  ),
  columns (
    id INT,
    order_id INT,
    item_id INT,   
    quantity INT, 
    ds DATE
  )
)
