SELECT
l.id,
l.name,
l.host_number,
h.host_title,
l.latitude,
l.longitude,
l.price,
l.minimum_nights,
l.number_of_reviews,
l.last_review,
l.reviews_per_month,
l.availability_365,
l.neighbourhood_id,
l.room_type_id,
rt.room_type,
n.neighbourhood,
b.borough,
hc.calculated_host_listings_count

FROM listing l
JOIN neighbourhood n ON (l.neighbourhood_id = n.neighbourhood_id)
JOIN borough b ON (n.borough_id = b.borough_id)
JOIN host h ON (l.host_number = h.host_number)
JOIN room_type rt ON (l.room_type_id = rt.room_type_id)

JOIN (
	SELECT 
	host_number,
	count(id) as calculated_host_listings_count
	
	FROM listing
	
	GROUP BY host_number
) hc ON (l.host_number = hc.host_number)

