-- Criando o banco de dados --
CREATE DATABASE sistema_cadastro;

-- Alterando o charset do banco de dados --
ALTER DATABASE sistemaDeCadastro CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- Usando o banco de dados criado --
USE sistemaDeCadastro;

-- Criando a tabela  já com a definição do charset--
CREATE TABLE usuarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    nascimento DATE NOT NULL
)DEFAULT CHARSET = utf8;

-- Alterando o charset da tabela --
ALTER TABLE usuarios CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Selecionando a tabela --
SELECT * FROM usuarios;

-- Inserindo dados na tabela --
INSERT INTO usuarios (nome, email, nascimento) 
	VALUES ("Danilo", "danilo.rt@outlook.com", "1986-07-07"),
		   ("Mariana", "marianas_macedo@hotmail.com", "1990-07-27");

-- Adicionando uma coluna na tabela, escolhendo o lugar específico --
ALTER TABLE usuarios ADD COLUMN telefone VARCHAR(20) AFTER email;

-- Atualizando a tabela  * NUNCA UTILIZE O UPDATE/DELETE SEM O WHERE * --
UPDATE usuarios SET telefone = "(11) 96416-0074" WHERE ID = 1;
UPDATE usuarios SET telefone = "(11) 97234-5692" WHERE ID = 2;
UPDATE usuarios SET nome = "Danilo Rodrigues Teixeira" WHERE ID = 1;
UPDATE usuarios SET nome = "Mariana Soares de Macedo Teixeira" WHERE ID = 2;

-- Deletando os dados da tabela --
TRUNCATE TABLE usuarios;

-- Deletando a tabela --
DROP TABLE usuarios;

-- Mostrando todas as tabelas --
SHOW TABLES;

SHOW DATABASES;

DROP DATABASE sistemadecadastro;