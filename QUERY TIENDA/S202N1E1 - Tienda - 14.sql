/* Llista els noms dels fabricants ordenats de manera descendent. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM fabricante fab
ORDER BY fab.nombre DESC;
