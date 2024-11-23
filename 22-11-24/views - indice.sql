/*Views
*/

create or replace view produtos_comprados as
 select ID_Pedido as numero_pedido, nome_cliente, nome_produto, qtde as quantidade,
 qtde*preco as fatura
 from pedido 
 inner join produto
 on Pedido.Id_Produto = Produto.Id_Produto
 inner join Cliente
 on Pedido.Id_Cliente = Cliente.Id_Cliente
 
 select * from produtos_comprados
 
/*exercicios
 //crie a view de produtos_categorias, selecione todos os produtos e sua cateogrias: (left)
*/

create or replace view produtos_categorias as
select nome_produto, nome_categoria
from produto
left join categoria
on produto.id_categoria = categoria.id_categoria
 
 select * from produtos_categorias
 
 // crie a view pedidos_feitos, selecione todos os pedidos e seus usuarios (right)
 
 create or replace view pedidos_feitos as
 select id_pedido, nome_cliente
 from cliente
 right join pedido
 on pedido.id_cliente = cliente.id_cliente
 
  select * from pedidos_feitos
  
  // crie a view usuarios_cliente, selecione todos os usuarios, juntamente com os detalhes
  dos pedidos e dos produtos
  
  create or replace view usuario_cliente as
  select nome_cliente,id_pedido, nome_produto
  from pedido
  inner join produto
  on pedido.id_produto = produto.id_produto
  full outer join cliente
  on pedido.id_cliente = cliente.id_cliente
  
  select * from usuario_cliente
  
/*indices
Crie o indide de relação de usuarios
*/

create index on cliente(Id_Cliente)

/*Crie o indide de relação de produtos
*/
create index on Produto using HASH (Id_Produto)

/*Crie o indide de relação de pedidos
*/
create index on pedido (id_pedido)