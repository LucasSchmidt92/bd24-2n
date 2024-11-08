/*
select count (*) from cliente;

select count (id_cliente) from cliente;

select count (*) numero_de_larissa from cliente;

select count (*) as  clientes_mulheres from cliente where genero = 'feminino'; 
*/

select * from produto
INSERT INTO Produto(ID_Produto, Nome_Produto, Descricao, Preco, Qtde_Estoque)
	Values 
(1, 'Bola', 'Bola colorida', 15.00, 13),
(2, 'Água', 'Água em garrafa de plástico de 1l', 5.00, 52);


INSERT INTO Pedido(id_pedido, ID_Cliente, ID_Produto, Qtde)
	Values 
(1, 1, 1, 3),
(2, 2, 2, 2),
(3, 3, 1, 1);

select * from pedido;

select * from produto;

/*Cont = Conta - EXERCICIOS
*/

select count (*) from produto;

select count (*) from pedido where id_cliente = 2;

select count (*) as pedidos_produto1 from pedido where id_produto=1;

select count (distinct id_cliente) as clientes_diferentes from pedido;

/* AVG = Media  - MEDIA
*/

select avg (salario::numeric) as media_salarial from cliente

/*calcular o preco medio dos produtos */
select avg (preco::numeric) as media_preco_produto from produto

/*calcular a quantidade media de produtos por pedido */
select avg (qtde) as media_produtos_pedido from pedido

/*calcular a media de pedidos feitos por cliente */
select avg (num_pedido)from (select id_cliente, count (id_pedido) as num_pedido 
from pedido group by id_cliente) as quantidade_pedidos;

/* calcular a media dos salarios dos cliente */
select avg (salario::numeric) as media_salarial from cliente


/*SUM = SOMA */

SELECT sum (salario) from cliente

select sum (preco/3) from produto

select sum (salario/3) from cliente

/* criar media salarial da relação usuairos para genero masculino e feminino */

select avg (salario::numeric) from cliente group by genero;

/* exibir a quantidade de usuario do sexo masculino como usuario_masculino
e a quantidade de usuario do sexo feminino como usuario_feminino */

select count (id_cliente) as Usuario_Masculino group by genero = 'masculino' (select count (id_cliente) as Usuario_Feminino
 from cliente group by genero = 'feminino') from cliente