with

locations as (

    select * from {{ ref('base__stores') }}

)

select * from locations
