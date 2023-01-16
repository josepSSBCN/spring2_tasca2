/* Llista el nom i el preu del producte més car. (Utilitza solament les clàusules 
ORDER BY i LIMIT). NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT * 
FROM producto
ORDER BY precio DESC
LIMIT 1;