
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

-- select
-- Selecciona el primer nombre y el apellido de la tabla actor
select first_name, last_name from actor;

-- Selecciona el nombre de las pelicuals y su descripcion de la tabla film
select title, description from film; 

-- Selecciona el nombre completo de los clientes concatenando first_name y last_name de la tabla customer
select concat(first_name, " ", last_name) as name from customer;

-- order by
-- Selecciona todos los actores y ordenalos por last_name de forma asc
select * from actor order by last_name asc;

-- Selecciona todos los actores y ordenalos por first_name de forma des
select * from actor order by first_name desc;

-- Distinct
-- Selecciona los distintos nombre de ciudades de la tabla city
select distinct (city) from city;

-- Selecciona las diferentes categorias de peliculas de la tabla category
select distinct (name) from category;

