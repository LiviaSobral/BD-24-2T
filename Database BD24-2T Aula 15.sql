select nome_cliente, quantidade, nome_produto, preco
from cliente, pedido, produto
where cliente.id_cliente = pedido.fk_cliente and produto.id_produto = pedido.fk_produto and quantidade > 2

select nome_cliente, id_pedido
from cliente, pedido
where cliente.id_cliente = pedido.fk_cliente

select nome_produto, quantidade
from pedido, produto
where produto.id_produto = pedido.fk_produto

select nome_cliente, id_pedido, quantidade
from cliente, pedido
where cliente.id_cliente = pedido.fk_cliente and quantidade > 2

select nome_cliente, sobrenome_cliente, quantidade, sum(preco * quantidade) as preco_Total, nome_produto
from cliente, pedido, produto
where cliente.id_cliente = pedido.fk_cliente and produto.id_produto = pedido.fk_produto 
group by nome_cliente, nome_produto, sobrenome_cliente, quantidade order by preco_total desc

select * from produto
select * from cliente

select id_pedido,produto.id_produto, quantidade
from pedido
inner join produto
on pedido.fk_produto = produto.id_produto
