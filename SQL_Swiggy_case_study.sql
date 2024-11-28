create table users(
	user_id numeric primary key,
	name varchar(20),
	email varchar(20),
    password varchar(20)
);


create table restaurants(
    r_id numeric primary key,
    r_name varchar(20),
    cuisine varchar(20)
);


create table food(
    f_id numeric primary key,
    f_name varchar(20),
    type varchar(20)
);

create table menu(
    menu_id numeric primary key,
    r_id numeric,
    f_id numeric,
    price numeric
);


create table orders(
    order_id numeric,
    user_id numeric,
    r_id numric,
    amount numeric,
    dat date,
    partner_id, numeric,
    delivery_time numeric,
    delivery_rating numeric,
    restaurant_rating numeric
);


create table delivery_partner(
    partner_id numeric,
    partner_name varchar(20)
);

id	order_id	f_id
create table order_details(
    id numeric,
    order_id numeric,
    f_id numeric
);

-- Inserting the values
INSERT INTO users (name,	email,	password)
VALUES  (Nitish,	'nitish@gmail.com',	p252h),
        (Khushboo,	'khushboo@gmail.com',	hxn9b),
        (Vartika,	'vartika@gmail.com',	9hu7j),
        (Ankit,	'ankit@gmail.com',	lkko3),
        (Neha,	'neha@gmail.com',	3i7qm),
        (Anupama,	'anupama@gmail.com',   46rdw2),
        (Rishabh,	'rishabh@gmail.com',	4sw123);

insert into restaurants (r_id,	r_name,	cuisine)
values (1,	'dominos',	'Italian'),
       (2,	'kfc',	'American'),
       (3,	'box8',	'North Indian'),
       (4	'Dosa Plaza',	'South Indian'),
       (5	'China Town',	'Chinese');

insert into food (f_id,	f_name,	type)
values  (1,	'Non-veg Pizza',	'Non-veg'),
        (2,	'Veg Pizza',	'Veg'),
        (3,	'Choco Lava cake',	'Veg'),
        (4,	'Chicken Wings',	'Non-veg'),
        (5,	'Chicken Popcorn',	'Non-veg'),
        (6,	'Rice Meal',	'Veg'),
        (7,	'Roti meal',	'Veg'),
        (8,	'Masala Dosa',	'Veg'),
        (9,	'Rava Idli',	'Veg'),
        (10,'Schezwan Noodles',	'Veg'),
        (11, 'Veg Manchurian',	'Veg');

insert into menu(menu_id,	r_id,	f_id,	price)
values  (1,	1,	1,	450),
        (2,	1,	2	400),
        (3,	1,	3,	100),
        (4,	2,	3,	115),
        (5,	2,	4,	230),
        (6,	2,	5,	300),
        (7,	3,	3,	80),
        (8,	3,	6,	160),
        (9,	3,	7,	140),
        (10, 4,	6,	230),
        (11, 4,	8,	180),
        (12, 4,	9,	120),
        (13, 5,	6,	250),
        (14, 5,	10,	220),
        (15, 5,	11,	180);

insert into orders (order_id, user_id	r_id, amount, date, partner_id, delivery_time, delivery_rating, restaurant_rating)
values  (1001,	1,	1,	550	2022-05-10,	1,	25,	5,	3),
        (1002,	1,	2,	415	2022-05-26,	1,	19,	5,	2),
        (1003,	1,	3,	240	2022-06-15,	5,	29,	4),	
        (1004,	1,	3,	240	2022-06-29,	4,	42,	3,	5),
        (1005,	1,	3,	220	2022-07-10,	1,	58,	1,	4),
        (1006,	2,	1,	950	2022-06-10,	2,	16,	5),
        (1007,	2,	2,	530	2022-06-23,	3,	60,	1,	5),
        (1008,	2,	3,	240	2022-07-07,	5,	33,	4,	5),
        (1009,	2,	4,	300	2022-07-17,	4,	41,	1)	,
        (1010,	2,	5,	650	2022-07-31,	1,	67,	1,	4),
        (1011,	3,	1,	450	2022-05-10,	2,	25,	3,	1),
        (1012,	3,	4,	180	2022-05-20,	5,	33,	4,	1),
        (1013,	3,	2,	230	2022-05-30,	4,	45,	3)	,
        (1014,	3,	2,	230	2022-06-11,	2,	55,	1,	2),
        (1015,	3,	2,	230	2022-06-22,	3,	21,	5),	
        (1016,	4,	4,	300	2022-05-15,	3,	31,	5,	5),
        (1017,	4,	4,	300	2022-05-30,	1,	50,	1),	
        (1018,	4,	4,	400	2022-06-15,	2,	40,	3,	5),
        (1019,	4,	5,	400	2022-06-30,	1,	70,	2,	4),
        (1020,	4,	5,	400	2022-07-15,	3,	26,	5,	3),
        (1021,	5,	1,	550	2022-07-01,	5,	22,	2)	,
        (1022,	5,	1,	550	2022-07-08,	1,	34,	5,	1),
        (1023,	5,	2,	645	2022-07-15,	4,	38,	5,	1),
        (1024,	5,	2,	645	2022-07-21,	2,	58,	2,	1),
        (1025,	5,	2,	645	2022-07-28,	2,	44,	4);

