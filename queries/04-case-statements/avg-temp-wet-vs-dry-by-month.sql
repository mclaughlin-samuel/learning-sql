SELECT month,
AVG(CASE WHEN rain OR hail THEN temperature ELSE null END)
AS avg_precipitation_temp,

AVG(CASE WHEN NOT (rain OR hail) THEN temperature ELSE null END)
AS avg_non_precipitation_temp

FROM station_data
WHERE year > 2000
GROUP BY month;
