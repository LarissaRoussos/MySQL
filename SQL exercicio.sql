CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_estudante VARCHAR (255),
idade_estudante INT,
endereco VARCHAR (255),
matricula INT ,
ultima_nota DECIMAL (2,2)
);

ALTER TABLE tb_estudante CHANGE turma matricula INT;
ALTER TABLE tb_estudante MODIFY COLUMN ultima_nota INT;
SELECT* FROM tb_estudante;

INSERT INTO tb_estudante(nome_estudante, idade_estudante, endereco, serie, ultima_nota)VALUES("Carlos Helder", 15, "Av.Joaquim Távora", 1, 6);
INSERT INTO tb_estudante(nome_estudante, idade_estudante, endereco, serie, ultima_nota)VALUES("Isadora Portuga", 18, "Rua da Hora", 3, 9);
 INSERT INTO tb_estudante(nome_estudante, idade_estudante, endereco, serie, ultima_nota)VALUES("Filipe Ribero", 17, "Rua Souza Leão",2, 8);
 INSERT INTO tb_estudante(nome_estudante, idade_estudante, endereco, serie, ultima_nota)VALUES("Theo Soares", 18, "Rua Maurício de Nassal", 4, 7);
 INSERT INTO tb_estudante(nome_estudante, idade_estudante, endereco, serie, ultima_nota)VALUES("Rebeca Duarte", 15, "Av.Domingues Ferreira", 5, 8);
 INSERT INTO tb_estudante(nome_estudante, idade_estudante, endereco, serie, ultima_nota)VALUES("Tamires Cândido", 17, "Av.Rui Barbosa", 7, 7);
 INSERT INTO tb_estudante(nome_estudante, idade_estudante, endereco, serie, ultima_nota)VALUES("Caio Brotto", 18, "Av.Paulista", 8, 6);
 INSERT INTO tb_estudante(nome_estudante, idade_estudante, endereco, serie, ultima_nota)VALUES("Bianca Alcântra", 16, "Rua Berrini", 9, 9);
 
 SELECT* FROM tb_estudante WHERE ultima_nota > 7;
 SELECT* FROM tb_estudante WHERE ultima_nota < 7;
 UPDATE tb_estudante SET nome_estudante = "Rebecca Duarte" WHERE id=5;
UPDATE tb_estudante SET ultima_nota =5 WHERE id=6;

 
 







