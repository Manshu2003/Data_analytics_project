SELECT * FROM swiggeyy.swiggeyy_omm;

-- 1️⃣ Har Location me total orders kitni hui hain?
select location, count(*) as orders from swiggeyy.swiggeyy_omm group by location 
order by orders desc;

-- 3️⃣ Top 10 restaurants jinke sabse zyada orders hain
SELECT Restaurant_Name, COUNT(*) AS orders
FROM swiggeyy.swiggeyy_omm
GROUP BY Restaurant_Name
ORDER BY orders DESC;


-- 4️⃣ Sabse mehenga dish kaunsa hai?

SELECT dish_name,
       MAX(`price_(inr)`) AS pe
FROM swiggeyy.swiggeyy_omm
GROUP BY dish_name
ORDER BY pe desc limit 1;


-- 5️⃣ Average price (INR) per dish calculate karo
SELECT dish_name,
       avg(`price_(inr)`) AS pe
FROM swiggeyy.swiggeyy_omm
GROUP BY dish_name
ORDER BY pe desc ;



-- 6️⃣ Kitne unique cities hain dataset me?

SELECT city, COUNT(*) AS total_rows
FROM swiggeyy.swiggeyy_omm
GROUP BY city;

-- 7️⃣ Kitne unique restaurants hain?

SELECT restaurant_name, COUNT(*) AS total_rows
FROM swiggeyy.swiggeyy_omm
GROUP BY restaurant_name;


