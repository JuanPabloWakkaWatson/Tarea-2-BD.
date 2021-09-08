--Qué contactos de proveedores tienen la posición de sales representative?

select s.contact_name from suppliers s where s.contact_title='Sales Representative';

--Qué contactos de proveedores no son marketing managers?

select s.contact_name from suppliers s where s.contact_title <>'Marketing Manager';

--Cuales órdenes no vienen de clientes en Estados Unidos?

select c.customer_id ,c.contact_name, c.country from customers c  where c.country <>'USA';

--Qué productos de los que transportamos son quesos?

select p.product_name, p.product_id from products p where p.category_id =4;

--Qué ordenes van a Bélgica o Francia?

select o2.order_id, o2.ship_country from orders o2  where o2.ship_country ='Belgium' or o2.ship_country ='France';

--Qué órdenes van a LATAM?

select distinct o.ship_country from orders o 

select o2.order_id, o2.ship_country from orders o2  where o2.ship_country ='Argentina' or o2.ship_country ='Venezuela'or 
o2.ship_country ='Mexico' or o2.ship_country ='Brazil';

--Qué órdenes no van a LATAM?

select o2.order_id, o2.ship_country from orders o2  where o2.ship_country <>'Argentina' and o2.ship_country <> 'Venezuela'and 
o2.ship_country <>'Mexico' and o2.ship_country <>'Brazil';

--Necesitamos los nombres completos de los empleados, nombres y apellidos unidos en un mismo registro

select e.first_name, e.last_name from employees e;

--Cuánta lana tenemos en inventario?

select sum((od.unit_price*od.quantity)-((od.unit_price*od.quantity*od.discount)))from order_details od 

--Cuantos clientes tenemos de cada país?

select count(c.country), c.country from customers c group by c.country 