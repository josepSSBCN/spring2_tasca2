/*Llista els noms i els preus de tots els productes de la taula producto,
convertint els noms a majúscula.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT UPPER(pro.nombre) AS 'NOM DE PRODUCTO',
	pro.precio AS 'PREUS'    
FROM producto pro;
