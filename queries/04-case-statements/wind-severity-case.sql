SELECT report_code, year, month, day, wind_speed,

CASE
    WHEN wind_speed >= 40 THEN 'HIGH'
    WHEN wind_speed >= 30 AND wind_speed < 40 THEN 'MODERATE'
    ELSE 'LOW'
END AS wind_severity

FROM station_data;
