SELECT year,
SUM(precipitation) AS tornado_precipitation
FROM station_data
WHERE tornado = 1
GROUP BY year;
