with final as (

SELECT 
i.inventory_id,
i.film_id,
i.store_id,
i.last_update as inventory_last_update,
r.rental_id,
r.rental_date,
r.customer_id,
r.return_date,
r.staff_id,
r.last_update as rental_last
FROM  {{ref('src_stg_inventory')}} i 
LEFT JOIN {{ref('src_stg_rental')}} r ON i.inventory_id = r.inventory_id

)

SELECT * FROM final