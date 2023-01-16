/* Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals 
contingui el caràcter w en el seu nom. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMBRE PRODUCTO',
	pro.precio AS 'PRECIO PRODUCTO'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre like '%w%';

