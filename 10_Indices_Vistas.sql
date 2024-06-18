-- 10. Indices y Vistas

-- 10.1 Indices
CREATE INDEX idx_last_name ON actor (last_name);


-- 10.2 Vistas
create view ingresos_por_genero as
	select name, sum(amount)
	from category 
		inner join film_category 
			on category.category_id = film_category.category_id 
		inner join inventory 
			on film_category.film_id = inventory.film_id 
		inner join rental
			on inventory.inventory_id = rental.inventory_id 
		inner join payment 
			on rental.rental_id = payment.rental_id 
	group by name 
	order by sum(amount) desc limit 5;
	
select * from ingresos_por_genero;

-- drop view ingresos_por_genero;