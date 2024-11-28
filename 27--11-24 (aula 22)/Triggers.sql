/* Triggers
exercicio 1 - crie a relação historico_salarial, com os atributos (Id_historico,Id_Cliente,
data_alteração,salario):
*/

create table historico_salarial (
Id_historico serial primary key not null,
Id_cliente int not null references cliente (id_cliente),
data_alteracao date not null,
	salario money not null
	)

/* Criar a funcão que vai atualizar a tabela:
*/

create or replace function atualizacao_salario ()returns
trigger as $$ begin
insert into historico_salarial(Id_cliente, data_alteracao, salario)
values (new.Id_cliente, now (), new.salario);
return null;
end;
$$language plpgsql;

drop function atualizacao_salario cascade


/* Criar a trigger:
*/
create trigger atualizacao_salario
after insert or update
on cliente for each row
execute function atualizacao_salario ()

select * from cliente

update cliente set salario = '1500' where id_cliente =2

/* Atualizar 3 salarios de cliente e se o trigger estiver correto irá adicionar automaticamente
os dados na tabela historico_salarial:
*/

update cliente set salario = '2500' where id_cliente = 1

update cliente set salario = '1740' where id_cliente = 3

update cliente set salario = '3220' where id_cliente = 4

/* Crie um trigger com historico de preco de produto:
*/

create table historico_preco(
Id_historico serial primary key not null,
Id_produto int not null references produto (id_produto),
data_alteracao date not null,
	preco money not null
	)

drop table atualizacao_preco 

create or replace function atualizacao_preco ()returns
trigger as $$ begin
insert into historico_preco(Id_produto, data_alteracao, preco)
values (new.Id_produto, now (), new.preco);
return null;
end;
$$language plpgsql;

create trigger atualizacao_preco
after insert or update
on produto for each row
execute function atualizacao_preco ()

update produto set preco = 15 where id_produto = 2

select * from historico_preco
