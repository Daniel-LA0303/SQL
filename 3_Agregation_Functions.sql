-- Funciones de agregacion

-- 1. Count
select count(*) from address;

-- 2. sum
select sum(amount) from payment;

-- 3. AVG
select avg(amount) from payment;

-- 4. max
select max(length) from film;

-- 5. min 
select min(length) from film;

-- 6. group by and having
select last_name as lastName, count(*) from actor group by last_name;

select * from payment;
select * from customer;

select c.customer_id as id, c.first_name as name,
sum(p.amount) as total from payment p inner join customer c on (c.customer_id = p.customer_id)
group by c.customer_id, c.first_name, c.last_name; 

select last_name, count(*) from actor group by 1 having count(*) > 3;


-- Ejercicios

-- COUNT
-- Cuenta el numero total de actores en tabla actor
select count(*) from actor;

-- Cuenta el numero de pelivulas en la tabla film 
select count(*) from film;

-- Cuenta el numero de clientes en customer
select count(*) from customer;

-- SUM
-- Suma la duracion total de todas las peliculas 
select * from film;
select sum(f.length) from film f;

-- Suma el costo de reemplazo de todas las peliculas
select sum(f.replacement_cost) from film f;

-- Suma el total de pagos en la tabla payment
select * from payment; 
select sum(p.amount) from payment p;


-- AVG
-- Calcula la duracion promedio de todas las pelicuñas
select avg(f.`length`) from film f;

-- Calcula el costo de remplazo promedio  de todas las peliculas
select avg(f.replacement_cost)  from film f;

-- Calcula el pago promedio en la tabla payment
select avg(p.amount) from payment p;

-- MIN
-- Encuentra la duracion minima de todas las peliculas
select min(f.`length`) from film f;

-- Encuentra el costo de remplazo minimo de tdoas las peliculas
select min(f.replacement_cost) from film f;

-- Encuentra el pago minimo en la tabla payment
select min(p.amount) from payment p;

-- MAX
-- Encuentra la duracion maxima de todas las peliculas
select max(f.`length`) from film f;

-- Encuentra el costo de remplazo maximo de todas las peliculas 
select max(f.replacement_cost) from film f;

-- Encuentra el pago maximo en la tabla payment
select max(p.amount) from payment p;

-- GRUOP BY
-- Agrupa las peliculas por rating y cuenta el numero de peliculas en cada grupo
select f.rating as rating , count(*) from film f group by f.rating;

-- Agrupa los clientes por store_id y cuenta el numero de clientes en cada tienda
-- select * from customer c;
select c.store_id as store, count(*)  from customer c group by c.store_id;

-- Agrupa las peliculas por release_year y calcula la duracion promedio de las peliculas en cada año
select f.release_year as year, count(*) from film f group by f.release_year;

-- GROUP BY AND HAVING
-- Agrupa las peliculas por rating y muestra solo los grupos con mas de 200 peliculas
select f.rating, count(*)  from film f group by f.rating having count(*) > 200;

-- Agrupa los clientes por store_id y muestra solo las tiendas con mas de 300 clientes
select c.store_id, count(*)  from customer c group by c.store_id having count(*) > 300;

-- Agrupa las peliculas por release_year y muestra solo los años con una duracion promedio de pelñiculas mayor a 100 minutos
select f.release_year as year, avg(f.`length`)  from film f group by f.release_year having avg(f.`length`) > 100;











