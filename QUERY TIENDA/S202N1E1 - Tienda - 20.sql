/* Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT pro.nombre
FROM producto pro
LEFT JOIN fabricante fab ON fab.codigo = pro.codigo_fabricante
WHERE fab.codigo = 2;
