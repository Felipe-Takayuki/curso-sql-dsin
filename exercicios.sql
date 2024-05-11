-- escrever uma consulta sql que devolva o nome, endereco e o numero de todos os clientes que more no estado de goias
select * from cdcliente;

select cdclinome,
	   cdcliendereco,
       cdclinumero
from cdcliente
where cdcliuf='GO';    