/* Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que 
tenen productes associats en la base de dades.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT fab.codigo AS  'CODIGO FABRICANTE',
    fab.nombre AS 'NOMBRE FABRICANTE'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
GROUP BY fab.codigo;

