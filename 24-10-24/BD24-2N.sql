CREATE TABLE Plano (
    Id_Plano INT PRIMARY KEY,
    Valor VARCHAR(10),
    Tpo VARCHAR(10)
);

CREATE TABLE Conteudo (
    Id_Conteudo INT PRIMARY KEY,
    Titulo VARCHAR(10),
    Ano DATE,
    Sinopse VARCHAR(999),
    Classificao_Etaria INT 
);

CREATE TABLE Usuario (
    Id_Usuario INT PRIMARY KEY,
    Name_Usuario VARCHAR(10),
    Email VARCHAR(20),
    Data_Nascimento DATE,
    Senha VARCHAR(20),
    fk_Plano_Id_Plano INT 
);

CREATE TABLE Avaliacao (
    Id_Avaliacao INT  PRIMARY KEY,
    Nota VARCHAR(20),
    Comentario VARCHAR(10),
    fk_Conteudo_Id_Conteudo INT,
    fk_Usuario_Id_Usuario INT
);

CREATE TABLE Legenda (
    Id_Legenda INT PRIMARY KEY,
    Linguagem VARCHAR(10),
    Tipos_Linguagem VARCHAR(10),
    fk_Conteudo_Id_Conteudo INT
);

CREATE TABLE Filmes (
    Tipo_Filme VARCHAR(20),
    Duracao_FIlme TIME,
    fk_Conteudo_Id_Conteudo INT PRIMARY KEY
);

CREATE TABLE Serie (
    Tipo_Serie VARCHAR(10),
    Duracao_Serie TIME,
    Temporada VARCHAR(10),
    fk_Conteudo_Id_Conteudo INT PRIMARY KEY
);

CREATE TABLE Categoria_Genero (
    Id_Categoria INT PRIMARY KEY,
    Nome VARCHAR(20),
    Descricao VARCHAR(10),
    fk_Conteudo_Id_Conteudo INT
);

CREATE TABLE Visualizacao_Ve (
    fk_Usuario_Id_Usuario INT,
    fk_Conteudo_Id_Conteudo INT
);

CREATE TABLE Epsodio (
    Nome_Epsodio VARCHAR(20),
    Duracao_Epsodio TIMESTAMP,
    Sinopse_Epsodio VARCHAR(20),
    Id_Epsodio VARCHAR(20) PRIMARY KEY,
    fk_Serie_fk_Conteudo_Id_Conteudo INT
);

CREATE TABLE Lista_De_Desejo_Tem (
    Id_Lista_De_Desejo INT PRIMARY KEY,
    fk_Usuario_Id_Usuario INT,
    fk_Conteudo_Id_Conteudo INT
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_Plano_Id_Plano)
    REFERENCES Plano (Id_Plano)
    ON DELETE RESTRICT;
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_2
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_3
    FOREIGN KEY (fk_Usuario_Id_Usuario)
    REFERENCES Usuario (Id_Usuario)
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
    FOREIGN KEY (fk_Usuario_Id_Usuario)
    REFERENCES Usuario (Id_Usuario);
 
ALTER TABLE Visualizacao_Ve ADD CONSTRAINT FK_Visualizacao_Ve_2
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo);
 
ALTER TABLE Epsodio ADD CONSTRAINT FK_Epsodio_2
    FOREIGN KEY (fk_Serie_fk_Conteudo_Id_Conteudo)
    REFERENCES Serie (fk_Conteudo_Id_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Lista_De_Desejo_Tem ADD CONSTRAINT FK_Lista_De_Desejo_Tem_2
    FOREIGN KEY (fk_Usuario_Id_Usuario)
    REFERENCES Usuario (Id_Usuario);
 
ALTER TABLE Lista_De_Desejo_Tem ADD CONSTRAINT FK_Lista_De_Desejo_Tem_3
    FOREIGN KEY (fk_Conteudo_Id_Conteudo)
    REFERENCES Conteudo (Id_Conteudo);