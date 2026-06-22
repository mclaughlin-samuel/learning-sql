SELECT year,
SUM(precipitation) AS total_precipitation
FROM station_data sd
GROUP BY year
HAVING total_precipitation > 30;
