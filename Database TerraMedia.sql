create table item (
id_item serial primary key,
nome_item varchar(30),
valor numeric
)

create table personagem(
id_personagem serial primary key,
nome_personagem varchar(80)
)

create table cenario(
id_cenario serial primary key,
nome_cenario varchar(30)
)

create table coletados(
id_coletados serial primary key,
fk_personagem int references personagem(id_personagem),
fk_item int references item(id_item),
fk_cenario int references cenario(id_cenario)
)

insert into personagem(nome_personagem)
values ('Aragorn'),
('Legolas'),
('Gimli'),
('Gandalf'),
('Sauron'),
('Frodo Baggins'),
('Legolas')

insert into item(nome_item,valor)
values ('Espada Elfica',3),
('Arco Longo',1),
('Machado de Batalha',2),
('Varinha Mágica',7),
('Anel Magico',10),
('Martelo dos Inimigos',5)

insert into cenario(nome_cenario)
values ('Floresta de Lothlóriem'),
('Montanhas de Moria'),
('Campo de Batalha de Helm'),
('Condado'),
('Montanha da Perdição')

insert into coletados(fk_personagem,fk_item,fk_cenario)
values(1,1,1),
(2,2,2),
(3,3,3),
(4,4,1),
(1,3,3),
(2,1,1),
(5,5,5),
(6,3,4),
(7,2,3)

select * from personagem
select * from item
select * from cenario
select * from coletados