/* Lógico_1: */

CREATE TABLE Personagem (
    Id_Personagem INT PRIMARY KEY,
    Nome VARCHAR (250),
    Descricao VARCHAR (250),
    Afiliacao VARCHAR (250),
    fk_Local_Id_local INT
);

CREATE TABLE Item (
    Id_Item INT PRIMARY KEY,
    Nome VARCHAR (250),
    Tipo VARCHAR (250),
    Efeito VARCHAR (250),
    Raridade VARCHAR (250)
);

CREATE TABLE Local (
    Id_local INT PRIMARY KEY,
    Nome VARCHAR (250),
    Descricao VARCHAR (250),
    Tipo VARCHAR (250)
);

CREATE TABLE Inventario_Tem (
    Quantidade VARCHAR (250),
    fk_Item_Id_Item INT,
    fk_Personagem_Id_Personagem INT
);

CREATE TABLE Hylian (
    fk_Personagem_Id_Personagem INT PRIMARY KEY,
    Habilidade VARCHAR (250)
);

CREATE TABLE Goron (
    fk_Personagem_Id_Personagem INT PRIMARY KEY,
    Habilidade VARCHAR (250)
);

CREATE TABLE Zora (
    fk_Personagem_Id_Personagem INT PRIMARY KEY,
    Habilidade VARCHAR (250)
);

CREATE TABLE Relaciona (
    fk_Personagem_Id_Personagem INT,
    fk_Personagem_Id_Personagem_ INT
);
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_Local_Id_local)
    REFERENCES Local (Id_local)
    ON DELETE RESTRICT;
 
ALTER TABLE Inventario_Tem ADD CONSTRAINT FK_Inventario_Tem_1
    FOREIGN KEY (fk_Item_Id_Item)
    REFERENCES Item (Id_Item);
 
ALTER TABLE Inventario_Tem ADD CONSTRAINT FK_Inventario_Tem_2
    FOREIGN KEY (fk_Personagem_Id_Personagem)
    REFERENCES Personagem (Id_Personagem);
 
ALTER TABLE Hylian ADD CONSTRAINT FK_Hylian_2
    FOREIGN KEY (fk_Personagem_Id_Personagem)
    REFERENCES Personagem (Id_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Goron ADD CONSTRAINT FK_Goron_2
    FOREIGN KEY (fk_Personagem_Id_Personagem)
    REFERENCES Personagem (Id_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Zora ADD CONSTRAINT FK_Zora_2
    FOREIGN KEY (fk_Personagem_Id_Personagem)
    REFERENCES Personagem (Id_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Relaciona ADD CONSTRAINT FK_Relaciona_1
    FOREIGN KEY (fk_Personagem_Id_Personagem)
    REFERENCES Personagem (Id_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Relaciona ADD CONSTRAINT FK_Relaciona_2
    FOREIGN KEY (fk_Personagem_Id_Personagem_)
    REFERENCES Personagem (Id_Personagem)
    ON DELETE RESTRICT;