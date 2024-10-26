create table Pedido (
ID_Pedido SERIAL PRIMARY KEY,
ID_Cliente INT NOT NULL REFERENCES cliente (ID_Cliente),
ID_Produto INT NOT NULL REFERENCES produto (ID_Produto),
Qtde SMALLINT NOT NULL
	)