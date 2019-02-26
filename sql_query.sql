ALTER TABLE global_data RENAME COLUMN avg_temp to glob_avg_tmp;
ALTER TABLE city_data RENAME COLUMN avg_temp to city_avg_tmp;

SELECT global_data.year, global_data.glob_avg_tmp, city_avg_tmp
FROM global_data INNER JOIN city_data
ON global_data.year=city_data.year
WHERE city like 'Rome';