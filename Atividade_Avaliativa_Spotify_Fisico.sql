/* Atividade_Avaliativa_Spotify_Logico: */

CREATE TABLE Usuario (
    ID_Usuario Char(10) PRIMARY KEY,
    Nome_Usuario Char(80),
    Senha Char(10),
    Idade Number(3)
);

CREATE TABLE Conteudo (
    ID_Conteudo Char(10) PRIMARY KEY,
    fk_Artista_ID_Artista Char(10),
    Data_Publicacao Number(8),
    Nome_Conteudo Char(40),
    Tempo_Duracao Number(5)
);

CREATE TABLE Playlist (
    ID_Playlist Char(10) PRIMARY KEY,
    fk_Usuario_ID_Usuario Char(10),
    Data_Criacao Number(8),
    Nome_Playlist Char(20),
    Descricao_Playlist Char(80),
    Numero_Musica Number(5),
    Tempo_Total Number(10)
);

CREATE TABLE Artista (
    ID_Artista Char(10) PRIMARY KEY,
    Nome_Artista Char(80),
    Idade Number(3),
    Endereco Char(80),
    Seguidores Number(14)
);

CREATE TABLE Usuario_Comum (
    fk_Usuario_ID_Usuario Char(10) PRIMARY KEY,
    Playlist_Limite Number(1),
    Comercial Boolean
);

CREATE TABLE Usuario_Premium (
    fk_Usuario_ID_Usuario Char(10) PRIMARY KEY,
    Playlist_Limite Number(3),
    Comercial Boolean
);

CREATE TABLE Podcast (
    fk_Conteudo_ID_Conteudo Char(10) PRIMARY KEY,
    Assunto Char(50)
);

CREATE TABLE Musica (
    fk_Conteudo_ID_Conteudo Char(10) PRIMARY KEY,
    Ritmo Char(20),
    Estilo Char(20)
);

CREATE TABLE tem (
    fk_Playlist_ID_Playlist Char(10),
    fk_Conteudo_ID_Conteudo Char(10)
);
 
ALTER TABLE Conteudo ADD CONSTRAINT FK_Conteudo_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Conteudo ADD CONSTRAINT FK_Conteudo_3
    FOREIGN KEY (fk_Artista_ID_Artista)
    REFERENCES Artista (ID_Artista)
    ON DELETE RESTRICT;
 
ALTER TABLE Playlist ADD CONSTRAINT FK_Playlist_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Usuario_Comum ADD CONSTRAINT FK_Usuario_Comum_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE CASCADE;
 
ALTER TABLE Usuario_Premium ADD CONSTRAINT FK_Usuario_Premium_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE CASCADE;
 
ALTER TABLE Podcast ADD CONSTRAINT FK_Podcast_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Musica ADD CONSTRAINT FK_Musica_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_Playlist_ID_Playlist)
    REFERENCES Playlist (ID_Playlist)
    ON DELETE RESTRICT;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;