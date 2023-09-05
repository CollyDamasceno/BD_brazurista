USE MASTER IF EXISTS(
    SELECT * FROM SYS.databases WHERE NAME = 'bd_brazurista')

DROP DATABASE bd_brazurista
GO 
CREATE DATABASE bd_brazurista
GO
USE bd_brazurista

--unique: nao pode ter mais de um email igual


CREATE TABLE Usuario
(
id               INT IDENTITY,
cpf              CHAR(11)      NOT NULL,
nome_comp        VARCHAR (100) NOT NULL,
email            VARCHAR (100) UNIQUE NOT NULL,
senha            VARCHAR (20)  NOT NULL,
telefone         VARCHAR (12)  NOT NULL,
PRIMARY KEY (id),
) 
SELECT * FROM Usuario
   


CREATE TABLE Ponto_interesse
(
id                   INT IDENTITY,
nome_local           VARCHAR (60)   NOT NULL,
contato              VARCHAR (150)  NOT NULL,
cep                  CHAR (8)       NOT NULL,
estado               VARCHAR (50)   NOT NULL,
cidade               VARCHAR (50)   NOT NULL,
rua                  VARCHAR (80)   NOT NULL,
bairro               VARCHAR (50)   NOT NULL,
numero               VARCHAR (10)   NOT NULL,
avaliacao            INT            NOT NULL,
descricao            VARCHAR (2000) NOT NULL,
cnpj                 VARCHAR (80)   NOT NULL,
id_pontur            INT            NOT NULL,
PRIMARY KEY (id),    
)
SELECT * FROM Ponto_interesse



CREATE TABLE Roteiro
(
id                 INT IDENTITY,
pontur_id          INT            NOT NULL,
rest_id            INT            NOT NULL,
usuario_id         INT            NOT NULL, 
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES Ponto_interesse(id),
FOREIGN KEY (id) REFERENCES Usuario(id)
)


CREATE TABLE Categoria
(
id                   INT IDENTITY,
id_Poniter           INT            NOT NULL,
rote_id              INT            NOT NULL,
descricao            VARCHAR (2000) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES Roteiro(id)
)











  

