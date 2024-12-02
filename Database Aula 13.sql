
select * from cliente
select distinct nome_cliente from cliente
select cpf, nome_cliente from cliente
select cpf, nome_cliente from cliente where genero = 'feminino'
select cpf, nome_cliente from cliente where genero = 'feminino' order by nome_cliente desc
select salario, nome_cliente from cliente where genero = 'masculino' and salario < 3000 order by nome_cliente asc

alter table cliente add genero varchar(20)
alter table cliente add salario numeric
alter table cliente add CPF varchar(11)

update cliente
set genero = 'masculino'
where id_cliente = 10

update cliente
set cpf = '21407498801'
where id_cliente = 10

update cliente
set salario = 2425
where id_cliente = 10