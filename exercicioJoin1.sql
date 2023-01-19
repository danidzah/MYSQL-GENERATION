CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE table tb_classes (
	id BIGINT AUTO_INCREMENT,
    raca VARCHAR (255),
    classe VARCHAR (255),
    PRIMARY KEY (id)
);
CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome_personagem VARCHAR (255),
    forca INT,
    defesa INT,
    mira INT,
    mana INT,
    classes_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);
INSERT INTO tb_classes(raca,classe)
VALUES ("HUMANO","GUERREIRO");

INSERT INTO tb_classes(raca,classe)
VALUES ("HUMANO","ARQUEIRO");

INSERT INTO tb_classes(raca,classe)
VALUES ("HUMANO","MAGO");

INSERT INTO tb_classes(raca,classe)
VALUES ("HUMANO","ESPADACHIM");

INSERT INTO tb_classes(raca,classe)
VALUES ("ELFO","GUERREIRO");

INSERT INTO tb_classes(raca,classe)
VALUES ("ELFO","ARQUEIRO");

INSERT INTO tb_classes(raca,classe)
VALUES ("ELFO","MAGO");

INSERT INTO tb_classes(raca,classe)
VALUES ("ELFO","ESPADACHIM");

INSERT INTO tb_personagens(nome_personagem,forca,defesa,mira,mana)
VALUES ("ALFREDO",3500,2000,150,400);

INSERT INTO tb_personagens(nome_personagem,forca,defesa,mira,mana)
VALUES ("BRESTON",2000,1500,3600,250);

INSERT INTO tb_personagens(nome_personagem,forca,defesa,mira,mana)
VALUES ("CRUISE",1500,2200,1000,2600);

INSERT INTO tb_personagens(nome_personagem,forca,defesa,mira,mana)
VALUES ("DUMAN",4500,3000,1000,650);

INSERT INTO tb_personagens(nome_personagem,forca,defesa,mira,mana)
VALUES ("ELISEUS",2300,1500,200,300);

INSERT INTO tb_personagens(nome_personagem,forca,defesa,mira,mana)
VALUES ("FRAX",1300,2000,4000,300);

INSERT INTO tb_personagens(nome_personagem,forca,defesa,mira,mana)
VALUES ("GURANT",1000,1900,600,3000);

INSERT INTO tb_personagens(nome_personagem,forca,defesa,mira,mana)
VALUES ("HIRORANT",5000,3800,400,550);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE forca > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id WHERE classe LIKE '%ARQUEIRO%';
