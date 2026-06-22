SELECT year, month,
SUM(precipitation) AS tornado_precipitation
FROM station_data sd
WHERE tornado = 1
GROUP BY year, month;
