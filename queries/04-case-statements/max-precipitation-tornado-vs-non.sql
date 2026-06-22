SELECT year,

MAX(CASE WHEN tornado = 0 THEN precipitation ELSE NULL END) AS max_non_tornado_precipitation,

MAX(CASE WHEN tornado = 1 THEN precipitation ELSE NULL END) AS max_tornado_precipitation

FROM station_data
GROUP BY year;
