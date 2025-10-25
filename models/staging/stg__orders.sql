with

source as (

    select * from {{ ref('base__orders') }}

),

final as (

    select

        ----------  ids
        order_id,
        location_id,
        customer_id,

        ---------- numerics
        subtotal_cents,
        tax_paid_cents,
        order_total_cents,
        {{ cents_to_dollars('subtotal_cents') }} as subtotal,
        {{ cents_to_dollars('tax_paid_cents') }} as tax_paid,
        {{ cents_to_dollars('order_total_cents') }} as order_total,

        ---------- timestamps
        ordered_at

    from source

)

select * from final
