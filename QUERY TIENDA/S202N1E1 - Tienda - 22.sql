/* Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes 
de la base de dades. Ordena el resultat pel nom del fabricant, per ordre alfabètic. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOM PRODUCTE',
	pro.precio AS 'PREU PRODUCTE',
    fab.nombre AS 'NOM FABRICAN'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY fab.nombre ASC;

