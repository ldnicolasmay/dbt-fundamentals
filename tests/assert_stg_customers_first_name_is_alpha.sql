with

customers as (
    select * from {{ ref('stg_customers') }}
)

select
    first_name
from customers
where not regexp_contains(first_name, '^[A-Za-z]+$')
