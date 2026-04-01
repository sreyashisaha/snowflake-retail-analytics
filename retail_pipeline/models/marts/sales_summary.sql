select
    city,
    branch,
    product_line,
    payment,
    customer_type,
    COUNT(invoice_id)           as total_transactions,
    SUM(quantity)               as total_units_sold,
    ROUND(SUM(total), 2)        as total_revenue,
    ROUND(AVG(total), 2)        as avg_transaction_value,
    ROUND(AVG(rating), 2)       as avg_customer_rating,
    ROUND(SUM(gross_income), 2) as total_gross_income
from {{ ref('stg_sales') }}
group by city, branch, product_line, payment, customer_type
