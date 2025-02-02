SELECT
    s.store_id,
    s.store_name,
    AVG(o.total_amount) AS avg_order_amount
FROM {{ ref('dim_stores') }} s
JOIN {{ ref('stg_orders') }} o
  ON s.store_id = o.store_id
GROUP BY s.store_id, s.store_name
ORDER BY avg_order_amount DESC;
