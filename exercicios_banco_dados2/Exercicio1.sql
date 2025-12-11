CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR (255) NOT NULL,
    atributos_bonus VARCHAR (255) NOT NULL
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR (255) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    nivel INT NOT NULL
);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

ALTER TABLE tb_personagens ADD id_classe BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classe) REFERENCES tb_classes(id);

INSERT INTO tb_classes 
(nome_classe, atributos_bonus) VALUES 
("Guerreiro", "+7 Defesa, +5 Ataque"),
("Arqueiro", "+3 Defesa, +7 Ataque"),
("Mago", "+0 Defesa, +10 Ataque"),
("Ninja", "+4 Defesa, +8 Ataque"),
("Tank", "+10 Defesa, +2 Ataque");

INSERT INTO tb_personagens 
(nome_personagem, poder_ataque, poder_defesa, nivel, id_classe) VALUES 
("Eduardo", 3000, 7000, 40, 1),
("Manoela", 5000, 1000, 25, 2),
("João", 1000, 8000, 35, 5),
("Guilherme", 4500, 3000, 40, 4),
("Bruno", 7000, 2000, 55, 3),
("Claudio", 2500, 6000, 30, 1),
("Gustavo", 1500, 10000, 50, 5),
("Leandro", 1500, 4000, 20, 1);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT nome_personagem, nivel, tb_classes.nome_classe, tb_classes.atributos_bonus FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT nome_personagem, nivel, nome_classe, atributos_bonus FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id WHERE tb_personagens.id_classe = 1;





