/* Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els 
productes que tinguin un preu major o igual a 180 €. Ordena el resultat, en primer lloc, 
pel preu (en ordre descendent) i, en segon lloc, pel nom (en ordre ascendent).*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMBRE PRODUCTO',
	pro.precio AS 'PRECIO PRODUCTO',
    fab.nombre AS 'NOMBRE FABRICANTE'
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE pro.precio >= 180
ORDER BY pro.precio ASC, pro.nombre DESC;

