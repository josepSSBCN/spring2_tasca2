/* Llista els noms i els preus de tots els productes de la taula producto, convertint els 
noms a minúscula. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT LOWER(pro.nombre) AS 'NOM DE PRODUCTO',
	pro.precio AS 'PREUS'    
FROM producto pro;
