/* Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i 
nom del fabricador, de tots els productes de la base de dades. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
	pro.codigo AS 'CODI PRODUCTE',
    pro.nombre AS 'NOM PRODUCTE',
    fab.codigo AS 'CODI FABRICANT',
    fab.nombre AS 'NOM FABRICAN'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY pro.codigo ASC;

