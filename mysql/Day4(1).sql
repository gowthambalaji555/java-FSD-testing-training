use cinema_booking_system;

select * from bookings
order by customer_id;
desc bookings;

select count(id) from bookings;
-- to select howmany bookings are made by each customer
select customer_id,count(id) from bookings
group by customer_id;
-- columns in the query which arent an aggregate function must be in a group by clause
select customer_id,screening_id,count(id) from bookings
group by customer_id,screening_id
order by customer_id;

select f.name,s.start_time,c.first_name,c.last_name,count(b.id) from films f
join screenings s on f.id=s.film_id
join bookings b on s.id=b.screening_id
join customers c on b.customer_id=c.id
group by f.name,s.start_time,c.first_name,c.last_name
order by s.start_time;

-- for customer-10
select customer_id,screening_id,count(id) from bookings
group by customer_id,screening_id
where customer_id=10
order by customer_id;

select customer_id,screening_id,count(id) from bookings
group by customer_id,screening_id
having customer_id=10
order by customer_id;

/* exercise-1
1) select the customer id and count the number of reserved seats grouped by customer for october 2017.
2) select the film name and count the number of screenings for each film that is over 2 hours long.
*/

-- SUB QUERIES
-- NON-CORELATED SUBQUERY ( after WHERE)
select id, start_time from screenings
where film_id in
	(select id from films
    where length_min>120);
    
    select * from screenings;
    select * from films;
    
-- inner query can be executed seperately
select id from films
where length_min>120;

select * from customers;
select * from bookings;

select first_name,last_name, email from customers
where id in 
(select customer_id from bookings
where screening_id=1);

select customer_id from bookings
where screening_id=1;

-- NON CORELATED SUB QUERY(after FROM)
SELECT * FROM RESERVED_SEAT;
-- to get number of seats reverved per booking id
select booking_id,count(seat_id) from reserved_seat
group by booking_id;

-- to select the maximum seats booked in one booking
-- derieved table
select max(no_of_seats) from 
(select booking_id,count(seat_id) as no_of_seats from reserved_seat
group by booking_id) b;

select avg(no_of_seats),max(no_of_seats) from 
(select booking_id,count(seat_id) as no_of_seats from reserved_seat
group by booking_id) b;

-- CO RELATED SUB QUERY
select * from bookings;
select screening_id,customer_id from bookings
order by screening_id;

select * from reserved_seat;
-- inner query is running multiple times
select screening_id, customer_id,
(select count(seat_id) 
from reserved_seat where booking_id=b.id) as no_of_seats
from bookings b
order by screening_id;
