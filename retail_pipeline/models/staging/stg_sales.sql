select
    invoice_id,
    branch,
    city,
    customer_type,
    gender,
    product_line,
    unit_price,
    quantity,
    tax_5pct,
    total,
    TO_DATE(sale_date, 'MM/DD/YYYY') as sale_date,
    payment,
    gross_income,
    rating
from {{ source('analytics', 'raw_sales') }}
