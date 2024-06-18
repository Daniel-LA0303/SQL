-- 7. Funciones de texto

-- 7.1 concat
select *, concat(first_name, " ", last_name) as complete_name from customer; 

-- 7.2 char_length
select name, char_length(name) as longitud_name from category;

-- 7.3 substring
SELECT 
    actor_id,
    first_name,
    last_name,
    SUBSTRING(first_name, 1, 3) AS first_name_substr
FROM actor;

-- 7.4 round
select *, round(amount, 0) from payment;

-- 7.5 uppercase y lowercase
select customer_id as id, first_name, lower(last_name) as last_lower from customer;

select actor_id as id, upper(first_name) as name_upper from actor;

-- 7.6 case
select * from address;
select address, address2, 
	case when address2 is null then "Campo vacio"
	else "Campo con info"
	end as Comentario
	from address;

-- 7.7 now
SELECT 
    actor_id,
    first_name,
    last_name,
    NOW() AS current_datetime
FROM actor;

-- 7.8 date
SELECT 
    actor_id,
    first_name,
    last_name,
    DATE(NOW()) AS current_datea -- date fromatea la fecha
FROM actor;

-- 7.9 date_format
SELECT 
    actor_id,
    first_name,
    last_name,
    DATE_FORMAT(NOW(), '%d-%m-%Y') AS formatted_date
FROM actor;

SELECT 
    actor_id,
    first_name,
    last_name,
    NOW() AS current_datetime,
    DATE(NOW()) AS current_datea,
    DATE_FORMAT(NOW(), '%d-%m-%Y') AS formatted_date
FROM actor;




