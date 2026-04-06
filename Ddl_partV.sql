SELECT 
 LPAD(cand_numero, 10,0) as "NR do candidato"
FROM candidato
ORDER BY cand_numero ASC;

SELECT 
	elei_nome as "NOME DO ELEITOR",
 char_length(elei_nome) as "QTD DE CARACTERES"
FROM eleitor
where elei_dt_nascimento < "1990-01-01"
and elei_rg IS NOT NULL;

SELECT 
elei_nome  as "NOME DO ELEITOR",
REPLACE(elei_dt_nascimento, "-","/")  as "DATA DE NASCIMENTO"
FROM eleitor
WHERE elei_nome like"%A"
ORDER BY elei_dt_nascimento DESC;


SELECT 
carg_nome  as "NOME DO CARGO",
concat("R$ ", FORMAT(carg_salario,2,'de_DE')) AS "SALARIO"
FROM cargo
WHERE carg_salario > 2000;


select 

from voto;



select  
lOWER(REVERSE(part_sigla)) as "SIGLA INVERSA"
from partido;

