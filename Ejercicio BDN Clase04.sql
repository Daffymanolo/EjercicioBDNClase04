
-- *** Ejercicios ***

/*
 Basándose en la tabla articulos, obtener:
1- articulos con precio mayor a 10000
2- articulos con precio entre 5000 y 12000 (usar > y <)
3- articulos con precio entre 5000 y 12000 (usar BETWEEN)
4- articulos con precio = 14000 y stock mayor a 3
5- articulos con precio (8000, 500, 45000) no usar IN
6- articulos con precio (8000, 500, 45000) usar IN
7- articulos cuyo precio no sea (12000, 14000, 16000)
8- articulos ordenados por precio de mayor a menor, si hubiera precios iguales,
ordenarlos por nombre
9- todos los articulos, incluyendo una columna denominada "precio con IVA", la cual
deberá tener el monto con el IVA del producto
10- todos los articulos, incluyendo una columna denominada "cantidad de cuotas" y 
otra "valor de cuota", la cantidad es fija y es 3, el valor de la cuota corresponde
a 1/3 del monto con un 5% de interés
11- todos los artículos cuyo nombre termine con a y tenga 21 letras
12- todos los artículos cuyo nombre contenga al menos dos 's'
13- todos los artículos cuyo nombre esté compuesto con al menos cuatro palabras
14- los primeros 5 artículos ordenados por precio en forma descendente
15- los 2 primeros artículos luego del segundo registro ordenado por stock
*/


show databases;

create database cursobd;

use cursobd;


create table articulos(
	codigo int primary key,
    nombre varchar(50) not null,
    precio double not null,
    stock int not null
);


-- 1- articulos con precio mayor a 10000
Select * from articulos where precio > 10000;

-- 2- articulos con precio entre 5000 y 12000 (usar > y <)
select * from articulos where precio > 5000 and precio < 12000;

-- 3- articulos con precio entre 4000 y 6000 (usar BETWEEN)
select * from articulos where precio between 5000 and 12000;

-- 4- articulos con precio = 14000 y stock mayor a 3
select * from articulos where precio = 14000 and stock > 3;

-- 5- articulos con precio (8000, 500, 45000) no usar IN
select * from articulos where precio=8000 or precio=500 or precio=45000;

-- 6- articulos con precio (1200, 2000, 30000) usar IN
select * from articulos where precio in (1200, 2000, 30000);

-- 7- articulos cuyo precio no sea (12000, 14000, 16000)
select * from articulos where precio<>12000 and precio<>14000 and precio<>16000;
select * from articulos where precio not in (12000, 14000, 16000);

-- 8- articulos ordenados por precio de mayor a menor, si hubiera precios iguales,
-- ordenarlos por nombre
select * from articulos order by precio desc, nombre;

-- 9- todos los articulos, incluyendo una columna denominada "precio con IVA", la cual
-- deberá tener el monto con el IVA del producto


-- 10- todos los articulos, incluyendo una columna denominada "cantidad de cuotas" y 
-- otra "valor de cuota", la cantidad es fija y es 3, el valor de la cuota corresponde
-- a 1/3 del monto con un 5% de interés


-- 11- todos los artículos cuyo nombre termine con a y tenga 19 letras
select * from articulos where nombre like '__________________%a';

-- 12- todos los artículos cuyo nombre contenga al menos dos 'L'
select * from articulos where nombre like 'L%';

-- 13- todos los artículos cuyo nombre esté compuesto con al menos dos palabras
select * from articulos where nombre like '%';

-- 14- los primeros 5 artículos ordenados por precio en forma descendente
select * from articulos order by precio desc limit 5;

-- 15- los 2 primeros artículos luego del segundo registro ordenado por stock