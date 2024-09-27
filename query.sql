-- http://localhost:5050
--Task 1

-- select model ->> 'en' as model, fare_conditions, count(*) as amount
-- from seats
--          join
--      aircrafts_data on aircrafts_data.aircraft_code = seats.aircraft_code
-- group by model, fare_conditions
-- order by model, fare_conditions DESC

--Task 2

-- select model ->> 'en' as model, count(*) as amount
-- from seats
--          join
--      aircrafts_data on aircrafts_data.aircraft_code = seats.aircraft_code
-- group by model
-- order by amount DESC
-- limit 3

--Task 3

-- select *
-- from flights
-- where actual_departure - scheduled_departure > interval '2 hours'
-- order by actual_departure - scheduled_departure

--Task 4