insert into delivery_partner(partner_id, partner_name)
values  (1,	'Suresh'),
        (2,	'Amit'),
        (3,	'Lokesh')
        (4,	'Kartik')
        (5,	'Gyandeep');

insert into order_details( id,	order_id,	f_id)
values  (1,	1001,	1),
        (2,	1001,	3),
        (3,	1002,	4),
        (4,	1002,	3),
        (5,	1003,	6),
        (6,	1003,	3),
        (7,	1004,	6),
        (8,	1004,	3),
        (9,	1005,	7),
        (10, 1005	3),
        (11, 1006,	1),
        (12, 1006,	2),
        (13, 1006,	3),
        (14, 1007,	4),
        (15, 1007,	3),
        (16, 1008,	6),
        (17, 1008,	3),
        (18, 1009,	8),
        (19, 1009,	9),
        (20, 1010,	10),
        (21, 1010,	11),
        (22, 1010,	6),
        (23, 1011,	1),
        (24, 1012,	8),
        (25, 1013,	4),
        (26, 1014,	4),
        (27, 1015,	4),
        (28, 1016,	8),
        (29, 1016,	9),
        (30, 1017,	8),
        (31, 1017,	9),
        (32, 1018,	10),
        (33, 1018,	11),
        (34, 1019,	10),
        (35, 1019,	11),
        (36, 1020,	10),
        (37, 1020,	11),
        (38, 1021,	1),
        (39, 1021,	3),
        (40, 1022,	1),
        (41, 1022,	3),
        (42, 1023,	3),
        (43, 1023,	4),
        (44, 1023,	5),
        (45, 1024,	3),
        (46, 1024,	4),
        (47, 1024,	5),
        (48, 1025,	3),
        (49, 1025,	4),
        (50, 1025,	5);


-- 1. Find customers who have never ordered
    select name 
    from users 
    where user_id not in (select user_id from orders)
    
-- 2. Find dish name and the average price of each dish
    select f.f_name, avg(price) as avg_price 
    from menu m
    join food f on m.f_id = f.f_id
    group by m.f_id 

-- 3. Find the top restaurant in terms of the number of orders for a given month 
    select r.r_name, count(*) as count 
    from orders o join restaurants r on o.r_id=r.r_id 
    where monthname(date) like 'june' 
    group by r_id
    order by count desc limit 1

-- 4.  restaurants with monthly sales greater than 500
    select r.r_name, sum(amount) as revenue
    from orders o
    join restaurant r on o.r_id=r.r_id
    where monthname(date) like 'JUNE'
    group by o.revenue
    having revenue > 500

-- 5. Show all orders with order details for a particular customer in a particular date range
    select o.order_id, r.r_name, f.f_name
    from orders o
    join order_details od on o.order_id = od.order_id 
    join food f on od.f_id = f.f_id
    join restaurant r on r.r_id = o.r_id 
    where user_id = (select user_id from users where name like 'Ankit')
    and (date > '2022-07-10' and date < '2022-08-10');

-- 6. Find restaurants with max repeated customers(loyal customers) 
    select r.r_name, count(*) as loyal_customer from
        (select r_id, user_id, order_id as visits
        from orders
        group by r_id, user_id
        having visits > 1
        ) t
    join restaurant r 
    on r.r_id = t.r_id
    group by t.r_id
    order by loyal_customer desc limit 1

-- 7. Month over month revenue growth of swiggy
    select month, ((revenue-prev)/prev)*100 from (
        with sales as 
            (
                select monthname(date) as 'month', sum(amount) as 'revenue'
                from orders group by month
                order by month(date)

            )

        select month, revenue, lag(revenue, 1) over(order by revenue) as prev from  sales
    ) t







