CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (225),
    idade INT,
    ano_de_ensino INT,
    turma INT,
    nota DECIMAL (4,2),
    PRIMARY KEY (id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes 
(nome,idade,ano_de_ensino,turma,nota) VALUES 
("Eduardo",15,9,902,8.5),
("Henrique",12,6,601,5.5),
("Bruno",14,8,801,7.5),
("Manoel",14,8,802,9),
("Luiza",10,4,401,3.5),
("Manoela",15,9,902,10),
("José",11,5,502,10),
("Guilherme",13,7,701,2.5);

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 0 WHERE id = 3;