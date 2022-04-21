with final as (
select fa.film_id,
fa.last_update as film_actor_last_update,
a.*
from {{ref('src_stg_film_actor')}} fa 
left join {{ref('src_stg_actor')}} a on a.actor_id =fa.actor_id 
)

select * from final 

