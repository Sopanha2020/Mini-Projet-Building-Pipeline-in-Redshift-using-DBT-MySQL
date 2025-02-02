SELECT
    cs.customer_status,
    COUNT(c.customer_id) AS total_customers,
    SUM(f.revenue) AS total_revenue
FROM {{ ref('dim_customers') }} c
JOIN {{ ref('fact_orders_items') }} f
  ON c.customer_id = f.customer_id
JOIN {{ ref('customers_status') }} cs
  ON c.customer_id = cs.customer_id
GROUP BY cs.customer_status
ORDER BY total_revenue DESC;