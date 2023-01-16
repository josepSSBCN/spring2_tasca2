/* Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en 
 cadascun d'ells. Tingui en compte que poden existir departaments que no tenen 
 professors/es associats. Aquests departaments també han d'aparèixer en el llistat. */
-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	dpt.id,
    dpt.nombre,
    count(prf.id_profesor)
FROM profesor prf
	RIGHT JOIN departamento dpt ON dpt.id = prf.id_departamento
GROUP BY dpt.id
ORDER BY count(prf.id_profesor) DESC;