-- escrever uma consulta sql que devolva o nome, endereco e o numero de todos os clientes que more no estado de goias
select * from cdcliente;

select cdclinome,
	   cdcliendereco,
       cdclinumero
from cdcliente
where cdcliuf='GO';    

-- escrever uma consulta sql que devolva o nome de todos os clientes, cujo nome começe com a letra A

select cdclinome 
from cdcliente
where cdclinome like 'A%';