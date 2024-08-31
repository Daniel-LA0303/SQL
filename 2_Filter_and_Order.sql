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
-- Operadores relacioneles
-- Selecciona todos los actores cuyo actor_id sea mayor a 50
select * from actor where actor_id > 50;

-- Selecciona todas las peliculas cuyo rental_duration sea igual a 6 dias
select * from  film where rental_duration = 6;

-- Selecciona todos los clientes cuyo customer_id sea menor o igual a 100
select * from customer c where c.customer_id <= 100;


-- Operadores logicos
-- Sellecciona todos los actores cuyo actor_id sea mayor a 50 y menor a 100
select * from actor a where a.actor_id > 50 and a.actor_id < 100;

-- Selecciona todas las peliculas cuyo rental_duration sea igual a 6 dias o replacement_cost sea mayor a 20
select * from film f where f.rental_duration = 6 or f.replacement_cost > 20; 

-- Selecciona todos los clientes cuyo first_name empiece con 'A'  y cuyo customer_id sea menor a 300
select * from customer c where c.first_name like 'A%' and c.customer_id < 300;  


-- Operador IN
-- Selecciona todos los actores cuyo actor_id este en el conjunto (1, 3, 5, 7, 9)
select * from actor a where a.actor_id in (1, 3, 5, 7, 9);

-- Selecciona todas las peliculas  cuyo rating este en ('PG', 'PG-13', 'R')
select * from film f where f.rating in ('PG', 'PG-13', 'R') order by f.rating asc;

-- Selecciona todos los clientes cuyo customer_id este en (10, 20, 30, 40, 50)
select * from customer c where c.customer_id in (10, 20, 30, 40, 50);


-- Operador Order by
-- Selecciona todos los actores y ordenalos por last_name de forma asc
select * from actor a order by a.last_name asc;

-- Selecciona todos los actores y ordenalos por first_name de forma desc
select * from actor a order by a.first_name desc;

-- Selecciona el nombre de las peliculas y ordenalas por title en orden asc
select * from film f order by f.title  asc;


-- Operador Between
-- Selecciona todos los actores cuyo actor_id este entre 20 y 40
select * from actor a where a.actor_id between 20 and 40;

-- Selecciona todas las peliculas cuyo length este entre 90 y 120 min
select * from film f where f.`length` between 90 and 120;

-- Selecicona todos los clientes cuyo customer_id este entre 50 y 100
select * from customer c where c.customer_id between 50 and 100;

-- Operador Like
-- Selecciona todos los actores cuyo first_name empiece con 'A'
select * from actor a where a.first_name like 'A%'; 

-- Selecciona todas las peliculas cuyo title contenga la palabra Love
select * from film f where f.title like '%Love%'; 

-- Selecciona todos los clientes cuyo last_name termine en 'son'
select * from customer c where c.last_name like '%son';


-- Temas combinados
-- Selecciona todos los actores cuyo first_name empiece con 'A' y ordenalos por last_lame 
select * from actor a where a.first_name like 'A%' order by a.last_name asc;

-- Selecciona todas las peliculas lanzadas entre 2000 y 2006 y ordenalas por title
select * from film f where f.release_year between 2000 and 2006 order by f.title desc;

-- Selecciona los clientes cuyo first_name este en ('MARY', 'PATRICIA', 'LINDA') y ordénalos por last_name.
select * from customer c where c.first_name in  ('MARY', 'PATRICIA', 'LINDA') order by c.last_name desc;




















