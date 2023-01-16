/* Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del 
fabricant Lenovo. (Sense usar INNER JOIN). */

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Lenovo';
SET @codigofab = (SELECT fab.codigo 
				FROM fabricante fab
                WHERE fab.nombre LIKE 'Lenovo'
				GROUP BY fab.codigo);

-- QUERY BODY
SELECT pro.*
FROM producto pro
WHERE pro.precio = (SELECT pro.precio
					FROM producto pro
                    WHERE pro.codigo_fabricante = @codigofab
                    ORDER BY pro.precio DESC limit 1);

