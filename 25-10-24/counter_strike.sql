/* strike_logico: */

CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY,
    Nome_Usuario VARCHAR (10),
    Email VARCHAR (30),
    Data_Nascimento DATE,
    Senha VARCHAR (10),
    fk_Jogo_ID_Jogo INT
);

CREATE TABLE Jogo (
    ID_Jogo INT PRIMARY KEY,
    Nome_Jogo VARCHAR (10),
    Categoria_Jogo VARCHAR (10),
    Data_Lancamento DATE,
    Objetivo_Jogo VARCHAR (10)
);

CREATE TABLE Time (
    ID_Time INT PRIMARY KEY,
    Nome_Time VARCHAR (10),
    fk_Personagem_ID_Personagem INT
);

CREATE TABLE Ranking (
    ID_Ranking INT PRIMARY KEY,
    ID_Partida INT,
    ID_Time INT,
    Pontos VARCHAR (10),
    fk_Partida_ID_Partida INT,
    fk_Time_ID_Time INT
);

CREATE TABLE Personagem (
    ID_Personagem INT PRIMARY KEY,
    ID_Partida INT,
    Vida INT,
    Colete VARCHAR (30),
    Dinheiro VARCHAR (10),
    Nome_Arma VARCHAR (10),
    fk_Usuario_ID_Usuario INT
);

CREATE TABLE Partida (
    ID_Partida INT PRIMARY KEY,
    ID_Jogo INT,
    Tempo_Jogo TIME,
    Objetivo_Pontos VARCHAR (10),
    Time VARCHAR (10),
    fk_Jogo_ID_Jogo INT,
    fk_Time_ID_Time INT
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_Jogo_ID_Jogo)
    REFERENCES Jogo (ID_Jogo)
    ON DELETE RESTRICT;
 
ALTER TABLE Time ADD CONSTRAINT FK_Time_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Ranking ADD CONSTRAINT FK_Ranking_2
    FOREIGN KEY (fk_Partida_ID_Partida)
    REFERENCES Partida (ID_Partida)
    ON DELETE RESTRICT;
 
ALTER TABLE Ranking ADD CONSTRAINT FK_Ranking_3
    FOREIGN KEY (fk_Time_ID_Time)
    REFERENCES Time (ID_Time)
    ON DELETE RESTRICT;
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_2
    FOREIGN KEY (fk_Jogo_ID_Jogo)
    REFERENCES Jogo (ID_Jogo)
    ON DELETE RESTRICT;
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_3
    FOREIGN KEY (fk_Time_ID_Time)
    REFERENCES Time (ID_Time)
    ON DELETE RESTRICT;