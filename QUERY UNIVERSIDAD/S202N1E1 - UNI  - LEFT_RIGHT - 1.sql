/* Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.
Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. 
El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. 
El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom 
del professor/a. 
El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, 
cognoms i el nom.
*/

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT dpt.nombre,
	prsn.apellido1,
    prsn.apellido2,
    prsn.nombre
FROM persona prsn
	RIGHT JOIN profesor prf ON prf.id_profesor = prsn.id
    LEFT JOIN departamento dpt ON dpt.id = prf.id_departamento
ORDER BY dpt.nombre, prsn.apellido1, prsn.apellido2, prsn.nombre;