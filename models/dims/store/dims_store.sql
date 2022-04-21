with final as (
select s.*,
sa.address,
sa.address2,
sa.district,
sa.city_id,
sa.postal_code,
sa.phone,
sa.last_update as address_last_update,
sa.city,
sa.country,
sa.city_last_update,
sa.country_last_update
from {{ref('src_stg_store')}} s 
left join {{ref('int_address')}} sa on sa.address_id=s.address_id 
)

select * from final