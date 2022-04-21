with final as (
select c.*,
sa.address,
sa.address2,
sa.district,
sa.city_id,
sa.postal_code,
sa.phone,
sa.last_update as adress_last_update,
sa.city,
sa.country,
sa.city_last_update,
sa.country_last_update
from {{ref('src_stg_customer')}} c 
left join {{ref('int_address')}} sa on sa.address_id=c.address_id 
)

select * from final