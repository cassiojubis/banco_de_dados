 -- IN / NOT IN
SELECT 
elei_nome as "ELEITOR" ,
elei_titulo as "TITULO DE ELEITOR",
elei_zona as " ZONA" ,
elei_sessao as " SESSÂO"
from eleitor	
	WHERE  elei_nome IN("Pedro Silva","Tatiana Fidelis");
    
-- not in
SELECT 
elei_nome as "ELEITOR" ,
elei_titulo as "TITULO DE ELEITOR",
elei_zona as " ZONA" ,
elei_sessao as " SESSÂO"
from eleitor	
	WHERE  elei_nome  NOT IN("Pedro Silva","Tatiana Fidelis");
    
-- CONCAT
SELECT
concat("Nome: ", elei_nome,"| Titulo :",
elei_titulo,"| Zona: ", elei_zona) as "DADO O ELEITOR"
FROM eleitor
WHERE  elei_nome  NOT IN("Pedro Silva","Tatiana Fidelis")
order by elei_nome desc;

-- CONCAT_WS: DEFINIR UM SEPARADOR PADRAO
SELECT
concat_ws(" - ",elei_nome,elei_titulo,elei_zona) as "DADO O ELEITOR"
FROM eleitor
WHERE  elei_nome  NOT IN("Pedro Silva","Tatiana Fidelis")
order by elei_nome desc;

-- DISTINCT :
SELECT 
distinct part_numero as "Numero do partido"
FROM candidato
order by part_numero;

-- like : fazer consultas com mais possibilidade   cm texto

SELECT 
cand_nome as " nome do candidato"
from candidato
where cand_nome LIKE "____R%";

SELECT 
cand_nome as " nome do candidato"
from candidato
where cand_nome LIKE "A%";

SELECT 
cand_nome as " nome do candidato"
from candidato
where cand_nome LIKE "%S";

SELECT 
cand_nome as " nome do candidato"
from candidato
where cand_nome LIKE "%NA%";

SELECT
cand_nome as " nome do candidato"
from candidato
where cand_nome	NOT LIKE "%SILVA%";

-- limit : limita oque aparece na tela 
-- offSEt : especifica a partir de qual poscição voce quer mostrar
	select
    cand_numero as "numero candidato",
    cand_nome as "nome do candidato"
    FROM candidato
    order by  cand_numero desc
     LIMIT  3 OFFSET 10;

 -- calculos sql
 select 
 carg_codigo as "codigo",
 carg_nome as "cargo",
 carg_salario as " salario base",
 (carg_salario + 500.00) as " salario aumento",
 (carg_salario - 500.00) as " salario desconto",
 concat(carg_nome, " salario com aumento: R$", (carg_salario + 500.00))
 from cargo
order by carg_salario desc;

select 
carg_nome as" Nome do cargo",
carg_codigo as "codigo do cargo",
concat("Cargo :",carg_nome,"salario :",carg_salario,"Aumento de 15%:",(carg_salario*0.15)) as " dados do cargo"
from cargo
where carg_nome like "%R";

