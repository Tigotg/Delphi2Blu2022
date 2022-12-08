SELECT mesa.*, Pessoa.* FROM mesa
inner join pessoa on mesa.atendenteid = pessoa.id;

SELECT mesa.*, Pessoa.* FROM mesa
left join pessoa on mesa.atendenteid = pessoa.id;

SELECT mesa.*, Pessoa.* FROM mesa
right join pessoa on mesa.atendenteid = pessoa.id;

SELECT * FROM mesa
left outer join pessoa on mesa.atendenteid = pessoa.id
union
SELECT * FROM mesa
right outer join pessoa on mesa.atendenteid = pessoa.id;

SELECT mesa.*, Pessoa.* FROM mesa
cross join pessoa;



