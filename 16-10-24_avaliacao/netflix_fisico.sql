/* Lógico_1: */

CREATE TABLE Plano_Usuario (
    Id_Plano NUMERIC(3),
    Valor CHAR(5),
    Tpo CHAR(10),
    Id_Usuario NUMERIC(3),
    Name_Usuario CHAR(10),
    Email CHAR(30),
    Data_Nascimento DATE,
    Senha CHAR(10),
    PRIMARY KEY (Id_Plano, Id_Usuario)
);

CREATE TABLE Conteudo (
    Id_Conteudo NUMERIC(3) PRIMARY KEY,
    Titulo CHAR(10),
    Ano DATE,
    Sinopse CHAR(999),
    Classificao_Etaria CHAR(5)
);

CREATE TABLE Avaliacao (
    Id_Avaliacao NUMERIC(3) PRIMARY KEY,
    Nota CHAR(2),
    Comentario CHAR(999),
    fk_Conteudo_Id_Conteudo NUMERIC(3),
    fk_Plano_Usuario_Id_Plano NUMERIC(3),
    fk_Plano_Usuario_Id_Usuario NUMERIC(3)
);

CREATE TABLE Legenda (
    Id_Legenda NUMERIC(3) PRIMARY KEY,
    Linguagem CHAR(5),
    fk_Conteudo_Id_Conteudo NUMERIC(3)
);

CREATE TABLE Filmes (
    Tipo_Filme CHAR(5),
    Duracao_FIlme TIMESTAMP,
    fk_Conteudo_Id_Conteudo NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Serie (
    Tipo_Serie CHAR(10),
    Duracao_Serie TIMESTAMP,
    Temporada NUMERIC(3),
    fk_Conteudo_Id_Conteudo NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Categoria_Genero (
    Id_Categoria NUMERIC(3) PRIMARY KEY,
    Nome CHAR(10),
    Descricao CHAR(10),
    fk_Conteudo_Id_Conteudo NUMERIC(3)
);

CREATE TABLE Visualizacao_Ve (
    fk_Plano_Usuario_Id_Plano NUMERIC(3),
    fk_Plano_Usuario_Id_Usuario NUMERIC(3),
    fk_Conteudo_Id_Conteudo NUMERIC(3)
);

CREATE TABLE Epsodio (
    Nome_Epsodio CHAR(10),
    Duracao_Epsodio TIMESTAMP,
    Sinopse_Epsodio CHAR(30,
    Id_Epsodio NUMERIC(3) PRIMARY KEY,
    fk_Serie_fk_Conteudo_Id_Conteudo NUMERIC(3)
);

CREATE TABLE Lista_De_Desejo_Tem (
    Id_Lista_De_Desejo NUMERIC(3) PRIMARY KEY,
    fk_Plano_Usuario_Id_Plano NUMERIC(3),
    fk_Plano_Usuario_Id_Usuario NUMERIC(3),
    fk_Conteudo_Id_Conteudo NUMERIC(3)
);
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_2
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_3
    FOREIGN KEY (fk_Plano_Usuario_Id_Plano, fk_Plano_Usuario_Id_Usuario)
    REFERENCES Plano_Usuario (Id_Plano, Id_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Legenda ADD CONSTRAINT FK_Legenda_2
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Filmes ADD CONSTRAINT FK_Filmes_2
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Serie ADD CONSTRAINT FK_Serie_2
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Categoria_Genero ADD CONSTRAINT FK_Categoria_Genero_2
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Visualizacao_Ve ADD CONSTRAINT FK_Visualizacao_Ve_1
    FOREIGN KEY (fk_Plano_Usuario_Id_Plano, fk_Plano_Usuario_Id_Usuario)
    REFERENCES Plano_Usuario (Id_Plano, Id_Usuario);
 
ALTER TABLE Visualizacao_Ve ADD CONSTRAINT FK_Visualizacao_Ve_2
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo);
 
ALTER TABLE Epsodio ADD CONSTRAINT FK_Epsodio_2
    FOREIGN KEY (fk_Serie_fk_Conteudo_Id_Conteudo)
    REFERENCES Serie (fk_Conteudo_Id_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Lista_De_Desejo_Tem ADD CONSTRAINT FK_Lista_De_Desejo_Tem_2
    FOREIGN KEY (fk_Plano_Usuario_Id_Plano, fk_Plano_Usuario_Id_Usuario)
    REFERENCES Plano_Usuario (Id_Plano, Id_Usuario);
 
ALTER TABLE Lista_De_Desejo_Tem ADD CONSTRAINT FK_Lista_De_Desejo_Tem_3
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo);