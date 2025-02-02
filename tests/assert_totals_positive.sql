SELECT *
FROM {{ ref('customer_orders_intermediate') }}
WHERE total_spent < 0;