with

source as (

    select * from {{ source('ecom', 'raw__items') }}

),

final as (

    select

        ----------  ids
        id as order_item_id,
        order_id,
        sku as product_id

    from source

)

select * from final
