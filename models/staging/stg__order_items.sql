with

source as (

    select * from {{ ref('base__items') }}

),

final as (

    select

        ----------  ids
        order_item_id,
        order_id,
        product_id

    from source

)

select * from final
