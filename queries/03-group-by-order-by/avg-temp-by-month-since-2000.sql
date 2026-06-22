SELECT month, AVG(temperature) AS avg_temp
FROM station_data
WHERE year >= 2000
GROUP BY month;
