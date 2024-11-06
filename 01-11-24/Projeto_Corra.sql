INSERT INTO familia (id_familia, nome_familia)
VALUES (1, 'Armitage');

select * from familia;

INSERT INTO contexto_sociocultural (id_contextosociocultural, nome_contexto, descricao, classe, fk_familia_id_familia)
VALUES (1,'Rica', 'Pessoa com grande poder aquisitivo', 'Alta', 1)

select * from contexto_sociocultural;

INSERT INTO tratamento (id_tratamento, fases, descricao, nome_fase)
VALUES (1,'fase 1', 'fase da hipnotização','hipnotizacao'),
 (2,'fase 2', 'fase da aceitação','aceitacao'),
 (3,'fase 3', 'fase da operação','operação');

select * from tratamento;

INSERT INTO personagem (id_personagem, nome_personagem, etnia, sobrenome_familia, nome_controlador, nome_espectador, personagem_tipo, fk_contexto_sociocultural_id_contextosociocultural, fk_tratamento)
VALUES (1, 'Chris', 'Negra', 'Washington', null)