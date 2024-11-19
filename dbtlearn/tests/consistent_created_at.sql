SELECT f.review_date FROM 

{{ ref('fct_reviews') }} AS f

LEFT JOIN {{ref('dim_listings_cleansed')}} AS L

ON f.listing_id = L.listing_id

WHERE L.created_at >= f.review_date

