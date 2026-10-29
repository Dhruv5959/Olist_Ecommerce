USE olist_ecommerce;

SELECT 'customers' AS dataset, COUNT(*) AS total_rows
FROM olist_customers_dataset

UNION ALL
SELECT 'geolocation', COUNT(*)
FROM olist_geolocation_dataset

UNION ALL
SELECT 'order_items', COUNT(*)
FROM olist_order_items_dataset

UNION ALL
SELECT 'payments', COUNT(*)
FROM olist_order_payments_dataset

UNION ALL
SELECT 'reviews', COUNT(*)
FROM olist_order_reviews_dataset

UNION ALL
SELECT 'orders', COUNT(*)
FROM olist_orders_dataset

UNION ALL
SELECT 'products', COUNT(*)
FROM olist_products_dataset

UNION ALL
SELECT 'sellers', COUNT(*)
FROM olist_sellers_dataset

UNION ALL
SELECT 'category_translation', COUNT(*)
FROM product_category_name_translation;