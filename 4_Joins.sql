-- JOINS

-- 1. INNER JOIN
select * from film f inner join language l on (f.language_id = l.language_id);

select film_id as id, title, description from film f inner join language l on (f.language_id = l.language_id);

-- 2. LEFT JOIN
select * from customer;
select * from actor;
select * from customer c right join actor a on (c.last_name = a.last_name);
select c.customer_id as id, c.first_name as name from customer c left join actor a on (c.last_name = a.last_name);

-- 3. RIGHT JOIN
select a.actor_id, a.first_name as actor_name, a.last_name as actor_last_name, 
c.customer_id, c.first_name as customer_name, c.last_name as customer_last_name
from actor a right join customer c on (a.last_name = c.last_name);


-- 4. FULL JOIN
select a.actor_id, a.first_name as actor_name, a.last_name as actor_last_name,
c.customer_id, c.first_name as customer_name, c.last_name as customer_last_name
from actor a full join customer c on (a.last_name = c.last_name);

-- 5 Alias
select a.actor_id, a.first_name as actor_name, a.last_name, c.customer_id, c.first_name as customer_name
from actor as a left join customer as c 
on (a.last_name = c.last_name) 
where a.last_name like 'A%';


-- INNER JOIN 
-- Selecciona el nombre del cliente y la ciudad en la que vive desde las tablas customer y address,
-- respectivamente, utilizando un inner join en city_id
select * from customer c;
select * from address a;
-- select * from film f inner join language l on (f.language_id = l.language_id);
select c.first_name as name, ci.city
	from customer c 
	inner join address a on (c.address_id = a.address_id) 
	inner join city ci on (a.city_id = ci.city_id); 

-- Selecciona el titulo de la pelicula y la categoria a la que  pertenece desde las tablas film
-- y category, respecticamente, utilizando un inner join en category_id
select * from film f; 
select * from category c;
select * from film_category fc;
select f.title as title, c.name  from film f 
	inner join film_category fc on (f.film_id = fc.film_id)
	inner join category c on (fc.category_id = c.category_id);

-- Selecciona el nombre del actor y el titulo de la pelicula en la que ha actuado
-- desde tablas actor y film, respectivamente, utilizando
select * from actor;
select * from film f;
select * from film_actor fa ;
select a.first_name, f.title from actor a 
	inner join film_actor fa on (a.actor_id = fa.actor_id) 
	inner join film f on (f.film_id = fa.film_id);


-- LEFT JOIN
-- Selecciona el nombre del cliente y la ciudad en la que vive desde las tbalas customer y addess,
-- respectivamente, utilizando un LEFT JOIN en city id
select c.first_name as name, ci.city as city_name from customer c 
	left join address a on (c.address_id  = a.address_id)
	left join city ci on (ci.city_id = a.city_id); 

-- Selecciona el titulo de la pelicula y la categoria a la que pertenece desde las tablas
-- film y category, respectivamente, utilizando un left join en category_id
select f.title as name_film, c.name as category from category c 
	left join film_category fc on (fc.category_id = c.category_id) 
	left join film f on (fc.film_id = f.film_id);

-- Selecciona el nombre del actor y el titulo de la pelicula en la que actuado
-- desde las tablas actor y film_actor, respectivamente, utilizando un left join en film_id
select a.first_name as name_actor, f.title as title_film from film f 
	left join film_actor fa on (fa.film_id = f.film_id)
	left join actor a on (a.actor_id = fa.actor_id);

-- RIGHT JOIN
-- Selecciona el nombre del cliente y la ciudad en la que vive desde las tablas customer y address
-- respectivamente, utilizando  un right join en city_id
select c.first_name as name, ci.city as city_name from customer c 
	right join address a on (c.address_id = a.address_id)
	right join city ci on (ci.city_id = a.city_id)
	
-- Selecciona el titulo de la pelicula y la categoria a la que pertenece desde las 
-- tablas film y category, respectivamente, utilizando un right join en category_id
select f.title as name_film, c.name as name_category from film f 
	right join film_category fc on (f.film_id = fc.film_id)
	right join category c on (c.category_id = fc.category_id);
	
-- Selecciona el nombre del actor y el titulo de la pelicula en la que ha actuado 
-- desde las tablas actor y film_actor, respectivamente, utilizando un right join en fiml_id
select a.first_name as name_actor, f.title name_film from actor a 
	right join film_actor fa on (fa.actor_id = a.actor_id)
	right join film f on (fa.film_id = f.film_id);




