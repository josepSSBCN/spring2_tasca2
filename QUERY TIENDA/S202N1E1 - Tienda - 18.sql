/* Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules 
ORDER BY i LIMIT). NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT * 
FROM producto
ORDER BY precio ASC
LIMIT 1;