/* Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels 
quals acabi per la vocal e.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMBRE PRODUCTO',
	pro.precio AS 'PRECIO PRODUCTO'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE RIGHT(fab.nombre,1) = 'e';

