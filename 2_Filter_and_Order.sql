-- Filtrado y ordenamiento

-- 1. Filtrado con operadores relacionales

-- <
select film_id as id, title from film where length < 60;

-- >
select customer_id as id, first_name as name from customer where customer_id > 500;
select customer_id as id, first_name as name from customer where customer_id > 500 order by name asc;

-- = 
select film_id as id title from film where rating = 'PG';

-- >=
select * from rental;
select rental_id as id, rental_date as rentalD from rental where customer_id >= 2;

-- <=
select film_id as id, title from film where length <= 90;

-- <> o !=
select actor_id as id, first_name as name from actor where last_name != 'SMITH';
select actor_id as id, first_name as name from actor where last_name <> 'SMITH';

-- 2. Filtrado con operadores logicos

-- and
select * from country where country = 'Algeria' and country_id=2;

-- or
select * from country  where country = 'Algeria' or country_id=12;
select * from language where language_id = 1 or name = 'German';

-- not
select * from category where not name = 'Action';
select * from film where not (rating = 'PG' or rating = 'R');

-- 3. Ordenamiento con Order by
-- **********************


-- 4. Filtrado con IN
select * from customer where first_name in ('MARY', 'PATRICIA');
select * from film where special_features in ('Trailers', 'Trailers,Deleted Scenes') and rating in ('G', 'R');
select * from category where name not in ('Action', 'Animation');


-- 5. Filtrado con BETWEEN
select * from rental where customer_id between 300 and 350;
select * from payment where amount between 3 and 5;
select * from payment where amount not between 3 and 5 order by amount asc;


-- 6. FIltrado con LIKE
select * from actor where first_name like 'A%';
select * from actor where first_name like '%A';
select * from actor where first_name like '%NE%';
select * from actor where first_name like 'A%E';


-- Ejercicios


