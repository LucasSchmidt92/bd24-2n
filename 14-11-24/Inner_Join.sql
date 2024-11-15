/*Inner Join
Retorne o nome dos produtos que estao incluidos em todos os pedidos
*/

select id_pedido, nome_produto, qtde
from pedido
inner join produto
on pedido.id_produto = produto.id_produto
where id_pedido =2

/*Aliases = dar apelidos, por exemplo o pedido virou pe
*/

select id_pedido, nome_produto, qtde
from pedido pe 
inner join produto
on pe.id_produto = produto.id_produto
where id_pedido =2

/* Junção de tres tabelas: */
select id_pedido, nome_cliente, nome_produto, qtde
from pedido  
inner join produto
on pedido.id_produto = produto.id_produto
join cliente
on pedido.id_cliente= cliente.id_cliente

/*Selecione todos os produtos que foram comprados por um determinado cliente: */


select id_pedido, nome_produto, qtde
from pedido
inner join produto
on pedido.id_produto = produto.id_produto
where id_cliente = 2

select * from pedido
select * from produto

/*Crie uma tabela "categoria" em produto, e selecione todos os produtos em uma determinada categoria:
lembrar de rodar as tabelas sempre*/

create table Categoria (
 	Id_Categoria INT primary key,
	Nome_Categoria varchar (252) not null,
	Descricao_Categoria varchar (252) not null
	)
	insert into categoria (id_categoria,nome_categoria,descricao_categoria)
	values (1,'Brinquedo','Brinquedos Infantis'),
	       (2,'Bebidas','Bedidas nao alcoolicas')
		   
	alter table produto add column Id_Categoria int references categoria (Id_Categoria)
	

	update produto 
	set id_categoria = 1
	where id_produto = 1
	
	update produto
	set id_categoria = 2
	where id_produto = 2
	
		alter table produto add column nome_categoria varchar(252);

	update produto 
	set nome_categoria = 'Brinquedo'
	where id_produto = 1
	
	update produto
    set nome_categoria = 'Bebidas'
	where id_produto = 2
	
	select nome_produto, qtde_estoque
	from produto
	join categoria
	on produto.id_categoria=categoria.id_categoria and produto.id_categoria = 2
	
	/* selecione todos os pedidos feitos por um determinado usuario em uma determinada categoria
	
*/
select nome_cliente, id_pedido
from pedido
join cliente
on cliente.id_cliente = pedido.id_cliente
join produto
on produto.id_categoria = pedido.id_pedido
join categoria
on produto.id_categoria = categoria.id_categoria and categoria.id_categoria = 1;

/* selecione os pedidos com os nomes dos pordutos de um usuario
*/

select nome_cliente, nome_produto
from pedido
join cliente
on cliente.id_cliente = pedido.id_cliente and cliente.id_cliente =2
join produto
on pedido.id_produto = produto.id_produto