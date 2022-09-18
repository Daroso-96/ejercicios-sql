--Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.
--select store_id, first_name ,last_name  from customer 
--Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.
--select store_id as tienda, first_name as nombre ,last_name as apellido  from customer 
--Ordena de manera descendente la columna Apellido
--select last_name  from customer order by last_name desc
--Consulta la tabla payment de la base de datos sakila.
--select * from payment 
--¿Cuál es la cantidad mas baja y mas alta de la columna amount?
--select MAX(amount) as cantidad_alta  from payment ;
--select min(amount) as cantidad_baja  from payment 
/*
select * from city where country_id = 102;
select * from inventory where film_id > 50;
select * from payment where amount < 3;
select * from staff where staff_id <> 2;
select * from "language"  where  UPPER(name)  like 'G%'*/

--select store_id as Tienda, first_name as Nombre, last_name as Apellido from customer order by Apellido desc
--select distinct amount from payment order by amount asc

--Consulta description, release_year de la tabla film de la base de datos sakila.
--select title, description,release_year  from film where title = 'IMPACT ALADDIN'
--Filtra la información donde title sea IMPACT ALADDIN
--select * from film  where title = 'IMPACT ALADDIN'
--Consulta la tabla payment de la base de datos sakila.
--select * from payment 
--Filtra la información donde amount sea mayor a 0.99.
--select * from payment where amount > 0.99
-- payment Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.
--select * from payment  where customer_id = 36 and amount > 0.99 and staff_id = 1
 --rental Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100.
--select * from rental where staff_id = 1 and customer_id > 250 and inventory_id < 100

------------------
-- Numero de peliculas de cada rating
--select rating, count(*) as num_peliculas from film  group by rating
-- Cuantas peliculas ha realizado el actor ED CHASE
/*select
	first_name ,
	last_name ,
	count(*)
from
	actor a,
	film f ,
	film_actor fa
where
	f.film_id = fa.film_id and a.actor_id = fa.actor_id 
	and first_name = 'ED' and last_name = 'CHASE'
	group by first_name ,last_name */
-- Media de duracion de las peliculas cada categoria.
/*
select co.country, c.city, a.address, a.address2, s.first_name, s.last_name
from country co, city c, address a, staff s
where co.country_id = c.country_id and a.city_id = c.city_id and s.address_id = a.address_id*/
---
/*
Consulta la tabla film_text de la base de datos sakila.
Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT
select * from film_text ft where title in('ACE GOLDFINGER', 'AFFAIR PREJUDICE')
*/
/*
Consulta la tabla city de la base de datos sakila.
Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.
select * from city where city in ('Chiayi', ' Dongying', 'Fukuyama', 'Kilis')
*/
--select * from  payment where (amount  between 2.99 and 4.99 ) and staff_id = 2 and customer_id in (1,2)
--select * from film where (rental_rate between 0.99 and 2.99 )and length <=50 and replacement_cost < 20
/*Consulta la tabla film de la base de datos sakila.
Filtra la información donde release_year sea igual a 2006  y title empiece con ALI.
select * from film where release_year = 2006 and title like 'ALI%';

*/
--Inner join
--select f.title, f.description ,f.release_year,f.language_id,l.name  from film f inner join "language" l on (f.language_id = l.language_id)
--select a.address as Direccion, c.city as Ciudad from address a inner join city c on (a.city_id = c.city_id)
--select  a.address,c.city,co.country from address a  inner join city c on (a.city_id = c.city_id) inner join country co on (c.country_id = co.country_id)
/*select 

c.first_name,

a.address,

s.store_id

from customer c

left join store s on (c.store_id = s.store_id)

left join address a on (c.address_id = a.address_id)*/
/* select r.rental_id,

s.first_name from rental r

inner join staff s on (r.staff_id = s.staff_id)*/
--Consulta la tabla rental de la base de datos sakila. Realiza un COUNT de  la columna rental_id
--select count(rental_id) from rental 
--Consulta la tabla payment de la base de datos sakila.Realiza un MAX de  la columna amount
--select MAX(amount)  from payment 
/* SELECT customer_id, MAX(rental_date)

FROM rental

GROUP BY customer_id;*/

--Consulta la tabla actor de la base de datos sakila. Realiza un COUNT de  last_name Mostrar cuando el COUNT sea mayor de 2
/*SELECT last_name, COUNT(*)

FROM actor

GROUP BY last_name

HAVING COUNT(*) > 3;*/
