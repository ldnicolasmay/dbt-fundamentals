with

orders as (
    select * from {{ ref('stg_orders') }}
)

select
    order_date
from orders
where date_diff(current_date(), order_date, day) < 0
