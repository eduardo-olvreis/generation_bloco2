CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tarja VARCHAR (255) NOT NULL,
    tipo_produto VARCHAR (255) NOT NULL
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    preco DECIMAL (5,2) NOT NULL,
    descricao VARCHAR (255),
    quantidade INT
);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD id_categoria BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias 
(tarja, tipo_produto) VALUES 
("Sem Tarja", "Medicamento"),
("Tarja Amarela", "Medicamento"),
("Tarja Vermelha", "Medicamento"),
("Tarja Preta", "Medicamento"),
("Não Aplicável", "Outros");

INSERT INTO tb_produtos 
(nome, preco, descricao, quantidade, id_categoria) VALUES 
("Paracetamol", 30, "Dor e Febre", 50, 1),
("Ibuprofeno", 40, "Dor, Inflamação e Febre", 25, 1),
("Losartana Genérica", 70, "Hipertensão", 10, 2),
("Amoxicilina", 85, "Antibiótico", 25, 3),
("Rivotril", 120, "Ansiedade", 5, 4),
("Zolpidem", 100, "Insônia", 3, 4),
("Pasta de Dente", 20, "Creme dental", 150, 5),
("Protetor Solar", "40", "Proteção contra o Sol", "100", 5);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT nome, preco, quantidade, tarja, tipo_produto FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT nome, preco, quantidade, tarja, tipo_produto FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.tipo_produto = "Medicamento";



