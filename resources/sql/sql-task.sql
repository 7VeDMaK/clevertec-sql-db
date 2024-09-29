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

-- select model ->> 'en' as model, aircraft_code, seat_no, fare_conditions
-- from aircrafts_data
--          join seats using (aircraft_code)
-- where model ->> 'ru' = 'Аэробус A321-200'
--   and fare_conditions != 'Economy'
-- order by seat_no

--Task 10

-- select airport_code, airport_name ->> 'en' as airport_name, city ->> 'en' as city_name
-- from airports_data
-- where city in (select city
--                from airports_data
--                group by city
--                having count(*) > 1)

--Task 11

-- select *
-- from tickets
--          join
--      (select book_ref
--       from bookings
--       where total_amount > (select avg(total_amount) from bookings)) bookings
--      using (book_ref)

--Task 12

-- select *
-- from flights
-- where departure_airport in
--       (select airport_code
--        from airports_data
--        where city ->> 'ru' = 'Екатеринбург')
--   and arrival_airport in
--       (select airport_code
--        from airports_data
--        where city ->> 'ru' = 'Москва')
--   and status = 'Scheduled'
-- order by scheduled_departure
-- limit 1

--Task 13

-- (select *
--  from bookings
--  order by total_amount
--  limit 1)
-- union
-- (select *
--  from bookings
--  order by total_amount DESC
--  limit 1)

--Task 14

-- create table Customers
-- (
--     id        int primary key,
--     firstName varchar(255) not null,
--     LastName  varchar(255) not null,
--     email     varchar(255),
--     phone     varchar(255)
-- );

--Task 15

-- create table Orders
-- (
--     id         int primary key,
--     customerId int not null,
--     quantity   int default 0,
--     foreign key (customerId) references Customers (id) on delete cascade
-- );

--Task 16

-- insert into Customers(id, firstName, LastName, email, phone)
-- values (1, 'a', 'a', 'a@.com', '+375a');
-- insert into Customers(id, firstName, LastName, email, phone)
-- values (2432, 'asdadasa', 'asdadasa', 'asdadasa@.com', '+375asdadasa');
-- insert into Customers(id, firstName, LastName, email, phone)
-- values (6646, '6646', '6646', '6646@.com', '+6646');
-- insert into Orders(id, customerId, quantity)
-- values (1, 1, 3);
-- insert into Orders(id, customerId, quantity)
-- values (24, 2432, 9000);

--Task 17

-- drop table Orders;
-- drop table Customers;