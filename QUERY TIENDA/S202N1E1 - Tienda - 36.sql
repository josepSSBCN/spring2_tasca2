/* Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.*/

-- DDBB USED
USE tienda;

-- VARIABLES DEFINITION
SET @fabricante = 'Lenovo';

-- QUERY BODY
SELECT pro.*
FROM fabricante fab
		LEFT JOIN producto pro ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre like @fabricante;

