SELECT report_code, coalesce(precipitation, 0) AS rainfall
FROM station_data;
