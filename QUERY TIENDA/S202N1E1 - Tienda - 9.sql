/* Llista els noms i els preus de tots els productes de la taula producto, 
arrodonint el valor del preu. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOMS',
	FORMAT(pro.precio, 0) AS 'PREU ARRODONIT'
FROM producto pro;
