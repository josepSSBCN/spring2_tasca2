/* Llista els noms dels productes ordenats, en primer lloc, 
pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	fab.nombre
FROM fabricante fab
ORDER BY fab.nombre DESC;
