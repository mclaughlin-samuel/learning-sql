SELECT year,
SUM(snow_depth) AS total_snow,
SUM(precipitation) AS total_precipitation,
MAX(precipitation) AS max_precipitation
FROM station_data
WHERE year >= 2000
GROUP BY year;
