/* Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament 
amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells 
fabricants que no tenen productes associats.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT *
FROM fabricante fab
	LEFT JOIN producto pro ON fab.codigo = pro.codigo_fabricante;

