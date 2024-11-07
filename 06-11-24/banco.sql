select * from cliente;

select distinct nome_cliente from cliente;

select nome_cliente, cpf from cliente;

select nome_cliente, cpf from cliente where genero = 'feminino'

select nome_cliente, cpf from cliente where genero = 'feminino' order by nome_cliente desc;

select nome_cliente, salario from cliente where genero = 'masculino' and salario <'3000';