
-- 1. Sentencias Basicas

-- 1.1 Sentencia select

select * from actor;

select * from address;

select * from category;

select * from language;

select * from country;

select * from rental;

select * from film; 

select * from customer;

select * from city;

-- Seleccion de n columnas con renombramiento de columna
select name as nombre from category;

select category_id as id, name as nameCategory, last_update as updateD from category;

-- 1.2 Sentencia Distinct 
select distinct (store_id) from customer;

select distinct (name) from category;

select distinct (name) from language;

-- 1.3 Sentencia Order by
select * from country order by country desc;

select * from country order by country asc;

select * from actor order by first_name asc;

select * from actor order by first_name desc;

-- 1.4 Sentencia Where
select * from actor where first_name = 'Will';

select * from country where country_id = 98;

select rental_date as rentalDate, return_date as returnDate from rental where customer_id = 267;

select * from inventory where film_id < 10;



-- ************* EJERCICIOS ****************

-- SELECT
-- 1. Selecciona el primer nombre y el apellido de la tabla actor
select first_name, last_name from actor;

-- 2. Selecciona el nombre de las pelicuals y su descripcion de la tabla film
select title, description from film; 

-- 3. Selecciona el nombre completo de los clientes concatenando first_name y last_name de la tabla customer
select concat(first_name, " ", last_name) as name from customer;


-- ORDER BY
-- 1. Selecciona todos los actores y ordenalos por last_name de forma asc
select * from actor order by last_name asc;

-- 2. Selecciona todos los actores y ordenalos por first_name de forma des
select * from actor order by first_name desc;

-- 3. Selecciona el nombre de las peliculas y ordenalas por title en orden asc
select * from film order by title asc;

-- DISTINCT
-- 1. Selecciona los distintos nombre de ciudades de la tabla city
select distinct (city) from city;

-- 2. Selecciona las diferentes categorias de peliculas de la tabla category
select distinct (name) from category;

-- 3. Selecciona los diferentes nombres de los actores
select distinct (first_name) as name from actor;


-- WHERE
-- 1. Selecciona todos los actores cuyo apellido sea 'Neeson'
select * from actor where last_name = 'Neeson';

-- 2. Selecciona todas las peliculas que fueron lanzadas en 2006 y ordenalas por title asc
select * from film where release_year = 2006;

-- 3. Slecciona todos los clientes cuyo nombre empiece con 'A'
select * from customer where first_name like 'A%';


-- WHERE Y ORDER BY
-- 1. Selecciona todos los actores cuyo apellido sea 'Neeson' y ordenalos por first_name
select * from actor where last_name = 'Neeson' order by first_name asc;

-- 2. Selecciona todas las peliculas lanzadas en 2006 y ordenalas por title
select * from film where release_year = 2006 order by title asc;

-- 3. Selecciona todas los clientes cuyo nombre empiece con 'A' y ordenalos por last_name
select * from customer where first_name like 'A%' order by last_name desc;


-- WHERE, ORDER BY, DISTINCT Y SELECT
-- 1. Selecciona los diferentes nombres de actores cuyo apellido sea 'Nesson' y ordenalos por fisrt name
select * from actor where last_name = 'Neeson' order by first_name desc;

-- 2. Selecciona las distintas lenguas de las peliculas lanzadas en el año 2006 y ordenalas por title
select language_id  from film where release_year = 2006 order by title asc;
select l.name, f.title  from film f inner join language l on (f.language_id = l.language_id) order by f.title desc;

-- 3. Selecciona las diferentes categorias de peliculas con una duracion mayor a 120 minutos y ordenalas por name

select * from film;
select * from category;
select * from film_category;


select c.name, f.title  
from film f 
join film_category fc on (f.film_id = fc.film_id) 
join category c on (fc.category_id = c.category_id) 
where f.length > 120 
order by f.title asc; 




