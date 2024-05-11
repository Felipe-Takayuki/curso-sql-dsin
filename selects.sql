select * from cdcliente;

select month(now()) MesAtual, now() DataAtual;


-- se repete 4 vezes por causa da tabela cdescola possuir 4 registros, porém esse tipo de registro não possui sentido em obter dados da tabela  
select month(now()) MesAtual, 
	   now() DataAtual 
from cdescola;

-- não é boa prática fazer consultas com *, pois pega os dados de todos os registros podendo ter um problema de performance.
select F.cdfnome as Nome, 
	   F.cdfendereco as Endereco,
       F.cdfcep as CEP,
       now() as dataHoraAtual,
       now() as "Data e Horario Atual"
from cdfuncionario as F
where F.cdfcep ='17458965';

select cdfnome,
	   cdfendereco,
       cdfcep,
       now()
from cdfuncionario
where cdfcodigo=1 OR cdfcodigo=5;


select cdfnome,
	   cdfendereco,
       cdfcep,
       now()
from cdfuncionario
-- funcionarios com código de 2 à 4 em ordem crescente
where cdfcodigo between 2 AND 4;

-- funcionarios em ordem decrescente
select cdfnome,
	   cdfendereco,
       cdfcep,
       now()
from cdfuncionario
-- funcionarios com código de 2 à 4
where cdfcodigo between 2 AND 4
order by cdfcodigo desc;

select cdfnome,
	   cdfendereco,
       cdfcep,
       now()
from cdfuncionario
-- funcionarios com código de 2 à 4
where cdfcodigo in (2,3,4);
-- where `cdfcodigo in (2,3,4)` é igual a `where cdfcodigo = 2 or cdfcodigo = 3` ...

select cdfcodigo
	   cdfnome,
	   cdfuf
from cdfuncionario
order by cdfnome desc;
