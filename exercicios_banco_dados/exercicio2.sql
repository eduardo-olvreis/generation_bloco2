CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (225),
    descricao VARCHAR (225),
    preco DECIMAL (6,2),
    quantidade INT,
    frete_gratis BOOLEAN,
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(nome,descricao,preco,quantidade,frete_gratis) VALUES 
("Mouse","Mouse de escritório",75,15,true),
("Teclado","Teclado de escritório",150,10,true),
("Mesa","Mesa para escritório",1500,4,false),
("Cadeira","Cadeira simples",450,8,false),
("Monitor","Monitor 24'",900,5,true),
("Suporte para monitor","Suporte de plástico para monitor",50,20,true),
("Webcam","Webcam full HD",400,12,true),
("Cabo HDMI","Cabo HDMI 5 metros",30,50,true);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET frete_gratis = false WHERE id = 5;
