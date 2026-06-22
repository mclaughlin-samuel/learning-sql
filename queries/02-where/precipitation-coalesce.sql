SELECT * FROM station_data
WHERE coalesce(precipitation, 0) <= 0.5;
