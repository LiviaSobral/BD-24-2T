select count (*) as numero_produto from produto
select count (*) as pedidos_cliente2 from pedido where fk_cliente = 2
select count (*) as pedidos_produto1 from pedido where fk_produto = 1
select count (distinct fk_cliente) as clientes_com_pedido from pedido 
select * from pedido

select avg (salario) as media_salario from cliente where genero = 'masculino'

select * from produto
select avg (preco) as media_produto from produto
select avg (quantidade) as media_quantidade from pedido
select avg (num_pedidos) as media_pedidos from (select fk_cliente, count(id_pedido) as num_pedidos from pedido 
group by fk_cliente)as quant_pedidos
select avg (salario) as media_salario from cliente

select sum(salario/3) as salario_total from cliente

select * from cliente
select genero,avg (salario) as media_salario from cliente group by genero
select genero,count (*) as quantidade_generos from cliente group by genero
select sum(preco - (preco * 10/100)) as soma_desconto from produto

