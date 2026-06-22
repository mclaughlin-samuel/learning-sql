SELECT year, month,
SUM(precipitation) AS non_tornado_precipitation
FROM station_data sd
WHERE tornado = 0
GROUP BY year, month;
