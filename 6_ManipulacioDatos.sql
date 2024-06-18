-- 6. Manipulacion de datos

-- 6.1 Insert into
select * from country;
select * from city;
select * from city where country_id = 60 order by city asc;
insert into city(city, country_id) values ('CMDX', 60);


-- 6.2 Update
update city set city = 'Cuernavaca 2' where city_id = 131;


-- 6.3 Delete (se recomienda no eliminar)

-- 6.4 Alter table (se recomienda no usarlo)
