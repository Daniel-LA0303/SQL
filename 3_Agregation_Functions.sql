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






