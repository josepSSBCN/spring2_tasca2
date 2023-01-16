/* Llista el codi dels fabricants que tenen productes en la taula producto. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY fab.nombre;
