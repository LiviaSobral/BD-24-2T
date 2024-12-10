select * from categoria
select * from produto

select nome_produto
from produto
inner join pedido
on pedido.fk_produto = produto.id_produto
where pedido.fk_cliente = 5

select nome_produto, nome_categoria
from produto
inner join categoria
on categoria.id_categoria = produto.fk_categoria
where categoria.id_categoria = 1

select id_pedido
from pedido
inner join produto
on pedido.fk_produto = produto.id_produto
where produto.fk_categoria = 4 and pedido.fk_cliente = 5

select id_pedido, nome_produto
from pedido
inner join produto
on pedido.fk_produto = produto.id_produto
where pedido.fk_cliente = 1


select nome_categoria, count(nome_produto) as numero_produtos
from categoria
left join produto
on produto.fk_categoria = categoria.id_categoria
group by nome_categoria

select id_pedido, nome_cliente
from cliente
right join pedido
on pedido.fk_cliente = cliente.id_cliente

select nome_produto,nome_categoria
from produto
cross join categoria
where nome_categoria = 'Brinquedo'

select id_pedido, nome_produto, nome_categoria
from pedido
full outer join produto
on pedido.fk_produto = produto.id_produto
full outer join categoria
on categoria.id_categoria = produto.fk_categoria

