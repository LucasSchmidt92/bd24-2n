/* Spotify_logico: */

CREATE TABLE Usuario (
    Id_Usuario NUMERIC(5) PRIMARY KEY,
    Nome VARCHAR(10),
    Senha VARCHAR(10),
    Email VARCHAR(252),
    fk_Planos_Id_Plano NUMERIC(5)
);

CREATE TABLE Artista (
    ID_Artista NUMERIC(5) PRIMARY KEY,
    Nome VARCHAR(10),
    Descricao_Artista VARCHAR(252)
);

CREATE TABLE Planos (
    Id_Plano NUMERIC(5) PRIMARY KEY,
    Plano VARCHAR(252),
    Pagamento VARCHAR(252),
    Descontos VARCHAR(252)
);

CREATE TABLE Conteudo (
    ID_Conteudo NUMERIC(5),
    Nome_Conteudo VARCHAR(10),
    Data_Lancamento DATE,
    fk_Artista_ID_Artista NUMERIC(5)
);

CREATE TABLE Musica (
    Duracao VARCHAR(10),
    Letra_Musica VARCHAR(252)
);

CREATE TABLE Podcast (
    Duracao_Podcast TIMESTAMP,
    Sinopse VARCHAR(252)
);

CREATE TABLE Genero (
    ID_Genero NUMERIC(5) PRIMARY KEY,
    Nome_Genero VARCHAR(10),
    Descricao_Genero VARCHAR(252)
);

CREATE TABLE Playlist_Escolhe (
    Id_Playlist NUMERIC(5) PRIMARY KEY,
    Nome VARCHAR(252),
    Quantidade VARCHAR(252),
    fk_Usuario_Id_Usuario NUMERIC(5)
);

CREATE TABLE Album_Tem (
    Id_Album NUMERIC(5) PRIMARY KEY,
    Nome VARCHAR(252),
    Data DATE,
    fk_Artista_ID_Artista NUMERIC(5)
);

CREATE TABLE Visualizacao_Acessa (
    ID_Visualizacao NUMERIC(5) PRIMARY KEY,
    Data DATE,
    Horas TIME,
    fk_Usuario_Id_Usuario NUMERIC(5)
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_Planos_Id_Plano)
    REFERENCES Planos (Id_Plano)
    ON DELETE RESTRICT;
 
ALTER TABLE Conteudo ADD CONSTRAINT FK_Conteudo_1
    FOREIGN KEY (fk_Artista_ID_Artista)
    REFERENCES Artista (ID_Artista)
    ON DELETE RESTRICT;
 
ALTER TABLE Playlist_Escolhe ADD CONSTRAINT FK_Playlist_Escolhe_2
    FOREIGN KEY (fk_Usuario_Id_Usuario)
    REFERENCES Usuario (Id_Usuario);
 
ALTER TABLE Album_Tem ADD CONSTRAINT FK_Album_Tem_2
    FOREIGN KEY (fk_Artista_ID_Artista)
    REFERENCES Artista (ID_Artista);
 
ALTER TABLE Visualizacao_Acessa ADD CONSTRAINT FK_Visualizacao_Acessa_2
    FOREIGN KEY (fk_Usuario_Id_Usuario)
    REFERENCES Usuario (Id_Usuario);