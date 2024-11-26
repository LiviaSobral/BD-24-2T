create table cliente(
	id_cliente int primary key,
	nome_cliente varchar(80) not null,
	sobrenome_cliente varchar(80) not null
)

create table produto(
	id_produto int primary key,
	nome_produto varchar(80) not null,
	descricao varchar(90),
	preco int not null,
	quant_estoque int not null
)

create table pedido(
	id_pedido int primary key,
	fk_cliente int references cliente(id_cliente),
	fk_produto int references produto(id_produto),
	quantidade int not null
)

insert into cliente (id_cliente,nome_cliente,sobrenome_cliente)
values (2,'Marcelo','Oliveira'),
(3,'Isadora','Vargas')

insert into produto(id_produto,nome_produto,descricao,preco,quant_estoque)
values(1,'Bola','Bola colorida',15,13),
(2,'Agua','Água em garrafa de plástico de 1l',5,52)

insert into pedido (id_pedido,fk_cliente,fk_produto,quantidade)
values (1,1,2,2),
(2,1,1,1),
(3,2,2,1)

insert into cliente (id_cliente,nome_cliente,sobrenome_cliente)
values(4,'João','Henrique'),
(5,'Joshua','Carvalho'),
(6,'Emilia','Monteiro'),
(7,'Roberta','Decibel'),
(8,'João','Pinheiro'),
(9,'Allan','Ferreira'),
(10,'Flavio','Coulomb')

insert into produto (id_produto,nome_produto,descricao,preco,quant_estoque)
values (3,'Coca_Cola','Lata de refrigerante coca cola',7,20),
(4,'Veneno Para Rato','Veneno para matar ratos',10,18),
(5,'Pá','Pá para cavar buracos, inox',30,7),
(6,'Faca','Faca de cosinha para corta carne',27,10),
(7,'Plutonio','Plutonio. 2g',9190,100),
(8,'Chapeu','Chapeu colorido para crianças',15,40),
(9,'tigrinho','pequena pelucia de tigre',19,30),
(10,'Cadeira','Objeto imovel que é utilizado para sentar',40,8)

insert into pedido (id_pedido,fk_cliente,fk_produto,quantidade)
values (4,5,7,10),
(5,6,3,1),
(6,3,1,1),
(7,10,9,4),
(8,10,5,8),
(9,4,7,20),
(10,1,2,5)

update produto 
set quant_estoque = 99 
where id_produto = 7

select * from cliente
select * from produto
select * from pedido