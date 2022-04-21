with final as (
select f.*,
sc.category_id,
sc."name" as category_name,
sc.last_film_category_update,
sc.last_update as last_category_update,
l."name" as language_name,
l.last_update as language_last_update 
from {{ref('src_stg_film')}} f  
left join {{ref('int_category')}} sc on sc.film_id = f.film_id 
left join {{ref('src_stg_language')}} l on l.language_id = f.language_id     
)

select * from final