with final as (
select c.*,
fc.film_id,
fc.last_update as last_film_category_update
from  {{ref('src_stg_film_category')}} fc
left join {{ref('src_stg_category')}}c on c.category_id = fc.category_id 
)

select * from final