/* Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, 
 una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. 
 El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat 
 de major a menor pel nombre de professors/es. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	dpt.id,
    dpt.nombre,
    count(prf.id_profesor)
FROM profesor prf
	LEFT JOIN departamento dpt ON dpt.id = prf.id_departamento
GROUP BY dpt.id
ORDER BY count(prf.id_profesor) DESC;