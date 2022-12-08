SELECT mesa.codigo, pessoa.nome as Atendente FROM MESA
inner join pessoa on pessoa.id = mesa.atendenteId;

select comanda.codigo, produto.nome from comanda
inner join comandaproduto on comandaproduto.comandaId = comanda.id
inner join produto on produto.id = comandaproduto.produtoId;

select comanda.codigo, sum(comandaproduto.valorTotal)as Total_Produtos from comanda
inner join comandaproduto on comandaproduto.comandaId = comanda.id
group by comanda.id;

select
comanda.codigo as 'Codigo Comanda',
pessoa.nome as 'atendente',
mesa.nome 'mesa',
max(comanda.valor)as 'Valor'
from comanda
join comandaProduto on comandaProduto.comandaId = comanda.Id
join mesa on comanda.mesaId = Mesa.id
join pessoa on mesa.atendenteId = pessoa.Id




