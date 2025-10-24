with

source as (

    select * from {{ ref('base_items') }}

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
