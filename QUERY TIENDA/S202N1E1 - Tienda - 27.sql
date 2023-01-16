/* Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu 
major que 200 €. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre = 'Crucial' AND pro.precio >= 200;

