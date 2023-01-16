/* Llista el nom de tots els fabricants en una columna, i en una altra columna
 obtingui en majúscules els dos primers caràcters del nom del fabricant.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT fab.nombre,
	LEFT(fab.nombre, 2) AS '2 CARACTERS DEL NOM'
FROM fabricante fab;
