SELECT month, ROUND(AVG(temperature), 2) AS avg_temp
FROM station_data
WHERE year <= 2000
GROUP BY month;
