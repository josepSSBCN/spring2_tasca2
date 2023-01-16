/* Retorna una llista de tots els productes del fabricant Lenovo. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT *
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre = 'LENOVO';

