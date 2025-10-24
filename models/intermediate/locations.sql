with

locations as (

    select * from {{ ref('base_stores') }}

)

select * from locations
