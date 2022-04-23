create table customer (
	id int primary key,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	city varchar(100),
	country varchar(100),
	phone varchar(100)         
	);
	
	create table supplier (
		id int primary key,
		company_name varchar(100) not null,
		contact_name varchar(100),
		contact_title varchar(100),
		city varchar(100),
		country varchar(100),
		phone varchar(100),
		fax varchar(100)
		);
		
		create table product (
			id int primary key,
			product_name varchar(100) not null,
			unit_price decimal(12,2) default 0,
			package varchar(100),
			is_discontinued boolean default false,
			supplier_id int references supplier(id) not null
			);
			
			create table orders (
				id int primary key,
				order_date timestamp default now(),
				order_number varchar(100),
				total_amount decimal(12,2) default 0,
				customer_id int references customer(id) not null
				);
				
				create table order_item (
					id int primary key,
					unit_price decimal(12,2) default 0,
					quantity int default 1,
					order_id int references orders(id) not null,
					product_id int references product(id) not null
					);
					
					

1) Вывести всех клиентов из страны Canada
select*from customer where country = 'Canada';

2) Вывести все страны клиентов
select country from customer;

3) Вывести количество всех заказов
select count(*) from orders;

4) Вывести максимальную стоимость заказа
select max(total_amount) from orders;

5) Найти сумму всех заказов
select sum(total_amount) from orders;

6) Найти сумму всех заказов за 2014 год
select sum(total_amount) from orders where order_date = '2014-01-11';

7) Найти среднюю стоимость всех заказов
select round(avg(total_amount)) from orders;

8) Найти среднюю стоимость всех заказов по каждому клиенту
select id as customer_id,first_name as customer_first_name, avarage_amount 
from customer c join(select customer_id,round( avg(total_amount)) as avarage_amount 
from orders  group by customer_id) as o on c.id=o.customer_id order by avarage_amount desc;

9) Найти всех клиентов, которые живут в Бразилии или Испании
select first_name, country from customer where country in('Brazil', 'Spain');

10 Найти все заказы между 2013ым и 2014ым годами, которые стоили меньше 100.00$
select * from orders where order_date between '2013-09-28' and '2014-01-11' and total_amount <100;

11) Найти всех клиентов, которые в одной из стран: Испания, Италия, Германия, Франция. Отсортируйте по странам
select*from customer where country in('Spain','Italia','Germany','France') order by country;

12) Найти все страны клиентов, страны которых содержаться в таблице поставщиков
select country, count(*)  from supplier group by country;

13) Найти всех клиентов, имена которых начинаются на ‘Jo’
select first_name from customer where first_name ilike 'jo%';

14) Найти всех клиентов, имена которых заканчиваются на ‘a’ и имеют длину ровно 4 символа
select first_name from customer where first_name like '___a';

15) Найти количество клиентов по странам
select country, count(*) as amount_of_customers  from customer group by country;

16) Найти количество клиентов по странам. Вывести в порядке убывания
select country, count(*) as amount_of_customers  from customer group by country order by count(*) desc;

17) Найти общую сумму стоимости заказов и количество заказов по каждому клиенту (customer_id). Отсортировать по сумме
select id as customer_id,first_name as customer_first_name, sum_of_all_orders,amount_of_orders 
from customer c join(select customer_id, sum(total_amount) as sum_of_all_orders,count(total_amount) 
as amount_of_orders from orders group by customer_id) as o on c.id=o.customer_id order by sum_of_all_orders desc;

18) Найти общую сумму стоимости заказов и количество заказов по каждому клиенту (customer_id), у которых общее количество заказов больше 20ти
select id as customer_id,first_name as customer_first_name, sum_of_all_orders,amount_of_orders from customer c 
join(select customer_id, sum(total_amount) as sum_of_all_orders,count(total_amount>10) as amount_of_orders 
from orders  group by customer_id) as o on c.id=o.customer_id where amount_of_orders>20 order by amount_of_orders desc;	








1 / 2


