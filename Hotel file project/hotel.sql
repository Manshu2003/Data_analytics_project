SELECT * FROM hotel.hotel_management;
SELECT *
FROM hotel_management
WHERE hotel IS NULL;


 # Beginner SQL Questions (Basic Analysis)

-- Total kitni bookings hain dataset me?
SELECT count(is_canceled) FROM hotel_management
where is_canceled =0;

-- Kitni bookings cancel hui hain vs non-cancelled?

SELECT is_canceled ,count(*) as results FROM hotel_management
group by is_canceled;


-- Har hotel type (City Hotel / Resort Hotel) me total bookings count karo.
SELECT hotel, is_canceled, COUNT(*) AS total_bookings
FROM hotel_management
GROUP BY hotel, is_canceled;


-- Average lead time kya hai?
select round(avg(lead_time),2) as Lead_time from hotel_management;
-- Har year me kitni bookings hui?
select  arrival_date_year as Year, is_canceled,count(*) as booking
from hotel_management
group by arrival_date_year,
is_canceled;

-- Sabse zyada kaunsa month me bookings hui?
select  arrival_date_month as month, count(is_canceled) as booking
from hotel_management
group by arrival_date_month
order by booking desc
limit 1;
-- Average adults per booking kya hai?
select  round(avg(adults),2) , is_canceled
from hotel_management
group by 
is_canceled;

-- Top 5 countries jahan se sabse zyada customers aaye.
select country,count(*) as customers
from hotel_management
group by country
order by customers desc
limit 5;
-- Meal type ke hisaab se booking count karo.
select meal,count(*) as customers
from hotel_management
group by meal
order by customers desc
limit 5;
-- Average ADR (average daily rate) kya hai?
select round(avg(adr) ,2) as Average_ADR
from hotel_management;


-- Har hotel type ke liye cancellation rate calculate karo.


select hotel,ROUND(
    SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) * 100.0 
    / COUNT(*),
    2) AS cancellation_rate_percent from hotel_management
group by hotel;


-- Month-wise revenue calculate karo
SELECT 
    arrival_date_month,
   round( SUM(adr * (stays_in_weekend_nights + stays_in_week_nights)),2) AS revenue
FROM hotel_management
GROUP BY  arrival_date_month  
order by arrival_date_month  asc;