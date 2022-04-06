with

customers as (
    select * from {{ ref('stg_customers') }}
)

select
    last_name
from customers
where not regexp_contains(last_name, '^[A-Z]\\.$')
