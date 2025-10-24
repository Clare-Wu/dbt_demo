with

locations as (

    select * from {{ ref('base_locations') }}

)

select * from locations
