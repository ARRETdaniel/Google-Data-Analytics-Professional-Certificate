SELECT COUNT(*) AS num_of_trips
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE duration >= 1200;

--What are the names of the stations that bike_id 1710 started from?
SELECT start_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE bike_id = 1710;

-- How many bike_ids have ended at "Moor Street, Soho"?
SELECT COUNT (DISTINCT bike_id) AS num_of_bikes
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE end_station_name = 'Moor Street, Soho';

--What is the station_id for "Canton Street, Poplar"?
SELECT DISTINCT start_station_id --can also use end_station_id
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE start_station_name = 'Canton Street, Poplar' --can also use end_station_name

--What is the name of the station whose ID is 111?
SELECT DISTINCT start_station_name --can also use end_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE start_station_id = 111 --can also use end_station_id

--How many distinct bike_ids had trip durations greater than 2400 seconds (or 40 minutes)?
SELECT COUNT(DISTINCT bike_id) AS num_of_bike_trips
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE duration > 2400 --schema indicates that trip duration is recorded in seconds

--This query SELECTs the name and count columns from the names_2014 table. Using the WHERE clause, you are filtering for a specific gender for your results.
-- Hands-On Activity: Create a custom table in BigQuery
SELECT
  name,
  count
FROM
  `babynames.names_2014`
WHERE
  gender = 'M'
ORDER BY
  count DESC
LIMIT
  5

--you can use this query to update your table so that all Dodge gas sedans have four doors:

UPDATE
  cars.car_info
SET
  num_of_doors = "four"
WHERE
  make = "dodge"
  AND fuel_type = "gas"
  AND body_style = "sedan";
