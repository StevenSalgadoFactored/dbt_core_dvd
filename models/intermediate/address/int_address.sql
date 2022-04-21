with final as (
select a.*,
sc.city,
sc.country,
sc.city_last_update,
sc.country_last_update
from {{ref('src_stg_address')}} a 
left join {{ref('base_country_city')}}  sc on sc.city_id = a.city_id
)

select * from final 