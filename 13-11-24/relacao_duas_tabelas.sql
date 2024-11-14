//relação de duas tabelas


select nome_cliente, qtde
from cliente, pedido
where pedido.id_cliente = cliente.id_cliente and qtde  >2

/*exercicio, selecione o nome dos cliente e o numero do pedido de cada pedido:
*/

select nome_cliente, id_pedido
from cliente, pedido
where pedido.id_pedido = cliente.id_cliente


/* exercicio, selecione o nome dos produtos e quantidade de pedidos
*/
select nome_produto, qtde
from produto, pedido
where produto.id_produto = pedido.id_produto

/*exercicio, seleione o nome do cliente, numero do pedido onde a quantidade de produto 
comprada for maior que 2
*/


select nome_cliente, qtde
from cliente, pedido
where pedido.id_cliente = cliente.id_cliente and qtde  >2

/*exercicio, selecione o nome dos cliente, quantidade dos pedidos, nome dos produtos
 e faça a soma do valor dos produtos comprados
 */
 select nome_cliente, qtde, nome_produto, preco * qtde as total_compra
 from cliente, pedido, produto
 where pedido.id_cliente = cliente.id_cliente and pedido.id_produto = produto.id_produto

 
 
 select * from pedido
 select * from produto
 


