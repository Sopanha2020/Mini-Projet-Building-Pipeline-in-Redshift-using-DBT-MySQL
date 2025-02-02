SELECT
    c.customer_id,
    c.customer_name,
    SUM(f.revenue) AS total_sales
FROM {{ ref('dim_customers') }} c
JOIN {{ ref('fact_orders_items') }} f
  ON c.customer_id = f.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_sales DESC;