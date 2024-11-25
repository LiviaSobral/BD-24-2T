create table seila (
	id_seila int primary key not null,
	nome_seila varchar(20),
	idade int not null
)
create table cliente(
	id_cliente int primary key,
	idade int not null,
	nome_cliente varchar(80)
)
select * from cliente