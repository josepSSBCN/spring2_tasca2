/* Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT 
    pro.nombre AS 'NOM PRODUCTE',
    pro.precio AS 'PREU €',
    fab.codigo AS 'CODI FABRICANT',
    fab.nombre AS 'NOM FABRICAN'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
ORDER BY pro.precio ASC
LIMIT 1;

