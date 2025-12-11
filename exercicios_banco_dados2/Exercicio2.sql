CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR (255) NOT NULL,
    faixa_preco VARCHAR (255)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR (255) NOT NULL,
    preco DECIMAL (5,2) NOT NULL,
    ingredientes VARCHAR (255),
    tamanho VARCHAR (255) NOT NULL
);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

ALTER TABLE tb_pizzas ADD id_categoria BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias 
(tipo, faixa_preco) VALUES 
("Salgada", "Econômica"),
("Salgada", "Padrão"),
("Salgada", "Premium"),
("Doce", "Padrão"),
("Doce", "Premium");

INSERT INTO tb_pizzas 
(sabor, preco, ingredientes, tamanho, id_categoria) VALUES 
("Calabresa", 60, "Calabresa e Mussarela", "Pequena", 1),
("4 Queijos", 80, "4 tipoos de queijo", "Media", 2),
("Chocolate", 80, "Chocolate amargo", "Media", 4),
("Filé", 100, "Filé e Mussarela", "Grande", 3),
("Brócolis", 60, "Brócolis e Mussarela", "Pequena", 1),
("Milho e Bacon", 80, "Milho, Bacon e Mussarela", "Media", 2),
("Chocolate Branco", 100, "Chocolate Branco e confete", "Grande", 5),
("Frango com Catupiry", "60", "Frango, Catupiry e Mussarela", "Pequena", 1);

SELECT * FROM tb_pizzas WHERE preco > 60;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 90;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT sabor, preco, tamanho, tb_categorias.tipo FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT sabor, preco, tamanho, tb_categorias.tipo FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id WHERE tb_categorias.id BETWEEN 4 AND 5;

