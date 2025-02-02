SELECT
    o.store_id,
    s.store_name,
    SUM(o.total_amount) AS total_sales,
    SUM(o.tax_amount) AS total_tax
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('dim_stores') }} s
  ON o.store_id = s.store_id
GROUP BY o.store_id, s.store_name
ORDER BY total_sales DESC;