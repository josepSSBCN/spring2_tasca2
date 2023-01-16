/* Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més 
car del fabricant Lenovo */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Lenovo';

-- QUERY BODY
SELECT pro.*
FROM producto pro
WHERE pro.precio >= (SELECT pro.precio
					FROM producto pro
						LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
					WHERE fab.nombre LIKE @fabricant
					GROUP BY pro.codigo 
					order by pro.precio ASC LIMIT 1)
;


