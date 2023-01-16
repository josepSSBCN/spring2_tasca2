/* //////////////////////////////////////////////////////////////////////////////////// */
/* UNIVERSIDAD */

/* 1 .- Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. 
El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, 
segon cognom i nom. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT prsn.apellido1,
	prsn.apellido2,
	prsn.nombre
FROM persona prsn
WHERE ISNULL(prsn.telefono);


/* 2 .- Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta 
el seu número de telèfon en la base de dades.*/

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT prsn.apellido1,
	prsn.apellido2,
	prsn.nombre
FROM persona prsn
WHERE ISNULL(prsn.telefono);


/* 3 .- Retorna el llistat dels alumnes que van néixer en 1999. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT prsn.apellido1,
	prsn.apellido2,
	prsn.nombre
FROM persona prsn
WHERE YEAR(prsn.fecha_nacimiento) = 1999;


/* 4 .- Retorna el llistat de professors/es que no han donat d'alta el seu número de 
telèfon en la base de dades i a més el seu NIF acaba en K. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT *
FROM persona prsn
	LEFT JOIN profesor prf ON prf.id_profesor = prsn.id
WHERE ISNULL(prsn.telefono) AND prsn.nif like '%K';


/* 5 .- Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, 
en el tercer curs del grau que té l'identificador 7. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT *
FROM asignatura asg	
WHERE asg.cuatrimestre = 1 AND asg.curso = 3 AND asg.id_grado = 7;


/* 6 .- Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan 
vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom 
del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el 
nom. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	prsn.apellido1,
    prsn.apellido2,
    prsn.nombre,
    dpt.nombre
FROM profesor prf
		INNER JOIN persona prsn ON prsn.id = prf.id_profesor
        INNER JOIN departamento dpt ON dpt.id = prf.id_departamento
ORDER BY prsn.nombre;


/* 7 .- Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de 
 l'alumne/a amb NIF 26902806M */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @nif = '26902806M';

-- QUERY BODY
SELECT asg.nombre,
	cres.anyo_inicio,
    cres.anyo_fin
FROM persona prsn	
		LEFT JOIN alumno_se_matricula_asignatura asma ON asma.id_alumno = prsn.id
        LEFT JOIN asignatura asg ON asg.id = asma.id_asignatura
        LEFT JOIN curso_escolar cres ON cres.id = asma.id_curso_escolar 
WHERE prsn.nif like @nif;


/* 8 .- Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de 
 l'alumne/a amb NIF 26902806M */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT dpt.nombre
FROM departamento dpt
	LEFT JOIN profesor prf ON prf.id_departamento = dpt.id
    LEFT JOIN asignatura asg ON asg.id_profesor = prf.id_profesor
    LEFT JOIN grado grd ON grd.id = asg.id_grado
where grd.nombre like 'Grado en Ingeniería Informática (Plan 2015)'
	AND !ISNULL(asg.id_profesor);


/* 9 .- Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura 
 durant el curs escolar 2018/2019. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @inyear = 2018;
SET @endyear = 2019;

-- QUERY BODY
SELECT prsn.*,
	cres.anyo_inicio,
    cres.anyo_fin
FROM persona prsn
	LEFT JOIN alumno_se_matricula_asignatura asma ON asma.id_alumno = prsn.id
    LEFT JOIN curso_escolar cres ON cres.id = asma.id_curso_escolar
WHERE cres.anyo_inicio = @inyear AND cres.anyo_fin = @endyear;


/* //////////////////////////////////////////////////////////////////////////////////// */
/* UNIVERSIDAD: LEFT JOIN || RIGHT JOIN */
/* 1 .- Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.
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


/* 2 .-Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.
 Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. 
 El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. 
 El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom 
 del professor/a. 
 El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, 
 cognoms i el nom. */

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


/* 3 .- Retorna un llistat amb els departaments que no tenen professors/es associats.*/

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT *
FROM profesor prf
	right JOIN departamento dpt ON dpt.id = prf.id_departamento
WHERE isnull(prf.id_departamento);


