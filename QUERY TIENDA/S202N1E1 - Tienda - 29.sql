/*  Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. 
Fent servir l'operador IN.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.*
FROM producto pro
	LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.nombre IN ('ASUS', 'Hewlett-Packard', 'Seagate');

