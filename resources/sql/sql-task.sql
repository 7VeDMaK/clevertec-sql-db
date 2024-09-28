-- http://localhost:5050
--Task 1

-- select model ->> 'en' as model, fare_conditions, count(*) as amount
-- from seats
--          join
--      aircrafts_data using(aircraft_code)
-- group by model, fare_conditions
-- order by model, fare_conditions DESC

--Task 2

-- select model ->> 'en' as model, count(*) as amount
-- from seats
--          join
--      aircrafts_data using(aircraft_code)
-- group by model
-- order by amount DESC
-- limit 3

--Task 3

-- select *
-- from flights
-- where actual_departure - scheduled_departure > interval '2 hours'
-- order by actual_departure - scheduled_departure

--Task 4

-- select passenger_name, contact_data, fare_conditions, book_date
-- from ticket_flights
--          join tickets using (ticket_no)
--          join bookings using (book_ref)
-- where fare_conditions = 'Business'
-- order by book_date DESC
-- limit 10

--Task 5

-- select flight_id
-- from flights
-- where flight_id not in (select flight_id
--                         from ticket_flights
--                         where fare_conditions = 'Business')
-- order by flight_id

--Task 6

-- select airport_name ->> 'en', city ->> 'en'
-- from flights
--          join airports_data on departure_airport = airport_code
-- where status = 'Delayed'

--Task 7

-- select airport_name ->> 'en', count(*) as amount
-- from flights
--          join airports_data on departure_airport = airport_code
-- group by airport_name
-- order by amount DESC

--Task 8

-- select *
-- from flights
-- where actual_arrival != scheduled_arrival


--Task 9