/* 4 .- Retorna un llistat amb els professors/es que no imparteixen cap assignatura. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT prf.*
FROM profesor prf
	left JOIN asignatura asg ON asg.id_profesor = prf.id_departamento
WHERE isnull(asg.nombre);


/* 5 .- Retorna un llistat amb les assignatures que no tenen un professor/a assignat. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT asg.*
FROM profesor prf
	right JOIN asignatura asg ON asg.id_profesor = prf.id_departamento
WHERE isnull(asg.id_profesor)
GROUP BY asg.nombre;


/* 6 .- Retorna un llistat amb tots els departaments que no han impartit assignatures en cap 
curs escolar.*/

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT dpt.*
FROM curso_escolar cres
	right join alumno_se_matricula_asignatura asma ON asma.id_curso_escolar = cres.id
	right join asignatura asg ON asg.id_grado = asma.id_asignatura
    right join profesor prf ON prf.id_profesor = asg.id_profesor
    right join departamento dpt ON dpt.id = prf.id_departamento
where isnull(asg.nombre)
group by dpt.id;


/* //////////////////////////////////////////////////////////////////////////////////// */
/* UNIVERSIDAD: RESUM */

/* 1 .- Retorna el nombre total d'alumnes que hi ha. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @tipo = 'alumno';

-- QUERY BODY
SELECT count(*)
FROM persona
WHERE persona.tipo = @tipo;


/* 2 .- Calcula quants alumnes van néixer en 1999. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @tipo = 'alumno';

-- QUERY BODY
SELECT count(*)
FROM persona
WHERE persona.tipo = @tipo AND YEAR(persona.fecha_nacimiento) = 1999;


/* 3 .- Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, 
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


/* 4 .- Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en 
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


/* 5 .- Retorna un llistat amb el nom de tots els graus existents en la base de dades i el 
 nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que 
 no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. 
 El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	grs.nombre,
    count(asg.id)
FROM grado grs
	LEFT JOIN asignatura asg ON asg.id_grado = grs.id
GROUP BY grs.id
ORDER BY count(asg.id) DESC;


/* 6 .- Retorna un llistat amb el nom de tots els graus existents en la base de dades i el 
 nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures 
 associades.. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	grs.nombre,
    count(asg.id) AS 'Nº D\'ASSIGNATURES'
FROM grado grs
	LEFT JOIN asignatura asg ON asg.id_grado = grs.id
GROUP BY grs.id
HAVING count(asg.id) > 40
ORDER BY count(asg.id);


/* 7 .- Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits 
 que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom 
 del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha 
 d'aquest tipus. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	grs.nombre AS 'NOMBRE GRADO',
    asg.tipo AS 'TIPO ASIGNATURA',
    asg.nombre AS 'NOMBRE ASIGNATURA',
    SUM(asg.creditos) AS 'CREDITS TOTAL'    
FROM asignatura asg
	left JOIN grado grs ON asg.id_grado = grs.id
GROUP BY asg.nombre
ORDER BY asg.nombre desc;


/* 8 .- Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en 
 cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna 
 amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats. */

-- DDBB USED
USE universidad;

-- QUERY BODY
SELECT 
	cres.anyo_inicio,
    COUNT(asma.id_alumno) AS 'Nº ALUMNES MATRICULATS'
FROM alumno_se_matricula_asignatura asma
	LEFT JOIN curso_escolar cres ON cres.id = asma.id_curso_escolar
GROUP BY cres.id;


/* 9 .- Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. 
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


/* 10 .- Retorna totes les dades de l'alumne/a més jove. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @tipo = 'alumno';

-- QUERY BODY
SELECT *
FROM persona prs
WHERE prs.tipo = @tipo
ORDER BY prs.fecha_nacimiento ASC LIMIT 1;


/* 11 .- Retorna un llistat amb els professors/es que tenen un departament associat i que 
 no imparteixen cap assignatura. */

-- DDBB USED
USE universidad;

-- VARIABLES DEFINITION
SET @tipo = 'alumno';

-- QUERY BODY
SELECT *
FROM persona prs
	LEFT JOIN profesor prf ON prf.id_profesor = prs.id    
WHERE prs.tipo = @tipo
ORDER BY prs.fecha_nacimiento ASC LIMIT 1;
