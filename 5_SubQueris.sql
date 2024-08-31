-- 1. Ejemplos basicos

-- 1.1 subconsulta 
-- traer el campo title a partir de tres condiciones
select title from film
	where title like 'K%' or title like 'Q%'
	and title in (
		select title from film where language_id = 'English'
	);

-- 1.2 subconsulta anidada
-- o retorna titulos que empiecen con K o Q y ademas que esten en ingles
select * from language;
select * from film;
select title from film
	where title like 'K%' or title like 'Q%'
	and title in (
		select title from film where language_id in -- return all films in english
		(select language_id from language where name = 'English') -- return id = 1
	);

-- 2. Subconsultas con palabras clave where disticn etc

-- 2.1 
select * from customer;
select * from actor;
select distinct * from customer as c where c.active = 1; -- solo trae lo de 1
select a.actor_id, a.first_name as actor_name, a.last_name as actor_last_name
	from actor as a
	where a.last_name in(select distinct c.last_name from customer as c where c.active = 1);
	
-- 2.2 
select * from customer;
select * from actor;
select * from rental;
SELECT 
    a.actor_id AS actor_id,
    a.first_name AS actor_first_name,
    a.last_name AS actor_last_name2
FROM actor AS a
WHERE EXISTS (
    SELECT 1 -- 1represnata si almenos existe 1 fila
    FROM customer AS c
    JOIN rental AS r ON c.customer_id = r.customer_id
    WHERE c.last_name = a.last_name
);


-- SUB QUERIES WITH WHERE
-- Encuentra los cleintes que han alquilado peliculas que duran mas de las duracion promedio de todas las peliculas
SELECT * FROM customer;

select * from payment;
select * from rental r;
select * from inventory i;

-- payment -> rental_id ->  inventory_id -> film_id
select * from film f ;
select avg(f.`length`)  from film f ;
select  from film f where f.`length` > (select avg(f2.`length`) from film f2);
-- RESPUESTA
select distinct  c.first_name as name, c.email as email, f.title as name_film, p.amount  from payment p 
	left join customer c on (c.customer_id = p.customer_id)
	left join rental r on (r.rental_id = p.rental_id)
	left join inventory i on (r.inventory_id = i.inventory_id)
	left join film f on (f.film_id = i.film_id)
	where f.`length` > (select avg(f2.`length`) from film f2)
	order by name desc;


select p.customer_id, count(*) ventas  from payment p group by p.customer_id having count(*) > 40 ;


-- Muestra las peliculas que tienen una venta superior a la promedio de todas las peliculas
select * from film_text ft ;

select avg(f.rental_rate) from film f;
select f.title as name_film, f.rental_rate as rate_film from film f where f.rental_rate > (select avg(f2.rental_rate) from film f2) ;

-- Encuentra los clientes que han alquilado peliculas de la categoria mas popular entre todas las categorias
select c.name as category, 
	count(*) peliculas  
	from film_category fc 
	inner join category c on(fc.category_id = c.category_id) 
	group by fc.category_id 
	order by peliculas desc limit 1;

select * from film f ;
select * from customer c;
select * from payment p;
select * from rental r ;
select * from inventory i;


select f.title as title, c.name  from film f 
	inner join film_category fc on (f.film_id = fc.film_id)
	inner join category c on (fc.category_id = c.category_id);

-- RESPUEST
select distinct  c.first_name as name, c.email as email, f.title as name_film, p.amount, c2.name as category from payment p 
	inner join customer c on (c.customer_id = p.customer_id)
	inner join rental r on (r.rental_id = p.rental_id)
	inner join inventory i on (r.inventory_id = i.inventory_id)
	inner join film f on (f.film_id = i.film_id)
	inner join film_category fc on (f.film_id = fc.film_id)
	inner join category c2 on (fc.category_id = c2.category_id)
	where c2.name = (
		select c3.name 
		from film_category fc 
		inner join category c3 on(fc.category_id = c3.category_id) 
		group by fc.category_id 
		order by count(*) desc limit 1
	);




