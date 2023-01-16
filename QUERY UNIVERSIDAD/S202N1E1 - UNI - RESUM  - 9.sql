/* Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. 
 El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. 
 El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre 
 d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT
    prf.id_profesor,
    prs.nombre,
    prs.apellido1,
    prs.apellido2,    
    count(asg.id_profesor) AS 'Nº ASSIGNATURES IMPARTIDES'
FROM profesor prf
	LEFT JOIN asignatura asg ON asg.id_profesor = prf.id_profesor
    LEFT JOIN persona prs ON prs.id = prf.id_profesor
GROUP BY prf.id_profesor
ORDER BY count(asg.id_profesor) DESC;
