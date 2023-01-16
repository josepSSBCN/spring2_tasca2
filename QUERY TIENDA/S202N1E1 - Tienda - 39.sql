/* Llista el nom del producte més barat del fabricant Hewlett-Packard. */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Hewlett-Packard';

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre LIKE @fabricante
GROUP BY pro.codigo 
order by pro.precio ASC LIMIT 1;


