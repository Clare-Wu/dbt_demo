with

products as (

    select * from {{ ref('stg__products') }}

)

select * from products
