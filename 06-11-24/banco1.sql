select * from cliente;

alter table cliente ADD column genero VARCHAR(252);

alter table cliente ADD column salario MONEY;

Insert into cliente (id_cliente, nome_cliente, data_nasc, email, CPF, senha, endereco,genero,salario)
Values (1, 'Lucas', '1992-08-02','lucas_schmidt92@hotmail.com', 00391842005, 'colorado', 'rua a', 'masculino',9283.91),
(2, 'Juliano', '1990-02-02', 'juliano_fraklin@gmail.com', 26382790382, 'paidahelo', 'rua b' , 'masculino',5283.91),
(3, 'Katlyn', '2000-09-20','katlyn_magnus@hotmail.com', 55009398909, 'afloresta123', 'rua c', 'feminino',7231.17),
(4, 'dalesandro', '1978-10-21','andreas_dalessandro@hotmail.com', 35676367398, 'laboba', 'rua e', 'masculino',2283.91),
(5, 'Pafuncio', '1990-03-01','pafuncio_valadares@hotmail.com', 83782721679, 'filmecorra', 'rua f', 'masculino',5283.91),
(6, 'Lucas', '1991-12-12', 'lucas_goncalves92@hotmail.com', 67363742005, 'colorado171206', 'rua d', 'masculino',9483.91);