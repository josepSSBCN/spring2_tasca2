/* Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD). */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS NOMBRE,
	FORMAT(pro.precio,2) AS 'PREU €',
    FORMAT(((pro.precio * 1.07)),2) AS 'PREU $'
FROM producto pro;
