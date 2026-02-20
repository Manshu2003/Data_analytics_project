select *from swiggy.swiggy_om;

-- 1️⃣ Har Location me total orders kitni hui hain?
select location, count(*) as orders from swiggy.swiggy_om group by location 
order by orders desc;

-- 3️⃣ Top 10 restaurants jinke sabse zyada orders hain
SELECT Restaurant_Name, COUNT(*) AS orders
FROM swiggy.swiggy_om
GROUP BY Restaurant_Name
ORDER BY orders DESC;


ALTER TABLE swiggy.swiggy_om
CHANGE `Restaurant Name` Restaurant_Name VARCHAR(255);


-- 4️⃣ Sabse mehenga dish kaunsa hai?


-- 5️⃣ Average price (INR) per dish calculate karo
-- 6️⃣ Kitne unique cities hain dataset me?
-- 7️⃣ Kitne unique restaurants hain?