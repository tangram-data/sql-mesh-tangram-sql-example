-- View of 10 waiters with highest revenue on most recent day of data.
MODEL (
  name sushisimple.top_waiters,
  kind FULL,
  cron '@daily',
  physical_properties (
        order_by = (waiter_id),
        allow_nullable_key = 1  
  ),
  gateway tangram_clickhouse
);


SELECT
  waiter_id::INT AS waiter_id,
  name::TEXT AS waiter_name,
  revenue::DOUBLE AS revenue
FROM iceberg.sushisimple.waiter_revenue_by_day as r
LEFT JOIN iceberg.sushisimple.waiter_names AS n
  ON r.waiter_id = n.id
WHERE
  ds = (
    SELECT
      MAX(ds)
    FROM iceberg.sushisimple.waiter_revenue_by_day
  )
ORDER BY
  revenue DESC
LIMIT 10
