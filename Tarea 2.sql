--Qu� contactos de proveedores tienen la posici�n de sales representative?

select s.contact_name from suppliers s where s.contact_title='Sales Representative';

--Qu� contactos de proveedores no son marketing managers?

select s.contact_name from suppliers s where s.contact_title <>'Marketing Manager';

--Cuales �rdenes no vienen de clientes en Estados Unidos?

select c.customer_id ,c.contact_name, c.country from customers c  where c.country <>'USA';

--Qu� productos de los que transportamos son quesos?

select p.product_name, p.product_id from products p where p.category_id =4;

--Qu� ordenes van a B�lgica o Francia?

select o2.order_id, o2.ship_country from orders o2  where o2.ship_country ='Belgium' or o2.ship_country ='France';

--Qu� �rdenes van a LATAM?

select distinct o.ship_country from orders o 

select o2.order_id, o2.ship_country from orders o2  where o2.ship_country ='Argentina' or o2.ship_country ='Venezuela'or 
o2.ship_country ='Mexico' or o2.ship_country ='Brazil';

--Qu� �rdenes no van a LATAM?

select o2.order_id, o2.ship_country from orders o2  where o2.ship_country <>'Argentina' and o2.ship_country <> 'Venezuela'and 
o2.ship_country <>'Mexico' and o2.ship_country <>'Brazil';

--Necesitamos los nombres completos de los empleados, nombres y apellidos unidos en un mismo registro

select e.first_name, e.last_name from employees e;

--Cu�nta lana tenemos en inventario?

select sum((od.unit_price*od.quantity)-((od.unit_price*od.quantity*od.discount)))from order_details od 

--Cuantos clientes tenemos de cada pa�s?

select count(c.country), c.country from customers c group by c.country 