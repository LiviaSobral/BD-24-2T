select * from personagem
select * from coletados
select * from item
select * from cenario

select nome_item
from coletados, item
where item.id_item = coletados.fk_item and coletados.fk_personagem = 1

select nome_cenario
from coletados, cenario
where cenario.id_cenario = coletados.fk_cenario and coletados.fk_personagem  = 2

select nome_item
from coletados, item
where item.id_item = coletados.fk_item and coletados.fk_personagem = 3 and coletados.fk_cenario = 3

select sum(valor) as valor_total
from item, coletados
where item.id_item = coletados.fk_item and coletados.fk_cenario = 1



select nome_item
from coletados
inner join item
on item.id_item = coletados.fk_item
where coletados.fk_personagem = 1

select nome_cenario
from coletados
inner join cenario
on cenario.id_cenario = coletados.fk_cenario
where coletados.fk_personagem  = 2

select nome_item
from coletados
inner join item
on item.id_item = coletados.fk_item
where coletados.fk_personagem = 3 and coletados.fk_cenario = 3

select sum(valor) as valor_total
from coletados
inner join item
on item.id_item = coletados.fk_item and coletados.fk_cenario = 1