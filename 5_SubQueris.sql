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


