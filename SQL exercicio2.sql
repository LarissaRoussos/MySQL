CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
pagamento VARCHAR(255),
retirada_local BOOLEAN
);
CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR (255),
tamanho CHAR,
borda BOOLEAN, 
valor DECIMAL (100,2),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);
ALTER TABLE tb_pizzas CHANGE quantidade valor DECIMAL;

SELECT*FROM tb_categorias;
INSERT INTO tb_categorias (pagamento, retirada_local) VALUES("Cartão/Débito", true);
INSERT INTO tb_categorias (pagamento, retirada_local) VALUES("Cartão/Crédito", false);
INSERT INTO tb_categorias (pagamento, retirada_local) VALUES("Dinheiro", true);
INSERT INTO tb_categorias (pagamento, retirada_local) VALUES("Cartão/Crédito", false);
INSERT INTO tb_categorias (pagamento, retirada_local) VALUES("Dinheiro", true);

SELECT*FROM tb_pizzas;
INSERT INTO tb_pizzas (sabor,tamanho,borda,valor, categoria_id) VALUES ("Mussarela","P",true, 34,1);
INSERT INTO tb_pizzas (sabor,tamanho,borda,valor, categoria_id) VALUES ("Camarão","G",false, 100,2);
INSERT INTO tb_pizzas (sabor,tamanho,borda,valor, categoria_id) VALUES ("Marguerita","M",true, 55,4);
INSERT INTO tb_pizzas (sabor,tamanho,borda,valor, categoria_id) VALUES ("Carne de Sol","M",true, 82,5);
INSERT INTO tb_pizzas (sabor,tamanho,borda,valor, categoria_id) VALUES ("Quatro Queijos","P",true, 41,2);
INSERT INTO tb_pizzas (sabor,tamanho,borda,valor, categoria_id) VALUES ("Bacon","G",false, 75,3);
INSERT INTO tb_pizzas (sabor,tamanho,borda,valor, categoria_id) VALUES ("Frango","P",false, 38,2);
INSERT INTO tb_pizzas (sabor,tamanho,borda,valor, categoria_id) VALUES ("Calabresa","M",false, 72,4);

SELECT*FROM tb_pizzas WHERE valor >45;
SELECT*FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;
SELECT*FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT*FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
SELECT*FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id=5;


