/* Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. 
La quarta fila també s'ha d'incloure en la resposta. */

-- DDBB USED
USE tienda;

-- QUERY BODY
SELECT * FROM fabricante LIMIT 3,2;