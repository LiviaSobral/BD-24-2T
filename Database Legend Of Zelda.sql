CREATE TABLE Personagen (
    Id_Personagen int PRIMARY KEY,
    Nome Char(80),
    Descricao Char(90),
    Afiliacao char(20)
);

CREATE TABLE Item (
    Id_Item int PRIMARY KEY,
    Nome char(80),
    Tipo Char(30),
    Efeito Char(40),
    Raridade Char(60)
);

CREATE TABLE Local (
    Id_Local int PRIMARY KEY,
    Nome Char(80),
    Descricao Char(90),
    TIpo char(30)
);

CREATE TABLE Zora (
    Habilidade2 char(20),
    fk_Personagen_Id_Personagen int PRIMARY KEY
);

CREATE TABLE Hyllian (
    Habilidade Char(20),
    fk_Personagen_Id_Personagen int PRIMARY KEY
);

CREATE TABLE E__Assoc__1_Tem (
    Quantidade int,
    fk_Personagen_Id_Personagen int,
    fk_Item_Id_Item int
);

CREATE TABLE estar (
    fk_Personagen_Id_Personagen int,
    fk_Local_Id_Local int
);
 
ALTER TABLE Zora ADD CONSTRAINT FK_Zora_2
    FOREIGN KEY (fk_Personagen_Id_Personagen)
    REFERENCES Personagen (Id_Personagen)
    ON DELETE CASCADE;
 
ALTER TABLE Hyllian ADD CONSTRAINT FK_Hyllian_2
    FOREIGN KEY (fk_Personagen_Id_Personagen)
    REFERENCES Personagen (Id_Personagen)
    ON DELETE CASCADE;
 
ALTER TABLE E__Assoc__1_Tem ADD CONSTRAINT FK_E__Assoc__1_Tem_1
    FOREIGN KEY (fk_Personagen_Id_Personagen)
    REFERENCES Personagen (Id_Personagen);
 
ALTER TABLE E__Assoc__1_Tem ADD CONSTRAINT FK_E__Assoc__1_Tem_2
    FOREIGN KEY (fk_Item_Id_Item)
    REFERENCES Item (Id_Item);
 
ALTER TABLE estar ADD CONSTRAINT FK_estar_1
    FOREIGN KEY (fk_Personagen_Id_Personagen)
    REFERENCES Personagen (Id_Personagen)
    ON DELETE RESTRICT;
 
ALTER TABLE estar ADD CONSTRAINT FK_estar_2
    FOREIGN KEY (fk_Local_Id_Local)
    REFERENCES Local (Id_Local)
    ON DELETE RESTRICT;

select * from personagen