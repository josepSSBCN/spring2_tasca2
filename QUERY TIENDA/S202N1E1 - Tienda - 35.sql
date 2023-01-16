/* Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT fab.nombre
	FROM fabricante fab
		LEFT JOIN producto pro ON fab.codigo = pro.codigo_fabricante
WHERE ISNULL(fab.codigo = pro.codigo_fabricante);

