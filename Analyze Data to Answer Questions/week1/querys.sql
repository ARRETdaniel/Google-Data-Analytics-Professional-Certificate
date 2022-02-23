--You are working on an international project and need to invoice your customers for the work you complete. The database you use contains an invoices table. The invoices table contains the following columns: InvoiceId, CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingState, BillingCountry, BillingPostalCode, Total.
--Create a query to return all the columns from this table for only customers in Germany who have an invoice total greater than $5.
SELECT COUNT(*) as invoice_total_greater_than_5
FROM invoices
WHERE BillingCountry = 'Germany'
  and Total > 5

--The meteorologists who you’re working with have asked you to get the temperature, wind speed, and precipitation for stations La Guardia and JFK, for every day in 2020, in descending order by date, and ascending order by Station ID. Use the following query to request this information:
SELECT stn,
  date,
  -- Use the IF function to replace 9999.9 values, which the dataset description explains is the default value when temperature is missing, with NULLs instead.
  IF(
    temp = 9999.9,
    NULL,
    temp
  ) AS temperature,
  -- Use the IF function to replace 999.9 values, which the dataset description explains is the default value when wind speed is missing, with NULLs instead.
  IF(
    wdsp = "999.9",
    NULL,
    CAST(wdsp AS Float64)
  ) AS wind_speed,
  -- Use the IF function to replace 99.99 values, which the dataset description explains is the default value when precipitation is missing, with NULLs instead.
  IF(prcp = 99.99, 0, prcp) AS precipitation
FROM `bigquery-public-data.noaa_gsod.gsod2020`
WHERE stn = "725030" -- La Guardia
  OR stn = "744860" -- JFK
ORDER BY date DESC,
  stn ASC


--Question 2
--You are working with a database table that contains data about music genres.
--You want to sort the genres by name in ascending order. The genres are listed in the genre_name column.
--
--You write the SQL query below. Add an ORDER BY clause that will sort the genres by name in ascending order.
SELECT
*
FROM
genre
ORDER BY
    genre_name
ASC

--You are working with a database table that contains employee data. You want to sort the employees by hire date in descending order. The hire dates are listed in the hire_date column.
--
--You write the SQL query below. Add an ORDER BY clause that will sort the employees by hire date in descending order.

SELECT
first_name, last_name
FROM
employee
ORDER BY
    hire_date
DESC
