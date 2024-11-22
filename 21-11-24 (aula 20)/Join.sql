//left join

select nome_produto,nome_categoria
from Produto
left join categoria
on Produto.ID_Categoria = Categoria.ID_Categoria;

select * from categoria;
select * from pedido;
select * from produto;

insert into produto (id_produto, nome_produto, descricao, preco, qtde_estoque)
values (3, 'Feijao', 'Feijao da marca namorado', 15.00,35);

update produto set id_categoria = 3 where id_produto = 3

//right join

select nome_cliente,Id_Pedido
from cliente
right join pedido
on cliente.Id_cliente = pedido.Id_cliente;

//Cross Join

select nome_produto,nome_categoria
from Produto
cross join categoria

//Full outer join

select nome_produto,nome_categoria
from Produto
full outer join categoria
on produto.Id_categoria = categoria.Id_Categoria


//exercicios
*/Selecione todas categorias e conte quantos produtos existem em cada uma incluindo 
categoria que não possuem produtos:
*/
select  count (id_produto), nome_categoria
from Produto
left join categoria
on Produto.ID_Categoria = Categoria.ID_Categoria
group by nome_categoria

*/Liste todos os pedidos e os usuarios que os realizaram, mas inclua tambem
os pedidos que ainda não possuem usuarios associaddos

select id_pedido, nome_cliente
from cliente
right join pedido
on cliente.id_cliente = pedido.id_cliente or pedido.id_cliente = null

*/Liste todas combinações de produto e categoria (cross join) e filtre apenas aquelas em que o
nome da categoria contem a palavra "Brinquedos"


select nome_produto,nome_categoria
from categoria
cross join produto
where  categoria.nome_categoria = 'Brinquedo'

*/Mostre todos os pedidos e suas categorias de produto associados, incluindo
pedidos que não possuem produtos e categorias (full outer join)

select id_pedido, nome_categoria,nome_produto
from pedido
full outer join produto
on pedido.id_produto = produto.id_produto
full outer join categoria
on produto.id_categoria = categoria.id_categoria