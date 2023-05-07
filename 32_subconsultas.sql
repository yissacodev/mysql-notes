/*
* Subconsultas
* Son consultas dentro de otras consultas que se ponen dentro de parantesis y 
* y con un alias
*/

/* Total de caballeros por signo*/
 SELECT signo, (SELECT COUNT(*) FROM caballeros c WHERE c.signo = s.signo_id)
 	AS total_caballeros
 	FROM signos s;