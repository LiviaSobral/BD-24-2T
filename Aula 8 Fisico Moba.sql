/* Aula 8 Logico Moba: */

CREATE TABLE Player (
    ID_Player Number(10) PRIMARY KEY,
    Level Number(5),
    Score Number(5),
    Region Char(50),
    User_Name Char(80),
    fk_Team_ID_Team Number(10)
);

CREATE TABLE Champion (
    ID_Champion Number(10) PRIMARY KEY,
    Name Char(80),
    Ability Char(60),
    Damage_Type Char(10),
    Function Char(20)
);

CREATE TABLE Match (
    ID_Match Number(10) PRIMARY KEY,
    Results Char(10),
    Duration Number(5),
    Date_Time Number(8),
    fk_Champion_ID_Champion Number(10)
);

CREATE TABLE Team (
    ID_Team Number(10) PRIMARY KEY,
    Name Char(60),
    fk_Match_ID_Match Number(10)
);

CREATE TABLE Player_Match_Game (
    Team_Points Number(5),
    PLayer_Points Number(5),
    fk_Player_ID_Player Number(10),
    fk_Match_ID_Match Number(10)
);

CREATE TABLE Item (
    ID_Item Number(10) PRIMARY KEY,
    Cost Number(5),
    Description Char(70),
    Effect Char(80),
    Name Char(60),
    fk_Match_ID_Match Number(10)
);

CREATE TABLE Defensive_Item (
    Armor Number(5),
    Mag_Resist Number(5),
    fk_Item_ID_Item Number(10) PRIMARY KEY
);

CREATE TABLE Consumable (
    Duration_Consumable Number(10),
    Effect_Consumable Char(80),
    fk_Item_ID_Item Number(10) PRIMARY KEY
);

CREATE TABLE Offensive_Item (
    Physical_Damage Number(5),
    Magical_Damage Number(5),
    fk_Item_ID_Item Number(10) PRIMARY KEY
);

CREATE TABLE Has (
    fk_Champion_ID_Champion Number(10),
    fk_Player_ID_Player Number(10)
);
 
ALTER TABLE Player ADD CONSTRAINT FK_Player_2
    FOREIGN KEY (fk_Team_ID_Team)
    REFERENCES Team (ID_Team)
    ON DELETE RESTRICT;
 
ALTER TABLE Match ADD CONSTRAINT FK_Match_2
    FOREIGN KEY (fk_Champion_ID_Champion)
    REFERENCES Champion (ID_Champion)
    ON DELETE RESTRICT;
 
ALTER TABLE Team ADD CONSTRAINT FK_Team_2
    FOREIGN KEY (fk_Match_ID_Match)
    REFERENCES Match (ID_Match)
    ON DELETE RESTRICT;
 
ALTER TABLE Player_Match_Game ADD CONSTRAINT FK_Player_Match_Game_1
    FOREIGN KEY (fk_Player_ID_Player)
    REFERENCES Player (ID_Player);
 
ALTER TABLE Player_Match_Game ADD CONSTRAINT FK_Player_Match_Game_2
    FOREIGN KEY (fk_Match_ID_Match)
    REFERENCES Match (ID_Match);
 
ALTER TABLE Item ADD CONSTRAINT FK_Item_2
    FOREIGN KEY (fk_Match_ID_Match)
    REFERENCES Match (ID_Match)
    ON DELETE RESTRICT;
 
ALTER TABLE Defensive_Item ADD CONSTRAINT FK_Defensive_Item_2
    FOREIGN KEY (fk_Item_ID_Item)
    REFERENCES Item (ID_Item)
    ON DELETE CASCADE;
 
ALTER TABLE Consumable ADD CONSTRAINT FK_Consumable_2
    FOREIGN KEY (fk_Item_ID_Item)
    REFERENCES Item (ID_Item)
    ON DELETE CASCADE;
 
ALTER TABLE Offensive_Item ADD CONSTRAINT FK_Offensive_Item_2
    FOREIGN KEY (fk_Item_ID_Item)
    REFERENCES Item (ID_Item)
    ON DELETE CASCADE;
 
ALTER TABLE Has ADD CONSTRAINT FK_Has_1
    FOREIGN KEY (fk_Champion_ID_Champion)
    REFERENCES Champion (ID_Champion)
    ON DELETE RESTRICT;
 
ALTER TABLE Has ADD CONSTRAINT FK_Has_2
    FOREIGN KEY (fk_Player_ID_Player)
    REFERENCES Player (ID_Player)
    ON DELETE SET NULL;