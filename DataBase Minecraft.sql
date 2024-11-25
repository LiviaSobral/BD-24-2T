CREATE TABLE Jogador (
    ID_Jogador Char(30) PRIMARY KEY,
    Nome_Usuario Char(60),
    HP_Usuario Int,
    Fome_Usuario Int,
    Hit_Box Int
);

CREATE TABLE Inventario (
    ID_Inventario Char(30) PRIMARY KEY,
    FK_Usuario Char(30),
    Slots Int
);

CREATE TABLE Equipamento (
    ID_Item_Equipamento Char(30) PRIMARY KEY,
    Eficiencia Int,
    Durabilidade_Armadura Int,
    Dano_Equipamento Int
);

CREATE TABLE Armadura (
    ID_item_Armadura Char(30) PRIMARY KEY,
    Defesa_Armadura Int,
    Armor_Toughness_Armadura Int,
    Durabilidade_Armadura Int
);

CREATE TABLE Utilidade (
    ID_Item_Utilidade Char(30) PRIMARY KEY,
    Quantidade_Estacavel Int
);

CREATE TABLE Bloco (
    ID_Item_Bloco Char(30) PRIMARY KEY,
    Tipo Char(20),
    Quebravel Boolean
);

CREATE TABLE Mundo (
    ID_Mundo Char(30) PRIMARY KEY,
    Seed Int,
    Terreno Char(80),
    Spawn_Location Int
);

CREATE TABLE Mob (
    ID_Mob Char(30) PRIMARY KEY,
    HP_Mob Int,
    Objetivo Char(30),
    Defesa_Mob Int,
    Hit_Box Int,
    Spawn_Condition Boolean,
    Dano_Mob Int
);
 
ALTER TABLE Inventario ADD CONSTRAINT FK_Inventario_1
    FOREIGN KEY (FK_Usuario)
    REFERENCES Jogador (ID_Jogador);

	select * from jogador