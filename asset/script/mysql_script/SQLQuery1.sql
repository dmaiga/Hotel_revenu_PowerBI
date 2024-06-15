WITH hotels as (
SELECT * FROM dbo.['2018$']
UNION 
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])


-- Is our hotel revenue growing yearly ? 
--adr = daily rate 
SELECT arrival_date_year as 'Year',
		ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr ),2) as Revenue,
		hotel
FROM hotels
GROUP BY arrival_date_year,hotel
;
