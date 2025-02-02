SELECT
    p.category,
    COUNT(i.item_id) AS total_items_sold,
    SUM(i.revenue) AS total_revenue
FROM {{ ref('dim_products_supplies') }} p
JOIN {{ ref('fact_orders_items') }} i
  ON p.product_id = i.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;