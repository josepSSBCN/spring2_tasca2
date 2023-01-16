/* Llista els noms i els preus de tots els productes de la taula producto, 
truncant el valor del preu per a mostrar-lo sense cap xifra decimal. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMS',
	TRUNCATE(pro.precio, 0) AS 'PREU TRUNCAT'
FROM producto pro;
