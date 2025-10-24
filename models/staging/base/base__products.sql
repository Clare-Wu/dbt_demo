with

source as (

    select * from {{ source('ecom', 'raw_products') }}

),

final as (

    select

        ----------  ids
        sku as product_id,

        ---------- text
        name as product_name,
        type as product_type,
        description as product_description,


        ---------- numerics
        {{ cents_to_dollars('price') }} as product_price,

    from source

)

select * from final
