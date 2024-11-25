CREATE TABLE Pagamento (
    ID_Pagamento Int PRIMARY KEY,
    Valor_Pag int,
    Data_Pag Date,
    Metedo_Pag Char(30),
    fk_Usuario_ID_Usuario Int
);

CREATE TABLE Usuario (
    ID_Usuario Int PRIMARY KEY,
    Nome_Usuario Char(80),
    Email Char(90),
    Data_Nascimento Date,
    Senha Char(30),
    fk_Endereco_Endereco_PK Int
);

CREATE TABLE Conteudo (
    ID_Conteudo Int PRIMARY KEY,
    Titulo Char(80),
    Ano Date,
    Sinopse Char(90),
    Classificacao Char(20),
    Diretor Char(80),
    Valor_Conteudo int
);

CREATE TABLE Visualizacao_Assisti (
    ID_Visualizacao Int PRIMARY KEY,
    Data Date,
    Hora Int,
    fk_Usuario_ID_Usuario Int,
    fk_Conteudo_ID_Conteudo Int
);

CREATE TABLE Lista_De_Desejos_Vera (
    ID_ListaDeDesejos Int PRIMARY KEY,
    fk_Usuario_ID_Usuario Int,
    fk_Conteudo_ID_Conteudo Int
);

CREATE TABLE Avaliacao (
    ID_Avaliacao Int PRIMARY KEY,
    Comentario Char(90),
    Nota int,
    fk_Usuario_ID_Usuario Int,
    fk_Conteudo_ID_Conteudo Int
);

CREATE TABLE Serie (
    Temporada int,
    fk_Conteudo_ID_Conteudo Int PRIMARY KEY
);

CREATE TABLE Filme (
    Duracao_Filme int,
    Tipo_Filme Char(20),
    fk_Conteudo_ID_Conteudo Int PRIMARY KEY
);

CREATE TABLE Episodio (
    ID_Episodio Int PRIMARY KEY,
    Nome_Episodio Char(80),
    Duracao_Episodio int,
    Sinopse_Episodio Char(90),
    fk_Serie_fk_Conteudo_ID_Conteudo Int
);

CREATE TABLE Genero (
    ID_Genero Int PRIMARY KEY,
    Nome_Genero Char(20),
    fk_Conteudo_ID_Conteudo Int
);

CREATE TABLE Legenda (
    ID_Legenda Int PRIMARY KEY,
    Idioma Char(20),
    Tipo_Legenda Char(30),
    fk_Conteudo_ID_Conteudo Int
);

CREATE TABLE Endereco (
    Endereco_PK Int NOT NULL PRIMARY KEY,
    Rua Char(30),
    Cidade Char(30),
    Estado Char(30),
    CEP Char(30)
);
 
ALTER TABLE Pagamento ADD CONSTRAINT FK_Pagamento_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_Endereco_Endereco_PK)
    REFERENCES Endereco (Endereco_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Visualizacao_Assisti ADD CONSTRAINT FK_Visualizacao_Assisti_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario);
 
ALTER TABLE Visualizacao_Assisti ADD CONSTRAINT FK_Visualizacao_Assisti_3
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo);
 
ALTER TABLE Lista_De_Desejos_Vera ADD CONSTRAINT FK_Lista_De_Desejos_Vera_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario);
 
ALTER TABLE Lista_De_Desejos_Vera ADD CONSTRAINT FK_Lista_De_Desejos_Vera_3
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo);
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_3
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Serie ADD CONSTRAINT FK_Serie_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Episodio ADD CONSTRAINT FK_Episodio_2
    FOREIGN KEY (fk_Serie_fk_Conteudo_ID_Conteudo)
    REFERENCES Serie (fk_Conteudo_ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Genero ADD CONSTRAINT FK_Genero_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Legenda ADD CONSTRAINT FK_Legenda_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;

select * from usuario