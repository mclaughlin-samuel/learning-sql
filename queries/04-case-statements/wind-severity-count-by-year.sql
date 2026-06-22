SELECT year,

CASE
    WHEN wind_speed >= 40 THEN 'HIGH'
    WHEN wind_speed >= 30 THEN 'MODERATE'
    ELSE 'LOW'
END AS wind_severity,

COUNT(*) AS record_count

FROM station_data
GROUP BY 1, 2;
