USE eurorbit;

SELECT trip_id,
	   origin,
       loc_origin.name AS origin_name,
       loc_origin.lat  AS origin_lat,
       loc_origin.long AS origin_long,
       destination,
       loc_destination.name AS destination_name,
       loc_destination.lat AS destination_lat,
       loc_destination.long AS destination_long,
       price,
       calc_distance(loc_origin.lat, loc_origin.long,
			loc_destination.lat, loc_destination.long) AS distance,
	   price / 100 / calc_distance(loc_origin.lat, loc_origin.long,
			loc_destination.lat, loc_destination.long) AS cost_per_km
FROM reservation
JOIN location AS loc_origin ON reservation.origin = loc_origin.code
JOIN location AS loc_destination ON reservation.destination = loc_destination.code
WHERE warehoused != 1 OR warehoused IS NULL;