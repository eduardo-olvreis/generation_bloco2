CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255),
    idade INT,
    cargo VARCHAR (225),
    salario DECIMAL (8,2),
    meses_na_empresa INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores 
(nome,idade,cargo,salario,meses_na_empresa) VALUES
("Eduardo", 23, "Desenvolvedor Júnior", 3000, 6),
("Leandro", 45, "Desenvolvedor Sênior", 15000, 75),
("Bruno", 24, "Desenvolvedor Júnior", 3500, 12),
("Manoela", 22, "Estagiária", 1450, 3),
("Michael", 50, "Gestor TI", 20000, 100);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET cargo = "Desenvolvedor Pleno" WHERE id = 1; 

SELECT * FROM tb_colaboradores;

