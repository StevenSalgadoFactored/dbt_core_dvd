with final as (
select * 
from {{ref('src_stg_payment')}}
)

select * from final 