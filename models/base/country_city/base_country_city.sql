with final as (
select c.city_id,
c.city,
c2.country,
c.last_update as city_last_update,
c2.last_update as country_last_update
from {{ref('src_stg_city')}} c 
left join {{ref('src_stg_country')}} c2 on c2.country_id =c.country_id )

select * from final 

