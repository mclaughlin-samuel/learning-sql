SELECT year, SUM(snow_depth) AS total_snow
FROM station_data
WHERE year <= 2000
GROUP BY year;
