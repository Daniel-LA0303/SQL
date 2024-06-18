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