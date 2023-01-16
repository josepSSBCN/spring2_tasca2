/* Llista el nom del producte més car del fabricant Lenovo. */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Lenovo';

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre LIKE @fabricante
GROUP BY pro.codigo 
order by pro.precio DESC LIMIT 1;


