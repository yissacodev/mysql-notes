/*INNER JOIN*/
SELECT * FROM caballeros c JOIN signos s ON c.signo = s.signo_id;
	
/*Right Join*/
SELECT * FROM caballeros c RIGHT JOIN signos s ON c.signo = s.signo_id;

/*Left Join*/
SELECT * FROM caballeros c LEFT JOIN signos s ON c.signo = s.signo_id;

/*Full join*/
SELECT * FROM caballeros c RIGHT JOIN signos s ON c.signo = s.signo_id
UNION
SELECT * FROM caballeros c LEFT JOIN signos s ON c.signo = s.signo_id;