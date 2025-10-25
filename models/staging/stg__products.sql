with

source as (

    select * from {{ source('ecom', 'raw_products') }}

),

final as (

    select

        ----------  ids
        product_id,

        ---------- text
        product_name,
        product_type,
        product_description,


        ---------- numerics
        product_price,

        ---------- booleans
        coalesce(product_type = 'jaffle', false) as is_food_item,

        coalesce(product_type = 'beverage', false) as is_drink_item

    from source

)

select * from final
