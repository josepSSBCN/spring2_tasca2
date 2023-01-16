/* Llista el codi dels fabricants que tenen productes en la taula producto, eliminant 
els codis que apareixen repetits. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
GROUP BY fab.codigo
ORDER BY fab.nombre;
