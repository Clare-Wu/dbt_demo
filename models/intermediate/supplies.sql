with

supplies as (

    select * from {{ ref('stg__supplies') }}

)

select * from supplies
