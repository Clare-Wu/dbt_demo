with

source as (

    select * from {{ ref('base__supplies') }}

),

final as (

    select

        ----------  ids
        {{ dbt_utils.generate_surrogate_key(['id', 'sku']) }} as supply_uuid,
        id as supply_id,
        sku as product_id,

        ---------- text
        supply_name,

        ---------- numerics
        supply_cost,

        ---------- booleans
        is_perishable_supply

    from source

)

select * from final
