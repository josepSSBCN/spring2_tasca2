/*Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD). 
Utilitza els següents àlies per a les columnes: nom de producto, euros, dòlars.*/

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre AS 'NOM DE PRODUCTO',
	FORMAT(pro.precio,2) AS 'EUROS',
    FORMAT(((pro.precio * 1.07)),2) AS 'DOLARS'
FROM producto pro;
